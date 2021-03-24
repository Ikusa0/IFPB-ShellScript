#!/bin/bash

for ((i = 1; i < 101; i++)); do
  ((i % 2 == 0)) && echo "${i}"
done
