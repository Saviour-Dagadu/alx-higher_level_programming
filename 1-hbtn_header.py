import urllib.request
import sys

# Check if URL is provided as a command line argument
if len(sys.argv) < 2:
    print("Usage: python script.py <URL>")
    sys.exit(1)

url = sys.argv[1]

with urllib.request.urlopen(url) as response:
    x_request_id = response.headers.get('X-Request-Id')

if x_request_id:
    print("X-Request-Id: {}".format(x_request_id))
else:
    print("X-Request-Id header not found in the response.")
