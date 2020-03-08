#!/bin/sh

soma=0
# TODO - is not working, when > 3 params
# if [ ! -z $1 ] ; then
#     soma=$(expr $soma + $1)
# fi

# if [ ! -z $2 ] ; then
#     soma=$(expr $soma + $2)
# fi

# if [ ! -z $3 ] ; then
#     soma=$(expr $soma + $3)
# fi

# echo "A soma dos numeros é $soma"
# med=$(expr $soma / $#)
# echo "A media: $med"


for i in `echo $*`;
do

soma=$(expr $soma + $i)

done

echo "Soma: $soma"

echo "Media: $(expr $soma / $#)"

exit 0