package compiler

import (
	"io/ioutil"
	"path/filepath"
	"testing"
)

// TestLoadModule - test functionality of module loader
func TestLoadModule(t *testing.T) {
	abs, err := filepath.Abs(filepath.FromSlash("../examples/unary.wasm.txt")) // Get absolute path to test WASM file

	if err != nil { // Check for errors
		t.Fatal(err) // Panic
	}

	testSourceFile, err := ioutil.ReadFile(abs) // Read test WASM file

	if err != nil { // Check for errors
		t.Fatal(err) // Panic
	}

	module, err := LoadModule(testSourceFile) // Load module

	if err != nil { // Check for errors
		t.Fatal(err) // Panic
	}

	t.Log(module.FunctionNames[0]) // Log success
}
