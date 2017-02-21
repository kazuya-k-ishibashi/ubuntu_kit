#!/bin/sh
#
# chown_ubuntu_kit.sh
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
#   $ chown_ubuntu_kit.sh param1 param2
#       param1 - foo
#       param2 - bar
#   Example) $ chown_ubuntu_kit.sh baz
#
#
# -----------------------------------------------------------------------------
#

## init
this_dir=$(cd $(dirname $0); pwd)
cd ${this_dir}


## configs
user=$(whoami)
group=${user}


## validate


## exec
chown -R ${user}:${group} ${this_dir}



exit

