#!/bin/bash

read -rp 'Digite um e-mail: ' EMAIL

grep -E '^[A-Za-z0-9_.-]+@[A-Za-z0-9_.-]+$' <<< "${EMAIL}" &> /dev/null \
&& echo 'E-mail Válido!' \
|| echo 'E-mail Inválido!'
