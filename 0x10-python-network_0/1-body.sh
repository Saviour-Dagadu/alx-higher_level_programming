#!/bin/bash

# Check if a URL is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <URL>"
    exit 1
fi

url="$1"

# Send a GET request to the URL using curl and save the response
response=$(curl -s -w "%{http_code} %{url_effective}\\n" -o response_body.txt "$url")

# Extract the status code from the response
status_code=$(echo "$response" | awk '{print $1}')

# Check if the request was successful (status code 200)
if [ "$status_code" -eq 200 ]; then
    echo "Response body for $url (status code 200):"
    cat response_body.txt
elif [ -s response_body.txt ]; then
    echo "Request failed with status code $status_code"
    echo "Full response:"
    cat response_body.txt
else
    echo "Failed to fetch response. Error message from curl:"
    echo "$response"
fi

# Clean up temporary files
rm -f response_body.txt
