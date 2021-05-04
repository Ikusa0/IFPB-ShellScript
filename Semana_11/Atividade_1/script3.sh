#!/bin/bash

read -rp 'Digite uma senha: ' PASSWORD

grep -P '(?=.*[a-z])(?=.*[0-9])(?=.*[A-Z]).*' <<< "${PASSWORD}" &> /dev/null \
&& echo "Senha Válida!" \
|| echo "Senha Inválida!"
