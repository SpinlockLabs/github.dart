.DEFAULT_GOAL := help
SHELL=/bin/bash -o pipefail

# Cite: https://marmelab.com/blog/2016/02/29/auto-documented-makefile.html
.PHONY: help
help: ## Display this help page
	@grep -E '^[a-zA-Z0-9/_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

.PHONY: fixtures
fixtures: ## Run octokit-fixtures-server for scenario tests
	@npx octokit-fixtures-server &

.PHONY: stop
stop: ## Stop the fixtures server
	@killall node

.PHONY: test
test: fixtures ## Run tests
	@dart test -P all
	make stop