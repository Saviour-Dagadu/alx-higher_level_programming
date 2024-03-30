#!/bin/bash

# Check if both URL and filename are provided
if [ $# -ne 2 ]; then
    echo "Usage: $0 <URL> <filename>"
    exit 1
fi

url="$1"
filename="$2"

# Check if the file exists
if [ ! -f "$filename" ]; then
    echo "File not found: $filename"
    exit 1
fi

# Send a JSON POST request to the URL with the contents of the file in the body using curl
response=$(curl -s -X POST -H "Content-Type: application/json" -d "@$filename" "$url")

# Display the body of the response
echo "Response body:"
echo "$response"
