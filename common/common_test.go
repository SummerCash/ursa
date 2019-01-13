package common

import "testing"

// TestGetDefaultDataDir - test functionality of data dir getter
func TestGetDefaultDataDir(t *testing.T) {
	dataDir := GetDefaultDataDir() // Get default data dir

	if dataDir == "" { // Check for nil data dir
		t.Fatal("nil data dir") // Panic
	}

	t.Log(dataDir) // Log success
}
