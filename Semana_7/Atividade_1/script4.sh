#!/bin/bash

for FILE in "$@"; do
  echo -en "${FILE}\t"
  [[ -e "${FILE}" ]] && echo "SIM" || echo "NAO"
done
