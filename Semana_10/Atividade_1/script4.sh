#!/bin/bash

read -rp "Digite um endereço IP: " IP

RGX255="([0-1]?[0-9]?[0-9]|[2][0-5][0-5])"
if [[ ! ${IP} =~ ^${RGX255}\.${RGX255}\.${RGX255}\.${RGX255}$ ]]; then
  echo "Endereço IP inválido." && exit
fi

#AUX=1
#for OCTETO in $(tr -s '.' ' ' <<< "${IP}"); do
#  BIN="0000000$(bc <<< "obase=2; ${OCTETO}")"
#  echo -e "Octeto #${AUX}: ${OCTETO} em binário ${BIN:(-8)}"
#  ((++AUX))
#done

AUX=1
for OCTETO in $(tr -s '.' ' ' <<< "${IP}"); do
  BIN="$(bc <<< "obase=2; ${OCTETO}")"
  printf "Octeto #${AUX}: %3d em binário %08d\n" "${OCTETO}" "${BIN}"
  ((++AUX))
done
