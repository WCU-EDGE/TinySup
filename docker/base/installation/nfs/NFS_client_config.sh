#!/bin/bash

echo "Configure NFS client"

mkdir /nfs

ipaddress="192.168.0.2"
mount -t nfs $ipaddress:/ /nfs || true
# Cycle until we can mount software.
while [ ! -d /nfs/software/flagdir ]; do
  mount -t nfs $ipaddress:/software /software || true
  sleep 60
done

echo "Finish mounting NFS directories"
