LOCAL_BIN:=$(CURDIR)/bin

install-golangci-lint:
	GOBIN=$(LOCAL_BIN) go install github.com/golangci/golangci-lint/cmd/golangci-lint@v1.56.2

lint:
	GOBIN=$(LOCAL_BIN) golangci-lint run ./... --config .golangci.pipeline.yaml