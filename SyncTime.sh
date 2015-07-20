#!/bin/bash

apt-get --assume-yes install ntp
/etc/init.d/ntp stop
/usr/sbin/ntpdate pool.ntp.org

# Then Run:
#   dpkg-reconfigure tzdata
# To Manually set up time