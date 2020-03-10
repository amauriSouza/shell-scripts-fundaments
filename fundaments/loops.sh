#!/bin/bash

nomes=('ANDRE' 'CARLOS' 'MARIZA' 'PEDRO' 'ANA')

for i in `echo ${!nomes[*]}`;
do

echo "Nome: ${nomes[$i]}"

done

 

exit 0
