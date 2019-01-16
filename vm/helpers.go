package vm

import (
	"errors"

	"github.com/perlin-network/life/utils"
)

var _ ImportResolver = (*NopResolver)(nil)

// NopResolver is a nil WebAssembly module import resolver.
type NopResolver struct{}

// ResolveFunc - panic
func (r *NopResolver) ResolveFunc(module, field string) FunctionImport {
	panic("func import not allowed") // Panic
}

// ResolveGlobal - panic
func (r *NopResolver) ResolveGlobal(module, field string) int64 {
	panic("global import not allowed") // Panic
}

// RunWithGasLimit - run a WebAssembly modules function denoted by its ID with a specified set
// of parameters for a specified amount of instructions (also known as gas) denoted by `limit`
func (vm *VirtualMachine) RunWithGasLimit(entryID, limit int, params ...int64) (int64, error) {
	count := 0 // Init count buffer

	vm.Ignite(entryID, params...) // Ignite vm

	for !vm.Exited { // Do until vm exits
		vm.Execute() // Execute

		if vm.Delegate != nil { // Check for delegate call
			vm.Delegate()     // Run delegate call
			vm.Delegate = nil // Delgate run, set to nil
		}

		count++ // Iterate

		if count == limit { // Check gas limit exceeded
			return -1, errors.New("gas limit exceeded") // Return error
		}
	}

	if vm.ExitError != nil { // Check for errors
		return -1, utils.UnifyError(vm.ExitError) // Return error
	}

	return vm.ReturnValue, nil // Return success
}

// Run runs a WebAssembly modules function denoted by its ID with a specified set
// of parameters.
// Panics on logical errors.
func (vm *VirtualMachine) Run(entryID int, params ...int64) (int64, error) {
	vm.Ignite(entryID, params...) // Ignite VM

	for !vm.Exited { // Check not already exited
		vm.Execute() // Execute

		if vm.Delegate != nil { // Check for errors
			vm.Delegate()     // Run delegate call
			vm.Delegate = nil // Delegate run, set to nil
		}
	}

	if vm.ExitError != nil { // Check for exit error
		return -1, utils.UnifyError(vm.ExitError) // Panic/return err
	}

	return vm.ReturnValue, nil // Return success
}
