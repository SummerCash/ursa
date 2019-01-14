package compiler

import (
	"bytes"
	"errors"

	"github.com/go-interpreter/wagon/wasm"
	"github.com/go-interpreter/wagon/wasm/leb128"
)

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

// LoadModule - load WASM raw bytes module
func LoadModule(moduleBytes []byte) (*Module, error) {
	reader := bytes.NewReader(moduleBytes) // Generate reader for inputted raw WASM module

	m, err := wasm.ReadModule(reader, nil) // Read module via wagon

	if err != nil { // Check for errors
		return &Module{}, err // Return error
	}

	/*
		err = validate.VerifyModule(m) // Verify module integrity

		if err != nil { // Check for errors
			return &Module{}, err // Return error
		}
	*/

	functionNames := make(map[int]string) // Init names buffer

	for _, sec := range m.Other { // Iterate through misc. sections
		r := bytes.NewReader(sec.Bytes) // Get byte reader

		for { // Iterate
			ty, err := leb128.ReadVarUint32(r) // Read

			if err != nil || ty != 1 { // Check for errors
				break // Break
			}

			payloadLen, err := leb128.ReadVarUint32(r) // Get payload length

			if err != nil { // Check for errors
				return &Module{}, err // Return errors
			}

			data := make([]byte, int(payloadLen)) // Init payload buffer

			n, err := r.Read(data) // Read data into buffer

			if err != nil { // Check for errors
				return &Module{}, err // Return errors
			}

			if n != len(data) { // Check for invalid length
				return &Module{}, errors.New("len mismatch") // Return errors
			}
			{
				r := bytes.NewReader(data) // Init reader

				for { // Iterate
					count, err := leb128.ReadVarUint32(r) // Read payload count

					if err != nil { // Check for errors
						break // Break
					}

					for i := 0; i < int(count); i++ { // Iterate through
						index, err := leb128.ReadVarUint32(r) // Read index

						if err != nil { // Check for errors
							return &Module{}, err // Return errors
						}

						nameLen, err := leb128.ReadVarUint32(r) // Read name length

						if err != nil { // Check for errors
							return &Module{}, err // Return errors
						}

						name := make([]byte, int(nameLen)) // Init name buffer

						n, err := r.Read(name) // Read into buffer

						if err != nil { // Check for errors
							return &Module{}, err // Return errors
						}

						if n != len(name) { // Check for length mismatch
							return &Module{}, errors.New("len mismatch") // Return errors
						}

						functionNames[int(index)] = string(name) // Append function name
						//fmt.Printf("%d -> %s\n", int(index), string(name))
					}
				}
			}
		}
		//fmt.Printf("%d function names written\n", len(functionNames))
	}

	return &Module{ // Return initialized module
		Base:          m,             // Set base
		FunctionNames: functionNames, // Set function names
	}, nil
}
