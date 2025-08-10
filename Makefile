SUDO := $(if $(filter 0,$(shell id -u)),,sudo)

COMPONENTS := base go hugo python pandoc
BUILDS := $(addprefix build-,$(COMPONENTS))

.PHONY: build
build: $(BUILDS)

build-%:
	$(SUDO) devcontainer build --image-name $*-devcontainer --workspace-folder ./$*

build-base build-go build-hugo build-python build-pandoc:

.PHONY: clean-untagged-images
clean-untagged-images:
	@$(foreach c,$(filter-out base,$(COMPONENTS)),./clean-untagged-images.sh $(c);)
