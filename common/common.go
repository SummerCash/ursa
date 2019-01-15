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

/*
	BEGIN UTIL METHODS
*/

// CatchPanic catches any panic and writes the error to out.
func CatchPanic(out *error) {
	if err := recover(); err != nil { // Attempt to recover from panic
		*out = UnifyError(err) // Log error
	}
}

// UnifyError converts e to error.
func UnifyError(e interface{}) error {
	switch e.(type) { // Switch error type
	case error: // Is genuine error type
		return e.(error) // Log as error type
	default:
		return fmt.Errorf("%+v", e) // Log
	}
}

/*
	END UTIL METHODS
*/

/* END EXPORTED METHODS */
