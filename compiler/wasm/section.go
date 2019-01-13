package wasm

// SectionID - 1-byte code that encodes the section code of both known and custom sections
type SectionID uint8

const (
	// SectionIDCustom - custom section ID
	SectionIDCustom SectionID = 0

	// SectionIDType - type section ID
	SectionIDType SectionID = 1

	// SectionIDImport - import section ID
	SectionIDImport SectionID = 2

	// SectionIDFunction - function section ID
	SectionIDFunction SectionID = 3

	// SectionIDTable - table section ID
	SectionIDTable SectionID = 4

	// SectionIDMemory - memory section ID
	SectionIDMemory SectionID = 5

	// SectionIDGlobal - global section ID
	SectionIDGlobal SectionID = 6

	// SectionIDExport - export section ID
	SectionIDExport SectionID = 7

	// SectionIDStart - entry method section ID
	SectionIDStart SectionID = 8

	// SectionIDElement - element section ID
	SectionIDElement SectionID = 9

	// SectionIDCode - code section ID
	SectionIDCode SectionID = 10

	// SectionIDData - raw data section ID
	SectionIDData SectionID = 11
)
