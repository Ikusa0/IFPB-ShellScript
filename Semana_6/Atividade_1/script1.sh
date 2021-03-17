#!/bin/bash

read -rp "Digite o primeiro numero: " a
read -rp "Digite o segundo numero: " b

((a < b)) && echo "${a}" || echo "${b}"
