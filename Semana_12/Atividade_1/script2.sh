#!/bin/bash

while read -r OPTION; do

  case ${OPTION} in
    l|L)
      sed -E 's/[a-zA-Z]//g' <"${2}" > tmp.txt && mv tmp.txt "${2}"
    ;;

    d|D)
      sed -E 's/[0-9]//g' <"${2}" > tmp.txt && mv tmp.txt "${2}"
    ;;

    n|N)
      sed -E 's/[^A-Za-z0-9]//g' <"${2}" > tmp.txt && mv tmp.txt "${2}"
    ;;
  esac

done <<< "$(grep -o '.' <<< "${1}")"
