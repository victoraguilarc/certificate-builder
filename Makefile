COMPOSE := @docker compose -f docker-compose.yml

ARG=

build:
	$(COMPOSE) build

up:
	$(COMPOSE) up

down:
	@echo "Server up..."
	$(COMPOSE) down

clean:
	@echo "Cleaning containers ..."
	docker ps -aq | xargs docker stop
	docker ps -aq | xargs docker rm
