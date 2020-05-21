#!/bin/#!/usr/bin/env bash

cp /installation/pbspro/pbs.conf.nodes /etc/pbs.conf
cp /installation/pbspro/config.mom /var/spool/pbs/mom_priv/config

chmod 4755 /opt/pbs/sbin/pbs_iff 
chmod 4755 /opt/pbs/sbin/pbs_rcp 

# start PBS Pro
/etc/init.d/pbs start

# create default non-root user
adduser pbsuser && su - pbsuser

echo "Compute node finishes and is sleeping"
sleep infinity
