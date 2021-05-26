#!/bin/bash

DIR_PATH="$(dirname "$(realpath "${BASH_SOURCE[0]}")")"
source "${DIR_PATH}/script1.sh"

LESSER=$(tr ' ' '\n' < "${1}" | head -n1)
GREATER=${LESSER}

for NUMBER in $(tr '\n' ' ' < "${1}"); do
  LESSER=$(lesser "${NUMBER}" "${LESSER}")
  GREATER=$(greater "${NUMBER}" "${GREATER}")
done

echo "Maior número é: ${GREATER}"
echo "Menor número é: ${LESSER}"
