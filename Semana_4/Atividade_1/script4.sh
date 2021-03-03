#!/bin/bash

echo "Total de linhas: $(($(wc -l < "$1") + $(wc -l < "$2") + $(wc -l < "$3")))"
