#!/bin/#!/usr/bin/env bash

ufw allow 2049
ufw allow 111
chmod 755 /installation/nfs/NFS_server_config.sh
. /installation/nfs/NFS_server_config.sh

chmod 755 installation/ldap/ldap_server_install.sh
. /installation/ldap/ldap_server_install.sh

echo "LDAP node finished and is sleeping"
sleep infinity
