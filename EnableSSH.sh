#!/bin/bash

# Pre-Cond: 
# 1, Install Git: apt-get --assume-yes install git
# 2, Git clone: git clone https://github.com/scott3212/Ubuntu-phpBB.git
# 3, Go to cloned folder Ubuntu-phpBB: cd Ubuntu-phpBB
# 4, Change mode: chmod 744 *.sh
# 5, Change Time and Date: 
# dpkg-reconfigure tzdata


#set perameter
GIT_HOME=`pwd`

# 1, Install openssh 
#apt-get update
#apt-get --assume-yes upgrade
#apt-get --assume-yes install openssh-server

# 2, Config openssh to allow root login
CONFIG_FILE=/etc/ssh/sshd_config
TARGET_KEY=PermitRootLogin
REPLACEMENT_VALUE=yes
sed -i "s/\($TARGET_KEY *  *\).*/\1$REPLACEMENT_VALUE/" $CONFIG_FILE
service ssh restart
