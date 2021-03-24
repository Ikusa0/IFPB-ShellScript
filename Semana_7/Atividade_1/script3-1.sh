#!/bin/bash

# wc -l *

for FILE in *; do
  [[ -f "${FILE}" ]] && wc -l "${FILE}"
done
