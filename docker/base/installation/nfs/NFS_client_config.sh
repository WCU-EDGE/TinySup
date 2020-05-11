#!/bin/bash

echo "Configure NFS client"

set -x

mkdir /mpishare
mkdir /opt/shared
mkdir /software

ipaddress="192.168.0.2"

service rpcbind restart
mount -v $ipaddress:/software /software || true
# Cycle until we can mount software.
while [ ! -d /software/flagdir ]; do
  mount -v $ipaddress:/software /software || true
  sleep 60
done
mount -v $ipaddress:/home /home
mount -v $ipaddress:/mpishare /mpishare
mount -v $ipaddress:/opt /opt/shared

# Keep the shared dirs after a reboot
echo "$ipaddress:/home /home nfs" | tee -a /etc/fstab
echo "$ipaddress:/mpishare /mpishare nfs" | tee -a /etc/fstab
echo "$ipaddress:/opt /opt/shared nfs" | tee -a /etc/fstab
echo "$ipaddress:/software /software nfs" | tee -a /etc/fstab
