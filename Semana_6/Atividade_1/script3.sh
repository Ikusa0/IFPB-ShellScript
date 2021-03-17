#!/bin/bash

read -rp "Arquivo 1: " FILE1
read -rp "Arquivo 2: " FILE2

(($(wc -l < "${FILE1}") > $(wc -l < "${FILE2}"))) && echo "${FILE1}" || echo "${FILE2}"
