#!/bin/bash

ls "${1}" &> "/dev/null" && echo "SIM" || echo "NAO"
ls "${2}" &> "/dev/null" && echo "SIM" || echo "NAO"
ls "${3}" &> "/dev/null" && echo "SIM" || echo "NAO"
