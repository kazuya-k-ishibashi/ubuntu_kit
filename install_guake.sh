#!/bin/sh
#
# install_guake.sh
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
#   $ install_guake.sh param1 param2
#       param1 - foo
#       param2 - bar
#   Example) $ install_guake.sh baz
#
#
# -----------------------------------------------------------------------------
#

## init
this_dir=$(cd $(dirname $0); pwd)
this_name=$(basename $0)

autostart_file=~/.config/lxsession/LXDE/autostart

## configs


## validate
if [ -e ${autostart_file} ]; then
    echo ${this_name}: lxde desktop session has not started up.
    exit 1
fi


## exec
sudo aptitude install guake -y

echo @guake >> ${autostart_file}


exit

