#!/bin/sh
#
# install_git.sh
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
#   $ install_git.sh param1 param2
#       param1 - foo
#       param2 - bar
#   Example) $ install_git.sh baz
#
#
# -----------------------------------------------------------------------------
#

## init
this_dir=$(cd $(dirname $0); pwd)


## configs
user=kazuya-k-ishibashi
email=kazuya.ishibashi.wn@gmail.com


## validate


## exec
sudo aptitude install git -y

git config --global user.name ${user}
git config --global user.email ${email}

git config --global core.editor 'vim -c "set fenc=utf-8"'

git config --global color.diff auto
git config --global color.status auto
git config --global color.branch auto

git config --global push.default simple
git config --global core.quotepath false

git config --list


if [ ! -e ~/.ssh ]; then
    mkdir ~/.ssh
fi
cd ~/.ssh

ssh-keygen -t rsa -C github_kazuya-k-ishibashi -f github_id_rsa
chmod 600 github_id_rsa

cat << EOS >> ~/.ssh/config

Host github
  HostName github.com
  User git
  IdentityFile ~/.ssh/github_id_rsa
EOS

echo ""
echo ""
cat ~/.ssh/github_id_rsa.pub
echo ""
echo ""
echo "paste to github, enter any key."
read tmp

ssh -T github


exit

