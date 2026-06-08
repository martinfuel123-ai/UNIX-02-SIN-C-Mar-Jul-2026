#!/bin/bash

SCRIPT_NAME="${0}"
TARGET="${1}"

echo "Running the script ${SCRIPT_NAME}..."
echo "Pinging the target: ${TARGET}..."

echo "The arguments are: $@"
echo "The total number of arguments is: $#"

ping -c 3 "${TARGET}"