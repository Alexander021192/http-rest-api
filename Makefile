.PHONY: build

build:
		go build -v ./cmd/apiserver

.PHONY: test
test:
		go test -v -race -timeout 30s ./...

.PHONY: pgstart
pgstart:
		brew services start postgresql

.PHONY: pgstop
pgstop:
		brew services stop postgresql

.DEFAULT_GOAL := build

