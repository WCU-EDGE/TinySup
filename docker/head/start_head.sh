#!/bin/#!/usr/bin/env bash

# setup login-scheduler to use NFS from ldap-nfs
bash /installation/nfs/NFS_client_config.sh

# setup ldap client Configuration
cp /installation/ldap/ldap.conf.client /etc/openldap/ldap.conf

echo "Docker: login-scheduler is sleeping"
sleep infinity
