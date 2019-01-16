package vm

import (
	"fmt"

	"github.com/SummerCash/ursa/compiler"
	"github.com/SummerCash/wagon/wasm"
	"github.com/perlin-network/life/utils"
)

const (
	// DefaultCallStackSize - default call stack size.
	DefaultCallStackSize = 512

	// DefaultPageSize - linear memory page size
	DefaultPageSize = 65536
)

// FunctionImport represents the function import type. If len(sig.ReturnTypes) == 0, the return value will be ignored.
type FunctionImport func(vm *VirtualMachine) int64

// VirtualMachine - container holding VM config, metadata
type VirtualMachine struct {
	Environment Environment `json:"environment"` // VM config

	Module *compiler.Module // Loaded web-assembly module

	FunctionCode    []compiler.InterpreterCode // Func bytecode
	FunctionImports []FunctionImport           // Import funcs

	CallStack    []Frame // VM call stack
	CurrentFrame int     // Current callstack frame

	Table []uint32 // VM mem/runtime table

	Globals []int64 // Global vrs

	Memory []byte // Virtual machine memory

	NumValueSlots int // Num of used value slots

	Yielded int64 // Did yield

	InsideExecute bool // Inside execute

	Delegate func() // Delegate call

	Exited    bool        // Did exit
	ExitError interface{} // Error on exit

	ReturnValue int64 // Return value

	Gas              uint64 // Gas usage
	GasLimitExceeded bool   // Has exceeded given gas limit
}

// Frame - call stack frame
type Frame struct {
	FunctionID   int     // Module function identifier
	Code         []byte  // Frame bytecode
	Regs         []int64 // Regs
	Locals       []int64 // Local vrs
	IP           int     // IP
	ReturnReg    int     // Returning reg
	Continuation int32   // Continuation
}

// ImportResolver - interface for allowing one to define imports to WebAssembly modules
type ImportResolver interface {
	ResolveFunc(module, field string) FunctionImport // Func resolver method
	ResolveGlobal(module, field string) int64        // Global resolver method
}

// NewVirtualMachine - instantiate a virtual machine for a given WebAssembly module, with
// specific execution options specified under a VMConfig, and a WebAssembly module import
// resolver
func NewVirtualMachine(code []byte, config Environment, impResolver ImportResolver, gasPolicy compiler.GasPolicy) (_retVM *VirtualMachine, retErr error) {
	if config.EnableJIT { // Check needs JIT
		fmt.Println("Warning: JIT support is removed.") // Log removed JIT support
	}

	m, err := compiler.LoadModule(code) // Load module

	if err != nil { // Check for errors
		return nil, err // Return error
	}

	m.DisableFloatingPoint = config.DisableFloatingPoint // Set floating point disabled

	functionCode, err := m.CompileForInterpreter(gasPolicy) // Compile function code for interpreter

	if err != nil { // Check for errors
		return nil, err // Return error
	}

	defer utils.CatchPanic(&retErr) // Catch panic

	table := make([]uint32, 0)               // Init buffer
	globals := make([]int64, 0)              // Init buffer
	funcImports := make([]FunctionImport, 0) // Init buffer

	if m.Base.Import != nil && impResolver != nil { // Check has import/import resolver
		for _, imp := range m.Base.Import.Entries { // Iterate through imports
			switch imp.Type.Kind() { // Handle import types
			case wasm.ExternalFunction: // Check is extern func import
				funcImports = append(funcImports, impResolver.ResolveFunc(imp.ModuleName, imp.FieldName)) // Append to func imports
			case wasm.ExternalGlobal: // Check is extern global import
				globals = append(globals, impResolver.ResolveGlobal(imp.ModuleName, imp.FieldName)) // Handle
			case wasm.ExternalMemory:
				// TODO: Do we want a real import?
				if m.Base.Memory != nil && len(m.Base.Memory.Entries) > 0 { // Check mem not nil
					panic("cannot import another memory while we already have one") // Panic
				}

				m.Base.Memory = &wasm.SectionMemories{ // Set memory
					Entries: []wasm.Memory{
						wasm.Memory{
							Limits: wasm.ResizableLimits{
								Initial: uint32(config.DefaultMemoryPages),
							},
						},
					},
				}
			case wasm.ExternalTable:
				// TODO: Do we want a real import?
				if m.Base.Table != nil && len(m.Base.Table.Entries) > 0 { // Check table not empty
					panic("cannot import another table while we already have one")
				}

				m.Base.Table = &wasm.SectionTables{ // Set table
					Entries: []wasm.Table{
						wasm.Table{
							Limits: wasm.ResizableLimits{
								Initial: uint32(config.DefaultTableSize),
							},
						},
					},
				}
			default:
				panic(fmt.Errorf("import kind not supported: %d", imp.Type.Kind())) // Panic
			}
		}
	}

	for _, entry := range m.Base.GlobalIndexSpace { // Load global entries
		globals = append(globals, execInitExpr(entry.Init, globals)) // Append global entry
	}

	if m.Base.Table != nil && len(m.Base.Table.Entries) > 0 { // Populate table elements
		t := &m.Base.Table.Entries[0] // Set table entry buffer

		if config.MaxTableSize != 0 && int(t.Limits.Initial) > config.MaxTableSize { // Check table size exceeded
			panic("max table size exceeded") // Panic
		}

		table = make([]uint32, int(t.Limits.Initial)) // Init table buffer

		for i := 0; i < int(t.Limits.Initial); i++ { // Iterate
			table[i] = 0xffffffff // Set table entry
		}

		if m.Base.Elements != nil && len(m.Base.Elements.Entries) > 0 { // Check elements not nil
			for _, e := range m.Base.Elements.Entries { // Iterate through entries
				offset := int(execInitExpr(e.Offset, globals)) // Get offset

				copy(table[offset:], e.Elems) // Copy
			}
		}
	}

	memory := make([]byte, 0)                                   // Init memory buffer
	if m.Base.Memory != nil && len(m.Base.Memory.Entries) > 0 { // Check base memory not nil
		initialLimit := int(m.Base.Memory.Entries[0].Limits.Initial) // Init initial limit

		if config.MaxMemoryPages != 0 && initialLimit > config.MaxMemoryPages { // Check max memory exceeded
			panic("max memory exceeded") // Panic
		}

		capacity := initialLimit * DefaultPageSize // Get capacity

		memory = make([]byte, capacity) // Init empty memory

		for i := 0; i < capacity; i++ { // Iterate until capacity
			memory[i] = 0 // Set empty mem
		}

		if m.Base.Data != nil && len(m.Base.Data.Entries) > 0 { // Iterate through entries
			for _, e := range m.Base.Data.Entries { // Iterate through entires
				offset := int(execInitExpr(e.Offset, globals)) // Get offset

				copy(memory[int(offset):], e.Data) // Copy
			}
		}
	}

	return &VirtualMachine{ // Return initialized vm
		Module:          m,
		Environment:     config,
		FunctionCode:    functionCode,
		FunctionImports: funcImports,
		CallStack:       make([]Frame, DefaultCallStackSize),
		CurrentFrame:    -1,
		Table:           table,
		Globals:         globals,
		Memory:          memory,
		Exited:          true,
	}, nil
}
