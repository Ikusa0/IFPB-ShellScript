#!/bin/bash

# wc -l * 2> /dev/null | sort -rn

for FILE in *; do
  [[ -f "${FILE}" ]] && wc -l "${FILE}" >> "aux.txt"
done

sort -rn "aux.txt" 2>/dev/null

rm "aux.txt" &>/dev/null
