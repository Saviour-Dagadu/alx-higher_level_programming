#!/bin/bash

# Check if a URL is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <URL>"
    exit 1
fi

url="$1"
email="test@gmail.com"
subject="I will always be here for PLD"

# Send a POST request to the URL with email and subject variables using curl
response=$(curl -s -X POST -d "email=$email&subject=$subject" "$url")

# Display the body of the response
echo "Response body:"
echo "$response"
