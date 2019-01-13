package vm

import "github.com/SummerCash/ursa/compiler"

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
