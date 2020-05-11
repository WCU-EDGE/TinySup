#!/bin/bash

set -x

## Install LDAP head node

echo "installLdapHead.sh"

# Installation
apt-get install -y debconf-utils
apt-get install -y slapd ldap-utils
cat /installation/ldap/preseedHead.deb | debconf-set-selections
dpkg-reconfigure slapd
ufw allow ldap

# Configure ldap
bash /installation/ldap/createUsersLdif.sh
ldapadd -x -D "cn=admin,dc=csc,dc=wcupa,dc=edu" -w admin -f /installation/ldap/basedln.ldif
ldapadd -x -D "cn=admin,dc=csc,dc=wcupa,dc=edu" -w admin -f /installation/ldap/users.ldif
