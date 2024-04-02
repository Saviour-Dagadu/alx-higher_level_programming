import urllib.request
import urllib.parse
import sys

# Check if URL and email are provided as command line arguments
if len(sys.argv) < 3:
    print("Usage: python script.py <URL> <email>")
    sys.exit(1)

url = sys.argv[1]
email = sys.argv[2]

# Encode the email parameter
data = urllib.parse.urlencode({'email': email}).encode('utf-8')

# Send POST request and handle the response
with urllib.request.urlopen(url, data=data) as response:
    body = response.read().decode('utf-8')

print(body)
