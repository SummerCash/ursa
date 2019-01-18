package vm

import (
	"encoding/json"

	"github.com/SummerCash/ursa/crypto"
)

// StateDatabase - database holding vm states
type StateDatabase struct {
	States []*StateEntry `json:"states"` // VM states

	StateRoot *StateEntry `json:"root"` // VM state root

	MerkleRoot []byte `json:"merkle_root"` // State merkle root

	ID []byte `json:"ID"` // State DB ID
}

/* BEGIN EXPORTED METHODS */

// NewStateDatabase - initialize state DB with given root
func NewStateDatabase(rootState *StateEntry) *StateDatabase {
	stateDB := &StateDatabase{
		States:     []*StateEntry{rootState},       // Set states
		StateRoot:  rootState,                      // Set root
		MerkleRoot: crypto.Sha3(rootState.Bytes()), // Set merkle root
	}

	(*stateDB).ID = crypto.Sha3(stateDB.Bytes()) // Set db id

	return stateDB // Return init db
}

// QueryState - query state in db by identifier
func (stateDB *StateDatabase) QueryState(id []byte) (*StateEntry, error) {
	if len(stateDB.States) == 0 || stateDB.States == nil { // Check no states
		return &StateEntry{}, ErrNilStateEntry // Return error
	}

	for _, state := range stateDB.States { // Iterate through states
		if state.ID == id { // Check for match
			return state, nil // Return found state
		}
	}

	return &StateEntry{}, ErrNilStateEntry // Return error
}

/*
	BEGIN TYPE HELPERS
*/

// Bytes - get byte representation of db
func (stateDB *StateDatabase) Bytes() []byte {
	marshaledVal, _ := json.MarshalIndent(*stateDB, "", "  ") // Marshal JSON

	return marshaledVal // Return success
}

// String - get string representation of db
func (stateDB *StateDatabase) String() string {
	marshaledVal, _ := json.MarshalIndent(*stateDB, "", "  ") // Marshal JSON

	return string(marshaledVal) // Return success
}

/*
	END TYPE HELPERS
*/

/* END EXPORTED METHODS */
