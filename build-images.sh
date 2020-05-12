#!/bin/bash

set -e
docker image rm base | true
docker image rm head | true
docker image rm ldap | true

#dos2unix docker/spark-worker/start-worker.sh
#dos2unix docker/spark-master/start-master.sh

mkdir -p docker/ldap/nfs

docker build -t base:latest ./docker/base
docker build -t ldap:latest ./docker/ldap
docker build -t head:latest ./docker/head


echo "Launch the Dockerized Spark cluster with a specific number of workers"
echo "docker-compose up -d --scale spark-worker=  "
