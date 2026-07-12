#!/usr/bin/bash

show_menu() {
  echo "Menu"
  echo "1) Add"
  echo "2) Subtract"
  echo "3) Multiply"
  echo "4) Divide"
  echo "5) Exit"
}
while true; do
  show_menu

  read -rp "" choice

  if [ "$choice" -eq 1 ]; then
    read -rp "Enter first number: " first_number
    read -rp "Enter second number: " second_number

    result=$((first_number + second_number))
    echo "$result"
    continue

  elif [ "$choice" -eq 2 ]; then
    read -rp "Enter first number: " first_number
    read -rp "Enter second number: " second_number

    result=$((first_number - second_number))
    echo "$result"
    continue


  elif [ "$choice" -eq 3 ]; then
    read -rp "Enter first number: " first_number
    read -rp "Enter second number: " second_number

    result=$((first_number * second_number))
    echo "$result"
    continue

  elif [ "$choice" -eq 4 ]; then
    read -rp "Enter first number: " first_number
    read -rp "Enter second number: " second_number

    if [ "$first_number" -ne 0 ] && [ "$second_number" -ne 0 ]; then
      result=$((first_number / second_number))
      echo "$result"
      continue
    else
      echo "Can't division by zero"
      continue
    fi

  elif [ "$choice" -eq 5 ]; then
    echo "Bye"
    exit 0

  else
    echo "Please enter a valid parameter"
    continue

  fi
done