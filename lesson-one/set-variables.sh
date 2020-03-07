#!/bin/bash

num1=10
num2=40

soma=$(expr $num1 + $num2)

echo "A soma: $soma"

echo "Digite um numero 1: "
read num1
echo "Digite um numero 2: "
read num2

multi=$(expr $num1 \* $num2)
echo "A multiplicacao: $multi"


exit 0
