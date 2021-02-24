#!/bin/bash

echo -e "Arquivos e Pastas no diretório \e[1m\e[4m\e[96m${1}\e[0m: "
echo -e "\e[1m\e[96m$(ls "${1}")\n"

echo -e "\e[0mArquivos e Pastas no diretório \e[1m\e[4m\e[95m${2}\e[0m: "
echo -e "\e[1m\e[95m$(ls "${2}")\n"

echo -e "\e[0mArquivos e Pastas no diretório \e[1m\e[4m\e[93m${3}\e[0m: "
echo -e "\e[1m\e[93m$(ls "${3}")"
