package compiler

import "github.com/SummerCash/ursa/compiler/wasm"

// Module - wasm module
type Module struct {
	Base *wasm.Module `json:"base"` // Base parsed module
}
