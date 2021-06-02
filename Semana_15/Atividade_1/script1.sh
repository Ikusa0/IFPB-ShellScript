#!/bin/bash

function maior_do_array() {
    ARRAY=("${@}")
    MAIOR=${ARRAY[0]}
    for NUMERO in "${@}"; do
        (( NUMERO > MAIOR )) && MAIOR="${NUMERO}"
    done
    echo "${MAIOR}"
}

maior_do_array "${@}"
