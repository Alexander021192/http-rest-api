.PHONY: build

build:
		go build -v ./cmd/apiserver

.PHONY: test
test:
		go test -v -race -timeout 30s ./...

.DEFAULT_GOAL := build

# brew services start postgresql
# brew services stop postgresql