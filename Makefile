.PHONY: all composer-install init npm-install build

CODE_DIR=./code
OPS_DIR=./ops
DEV_DOCKER_PARAMS=-f $(CODE_DIR)/docker-compose.yml
PROD_DOCKER_PARAMS=-f $(CODE_DIR)/docker-compose.yml -f $(CODE_DIR)/docker-compose.prod.yml
WEB_CMD=docker-compose $(DEV_DOCKER_PARAMS) exec web

all: help

build: ## Rebuilds containers
	docker-compose $(DEV_DOCKER_PARAMS) up -d --force-recreate --build

composer-install: ## Initializes Repo
	docker-compose $(DEV_DOCKER_PARAMS) run phpfpm composer install

help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

init: build composer-install npm-install ## Initializes Repo

npm-install: ## Npm install
	docker-compose $(DEV_DOCKER_PARAMS) run node npm install
