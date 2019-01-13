package wasm

// Module - parsed wasm module
type Module struct {
	Version  uint32    // Module version
	Sections []Section // Module sections

	Types    *SectionTypes         // Section types
	Import   *SectionImports       // Section imports
	Function *SectionFunctions     // Section functions
	Table    *SectionTables        // Section tables
	Memory   *SectionMemories      // Section memory
	Global   *SectionGlobals       // Section globals
	Export   *SectionExports       // Section exports
	Start    *SectionStartFunction // Section start methods
	Elements *SectionElements      // Section elements
	Code     *SectionCode          // Section code
	Data     *SectionData          // Section data
	Customs  []*SectionCustom      // Custom section vars

	// The function index space of the module
	FunctionIndexSpace []Function    // Index space
	GlobalIndexSpace   []GlobalEntry // Global index space

	// function indices into the global function space
	// the limit of each table is its capacity (cap)
	TableIndexSpace        [][]uint32 // Index space
	LinearMemoryIndexSpace [][]byte   // Memory index space

	// imports - module imports
	imports struct {
		Funcs    []uint32 // Imported functions
		Globals  int      // Imported globals
		Tables   int      // Imported tables
		Memories int      // Imported memory
	}
}
