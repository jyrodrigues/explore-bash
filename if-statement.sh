#!/bin/bash

if [[ $# < 1 ]]; then
  echo "No arguments passed"
elif [[ $1 = "Bloom" ]]; then
  echo "Wow you passed me the Bloom"
else
  echo "No, you didn't pass Bloom, you passed \"$1\""
fi
