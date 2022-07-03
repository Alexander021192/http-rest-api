package sqlstore

import (
	"database/sql"

	"github.com/Alexander021192/http-rest-api/internal/app/store"
	_ "github.com/lib/pq"
)

// store ..
type Store struct {
	db             *sql.DB
	userRepository *UserRepository
}

// New ...
func New(db *sql.DB) *Store {
	return &Store{
		db: db,
	}
}

func (s *Store) User() store.UserRepository {
	if s.userRepository == nil {
		s.userRepository = &UserRepository{
			store: s,
		}
	}

	return s.userRepository
}
