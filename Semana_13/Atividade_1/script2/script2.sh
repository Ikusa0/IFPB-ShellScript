#!/bin/bash

awk '{ print $1" "$2 }' < "${1}" > meninos.txt
awk '{ print $3" "$4 }' < "${1}" > meninas.txt
