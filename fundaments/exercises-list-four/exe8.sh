#!/bin/sh


calc_media(){
    if [ ! $1 ] || [ ! $2 ] ; then
        echo "Valores de entrada estão invalidos"
        exit 0
    fi
soma=0
    for (( i = $1 ; i < $2 ; i = i + 1 ))
    do
        if [ $(($i%2)) -eq '0' ] ; then
            soma=$(expr $soma + $i)
            let cont++
            
        fi
    done

echo "A média dos numeros pares e: $(expr $soma / $cont)";
}

calc_media $1 $2

exit 0