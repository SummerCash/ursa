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

// StateEntry - current VM state
type StateEntry struct {
	CallStack    []Frame // VM call stack
	CurrentFrame int     // Current callstack frame

	Table []uint32 // VM mem/runtime table

	Globals []int64 // Global vrs

	Memory []byte // Virtual machine memory

	NumValueSlots int // Num of used value slots

	Yielded int64 // Did yield

	InsideExecute bool // Inside execute

	Exited    bool        // Did exit
	ExitError interface{} // Error on exit

	ReturnValue int64 // Return value

	Gas              uint64 // Gas usage
	GasLimitExceeded bool   // Has exceeded given gas limit
}

// GetState - syncs VM state
func (vm *VirtualMachine) GetState() *StateEntry {
	return &StateEntry{
		CallStack:        vm.CallStack,        // Set call stack
		CurrentFrame:     vm.CurrentFrame,     // Set current frame
		Table:            vm.Table,            // Set table
		Globals:          vm.Globals,          // Set globals
		Memory:           vm.Memory,           // Set memory
		NumValueSlots:    vm.NumValueSlots,    // Set value slots
		Yielded:          vm.Yielded,          // Set yielded
		InsideExecute:    vm.InsideExecute,    // Set inside execute
		Exited:           vm.Exited,           // Set has exited
		ExitError:        vm.ExitError,        // Set exit error
		ReturnValue:      vm.ReturnValue,      // Set return value
		Gas:              vm.Gas,              // Set gas
		GasLimitExceeded: vm.GasLimitExceeded, // Set gas limit exceeded
	} // Return state
}

// SyncToState - sync VM mem to last saved state TODO: allow syncing to different states by hash
func (vm *VirtualMachine) SyncToState() {

}

// SaveState - save virtual machine state to persistent memory
func (vm *VirtualMachine) SaveState() error {
	err := vm.Environment.WriteToMemory() // Save config to persistent memory

	if err != nil { // Check for errors
		return err // Return found error
	}

	var stateBuffer bytes.Buffer // Init encoding buffer

	encoder := gob.NewEncoder(&stateBuffer) // Write to state buffer

	err = encoder.Encode(*vm.GetState()) // Encode virtual machine state

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

	return nil // No error occurred, return nil
}

// LoadState - read the virtual machine state from persistent memory (if applicable)
func (vm *VirtualMachine) LoadState() error {
	abs, err := filepath.Abs(filepath.FromSlash(fmt.Sprintf("%s/state_%s.ursa", common.DataDir, vm.Module.Identifier))) // Get absolute dir

	if err != nil { // Check for errors
		return err // Return found error
	}

	stateBuffer := &StateEntry{} // Init state buffer

	stateFile, err := os.Open(abs) // Read state bytes

	if err != nil { // Check for errors
		return err // Return found error
	}

	decoder := gob.NewDecoder(stateFile) // Init gob decoder

	err = decoder.Decode(stateBuffer) // Decode state bytes

	if err != nil { // Check for errors
		return err // Return found error
	}

	stateFile.Close() // Close state file

	(*vm).LastStateEntry = stateBuffer // Set last state entry

	return nil // No error occurred, return nil
}
