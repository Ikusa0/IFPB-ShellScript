#!/bin/bash

while read -r OPTION ; do

  case ${OPTION} in
  d | D)
    echo "Diretórios:"
    ls -l | grep -P '^d'
  ;;
  e | E)
    echo "Executáveis:"
    ls -l | grep -P '[-rw]{2,3}x'
  ;;
  s | S)
    echo "Shell Scripts:"
    ls -l | grep -P '\..*sh$'
  ;;
  l | L)
    echo "SimLinks:"
    ls -l | grep -P '^l'
  ;;
  b | B)
    echo "Menor que 100 Bytes:"
    ls -l | grep -P '[-rwx]{9} \d+ \w+ \w+ +[0-9]{1,2}(?!\w)'
  ;;
  esac

done <<< "$(grep -o '.' <<< "${1}")"
