#!/bin/bash

docker stop dev-cow
docker rm dev-cow
docker rmi dev-cow
docker build -t dev-cow ./docker/
docker run -d -P -v $(pwd)/:/var/www/html/ --name dev-cow dev-cow
