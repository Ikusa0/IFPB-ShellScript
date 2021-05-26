#!/bin/bash

function uppercase() {
    tr -d '[:upper:]' < "${1}" > tmp.txt && mv tmp.txt "${1}"
}

function digits() {
    sed -i 's/[0-9]//g' "${1}"
}

function special() {
    awk '{ gsub("[^a-zA-Z0-9]", "<?>"); print}' "${1}" > tmp.txt && mv tmp.txt "${1}"
}
