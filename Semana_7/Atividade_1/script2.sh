#!/bin/bash

read -rp "Digite o primeiro numero: " a
read -rp "Digite o segundo numero: " b

# echo $(( (a + b) * ((b - a) + 1) / 2 ))

SUM=0

for ((i = a; i <= b; i++)); do
  SUM=$((SUM + i))
done

echo "${SUM}"
