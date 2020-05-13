#!/bin/bash

modprobe nfs
modprobe nfsd

. /etc/default/nfs-kernel-server
. /etc/default/nfs-common

rpcbind
service nfs-kernel-server start

exec inotifywait -m /exports
