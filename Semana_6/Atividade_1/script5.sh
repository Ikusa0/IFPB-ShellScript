#!/bin/bash

(($(wc -l < "${1}") >= 5)) 2> "/dev/null" || echo "BAD"
