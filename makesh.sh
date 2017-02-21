#!/bin/sh

## init 
this_dir=$(cd $(dirname $0); pwd)
this_file=$(basename $0)


## configs
user=chronos
group=chronos
developer="kazuya ishibashi"

sh_name=$1


## validate
if [ "${sh_name}" = "" ]; then
    echo "please enter script name."
    echo -n "> "
    read sh_name
fi

if [ -e ${sh_name} ]; then
    echo "# file exists! [sh_name: \"${sh_name}\"]"
    exit 1
fi


## exec
get_curdir_command='$(cd $(dirname $0); pwd)'
get_curfile_command='this_file=$(basename $0)'
cat << EOS > ${sh_name}
#!/bin/sh
#
# $(basename ${sh_name})
#
# -----------------------------------------------------------------------------
# Purpose : foobarbaz
# -----------------------------------------------------------------------------
# created : $(date +"%Y.%m.%d")
# author  : ${developer}
#
# Description :
#   1. hoge
#   2. fuga
#   3. piyo
#
# Usage :
#   $ $(basename ${sh_name}) param1 param2
#       param1 - foo
#       param2 - bar
#   Example) $ $(basename ${sh_name}) baz
#
#
# -----------------------------------------------------------------------------
#

## init
this_dir=${get_curdir_command}
${get_curfile_command}


## configs


## validate


## exec



exit

EOS

sudo chown ${user}:${group} ${sh_name}
sudo chmod +x ${sh_name}


exit

