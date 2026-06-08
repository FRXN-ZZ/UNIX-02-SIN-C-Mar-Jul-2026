#!/bin/bash
# This script will ping any address provided as an argument. 

SCRIPT_NAME="${0}"
TARGET="${127.0.0.1}" 

echo "Running the script ${SCRIPT_NAME}..." 
echo "Pinging the target: ${TARGET}..." 

ping "${TARGET}"
