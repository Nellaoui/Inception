# Makefile for managing Docker Compose services (nginx, mariadb, wordpress)
COMPOSE_PATH = ./srcs/docker-compose.yml
.PHONY: all up down restart logs build clean 

all: build up

build:
	@docker compose -f $(COMPOSE_PATH) build

up:
	@docker compose -f $(COMPOSE_PATH) up --build -d

down:
	@docker compose -f $(COMPOSE_PATH) down --volumes

re: down up

logs:
	@docker compose -f $(COMPOSE_PATH) logs -f

clean: down
	@docker compose -f $(COMPOSE_PATH) rm -f
	@docker compose -f $(COMPOSE_PATH) down -v
	@docker volume prune -f
	@sudo rm -rf /home/nelallao/data/wordpress/*
	@sudo rm -rf /home/nelallao/data/mysql/*

fclean: clean
	@docker rmi -f $(shell docker images -q)
	@docker system prune -f
	
