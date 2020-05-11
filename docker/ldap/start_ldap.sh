#!/bin/#!/usr/bin/env bash

ufw allow 2049
ufw allow 111
bash /installation/nfs/NFS_client_config.sh

echo "LDAP node finished and is sleeping"
sleep infinity
