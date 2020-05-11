#!/bin/bash

echo 'install NFS on head'
set -x

#################
apt-get install -y -qqq nfs-kernel-server
