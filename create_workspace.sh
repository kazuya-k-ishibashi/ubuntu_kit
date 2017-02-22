#!/bin/sh
#
# create_workspace.sh
#
# -----------------------------------------------------------------------------
# Purpose : foobarbaz
# -----------------------------------------------------------------------------
# created : 2017.02.21
# author  : kazuya ishibashi
#
# Description :
#   1. hoge
#   2. fuga
#   3. piyo
#
# Usage :
#   $ create_workspace.sh param1 param2
#       param1 - foo
#       param2 - bar
#   Example) $ create_workspace.sh baz
#
#
# -----------------------------------------------------------------------------
#

## init
this_dir=$(cd $(dirname $0); pwd)
this_file=$(basename $0)


## configs
workspace=/usr/local/projects


## validate


## exec
if [ ! -e ${workspace} ]; then
    sudo mkdir -p ${workspace}
fi
sudo chown -R $(whoami):$(whoami) ${workspace}



exit

