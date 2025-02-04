ifeq ($(shell id -u),0)
        SUDO ?=
else
        SUDO ?= sudo
endif

.PHONY: build
build: build-base build-go build-hugo

build-%:
	$(SUDO) devcontainer build --image-name $*-devcontainer --workspace-folder ./$*

# .PHONY: build-hugo
build-base build-go build-hugo:

.PHONY: clean-untagged-images
clean-untagged-images:
	./$@.sh go
	./$@.sh hugo
