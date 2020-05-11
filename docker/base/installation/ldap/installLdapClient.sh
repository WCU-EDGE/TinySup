#!/bin/bash

set -x

echo "installLdapClient.sh"
apt-get install -y libnss-ldap libpam-ldap ldap-utils
cat /installation/ldap/preseedClient.deb | debconf-set-selections
dpkg-reconfigure ldap-auth-config
dpkg-reconfigure libpam-runtime

cp -rf /installation/ldap/ldap.conf.client /etc/ldap.conf

sed -i 's/compat systemd/compat systemd ldap/g' /etc/nsswitch.conf
sed -i 's/use_authtok//g' /etc/pam.d/common-password
echo 'session optional pam_mkhomedir.so skel=/etc/skel umask=077' | tee -a /etc/pam.d/common-session

#ufw allow ldap
