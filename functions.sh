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

echo9000