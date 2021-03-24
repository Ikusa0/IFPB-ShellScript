#!/bin/bash

# wc -l "${1}"/* 2> /dev/null | sort -rn

AUX="${1}"/aux.txt

for FILE in "${1}"/*; do
  [[ -f "${FILE}" ]] && echo "$(wc -l < "${FILE}") $(basename "${FILE}")" >> "${AUX}"
done

sort -rn "${AUX}" 2>/dev/null

rm "${AUX}" &>/dev/null
