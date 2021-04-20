#!/bin/bash

touch dirs.txt files.txt links.txt

for ARQUIVO in *; do
    if [[ -d $ARQUIVO ]]; then
      echo "$ARQUIVO" >> dirs.txt
    elif [[ -f $ARQUIVO ]]; then
      echo "$ARQUIVO" >> files.txt
    elif [[ -h $ARQUIVO ]]; then
      echo "$ARQUIVO" >> links.txt
    fi
done

echo -e "\e[1mDIRS\e[m"
cat dirs.txt

echo -e "\n\e[1mFILES\e[m"
cat files.txt

echo -e "\n\e[1mLINKS\e[m"
cat links.txt

rm dirs.txt files.txt links.txt
