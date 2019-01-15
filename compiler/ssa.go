package compiler

import (
	"github.com/SummerCash/wagon/disasm"
	"github.com/SummerCash/wagon/wasm"
)

// TyValueID - uint64 type alias indicating a tyValueID
type TyValueID uint64

// SSAFunctionCompiler represents a compiler which translates a WebAssembly modules
// interpreted code into a Static-Single-Assignment-based intermediate representation.
type SSAFunctionCompiler struct {
	Module *wasm.Module        // Wasm module
	Source *disasm.Disassembly // Wasm source

	Code      []Instr     // Instruction set
	Stack     []TyValueID // Stack
	Locations []*Location // Locations

	CallIndexOffset int // Call index offset

	StackValueSets map[int][]TyValueID    // Stack values
	UsedValueIDs   map[TyValueID]struct{} // Value IDs

	ValueID TyValueID // ValueID
}

// Location - location
type Location struct {
	CodePos         int         // Pos
	StackDepth      int         // Stack depth
	BrHead          bool        // true for loops
	PreserveTop     bool        // Should preserve
	LoopPreserveTop bool        // Loop preserve
	FixupList       []FixupInfo // Fixups

	IfBlock bool // No clue
}

// FixupInfo - fixup info
type FixupInfo struct {
	CodePos  int // Bytecode position
	TablePos int // Table position
}

// Instr - single instrution
type Instr struct {
	Target TyValueID // the value id we are assigning to

	Op         string      // Operation
	Immediates []int64     // Immediate values
	Values     []TyValueID // Value
}

// NewSSAFunctionCompiler instantiates a compiler which translates a WebAssembly modules
// interpreted code into a Static-Single-Assignment-based intermediate representation.
func NewSSAFunctionCompiler(m *wasm.Module, d *disasm.Disassembly) *SSAFunctionCompiler {
	return &SSAFunctionCompiler{ // Return initialized function compiler
		Module:         m,
		Source:         d,
		StackValueSets: make(map[int][]TyValueID),
		UsedValueIDs:   make(map[TyValueID]struct{}),
	}
}
