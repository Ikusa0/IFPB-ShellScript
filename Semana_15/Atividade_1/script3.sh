#!/bin/bash

while read -r LINE; do
  ARRAY=(${LINE})
  (( ${#ARRAY[*]} <= ${MENOR:=${#ARRAY[*]}} )) &&
  MENOR="${#ARRAY[*]}" &&
  NOME="${ARRAY[*]}"
done < "${1}"

echo "${NOME}"
