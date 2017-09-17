#!/bin/sh
#
# install_gradle.sh
#
# -----------------------------------------------------------------------------
# Purpose : foobarbaz
# -----------------------------------------------------------------------------
# created : 2017.03.15
# author  : kazuya ishibashi
#
# Description :
#   1. hoge
#   2. fuga
#   3. piyo
#
# Usage :
#   $ install_gradle.sh param1 param2
#       param1 - foo
#       param2 - bar
#   Example) $ install_gradle.sh baz
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
: << COMMENTOUT
sudo add-apt-repository ppa:cwchien/gradle
sudo aptitude update -y
sudo aptitude install gradle -y
COMMENTOUT

curl -s get.sdkman.io | bash
. "$HOME/.sdkman/bin/sdkman-init.sh"
sdk version


: << Uninstall
tar zcvf ~/sdkman-backup_$(date +%F-%kh%M).tar.gz -C ~/ .sdkman
rm -rf ~/.sdkman
Uninstall


exit

