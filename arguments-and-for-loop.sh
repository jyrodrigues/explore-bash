#!/bin/bash

num_arguments=$#
echo -e "${num_arguments} arguments were passed\n"

echo "\$# stands for the number of arguments passed"
echo "\$@ stands for a list of arguments"

echo -e "\n((for i = 1; i <= \$#; i++ )); do echo \"arg #\$i: \${!i}\" done"
for (( i = 1; i <= $#; i++ )); do
  echo "arg #$i: ${!i}"
done

echo -e "\nfor arg in \"\$@\"; do echo \"\$arg\" done"
for argument in "$@"; do
  echo "$argument"
done

echo -e "\nfor arg; do echo \"\$arg\" done"
for argument; do
  echo "$argument"
done