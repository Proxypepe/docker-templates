#!/bin/bash

docker-compose -f docker-compose-cluster.yaml up -d

sleep 5

docker exec mongo1 /scripts/rs-init.sh
