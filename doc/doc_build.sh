#!/bin/bash
set -e
cd doc

if [ "$1" = "clean" ];then
    cd ./source
    ls | grep -v "index.rst" | xargs rm
    cd ..
    make clean
else
    sphinx-apidoc -f -o ./source ../usingai
    make html
fi

