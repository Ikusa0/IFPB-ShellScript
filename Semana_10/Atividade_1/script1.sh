#!/bin/bash

[[ ! -f "${1}" ]] && echo "Arquivo inexistente." && exit

LINHAS=$(wc -l < "${1}")
(( "$LINHAS" < "${2:-1}" )) && echo "Falha: o arquivo '${1}' possui apenas ${LINHAS} linhas." && exit

sed "${2:-1}q;d" "${1}"
