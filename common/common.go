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

/* BEGIN EXPORTED METHODS */

/* END EXPORTED METHODS */
