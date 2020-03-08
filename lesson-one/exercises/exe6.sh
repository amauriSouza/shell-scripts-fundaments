#!/bin/sh

validateParam () {
    if [ -f $1 ] ; then
        echo "É um arquivo!"
    fi

    if [ -d $1 ] ; then
        echo "É um diretório!"
    fi
}

param=""
    if [ $1 ] 
    then 
        validateParam $1
    else 
        echo "Parametro não informado..."
        echo "Por favor, informe um parametro: "
        read param
        validateParam $param     
    fi
exit 0
