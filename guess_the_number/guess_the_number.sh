#!/usr/bin/bash

random_number=$(shuf -i 1-100 -n 1)

read -rp "Guess a number: " guessed_number

if [ -z "$guessed_number" ]; then
  echo "Please enter a valid number"
  exit 1
fi
while [ "$guessed_number" -ne "$random_number" ]; do
  if [ "$guessed_number" -lt "$random_number" ]; then
    echo "You guessed too small"
  elif [ "$guessed_number" -gt "$random_number" ]; then
    echo "You guessed too big"
  else
    echo "Your guess is correct"
    exit 0
  fi

  read -rp "Guess a number: " guessed_number

  if [ -z "$guessed_number" ]; then
    echo "Please enter a valid number"
    read -rp "Guess a number: " guessed_number

  fi
done
echo "Your guess is correct"