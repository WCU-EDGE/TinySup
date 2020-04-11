#!/bin/bash

set -e

docker image rm spark-worker | true
docker image rm spark-master | true
docker image rm spark-base | true

dos2unix docker/spark-worker/start-worker.sh
dos2unix docker/spark-master/start-master.sh

docker build -t spark-base:latest ./docker/base
docker build -t spark-master:latest ./docker/spark-master
docker build -t spark-worker:latest ./docker/spark-worker

echo "Launch the Dockerized Spark cluster with a specific number of workers"
echo "docker-compose up -d --scale spark-worker=  "
