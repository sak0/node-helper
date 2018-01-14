.PHONY: all controller executor clean test

all: controller executor

controller:
	go build -i -o _output/bin/node-helper-controller cmd/node-helper-controller.go

executor:
	go build -i -o _output/bin/node-fencing-executor cmd/node-fencing-executor.go

clean:
	-rm -rf _output

test:
	go test `go list ./... | grep -v 'vendor'`
