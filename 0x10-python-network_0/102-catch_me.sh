#!/bin/bash

# Send a POST request to 0.0.0.0:5000/catch_me with a custom header
curl -s -X POST -H "Catch-Me-If-You-Can: I will catch you!" http://0.0.0.0:5000/catch_me
