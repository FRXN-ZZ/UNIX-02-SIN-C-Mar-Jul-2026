#!/bin/bash

# Accept two arguments and assign them to variables
FIRST_NAME=$1
LAST_NAME=$2

# Validate that both arguments are provided
if [ -z "$FIRST_NAME" ] || [ -z "$LAST_NAME" ]; then
    echo "Usage: $0 <first_name> <last_name>"
    exit 1
fi

#Create output.txt
> output.txt

#Write the current date in DD-MM-YYYY format
echo "Date: $(date +%d-%m-%Y)" >> output.txt

#Write the full name
echo "Name: $FIRST_NAME $LAST_NAME" >> output.txt

# Make a backup copy
cp output.txt backup.txt

#Print the content of output.txt
echo "--- Contents of output.txt ---"
cat output.txt