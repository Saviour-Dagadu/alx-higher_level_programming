#!/bin/bash

# Check if a URL is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <URL>"
    exit 1
fi

url="$1"

# Send a request to the URL using curl and get the response body
response=$(curl -s "$url")

# Get the size of the response body in bytes
size=$(echo -n "$response" | wc -c)

echo "Size of the response body for $url is $size bytes."
