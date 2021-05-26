#!/bin/bash

function digits() {
    sed -i 's/[0-9]//g' "${1}"
}
