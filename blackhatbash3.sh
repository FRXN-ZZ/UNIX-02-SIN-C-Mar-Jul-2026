#!/usr/bin/env bash
book="black hat bash"
echo "This book's name is ${book}"
book="Black Hat Bash" 
unset book 
echo "${book}"