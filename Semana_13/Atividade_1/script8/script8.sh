#!/bin/bash

DIR_PATH="$(dirname "$(realpath "${BASH_SOURCE[0]}")")"

awk -f "${DIR_PATH}/script8.awk" "${1}"
