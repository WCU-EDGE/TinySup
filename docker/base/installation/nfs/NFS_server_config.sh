#!/bin/bash

echo 'configure NFS server'
set -x

mkdir -p /nfs/software/flagdir
mkdir -p /nfs/home

chown nobody:nogroup /nfs/home
chown nobody:nogroup /nfs/software

chmod -R 777 /nfs/home
chmod -R 777 /nfs/software

echo "#NFS Exports" > /etc/exports
echo "/nfs *(rw,sync,no_subtree_check,fsid=0,no_auth_nlm,insecure,no_root_squash,crossmnt)" >> /etc/exports
#echo "/nfs *(rw,sync,no_subtree_check,fsid=0,no_auth_nlm,insecure,crossmnt)" >> /etc/exports
mkdir -p /etc/sv/nfs
cp /installation/nfs/NFS_init.sh /etc/sv/nfs/run
chmod 755 /etc/sv/nfs/run
cp /installation/nfs/NFS_finish.sh /etc/sv/nfs/finish
chmod 755 /etc/sv/nfs/finish

exec runsvdir /etc/sv &
