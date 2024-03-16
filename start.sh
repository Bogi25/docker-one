#!/bin/bash

docker-compose up -d
sleep 5
docker ps
echo "check 5 containers should be running."