package vm

// StateDatabase - database holding vm states
type StateDatabase struct {
	States []*StateEntry `json:"states"` // VM states

	StateRoot *StateEntry `json:"root"` // VM state root

	MerkleRoot []byte `json:"merkle_root"` // State merkle root

	ID []byte `json:"ID"` // State DB ID
}
