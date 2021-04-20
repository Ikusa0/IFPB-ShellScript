#!/bin/bash

HELP="\
OPÇÕES DE NAVEGAÇÃO:
'd' -> LISTA SÓ OS DIRETÓRIOS
'f' -> LISTA OS ARQUIVOS
'v [arg]' -> MOSTRA CONTEÚDO DO ARQUIVO [arg]
'cd [arg]' -> MUDA PARA O DIRETÓRIO [arg]
'q' -> SAI DO EXPLORADOR DE ARQUIVOS
'help' -> MOSTRA ESTE MENU
"

echo -e "${HELP}"

while [[ "${CHOICE}" != "q" ]]; do
  read -rp "${PWD/*\//}$ " CHOICE
  case "${CHOICE}" in
    d) ls -a */ 2> /dev/null ;;
    f) ls -a ;;
    "v "*) cat -n "${CHOICE:2}" 2> /dev/null || echo "Arquivo Inexistente." ;;
    "cd "*) cd "${CHOICE:3}" 2> /dev/null && pwd || echo "Diretório Inexistente.";;
    help) echo -e "${HELP}" ;;
    q) echo "Programa Finalizado." ;;
    *) echo "Opção Inválida" ;;
  esac
done
