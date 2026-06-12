#!/bin/bash

# Store the first command-line argument
USER_INPUT="${1}"

# Check if no argument was provided
if [[ -z "${USER_INPUT}" ]]; then
    echo "You must provide an argument!"
    exit 1
fi

# Check if the argument is a file
if [[ -f "${USER_INPUT}" ]]; then
    echo "${USER_INPUT} is a file."

# Check if the argument is a directory
elif [[ -d "${USER_INPUT}" ]]; then
    echo "${USER_INPUT} is a directory."

# If it is neither a file nor a directory
else
    echo "${USER_INPUT} is not a file or a directory."
fi