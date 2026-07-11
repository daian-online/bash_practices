#!/usr/bin/bash

target_dir="$1"

if [ -z ${target_dir} ]; then
      echo "Usage: $0 <folder_to_backup>"
    exit 1
fi

if [ ! -d "$target_dir" ]; then
      echo "Error: '$target_dir' is not a valid directory"
    exit 1
fi

target_dir="${target_dir%/}"
back_up_name="${target_dir}_backup_$(date +%Y_%m_%d_%H_%M_%S).tar.gz"

tar -czf "$back_up_name" "$target_dir"
echo "Backed up '$target_dir' to '$back_up_name'"
du -h "${back_up_name}"