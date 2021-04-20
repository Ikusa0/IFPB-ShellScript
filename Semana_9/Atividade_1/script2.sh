#!/bin/bash

while [[ ! -f /tmp/chave.txt ]]; do
  echo "Aguardando criação do arquivo '/tmp/chave.txt'"
  date "+%c"
  sleep 30
done

echo "Arquivo 'chave.txt' encontrado!"
