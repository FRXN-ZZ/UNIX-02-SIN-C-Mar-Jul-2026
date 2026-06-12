#!/bin/bash

FILE="output.txt"
touch "${FILE}"

until [[ -s "${FILE}" ]]; do
    echo "${FILE} is empty..."
    echo "Checking again in 2 seconds..."
    sleep 2
done

echo "${FILE} appears to have some content in it!"

FILE="output.txt"
#Variable assignment: Creates a variable named "FILE" and assigns it the name of the file we will work with ("output.txt").

touch "${FILE}"
#Create file: The "touch" command creates an empty file with the name stored in the variable (output.txt). If the file already exists, it just updates its modification date without deleting its content.

until [[ -s "${FILE}" ]]; do
#'Until' loop: Starts a loop that repeats AS LONG AS the condition is false, and stops UNTIL the condition becomes true. The "-s" operator checks if the file has a size greater than zero (meaning it contains some text or data).

echo "${FILE} is empty..."
#Print message: Displays on the screen that the file is still empty.

echo "Checking again in 2 seconds..."
#Print message: Informs the user that a new check will be performed shortly.

sleep 2
#Time pause: Pauses the execution of the script for 2 seconds before checking the loop condition again, preventing the computer from using too many resources.

done
# Loop closure: Marks the end of the block of commands that repeat inside the "until" loop.

echo "${FILE} appears to have some content in it!"
# Final message: This runs only when the loop breaks (meaning when the file finally is no longer empty), warning that content was detected.