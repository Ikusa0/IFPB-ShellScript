#!/bin/bash

LINHAS=$(wc -l <"${1}")

for (( i = 1; i <= LINHAS / 3; i++ )); do
  head -"$(( 3 * i ))" < "${1}" | tail -3
  read -n1
done

tail -"$(( LINHAS % 3 ))" < "${1}"
