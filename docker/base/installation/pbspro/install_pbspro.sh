#!/bin/bash

cd /installation/pbspro
tar -xf pbspro-19.1.3.tar
cd pbspro-19.1.3
./autogen.sh
./configure --prefix=/opt/pbs
make
make install
#. /opt/pbs/libexec/pbs_postinstall
#  sudo vi /etc/pbs.conf
#chmod 4755 /opt/pbs/sbin/pbs_iff /opt/pbs/sbin/pbs_rcp
#/etc/init.d/pbs start
