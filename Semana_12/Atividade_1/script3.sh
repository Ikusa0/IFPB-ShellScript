#!/bin/bash

sed -E 's/([0-9]{3}[\.-]){3}[0-9]{2}/**CENSURADO**/g' < "${1}"
