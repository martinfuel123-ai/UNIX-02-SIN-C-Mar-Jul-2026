#!/bin/bash

# Store the file name in a variable
FILE="output.txt"

# Create the file if it does not exist
touch "${FILE}"

# Keep looping until the file contains data
until [[ -s "${FILE}" ]]; do
    # Inform the user that the file is empty
    echo "${FILE} is empty..."

    # Inform the user that the script will check again
    echo "Checking again in 2 seconds..."

    # Wait for 2 seconds before checking again
    sleep 2
done

# Print a message when the file is no longer empty
echo "${FILE} appears to have some content in it!"