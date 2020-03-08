#!/bin/sh

if [ -f $1 ] ; then
    echo "É um arquivo!"
fi

if [ -d $1 ] ; then
    echo "É um diretório!"
fi

exit 0