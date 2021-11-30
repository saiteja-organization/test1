# Where to push the docker image.
PROJECT := issuance
REGISTRY ?= us.gcr.io/test-sample
BINS := api worker
VERSION ?= $(shell git describe --tags --always --dirty)
ARCH := $(if $(GOARCH),$(GOARCH),$(shell go env GOARCH))
TAG := $(VERSION)__$(OS)_$(ARCH)
