ifeq ($(shell id -u),0)
        SUDO ?=
else
        SUDO ?= sudo
endif

.PHONY: build
build: build-go build-hugo

build-%:
	$(SUDO) devcontainer build --image-name $*-devcontainer --workspace-folder ./$*

# .PHONY: build-hugo
build-go build-hugo:
