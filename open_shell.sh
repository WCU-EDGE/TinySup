#!/usr/bin/env bash

node=`docker ps | grep $1 | awk 'END {print $1}'`
docker exec --privileged -it $node /bin/bash
