#!/bin/bash

#set perameter

# 1, Install openssh 
apt-get update
apt-get --assume-yes upgrade
apt-get --assume-yes install openssh-server

# 2, Config openssh to allow root login
CONFIG_FILE=/etc/ssh/sshd_config
TARGET_KEY=PermitRootLogin
REPLACEMENT_VALUE=yes
sed -i "s/\($TARGET_KEY *  *\).*/\1$REPLACEMENT_VALUE/" $CONFIG_FILE
service ssh restart

# 3, restart SSH to apply the config