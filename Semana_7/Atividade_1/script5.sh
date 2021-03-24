#!/bin/bash

for HASH in $(md5sum ./* 2>/dev/null | sort); do
  if ! grep -q './' <<< "${HASH}"; then

    [[ "${HASH}" == "${AUX}" ]] && echo "FALHA" && exit

    AUX="${HASH}"
  fi
done

echo "SUCESSO"
