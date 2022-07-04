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

# for curl test
# curl -H 'Content-Type:application/json' -d '{"email":"invalid"}' http://localhost:8080/users