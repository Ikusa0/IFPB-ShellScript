#!/bin/bash

for ARQUIVO in *; do
    if [[ -x $ARQUIVO ]]; then
      rm "$ARQUIVO"
    fi
done
