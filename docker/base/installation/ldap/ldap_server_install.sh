#!/bin/bash

set -x

## Install LDAP head node

echo "install ldap server"

# Installation
cat /installation/ldap/preseedHead.deb | debconf-set-selections
dpkg-reconfigure slapd
ufw allow ldap

# Configure ldap
bash /installation/ldap/createUsersLdif.sh
ldapadd -x -D "cn=admin,dc=csc,dc=wcupa,dc=edu" -w admin -f /installation/ldap/basedln.ldif
ldapadd -x -D "cn=admin,dc=csc,dc=wcupa,dc=edu" -w admin -f /installation/ldap/users.ldif
