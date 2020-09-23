CONTAINER ?= avdteam/base:3.6
HOME_DIR = $(shell pwd)

help: ## Display help message
	@grep -E '^[0-9a-zA-Z_-]+\.*[0-9a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

################################################################################
# Alias Commands
################################################################################
.PHONY: wipe
wipe: ## Delete Intended Configs
	rm -rf inventory/intended/configs/*


################################################################################
# AVD Commands
################################################################################

.PHONY: build
build: ## Run ansible playbook to build EVPN Fabric configuration.
	ansible-playbook dc1-fabric-config.yml --tags build

.PHONY: provision
provision: ## Run ansible playbook to deploy EVPN Fabric.
	ansible-playbook dc1-fabric-config.yml --tags provision

.PHONY: deploy
deploy: ## Run ansible playbook to deploy EVPN Fabric.
	ansible-playbook dc1-fabric-config.yml --extra-vars "execute_tasks=true" --tags "build,provision,apply"

