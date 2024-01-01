#!/bin/bash

# Example: Read data from a file using a while loop

# File containing data
file="data.txt"

# Check if the file exists
if [ ! -f "$file" ]; then
  echo "File not found: $file"
  exit 1
fi

# Set IFS to space to separate fields by spaces
IFS=','

# Use a while loop to read each line of the file
while read -r first_name last_name age city; do
  echo "First Name: $first_name"
  echo "Last Name: $last_name"
  echo "Age: $age"
  echo "City: $city"
  echo "-----------------"
done < "$file"