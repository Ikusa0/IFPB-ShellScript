#!/bin/bash

if [[ -z "$x" ]]; then
    read -rp "Digite o valor para x: " x
fi

if [[ -z "$y" ]]; then
    read -rp "Digite o valor para y: " y
fi

if [[ -z "$z" ]]; then
    read -rp "Digite o valor para z: " z
fi

echo "Soma: $(( x + y + z ))"
