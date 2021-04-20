#!/bin/bash

HELP="\
  \e[1mTEST COMMAND HELPER\e[m
  'logica' -> PARÂMETROS LÓGICOS
  'aritmetica' -> PARÂMETROS ARITMÉTICOS
  'strings' -> PARÂMETROS DE STRINGS
  'variaveis' -> PARÂMETROS DE VARIÁVEIS
  'arquivos' ->  PAÂMETROS DE ARQUIVOS
  'extended' -> NOTAÇÃO EXTENDIDA
  'sair' -> SAI DESTE AJUDANTE
  'help' -> EXIBE ESTE MENU
  "

echo -e "${HELP}"

while [[ "${ARG}" != "sair" ]]; do

  read -rp ">>> " ARG

  case "$ARG" in
    logica)
      echo -e \
      "LÓGICA:

      > \e[1mE\e[m lógico:
      \e[2m>>> [[ EXPRESSÃO \e[1m-a\e[m EXPRESSÃO ]]

      > \e[1mOU\e[m lógico:
      \e[2m>>> [[ EXPRESSÃO \e[1m-o\e[m EXPRESSÃO ]]

      > \e[1mNEGAÇÃO\e[m lógica:
      \e[2m>>> [[ \e[1m!\e[m EXPRESSÃO ]]
      "
      ;;
    aritmetica)
      echo -e \
      "ARITMÉTICA:
      > Números citados abaixo também podem ser resultados de uma expressão.
      > Exemplo:
      \e[2m>>> [[ \"10 + 2\" -gt \"11 - 1\" ]] && echo true || echo false

      > \e[1mIGUALDADE\e[m:
      \e[2m>>> [[ NÚMERO \e[1m-eq\e[m NÚMERO ]]

      > \e[1mNÃO IGUAL\e[m:
      \e[2m>>> [[ NÚMERO \e[1m-ne\e[m NÚMERO ]]

      > \e[1mMAIOR QUE\e[m:
      \e[2m>>> [[ NÚMERO \e[1m-gt\e[m NÚMERO ]]

      > \e[1mMENOR QUE\e[m:
      \e[2m>>> [[ NÚMERO \e[1m-lt\e[m NÚMERO ]]

      > \e[1mMAIOR OU IGUAL QUE\e[m:
      \e[2m>>> [[ NÚMERO \e[1m-ge\e[m NÚMERO ]]

      > \e[1mMENOR OU IGUAL QUE\e[m:
      \e[2m>>> [[ NÚMERO \e[1m-le\e[m NÚMERO ]]
      "
      ;;
    strings)
      echo -e \
      "STRING:

      > \e[1mIGUALDADE\e[m:
      \e[2m>>> [[ TEXTO \e[1m==\e[m TEXTO ]] ou
      \e[2m>>> [[ TEXTO \e[1m=\e[m TEXTO ]]

      > O espaçamento na comparação de igualdade é necessário:
      \e[2m>>> [[ TEXTO \e[1m=\e[m TEXTO ]] não é o mesmo que [[ TEXTO\e[1m=\e[mTEXTO ]]

      > Wildcard funciona apenas com chaves duplas:
      \e[2m>>> [[ gato \e[1m==\e[m g* ]]
      \e[2m>>> [[ gato \e[1m==\e[m gat? ]]
      \e[2m>>> [[ gato \e[1m==\e[m [gtwp]ato ]]

      > Igualdade com REGEX também funciona apenas em aspas duplas:
      \e[2m>>> [[ gato \e[1m=~\e[m ^.ato ]]

      > \e[1mNÃO IGUAL\e[m:
      \e[2m>>> [[ TEXTO \e[1m!=\e[m TEXTO ]]

      > \e[1mMAIOR QUE\e[m:
      \e[2m>>> [[ TEXTO \e[1m>\e[m TEXTO ]]

      > \e[1mMENOR QUE\e[m:
      \e[2m>>> [[ TEXTO \e[1m<\e[m TEXTO ]]

      > \e[1mSTRING NÃO POSSUI CARACTERES\e[m:
      \e[2m>>> [[ \e[1m-z\e[m TEXTO ]]

      > \e[1mSTRING POSSUI AO MENOS UM CARACTERE\e[m:
      \e[2m>>> [[ \e[1m-n\e[m TEXTO ]]
      "
      ;;
    variaveis)
      echo -e \
      "VARIÁVEIS:

      > \e[1mVARIÁVEL SETADA\e[m:
      \e[2m>>> [[ \e[1m-n\e[m \$VAR ]]

      > \e[1mVARIÁVEL NÃO SETADA\e[m:
      \e[2m>>> [[ \e[1m-z\e[m \$VAR ]]
      "
      ;;
    arquivos)
      echo -e \
      "ARQUIVOS:

      > \e[1mARQUIVO EXISTE\e[m:
      \e[2m>>> [[ \e[1m-e\e[m ARQUIVO ]]

      > \e[1mARQUIVO EXISTE E É UM ARQUIVO REGULAR\e[m:
      \e[2m>>> [[ \e[1m-f\e[m ARQUIVO ]]

      > \e[1mARQUIVO EXISTE E É UM DIRETÓRIO\e[m:
      \e[2m>>> [[ \e[1m-d\e[m ARQUIVO ]]

      > \e[1mTAMANHO DO ARQUIVO NÃO É 0\e[m:
      \e[2m>>> [[ \e[1m-s\e[m ARQUIVO ]]

      > \e[1mARQUIVO POSSUI PERMISSÃO DE LEITURA\e[m (para o usuário rodando o teste):
      \e[2m>>> [[ \e[1m-r\e[m ARQUIVO ]]

      > \e[1mARQUIVO POSSUI PERMISSÃO DE ESCRITA\e[m (para o usuário rodando o teste):
      \e[2m>>> [[ \e[1m-w\e[m ARQUIVO ]]

      > \e[1mARQUIVO POSSUI PERMISSÃO DE EXECUÇÃO\e[m (para o usuário rodando o teste):
      \e[2m>>> [[ \e[1m-x\e[m ARQUIVO ]]
      "
      ;;
    extended)
      echo "\
      > Nos exemplos são usadas chaves duplas na construção dos testes.
      > Chaves duplas não funcionam em shells antigas, como o sh, por exemplo. Foram introduzidas no ksh e adotadas \
por shells mais novas.
      > O uso de chaves duplas e chaves únicas são diferentes. Chaves únicas são literalmente um comando, o \e[1mtest\e[m,\
 havendo o mesmo comportamento encontrado na execução do comando, como redirecionamentos e substituições de shell, por exemplo.
      > Comparações que usem os redirecionadores \e[1m>\e[m e \e[1m<\e[m precisam ser postas entre aspas ou precedidas de \"\\\" \
, do contrário não farão o papel de comparadores. Este é apenas um exemplo de erro comum de ocorrer ao usar esta síntaxe, vários \
outros caracteres também acabam precisando serem escapados para que o comando funcione corretamente.
      > Chaves duplas, por outro lado, são parte da síntaxe da linguagem do \e[1mbash\e[m, sendo menos sensíveis a erros.
      > Chaves duplas também dão acesso aos wildcards *, ? e aos grupos de caracteres usando []."
      ;;
    help) echo -e "${HELP}" ;;
    sair) echo "Programa Finalizado." ;;
    *) echo "Opção Inválida" ;;
  esac
done