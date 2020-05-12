#!/bin/#!/usr/bin/env bash

ufw allow 2049
ufw allow 111
bash /installation/nfs/NFS_server_config.sh

echo "LDAP node finished and is sleeping"
sleep infinity
