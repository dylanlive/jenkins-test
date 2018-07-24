#!/bin/bash

# Simple tests for the my_addition_app

./my_addition_app.sh >/dev/null
exit_code=$?

if [ "$exit_code" -ne 1 ]; then
  echo "Exit code failed! Expected: 1 Got: $exit_code"
  exit 1
fi

output=$(./my_addition_app.sh 5 10)

if [ "$output" -ne 15 ]; then
  echo "Addition failed! Expected: 15 Got: $output"
  exit 1
fi
