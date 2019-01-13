package common

import (
	"fmt"
	"path/filepath"
)

var (
	// DataDir - global data directory declaration
	DataDir = GetDefaultDataDir()

	// ConfigDir - configuration directory
	ConfigDir = filepath.FromSlash(fmt.Sprintf("%s/config", DataDir))
)

// GetDefaultDataDir - get default data directory
func GetDefaultDataDir() string {
	abs, _ := filepath.Abs(filepath.FromSlash("./data")) // Get absolute dir

	return filepath.FromSlash(abs) // Match slashes
}
