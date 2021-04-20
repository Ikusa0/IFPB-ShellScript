#!/bin/bash

for ARQUIVO in *; do
    if [[ -x $ARQUIVO ]] && [[ -f $ARQUIVO ]] ; then
      rm "$ARQUIVO"
    fi
done
