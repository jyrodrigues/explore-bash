#!/bin/bash

# There are two ways to define functions
spaced() {
  # parameters are not named; they are positional
  echo
  echo "###############"
  echo "$1"
  echo "###############"
  echo
}
# spaced "what?"

function echo9000() {
  spaced 9000
}
# echo9000


if [[ $# < 1 ]]; then
  echo "Please specify the number of apples:
${0} <number-of-apples>"
  exit 1
fi

function eat() {
  echo $(($1-1))
}

function show_off() {
  if [[ $1 != 1 ]]; then
    echo "You have $1 ${2}s"
  else
    echo "You have $1 ${2}"
  fi
}

apples=$1
show_off $apples "apple"

while [[ $apples > 0 ]]; do
  apples=$(eat $apples)
  show_off $apples "apple"
done