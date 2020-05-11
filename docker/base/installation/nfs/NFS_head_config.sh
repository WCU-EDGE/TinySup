#!/bin/bash

echo 'configure NFS server'
set -x

mkdir -p /mpishare/flagdir
mkdir /software

chown nobody:nogroup /home
chown nobody:nogroup /mpishare
chown nobody:nogroup /opt
chown nobody:nogroup /software

chmod -R 777 /home
chmod -R 777 /mpishare
chmod -R a+rx /opt
chmod -R a+rx /software

# Create the permissions file for the NFS directory.
#computes=$(($1 + 1))
computes=5
for i in $(seq 3 $computes)
do
  echo "/home 192.168.0.$i(rw,sync,no_root_squash,no_subtree_check,fsid=2000)" | tee -a /etc/exports
  echo "/mpishare 192.168.0.$i(rw,sync,no_root_squash,no_subtree_check,fsid=2001)" | tee -a /etc/exports
  echo "/opt 192.168.0.$i(rw,sync,no_root_squash,no_subtree_check,fsid=2002)" | tee -a /etc/exports
  echo "/software 192.168.0.$i(rw,sync,no_root_squash,no_subtree_check,fsid=2003)" | tee -a /etc/exports
done

service rpcbind restart
service nfs-kernel-server start
