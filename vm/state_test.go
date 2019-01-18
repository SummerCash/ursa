package vm

import (
	"io/ioutil"
	"path/filepath"
	"testing"

	"github.com/SummerCash/ursa/compiler"
)

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

// TestLoadState - test functionality of inbound state I/O
func TestLoadState(t *testing.T) {
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

	_, err = vm.Run(entryID) // Execute

	if err != nil { // Check for errors
		t.Fatal(err) // Panic
	}

	err = vm.SaveState() // Save VM state

	if err != nil { // Check for errors
		t.Fatal(err) // Panic
	}

	loadVM, err := NewVirtualMachine(testSourceFile, Environment{}, &NopResolver{}, simpleGasPolicy) // Init vm

	if err != nil { // Check for errors
		t.Fatal(err) // Panic
	}

	err = loadVM.LoadState() // Load state

	if err != nil { // Check for errors
		t.Fatal(err) // Panic
	}

	t.Log(loadVM.ReturnValue) // Log result
}
