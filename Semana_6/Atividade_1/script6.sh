#!/bin/bash

echo "USE NUMEROS DE PONTO FLUTUANTE"
read -rp "Digite o primeiro numero: " a
read -rp "Digite o segundo numero: " b

(($(bc <<< "${a} < ${b}"))) && echo "${a}" || echo "${b}"
