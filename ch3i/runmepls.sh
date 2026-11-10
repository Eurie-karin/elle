#!/bin/bash

DOCKER_USER="waste"

docker build -t "$DOCKER_USER" .

if [ "$(docker ps -a -q -f name=^/${DOCKER_USER}$)" ]; then
	docker rm -f "$DOCKER_USER" >/dev/null
fi

docker run -d --name "$DOCKER_USER" -p 2224:22 "$DOCKER_USER"

sshpass -p 'waste' ssh waste@localhost -p 2224


