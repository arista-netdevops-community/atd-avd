### Generic Variables
SHELL := /bin/zsh

.PHONY: help
help: ## Display help message (*: main entry points / []: part of an entry point)
	@grep -E '^[0-9a-zA-Z_-]+\.*[0-9a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'


################################################################################
# ATD-fabric
################################################################################

.PHONY: prepare
prepare: ## Build container topology in CVP to simulate a ZTP environment
	ansible-playbook playbooks/atd-prepare-lab.yml

.PHONY: build
build: ## Build fabric artifacts
	ansible-playbook playbooks/atd-fabric-build.yml

.PHONY: cvp
cvp: ## Push configurations to CVP and create tasks (user must execute)
	ansible-playbook playbooks/atd-fabric-provision.yml

.PHONY: validate
validate: ## Validate the fabric from the EOS nodes using eAPI
	ansible-playbook playbooks/atd-validate-states.yml
