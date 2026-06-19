# Exercise 1: Recording Your Name and the Date

## Overview
Script that accepts a first and last name as command-line arguments, writes the current date and full name to a file, creates a backup, and prints the result to the terminal.

## How to Run
chmod +x exercise1.sh
./exercise1.sh YourFirstName YourLastName

## Expected Output
--- Contents of output.txt ---
Date: 10-06-2026
Name: francisco Muela

## What the Script Does
1. Accepts two command-line arguments as first and last name
2. Validates that both arguments were provided, exits with code 1 if not
3. Creates output.txt and writes the current date in DD-MM-YYYY format
4. Writes the full name to output.txt
5. Creates a backup copy backup.txt using cp
6. Prints the contents of output.txt to the terminal using cat