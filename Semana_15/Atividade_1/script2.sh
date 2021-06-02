#!/bin/bash

declare -A NOMES
while read -r LINE; do
  ARRAY=(${LINE})
  NOMES[${ARRAY[0]}]=$( bc <<< "${NOMES[${ARRAY[0]}]:-0} + ${ARRAY[1]}" )
done < "${1}"

for KEY in ${!NOMES[*]}; do
    echo "${KEY} -> ${NOMES[${KEY}]}"
done
