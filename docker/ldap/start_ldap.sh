#!/bin/#!/usr/bin/env bash

# configure NFS server on ldap-nfs
# bash /installation/nfs/NFS_server_config.sh
echo "Docker: finishes NFS startup ..."

# configure LDAP server on ldap-nfs
cp  installation/ldap/slapd.conf /etc/openldap/
cp  installation/ldap/organization.ldif /etc/openldap/
cp  installation/ldap/users.ldif /etc/openldap/
#bash /installation/ldap/launch_ldap.sh
echo "Docker: finishes LDAP startup ..."

echo "Docker: ldap-nfs is sleeping"
sleep infinity
