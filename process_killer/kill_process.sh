#!/usr/bin/bash

while true; do
  echo "Menu"
  echo "1) show all processes"
  echo "2) search for a process"
  echo "3) delete a process by pid"
  echo "4) exit from app"

  read -rp "" choice

  if [ "$choice" -eq 1 ]; then
    ps aux
    continue

  elif [ "$choice" -eq 2 ]; then
    read -rp "Enter a word to search for that: " search_word

    ps aux | grep "$search_word"
    continue

  elif [ "$choice" -eq 3 ]; then
    read -rp "Enter a pid to delete that with 15 signal: " pid

    sudo kill "$pid"

  elif [ "$choice" -eq 4 ]; then
    echo "Bye"
    exit 0

  else
    echo "Please enter a valid option"
  fi
done
