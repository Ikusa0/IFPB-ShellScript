#!/bin/bash

grep -vE '^$' "${1}" > tmp.txt && mv tmp.txt "${1}"
