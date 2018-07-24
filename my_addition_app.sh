#!/bin/bash

# Simple app for adding two arguments

# Make sure user supplied arguments
if [[ -z "$1" || -z "$2" ]]; then
  echo "Invalid number of arguments. Enter numbers to add. Example usage: $0 10 5"
  exit 1
fi

# Do the math and return it
echo $(expr "$1" + "$2")
exit 0
