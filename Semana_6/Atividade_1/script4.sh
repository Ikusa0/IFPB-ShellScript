#!/bin/bash

(($(ls -p "${1}" | grep -cv '/') > $(ls -p "${2}" | grep -cv '/'))) && ls "${1}" || ls "${2}"
