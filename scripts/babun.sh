#!/bin/bash

set -e

DOTFILES=$(git rev-parse --show-toplevel);

pact install tmux
pact install vim

echo "Installing Ruby"
pact install ruby

# For AWS CLI
pact install python python-paramiko python-crypto gcc-g++ wget openssh python-setuptools
export PYTHONHOME=/usr
export PYTHONPATH=/usr/lib/python2.7
python /usr/lib/python2.7/site-packages/easy_install.py pip

echo "Installing AWS CLI"
pip install awscli
