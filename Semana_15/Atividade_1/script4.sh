#!/bin/bash

while read -r LINE; do
  ARRAY=(${LINE})
  echo -n "${ARRAY[0]} "
  for (( i = 1; i < ${#ARRAY[*]}-1; i++ )); do
      echo -n "${ARRAY[i]:0:1}. "
  done
  echo "${ARRAY[-1]} "
  echo "-------------------------------"
done < "${1}"
