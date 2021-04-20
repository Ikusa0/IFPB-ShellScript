#!/bin/bash

while read -r IP; do
  echo -n "${IP}: "
  ping -c4 "${IP}" &> /dev/null && echo "SUCESSO" || echo "FALHA"
done < ips.txt
