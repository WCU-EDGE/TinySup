#!/bin/bash

echo "Configure NFS client"

set -x

mkdir /nfs

ipaddress="192.168.0.2"

service rpcbind restart
mount -v $ipaddress:/nfs /nfs || true
# Cycle until we can mount software.
while [ ! -d /nfs/software/flagdir ]; do
  mount -v $ipaddress:/nfs /nfs || true
  sleep 60
done
