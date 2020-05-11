#!/bin/#!/usr/bin/env bash

bash /installation/nfs/NFS_head_config.sh
ufw allow 2049
ufw allow 111

echo "Head node finishes and is sleeping"
sleep infinity
