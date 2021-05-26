#!/bin/bash

function uppercase() {
    tr -d '[:upper:]' < "${1}" > tmp.txt && mv tmp.txt "${1}"
}
