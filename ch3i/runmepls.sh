#!/bin/bash

DOCKER_USER="abyss"

docker build -t abyss .

if [ "$(docker ps -a -q -f name^/${DOCKER_USER}$)" ]; then
	docker rm $DOCKER_USER >/dev/null
fi

docker run -d $DOCKER_USER

ssh void@localhost -p 2222
