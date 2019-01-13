package vm

import "testing"

// TestNewEnvironment - test functionality of environment initializer
func TestNewEnvironment(t *testing.T) {
	env := NewEnvironment(10, 10, 10, 10, 10, 10, 10, false, true) // Init env

	if env == nil { // Check nil env
		t.Fatal("nil environment configuration") // Panic
	}

	t.Log(env) // Log success
}

// TestString - test functionality of environment stringer
func TestString(t *testing.T) {
	env := NewEnvironment(10, 10, 10, 10, 10, 10, 10, false, true) // Init env

	if env == nil || env.String() == "" { // Check nil env
		t.Fatal("nil environment configuration") // Panic
	}

	t.Log(env.String()) // Log success
}
