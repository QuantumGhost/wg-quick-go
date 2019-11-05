PACKAGE := github.com/QuantumGhost/wg-quick-go
COMMIT_ID := master
VERSION := master
PROGRAM_NAME := wg-quick-go
BUILD_ARGS := -ldflags "-X $(PACKAGE)/consts.programName=$(PROGRAM_NAME) -X $(PACKAGE)/consts.version=$(VERSION) -X $(PACKAGE)/consts.commitID=$(COMMIT_ID)"
EXTRA_BUILD_ARGS =
OUTPUT_FILE := out/wg-quick-go
MAIN_FILE := main.go

.PHONY: fotmat build check-style lint check-error clean

clean:
	@rm -f $(OUTPUT_FILE)

format:
	@go fmt ./...

build:
	go build $(BUILD_ARGS) $(EXTRA_BUILD_ARGS) -o $(OUTPUT_FILE) $(MAIN_FILE)

check-style:
	@golangci-lint run --disable-all -E gofmt ./...

lint:
	@golangci-lint run ./...

check-error:
	@golangci-lint run --disable-all -E errcheck ./...
