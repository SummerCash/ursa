package opcodes

import "testing"

// TestString - test opcode stringer
func TestString(t *testing.T) {
	opcode := Opcode(byte(0)) // Init opcode

	if opcode.String() != "Nop" { // Check invalid opcode
		t.Fatal("invalid opcode string") // Panic
	}

	t.Logf("opcode string: %s", opcode.String()) // Log success
}
