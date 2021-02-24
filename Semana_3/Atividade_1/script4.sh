#!/bin/bash

today=$(date "+%F")
dir="/tmp/${today}"

if [ ! -d "$dir" ]; then
  echo -e "Criando o diretório \e[96m${dir}\e[m"
  mkdir "${dir}"
fi

echo -e "Copiando arquivos do diretório atual para \e[96m${dir}\e[m"
cp ./* "${dir}"

echo -e "Compactando diretório para \e[95m${today}.tar.gz\e[m"
tar -czf "./${today}.tar.gz" "${dir}" &>/dev/null

echo -e "Deletando o diretório \e[96m${dir}\e[m"
rm -d -r "${dir}"

echo "Concluído."
