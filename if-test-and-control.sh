#!/bin/bash

# Using the old school evaluate brackets, that is 
#     [ statement-to-be-evaluated ]
# as opposed to the newer
#     [[ statement-to-be-evaluated ]]

NUM_REQUIRED_ARGS=2

if [ $# -lt $NUM_REQUIRED_ARGS ]; then
  echo "Not enough arguments. Call this script with
${0} <name> <number>"
  exit 1
else
  echo "Congrats you passed ${#} arguments. The first two are \"${1}\" and \"${2}\""
fi


notnully="This is something (not nothing)"
nully=""

if [ -n "$notnully" ]; then
  echo "This is not nully at all..."
fi

if [ -z "$nully" ]; then
  echo "This is nully or (same as?) zero length"
fi



## Integers

int1=1
int2=7
int3=1

# equal, not equal
if [ $int1 -eq $int3 ]; then 
  echo "${int1} is equal to ${int2}"
fi
if [ $int1 -le $int2 ]; then
  echo "${int1} is less than or equal to ${int2}"
fi

# in the old bash style, string comparison operators can be used with double parenthesis
if (( $int1 == $int3 )); then
  echo "${int1} is equal to ${int2}"
fi