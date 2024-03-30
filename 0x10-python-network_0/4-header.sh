#!/bin/bash

# Check if a URL is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <URL>"
    exit 1
fi

url="$1"

# Send a GET request to the URL with the header variable X-School-User-Id set to 98 using curl
response=$(curl -s -H "X-School-User-Id: 98" "$url")

# Display the body of the response
echo "Response body:"
echo "$response"
