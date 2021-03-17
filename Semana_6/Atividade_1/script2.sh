#!/bin/bash

[[ -e ${1} ]] && echo "SIM" || echo "NAO"
[[ -e ${2} ]] && echo "SIM" || echo "NAO"
[[ -e ${3} ]] && echo "SIM" || echo "NAO"
