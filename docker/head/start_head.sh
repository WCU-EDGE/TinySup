#!/bin/#!/usr/bin/env bash

ufw allow 2049
ufw allow 111
ufw allow 22

service ssh start

chmod 755 /installation/ldap/ldap_client_install.sh
. /installation/ldap/ldap_client_install.sh


chmod 755 /installation/pbspro/install_pbspro.sh
. /installation/pbspro/install_pbspro.sh

echo "Head node finishes and is sleeping"
sleep infinity
