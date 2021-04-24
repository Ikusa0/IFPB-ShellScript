#!/bin/bash

tr -s "\n" < "${1}" > tmp.txt && mv tmp.txt "${1}"
