#!/bin/bash
#================
# FILE          : config.sh
#----------------
# PROJECT       : OpenSuSE KIWI Image System
# COPYRIGHT     : (c) 2006 SUSE LINUX Products GmbH. All rights reserved
#               :
# AUTHOR        : Marcus Schaefer <ms@suse.de>
#               :
# BELONGS TO    : Operating System images
#               :
# DESCRIPTION   : configuration script for SUSE based
#               : operating systems
#               :
#               :
# STATUS        : BETA
#----------------
#======================================
# Functions...
#--------------------------------------
test -f /.kconfig && . /.kconfig
test -f /.profile && . /.profile

#======================================
# Greeting...
#--------------------------------------
echo "Configure image: [$name]..."

#======================================
# Activate services
#--------------------------------------
suseActivateServices

#======================================
# SuSEconfig
#--------------------------------------
suseConfig

#==========================================
# set X link
#------------------------------------------
ln -s /usr/bin/Xorg /usr/X11R6/bin/X

#======================================
# Umount kernel filesystems
#--------------------------------------
baseCleanMount

exit 0
