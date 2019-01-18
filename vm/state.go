package vm

import (
	"bytes"
	"encoding/gob"
	"fmt"
	"io/ioutil"
	"os"
	"path/filepath"

	"github.com/SummerCash/ursa/common"
)

// SaveState - save virtual machine state to persistent memory
func (vm *VirtualMachine) SaveState() error {
	err := vm.Environment.WriteToMemory() // Save config to persistent memory

	if err != nil { // Check for errors
		return err // Return found error
	}

	m := *vm.Module                       // Get module
	functionImports := vm.FunctionImports // Get func imports

	(*vm).Module = nil          // Set module to nil
	(*vm).FunctionImports = nil // Set func imports to nil

	var stateBuffer bytes.Buffer // Init encoding buffer

	encoder := gob.NewEncoder(&stateBuffer) // Write to state buffer

	err = encoder.Encode(*vm) // Encode virtual machine state

	if err != nil { // Check for errors
		return err // Return found error
	}

	abs, err := filepath.Abs(filepath.FromSlash(fmt.Sprintf("%s/state_%s.ursa", common.DataDir, vm.Module.Identifier))) // Get absolute dir

	if err != nil { // Check for errors
		return err // Return found error
	}

	err = common.CreateDirIfDoesNotExit(abs) // Create data dir if not exist

	if err != nil { // Check for errors
		return err // Return found error
	}

	err = ioutil.WriteFile(abs, stateBuffer.Bytes(), 0644) // Write state buffer to persistent memory

	if err != nil { // Check for errors
		return err // Return found error
	}

	(*vm).Module = &m                       // Set VM module
	(*vm).FunctionImports = functionImports // Set func imports

	return nil // No error occurred, return nil
}

// LoadState - read the virtual machine state from persistent memory (if applicable)
func (vm *VirtualMachine) LoadState() error {
	abs, err := filepath.Abs(filepath.FromSlash(fmt.Sprintf("%s/state_%s.ursa", common.DataDir, vm.Module.Identifier))) // Get absolute dir

	if err != nil { // Check for errors
		return err // Return found error
	}

	stateFile, err := os.Open(abs) // Read state bytes

	if err != nil { // Check for errors
		return err // Return found error
	}

	decoder := gob.NewDecoder(stateFile) // Init gob decoder

	err = decoder.Decode(vm) // Decode state bytes

	if err != nil { // Check for errors
		return err // Return found error
	}

	stateFile.Close() // Close state file

	return nil // No error occurred, return nil
}
