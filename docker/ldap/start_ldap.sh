#!/bin/#!/usr/bin/env bash

cp /installation/pbspro/pbs.conf.mngr /etc/pbs.conf
cp /installation/pbspro/config.mom /var/spool/pbs/mom_priv/config

chmod 4755 /opt/pbs/sbin/pbs_iff 
chmod 4755 /opt/pbs/sbin/pbs_rcp 

ln -s /usr/local/ssl/bin/openssl /usr/bin/openssl
ln -s /usr/lib64/libedit.so.0 /usr/lib64/libedit.so.2

# start PBS Pro
/etc/init.d/pbs start

/opt/pbs/bin/qmgr -c "create node 192.168.0.4"
/opt/pbs/bin/qmgr -c "create node 192.168.0.5"
/opt/pbs/bin/qmgr -c "create queue workq"
/opt/pbs/bin/qmgr -c "set queue workq queue_type=Execution"
/opt/pbs/bin/qmgr -c "set queue workq enabled=True"
/opt/pbs/bin/qmgr -c "set queue workq started=True"
/opt/pbs/bin/qmgr -c "set node 192.168.0.4 queue=workq"
/opt/pbs/bin/qmgr -c "set node 192.168.0.5 queue=workq"

# create default non-root user
adduser pbsuser && su - pbsuser

echo "LDAP node finished and is sleeping"
sleep infinity
