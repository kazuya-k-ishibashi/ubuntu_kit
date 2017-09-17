#!/bin/sh
#
# newhtml.sh
#
# -----------------------------------------------------------------------------
# Purpose : foobarbaz
# -----------------------------------------------------------------------------
# created : 2017.02.26
# author  : kazuya ishibashi
#
# Description :
#   1. hoge
#   2. fuga
#   3. piyo
#
# Usage :
#   $ newhtml.sh [filename]
#       filename - foo
#   Example) $ newhtml.sh sample.html
#
#
# -----------------------------------------------------------------------------
#

## init
this_dir=$(cd $(dirname $0); pwd)
this_file=$(basename $0)


## configs
filename=$1
extension=".html"
if [ "$2" = "-t" ]; then
    title=$3
fi


## validate
if [ "${filename}" = "" ]; then
    echo "please enter filename."
    echo -n "> "
    read filename
fi
if [ "${filename}" = "" ]; then
    echo "${this_file}: filename is empty."
    exit 1
fi

ext_regexp=$(echo ${extension} | tr '.' '\.')$
if ! echo "${filename}" | grep -G "${ext_regexp}" >/dev/null; then
    filename=${filename}${extension}
fi

if [ -s ${filename} ]; then
    fullpath=$(cd $(dirname ${filename}); pwd)/$(basename ${filename})
    echo "${this_file}: file already exists.: [\"${fullpath}\"]"
    exit 1
fi

noext_name=$(echo $(basename ${filename}) | sed 's/\.[^\.]*$//' | tr '_' ' ')

if [ "${title}" = "" ]; then
    echo -n "title: "
    read title
fi
if [ "${title}" = "" ]; then
    title=${noext_name}
fi

## exec

cat << TEMPLATE > ${filename}
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>${title}</title>
    <script src=""></script>
</head>
<body>
    <header>
        <h1>${title}</h1>
    </header>
    <main>
        <section id="section_1">
        </section>
    </main>
    <footer>
    </footer>
</body>
</html>

TEMPLATE

vim ${filename}


exit

