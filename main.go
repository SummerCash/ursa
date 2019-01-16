package main

import (
	"flag"
	"fmt"
	"io/ioutil"
	"path/filepath"
	"strconv"

	"github.com/SummerCash/ursa/compiler"
	"github.com/SummerCash/ursa/vm"
)

// Resolver - define imports for WebAssembly modules
type Resolver struct {
	tempRet0 int64
}

var (
	sourceFlag        = flag.String("source", "", "specify .wasm source file to run")   // Init source flag
	gasLimitFlag      = flag.Int("gas-limit", 0, "run .wasm with given gas limit")      // Init gas limit flag
	gasPerInstruction = flag.Int64("gas-per", 1, "run .wasm with given gas policy")     // Init gas policy flag
	entryFunctionFlag = flag.String("entry", "", "run .wasm from given entry function") // Init entry flag
)

func main() {
	flag.Parse() // Parse flags

	if sourceFlag == nil || *sourceFlag == "" { // Check for nil .wasm source
		panic("no .wasm file provided, exiting") // Panic
	}

	gasPolicy := &compiler.SimpleGasPolicy{GasPerInstruction: *gasPerInstruction} // Init simple gas policy

	sourcePath, err := filepath.Abs(filepath.FromSlash(*sourceFlag)) // Get source path

	if err != nil { // Check for errors
		panic(err) // Panic
	}

	wasmSource, err := ioutil.ReadFile(sourcePath) // Read WASM source

	if err != nil { // Check for errors
		panic(err) // Panic
	}

	vm, err := vm.NewVirtualMachine(wasmSource, vm.Environment{
		EnableJIT:          false,
		DefaultMemoryPages: 128,
		DefaultTableSize:   65536,
	}, new(Resolver), gasPolicy) // Init virtual machine

	if err != nil { // Check for errors
		panic(err) // Panic
	}

	entryID, ok := vm.GetFunctionExport(*entryFunctionFlag) // Get function ID from entry flag

	if !ok { // Check for errors
		fmt.Printf("Entry function %s not found; starting from 0.\n", *entryFunctionFlag) // Log fail
		entryID = 0                                                                       // Set entry ID
	}

	var args []int64 // Init arg buffer

	if len(flag.Args()) != 0 { // Check has non-flag args
		for _, arg := range flag.Args() { // Iterate through args
			//fmt.Println(arg)                              // Log arg
			if ia, err := strconv.Atoi(arg); err != nil { // Check for possible errors
				panic(err) // Panic
			} else {
				args = append(args, int64(ia)) // Append arg to args buffer
			}
		}
	}

	ret, err := vm.Run(entryID, args...) // Run with given entry function, params

	if err != nil { // Check for errors
		vm.PrintStackTrace() // Log stack trace
		panic(err)           // Panic
	}

	fmt.Printf("%d\n", ret) // Log successful run
}

// ResolveFunc - define a set of import functions that may be called within a WebAssembly module
func (r *Resolver) ResolveFunc(module, field string) vm.FunctionImport {
	fmt.Printf("Resolve func: %s %s\n", module, field) // Log resolve

	switch module { // Handle module types
	case "env": // Env module
		switch field { // Handle fields
		case "__life_ping":
			return func(vm *vm.VirtualMachine) int64 {
				return vm.GetCurrentFrame().Locals[0] + 1
			}
		case "__life_log":
			return func(vm *vm.VirtualMachine) int64 {
				ptr := int(uint32(vm.GetCurrentFrame().Locals[0]))
				msgLen := int(uint32(vm.GetCurrentFrame().Locals[1]))
				msg := vm.Memory[ptr : ptr+msgLen]
				fmt.Printf("[app] %s\n", string(msg))
				return 0
			}

		default:
			panic(fmt.Errorf("unknown field: %s", field)) // Panic
		}
	default:
		panic(fmt.Errorf("unknown module: %s", module)) // Panic
	}
}

// ResolveGlobal - define a set of global variables for use within a WebAssembly module
func (r *Resolver) ResolveGlobal(module, field string) int64 {
	fmt.Printf("Resolve global: %s %s\n", module, field) // Log resolve global

	switch module { // Handle module types
	case "env": // Env module
		switch field { // Handle fields
		case "__ursa_magic":
			return 424 // Return magic
		default:
			panic(fmt.Errorf("unknown field: %s", field)) // Panic
		}
	default:
		panic(fmt.Errorf("unknown module: %s", module)) // Panic
	}
}
