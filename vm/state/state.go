package state

import "errors"

var (
	// ErrNilStateEntry - describes an error regarding a stateDB of 0 entry length
	ErrNilStateEntry = errors.New("no state entries found")
)

// Entry - current VM state
type Entry struct {
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

// Frame - call stack frame
type Frame struct {
	FunctionID   int     // Module function identifier
	Code         []byte  // Frame bytecode
	Regs         []int64 // Regs
	Locals       []int64 // Local vrs
	IP           int     // IP
	ReturnReg    int     // Returning reg
	Continuation int32   // Continuation
}
