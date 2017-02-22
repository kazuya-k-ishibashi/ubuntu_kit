#!/bin/sh
#
# install_oracle_java8.sh
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
#   $ install_oracle_java8.sh param1 param2
#       param1 - foo
#       param2 - bar
#   Example) $ install_oracle_java8.sh baz
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
sudo add-apt-repository ppa:webupd8team/java -y
sudo aptitude update -y
sudo aptitude install oracle-java8-installer -y

sudo aptitude install oracle-java8-set-default -y

: << COMMENTOUT
cat << EOS >> ~/.bashrc

export JAVA_HOME=$(readlink -f /usr/bin/javac | sed "s:/bin/javac::")
'export PATH=$PATH:$JAVA_HOME/bin'
EOS

java -version
env | grep -i java
COMMENTOUT

exit

