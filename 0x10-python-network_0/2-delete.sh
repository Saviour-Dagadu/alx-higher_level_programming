#!/bin/bash

# Check if a URL is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <URL>"
    exit 1
fi

url="$1"

# Send a DELETE request to the URL using curl and save the response
response=$(curl -s -X DELETE "$url")

# Display the body of the response
echo "Response body:"
echo "$response"
