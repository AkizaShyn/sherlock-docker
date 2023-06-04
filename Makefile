ROOT_DIR:=$(shell dirname $(realpath $(firstword $(MAKEFILE_LIST))))
SERVICE_NAME=$(shell basename $(ROOT_DIR))

# Git Folders
DOCKER_FOLDER=docker/
SECRET_FOLDER=secret/

DOCKER_FILE=-f $(DOCKER_FOLDER)docker-compose.yml
DOCKER_COMMAND=docker compose $(DOCKER_FILE)
remove:
	$(DOCKER_COMMAND) down -v
build:
	$(DOCKER_COMMAND) build
command:
	@echo $(DOCKER_COMMAND)
pull:
	$(DOCKER_COMMAND) pull
logs:
	$(DOCKER_COMMAND) logs -f --tail=100
search:
	$(DOCKER_COMMAND) run --rm sherlock --verbose --nsfw --print-found $(filter-out $@,$(MAKECMDGOALS))


