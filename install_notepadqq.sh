#!/bin/sh
#
# install_notepadqq.sh
#
# -----------------------------------------------------------------------------
# Purpose : foobarbaz
# -----------------------------------------------------------------------------
# created : 2017.02.23
# author  : kazuya ishibashi
#
# Description :
#   1. hoge
#   2. fuga
#   3. piyo
#
# Usage :
#   $ install_notepadqq.sh param1 param2
#       param1 - foo
#       param2 - bar
#   Example) $ install_notepadqq.sh baz
#
#
# -----------------------------------------------------------------------------
#

## init
this_dir=$(cd $(dirname $0); pwd)
this_file=$(basename $0)


## configs


## validate


## exec
sudo add-apt-repository ppa:notepadqq-team/notepadqq
sudo aptitude update -y
sudo aptitude install notepadqq -y

exit

