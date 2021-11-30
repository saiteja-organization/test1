# Where to push the docker image.
PROJECT := issuance
REGISTRY ?= us.gcr.io/test-sample
BINS := api worker
VERSION ?= $(shell git describe --tags --always --dirty)
ARCH := $(if $(GOARCH),$(GOARCH),$(shell go env GOARCH))
OS := linux
TAG := $(VERSION)__$(OS)_$(ARCH)


container containers:
	@for bin in $(BINS); do              \
	    echo "container: $(REGISTRY)/$(PROJECT)-$$bin:$(TAG)"; \
	done
