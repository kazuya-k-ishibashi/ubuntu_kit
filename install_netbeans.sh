#!/bin/sh
#
# install_netbeans.sh
#
# -----------------------------------------------------------------------------
# Purpose : foobarbaz
# -----------------------------------------------------------------------------
# created : 2017.02.22
# author  : kazuya ishibashi
#
# Description :
#   1. hoge
#   2. fuga
#   3. piyo
#
# Usage :
#   $ install_netbeans.sh param1 param2
#       param1 - foo
#       param2 - bar
#   Example) $ install_netbeans.sh baz
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
sudo add-apt-repository ppa:sainthyoga2003/netbeans -y
sudo aptitude update -y
sudo aptitude install netbeans -y

echo "copy this."
echo "netbeans_jdkhome=\"/usr/lib/jvm/java-8-oracle/\""

sudo vim /usr/share/netbeans/etc/netbeans.conf


exit

