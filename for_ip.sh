#!/bin/bash

# Loop through all arguments passed to the script
for ip_address in "$@"; do
    echo "Taking some action on IP address ${ip_address}"
done