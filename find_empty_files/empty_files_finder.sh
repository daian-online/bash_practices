#!/usr/bin/bash
shopt -s dotglob
  for file in ./*; do
    file_size=$(stat -c%s "$file")

    if [ "$file_size" -eq 0 ]; then
      echo "$file"
      read -rp "Do you want to delete it (y/n) ?" delete
      if [ "$delete" = "y" ] || [ "$delete" = "Y" ]; then
        rm -rf "$file"

      elif [ "$delete" = "n" ] || [ "$delete" = "N" ]; then
        continue

      else
        echo "Please enter a valid parameter"
        read -rp "Do you want to delete it (y/n) ?" delete
      fi
    fi
  done

shopt -u dotglob