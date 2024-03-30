#!/bin/bash

# Check if a URL is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <URL>"
    exit 1
fi

url="$1"

# Send an OPTIONS request to the URL using curl and retrieve the allowed methods
allowed_methods=$(curl -s -X OPTIONS -I "$url" | awk '/Allow:/ {print $2}')

# Display the allowed methods
if [ -z "$allowed_methods" ]; then
    echo "No allowed methods found for $url"
else
    echo "Allowed methods for $url: $allowed_methods"
fi
