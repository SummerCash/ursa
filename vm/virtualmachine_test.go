package vm

import (
	"io/ioutil"
	"path/filepath"
	"testing"

	"github.com/SummerCash/ursa/compiler"
)

// TestNewVirtualMachine - test functionality of vm init
func TestNewVirtualMachine(t *testing.T) {
	env := &Environment{EnableJIT: false, DefaultMemoryPages: 128, DefaultTableSize: 65536} // Init env

	if env == nil { // Check nil env
		t.Fatal("nil environment configuration") // Panic
	}

	abs, err := filepath.Abs(filepath.FromSlash("../examples/main.wasm")) // Get absolute path to test WASM file

	if err != nil { // Check for errors
		t.Fatal(err) // Panic
	}

	testSourceFile, err := ioutil.ReadFile(abs) // Read test WASM file

	if err != nil { // Check for errors
		t.Fatal(err) // Panic
	}

	vm, err := NewVirtualMachine(testSourceFile, *env, new(NopResolver), nil) // Init vm

	if err != nil { // Check for errors
		t.Fatal(err) // Panic
	}

	t.Log(vm) // Log success
}

// TestRun - test functionality of vm run
func TestRun(t *testing.T) {
	abs, err := filepath.Abs(filepath.FromSlash("../examples/main.wasm")) // Get absolute path to test WASM file

	if err != nil { // Check for errors
		t.Fatal(err) // Panic
	}

	testSourceFile, err := ioutil.ReadFile(abs) // Read test WASM file

	if err != nil { // Check for errors
		t.Fatal(err) // Panic
	}

	simpleGasPolicy := &compiler.SimpleGasPolicy{GasPerInstruction: 1} // Init simple gas policy

	vm, err := NewVirtualMachine(testSourceFile, Environment{}, &NopResolver{}, simpleGasPolicy) // Init vm

	if err != nil { // Check for errors
		t.Fatal(err) // Panic
	}

	entryID, ok := vm.GetFunctionExport("main") // Get main func

	if ok != true { // Check for errors
		t.Fatal(entryID) // Panic
	}

	result, err := vm.Run(entryID) // Execute

	if err != nil { // Check for errors
		t.Fatal(err) // Panic
	}

	t.Log(result) // Log success
}

// TestSaveTest - test functionality of outbound vm I/O
func TestSaveState(t *testing.T) {
	abs, err := filepath.Abs(filepath.FromSlash("../examples/main.wasm")) // Get absolute path to test WASM file

	if err != nil { // Check for errors
		t.Fatal(err) // Panic
	}

	testSourceFile, err := ioutil.ReadFile(abs) // Read test WASM file

	if err != nil { // Check for errors
		t.Fatal(err) // Panic
	}

	simpleGasPolicy := &compiler.SimpleGasPolicy{GasPerInstruction: 1} // Init simple gas policy

	vm, err := NewVirtualMachine(testSourceFile, Environment{}, &NopResolver{}, simpleGasPolicy) // Init vm

	if err != nil { // Check for errors
		t.Fatal(err) // Panic
	}

	entryID, ok := vm.GetFunctionExport("main") // Get main func

	if ok != true { // Check for errors
		t.Fatal(entryID) // Panic
	}

	result, err := vm.Run(entryID) // Execute

	if err != nil { // Check for errors
		t.Fatal(err) // Panic
	}

	err = vm.SaveState() // Save VM state

	if err != nil { // Check for errors
		t.Fatal(err) // Panic
	}

	t.Log(result) // Log success
}
