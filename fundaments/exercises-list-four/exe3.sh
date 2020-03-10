#!/bin/sh

echo "Digite o 1º numero: "
read num1

echo "Digite o 2º numero: "
read num2

echo "Digite o 3º numero: "
read num3

echo "Digite o 4º numero: "
read num4

media=$((($num1 + $num2 + $num3 + $num4)/4))

echo "A média $media"