#!/bin/bash

# Check if a URL is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <URL>"
    exit 1
fi

url="$1"

# Send a request to the URL using curl and get the size of the response body in bytes
size=$(curl -sI "$url" | awk '/Content-Length/ {print $2}' | tr -d '\r\n')

# Check if Content-Length header is provided
if [ -z "$size" ]; then
    echo "Unable to retrieve content size for $url"
    exit 1
fi

echo "Size of the response body for $url is $size bytes."
