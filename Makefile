.DEFAULT_GOAL := help
.PHONY: help serve lock test test-verbose mypy

help: ## this help dialog
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

setup-shells: ## move shell scripts to /usr/local/bin
	cp shell/* /usr/local/bin

setup-vimrc: ## moves .vimrc to home directory
	cp vim/.vimrc ~/
