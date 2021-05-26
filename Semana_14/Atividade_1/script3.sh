#!/bin/bash

function ping_test() {
  ping -c4 "${1}" &> /dev/null && echo "OK" || echo "FALHA"
}
