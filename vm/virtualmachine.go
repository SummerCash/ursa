package vm

// VirtualMachine - container holding VM config, metadata
type VirtualMachine struct {
	Environment Environment `json:"environment"` // VM config
}
