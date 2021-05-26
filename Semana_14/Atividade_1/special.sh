#!/bin/bash

function special() {
    awk '{ gsub("[^a-zA-Z0-9]", "<?>"); print}' "${1}" > tmp.txt && mv tmp.txt "${1}"
}
