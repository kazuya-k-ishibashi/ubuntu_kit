#!/bin/sh
#
# install_aptitude.sh
#
# -----------------------------------------------------------------------------
# Purpose : foobarbaz
# -----------------------------------------------------------------------------
# created : 2017.02.19
# author  : kazuya ishibashi
#
# Description :
#   1. hoge
#   2. fuga
#   3. piyo
#
# Usage :
#   $ install_aptitude.sh param1 param2
#       param1 - foo
#       param2 - bar
#   Example) $ install_aptitude.sh baz
#
#
# -----------------------------------------------------------------------------
#

## init
this_dir=$(cd $(dirname $0); pwd)


## configs


## validate


## exec
sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get install aptitude -y
sudo aptitude update -y
sudo aptitude safe-upgrade -y



exit

