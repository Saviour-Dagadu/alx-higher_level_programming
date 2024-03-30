#!/bin/bash

# Check if a URL is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <URL>"
    exit 1
fi

url="$1"

# Send a request to the URL using curl and display only the status code
curl -s -o /dev/null -w "%{http_code}\n" "$url"
