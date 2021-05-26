#!/bin/bash

DIR_PATH="$(dirname "$(realpath "${BASH_SOURCE[0]}")")"
source "${DIR_PATH}/functions.sh"

case "${1}" in
u|U)
  uppercase "${2}"
  ;;
d|D)
  digits "${2}"
  ;;
s|S)
  special "${2}"
  ;;
esac
