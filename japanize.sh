#!/bin/sh
#
# japanize.sh
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
#   $ japanize.sh param1 param2
#       param1 - foo
#       param2 - bar
#   Example) $ japanize.sh baz
#
#
# -----------------------------------------------------------------------------
#

## init
this_dir=$(cd $(dirname $0); pwd)
this_file=$(basename $0)


## configs
xmod_file="~/.profile"
autostart_file="~/.config/lxsession/LXDE/autostart"


## validate
if [ ! -e ${xmod_file} ]; then
    echo "${this_file}: xmodifiers file not found. [\"${xmod_file}\"]"
    exit 1
fi
if [ ! -e ${autostart_file} ]; then
    echo "${this_file}: xmodifiers file not found. [\"${autostart_file}\"]"
    exit 1
fi


## exec
sudo apt-get update
sudo apt-get install software-center -y
sudo apt-get install language-pack-ja -y
sudo apt-get install language-selector-gnome -y
sudo dpkg-reconfigure locales
export LANG=ja_JP.UTF-8
sudo update-locale $LANG
sudo locale-gen $LANG
echo "export LANG=ja_JP.UTF-8" >> ~/.bashrc
wget -q https://www.ubuntulinux.jp/ubuntu-ja-archive-keyring.gpg -O- | sudo apt-key add -
wget -q https://www.ubuntulinux.jp/ubuntu-jp-ppa-keyring.gpg -O- | sudo apt-key add -
sudo wget https://www.ubuntulinux.jp/sources.list.d/xenial.list -O /etc/apt/sources.list.d/ubuntu-ja.list
sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get install ubuntu-defaults-ja -y
sudo sh -c "export LANG=ja_JP.UTF-8 >> /etc/profile"
sudo sh -c "export LANGUAGE=ja_JP:ja >> /etc/profile"
sudo apt-get install fonts-takao -y

# https://wiki.archlinuxjp.org/index.php/Fcitx
sudo apt-get install fcitx fcitx-mozc fcitx-libs-qt5 fcitx-frontend-qt5 -y
sudo im-config -n fcitx

cat << EOS >> ${xmod_file}

export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx

EOS

cat << EOS >> ${autostart_file}
@fcitx-autostart &
EOS



exit

