package compiler

import "github.com/go-interpreter/wagon/wasm"

// Module - wasm module
type Module struct {
	Base                 *wasm.Module   `json:"base"` // Base parsed module
	FunctionNames        map[int]string // Module functions
	DisableFloatingPoint bool           // Config to disable float ops
}

// InterpreterCode - interpreter metadata
type InterpreterCode struct {
	NumRegs    int // Reg count
	NumParams  int // Param count
	NumLocals  int // Local vars count
	NumReturns int // Returns count

	Bytes   []byte      // Byte val
	JITInfo interface{} // Just-in-time meta
	JITDone bool        // Finished just-in-time compilation
}
