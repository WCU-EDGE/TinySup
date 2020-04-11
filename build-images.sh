#!/bin/bash

set -e

docker image rm head | true
docker image rm ldap | true

#dos2unix docker/spark-worker/start-worker.sh
#dos2unix docker/spark-master/start-master.sh

docker build -t head:latest ./docker/head
docker build -t ldap:latest ./docker/ldap

echo "Launch the Dockerized Spark cluster with a specific number of workers"
echo "docker-compose up -d --scale spark-worker=  "
