package vm

// VirtualMachine - container holding VM config, metadata
type VirtualMachine struct {
	Environment Environment `json:"environment"` // VM config
}

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
