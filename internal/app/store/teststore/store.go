package teststore

import (
	"github.com/Alexander021192/http-rest-api/internal/app/model"
	"github.com/Alexander021192/http-rest-api/internal/app/store"
	_ "github.com/lib/pq"
)

// store ..
type Store struct {
	userRepository *UserRepository
}

// New ...
func New() *Store {
	return &Store{}
}

func (s *Store) User() store.UserRepository {
	if s.userRepository == nil {
		s.userRepository = &UserRepository{
			store: s,
			users: make(map[int]*model.User),
		}
	}

	return s.userRepository
}
