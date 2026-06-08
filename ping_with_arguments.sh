#!/bin/bash

# This script will ping any address provided as an argument.
SCRIPT_NAME="${0}"
TARGET="${1:-127.0.0.1}" 

echo "Running the script ${SCRIPT_NAME}..." 
echo "Pinging the target: ${TARGET}..." 

ping -c 4 "${TARGET}"
chmod u+x ping_with_arguments.sh
chmod u+x ping_with_arguments.sh

echo "The arguments are: $ @" 
echo "The total number of arguments is: $#"

chmod u+x show_args.sh 
./show_args.sh "hello" "world"
# Change "$@" to "$*" to observe behavior. 
for args in "$@"; do 
    echo "${args}" 
done