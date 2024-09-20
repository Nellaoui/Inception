# Makefile for managing Docker Compose services (nginx, mariadb, wordpress)
COMPOSE_PATH = ./srcs/docker-compose.yml
.PHONY: all up down restart logs build clean 

# Default target: build and run the services 
all: build up

# Build Docker images defined in docker-compose.yml
build:
	sudo mkdir -p /home/nelallao/data/wordpress
	sudo mkdir -p /home/nelallao/data/mysql
	docker compose -f $(COMPOSE_PATH) build

# Start the services in detached mode
up:
	docker compose -f $(COMPOSE_PATH) up --build

# Stop and remove the services
down:
	docker compose -f $(COMPOSE_PATH) down --volumes

# Restart the services
re: down up

# Show logs for all services
logs:
	docker compose logs -f

# Remove all containers, networks, and volumes created by docker compose
clean: down
	docker compose -f $(COMPOSE_PATH) rm -f
	docker compose -f $(COMPOSE_PATH) down -v
	docker volume prune -f
	sudo rm -rf /home/nelallao/data/wordpress
	sudo rm -rf /home/nelallao/data/mysql
