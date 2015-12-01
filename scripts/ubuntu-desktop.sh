#!/bin/bash

set -e

# Insync (Google drive)
sudo apt-add-repository -k 'https://d2t3ff60b2tol4.cloudfront.net:80/' 'deb http://apt.insynchq.com/ubuntu trusty non-free contrib'

# Yubikey
sudo apt-add-repository -y ppa:yubico/stable

# Google Chrome
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" > /etc/apt/sources.list.d/google.list'

sudo apt-get update

# Development
sudo apt-get install -qqy virtualbox virtualbox-dkms virtualbox-guest-additions-iso
sudo apt-get install -qqy openjdk-8-jdk
sudo apt-get install -qqy google-chrome-stable

# Utilities
sudo apt-get install -qqy gnome-tweak-tool unity-tweak-tool
sudo apt-get install -qqy vlc
sudo apt-get install -qqy pidgin pidgin-otr
sudo apt-get install -qqy redshift-gtk

# Download stuff
sudo apt-get install -qqy openvpn
sudo apt-get install -qqy vuze

# Keepass stuff
# TODO: Automatically install OtpKeyProv?
sudo apt-get install -qyy insync
sudo apt-get install -qyy keepass2
sudo apt-get install -qqy yubikey-personalization-gui
