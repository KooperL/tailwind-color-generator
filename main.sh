#!/bin/bash

# Read input from standard input
input_data=$(cat)

# Curl the input data to the API endpoint
api_response=$(curl -X POST -H "Content-Type: application/json" -d "$input_data" https://api.example.com/upload)

# Parse the API response and print the data field
data_field=$(echo "$api_response" | jq -r '.data')
echo "Data field from API response: $data_field"
