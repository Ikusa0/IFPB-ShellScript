#!/bin/bash

(($(ls "${1}" | wc -l) > $(ls "${2}" | wc -l))) && ls "${1}" || ls "${2}"
