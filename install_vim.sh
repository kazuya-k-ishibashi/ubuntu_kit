#!/bin/sh
#
# install_vim.sh
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
#   $ install_vim.sh param1 param2
#       param1 - foo
#       param2 - bar
#   Example) $ install_vim.sh baz
#
#
# -----------------------------------------------------------------------------
#

## init
this_dir=$(cd $(dirname $0); pwd)

rcfiles_dir=~/Downloads/rcfiles/


## configs


## validate


## exec
sudo aptitude install vim -y

# vim settings
sudo update-alternatives --set editor /usr/bin/vim.basic

cp ${rcfiles_dir}/.vimrc ~/

exit

