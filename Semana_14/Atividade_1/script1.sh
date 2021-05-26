#!/bin/bash

function lesser() {
  [[ ${1} -lt ${2} ]] && echo "${1}" || echo "${2}"
}

function greater() {
  [[ ${1} -gt ${2} ]] && echo "${1}" || echo "${2}"
}
