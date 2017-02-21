#!/bin/sh
#
# sudo_echo.sh
#
# -----------------------------------------------------------------------------
# Purpose : foobarbaz
# -----------------------------------------------------------------------------
# created : 2017.02.20
# author  : kazuya ishibashi
#
# Description :
#   1. hoge
#   2. fuga
#   3. piyo
#
# Usage :
#   $ sudo_echo.sh param1 param2
#       param1 - foo
#       param2 - bar
#   Example) $ sudo_echo.sh baz
#
#
# -----------------------------------------------------------------------------
#

## init
this_dir=$(cd $(dirname $0); pwd)
this_file=$(basename $0)


## configs
text=$@


## validate


## exec
sudo sh -c "echo \"${text}\" >> /var/test/hoge.txt"



exit

