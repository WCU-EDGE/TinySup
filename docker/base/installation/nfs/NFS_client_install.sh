#!/bin/bash

echo "Install NFS client"

set -x
apt-get install -y -qqq nfs-common
