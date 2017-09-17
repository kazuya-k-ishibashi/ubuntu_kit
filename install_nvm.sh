#!/bin/sh
#
# install_nvm.sh
#
# -----------------------------------------------------------------------------
# Purpose : foobarbaz
# -----------------------------------------------------------------------------
# created : 2017.02.24
# author  : kazuya ishibashi
#
# Description :
#   1. hoge
#   2. fuga
#   3. piyo
#
# Usage :
#   $ install_nvm.sh param1 param2
#       param1 - foo
#       param2 - bar
#   Example) $ install_nvm.sh baz
#
#
# -----------------------------------------------------------------------------
#

## init
this_dir=$(cd $(dirname $0); pwd)
this_file=$(basename $0)


## configs
NVM_DIR=~/.nvm


## validate


## exec
git clone https://github.com/creationix/nvm.git ${NVM_DIR} && cd ${NVM_DIR} && git checkout `git describe --abbrev=0 --tags`
echo "export NVM_DIR=${NVM_DIR}" >> ~/.bashrc
echo '[ -s \"$NVM_DIR/nvm.sh\" ] && . \"$NVM_DIR/nvm.sh\"' >> ~/.bashrc
. ~/.bashrc

nvm install stable
node -v
echo "#nvm use stable" >> ~/.bashrc
. ~/.bashrc

npm install -g bower

# nvm ls-remote     <- display all version
# nvm ls            <- display installed version

# nvm install 0.0.0

# nvm use 0.0.0
# nvm use n.n       <- vn.n.X latest version

# nvm run 5.0 --version

# nvm aliases default 0.0.0

exit

