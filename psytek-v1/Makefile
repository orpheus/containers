.PHONY: help build start printos

help: ## : Show this help
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z0-9_%-]+:.*?## / {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}' ${MAKEFILE_LIST}

up: ## : Spin up services
	docker-compose up -d

down: ## : Spin down services
	docker-compose down --remove-orphans

restart: ## : Restart services
	docker-compose restart

build: ## Rebuild services
	docker-compose up --build

ls: # View status of services
	docker-compose ps

