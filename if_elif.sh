#!/bin/bash
USER_INPUT="${1}"

if [[ -z "${USER_INPUT}" ]]; then
    echo "You must provide an argument!"
    exit 1
fi

if [[ -f "${USER_INPUT}" ]]; then
    echo "${USER_INPUT} is a file."
elif [[ -d "${USER_INPUT}" ]]; then
    echo "${USER_INPUT} is a directory."
else
    echo "${HOLA} is not a file or a directory."
fi

#COMENTARY
#This script validates the argument you pass when running it to determine its nature: 
#first, it checks if you forgot to input any data, in which case it stops the program with an error message; 
#if the argument exists, it checks in an orderly fashion whether it corresponds to the path of an existing file or a directory (folder), printing the confirmation on the screen, and finally, if it matches neither option or the path does not exist, it displays a message indicating that the item could not be classified.