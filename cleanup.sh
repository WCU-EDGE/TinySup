#!/bin/bash

set -e
docker image rm base | true
docker image rm head | true
docker image rm ldap | true
