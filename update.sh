#!/bin/bash
#Simple script for updating Debian-like systems

#Update repositories
apt update

#Upgrade aviable packages
apt -y dist-upgrade

#Remove deprecated and unnecessary packages
apt -y autoremove

#Clean packages and install scripts
apt clean

#Purges no longer needed packages from system
apt purge -y $(dpkg -l | awk '/^rc/ { print $2 }')

