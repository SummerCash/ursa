package vm

import "encoding/json"

// Environment - VM config, vars
type Environment struct {
	MaxMemoryPages           int    // Max memory pages at given time
	MaxTableSize             int    // Max mem table size at given time
	MaxValueSlots            int    // Max value slots at given time
	MaxCallStackDepth        int    // Max call stack length/depth at given time
	DefaultMemoryPages       int    // Default num mem pages at given time
	DefaultTableSize         int    // Preset table size
	GasLimit                 uint64 // Gas limit
	DisableFloatingPoint     bool   // Remove float capacity
	ReturnOnGasLimitExceeded bool   // Panic on exceed specified gas limit
}

// NewEnvironment - initialize virtual machine config with given params
func NewEnvironment(maxMemoryPages int, maxTableSize int, maxValueSlots int, maxCallStackDepth int, defaultMemoryPages int, defaultTableSize int, gasLimit uint64, disableFloatingPoint bool, returnOnGasLimitExceeded bool) *Environment {
	return &Environment{ // Return initialized vm config
		MaxMemoryPages:           maxMemoryPages,
		MaxTableSize:             maxTableSize,
		MaxValueSlots:            maxValueSlots,
		MaxCallStackDepth:        maxCallStackDepth,
		DefaultMemoryPages:       defaultMemoryPages,
		DefaultTableSize:         defaultTableSize,
		GasLimit:                 gasLimit,
		DisableFloatingPoint:     disableFloatingPoint,
		ReturnOnGasLimitExceeded: returnOnGasLimitExceeded,
	}
}

// String - get string representation of given env
func (environment *Environment) String() string {
	marshaledVal, _ := json.MarshalIndent(*environment, "", "  ") // Marshal to JSON

	return string(marshaledVal) // Return string value
}

// Bytes - get byte array representation of given env
func (environment *Environment) Bytes() []byte {
	marshaledVal, _ := json.MarshalIndent(*environment, "", "  ") // Marshal to JSON

	return marshaledVal // Return success
}

// EnvironmentFromBytes - marshal byte array into environment struct
func EnvironmentFromBytes(b []byte) (*Environment, error) {
	buffer := &Environment{} // Initialize buffer

	err := json.Unmarshal(b, buffer) // Read json into buffer

	if err != nil { // Check for errors
		return &Environment{}, err // Return error
	}

	return buffer, nil // No error occurred, return read environment
}
