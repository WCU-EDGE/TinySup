#!/bin/bash
set -x

# Install LDAP server
bash /installation/ldap/installLdapHead.sh

# Install LDAP client so we can run MPI as LDAP users
bash /installation/ldap/installLdapClient.sh

# Install NFS server
bash /installation/nfs/installNfsHead.sh

mkdir /software/flagdir
