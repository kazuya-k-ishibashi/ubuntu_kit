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
ssh_dir=~/.ssh
rsa_filename=github_id_rsa


## validate


## exec
sudo aptitude install git -y

echo -n "user.name > "
read user
echo -n "user.email > "
read email

git config --global user.name ${user}
git config --global user.email ${email}

git config --global core.editor 'vim -c "set fenc=utf-8"'

git config --global color.diff auto
git config --global color.status auto
git config --global color.branch auto

git config --global push.default simple
git config --global core.quotepath false

git config --list


if [ ! -e ${ssh_dir} ]; then
    mkdir ${ssh_dir}
fi
cd ${ssh_dir}

echo -n "key-gen comment > "
read comment

if [ "${comment}" != "" ]; then
    comment="-C ${comment}"
fi

ssh-keygen -t rsa ${comment} -f ${rsa_filename}
chmod 600 ${ssh_dir}/${rsa_filename}

cat << EOS >> ${ssh_dir}/config

Host github
  HostName github.com
  User git
  IdentityFile ${ssh_dir}/${rsa_filename}
EOS

echo ""
echo ""
cat ${ssh_dir}/${rsa_filename}.pub
echo ""
echo ""
echo "paste to github, enter any key."
read tmp

ssh -T github


exit

