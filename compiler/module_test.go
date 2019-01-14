package compiler

import (
	"io/ioutil"
	"testing"
)

// TestLoadModule - test functionality of module loader
func TestLoadModule(t *testing.T) {
	testSourceFile, err := ioutil.ReadFile("test.wasm") // Read test WASM file

	if err != nil { // Check for errors
		t.Fatal(err) // Panic
	}

	module, err := LoadModule(testSourceFile) // Load module

	if err != nil { // Check for errors
		t.Fatal(err) // Panic
	}

	t.Log(module) // Log success
}
