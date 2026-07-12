#!/usr/bin/bash

max_permitted_usage=80
disk_used_part=$(df --output=pcent / | tail -1 | tr -dc '0-9')

if [ "$disk_used_part" -gt "$max_permitted_usage" ]; then
  echo "Warning"
  echo "Disk usage is $disk_used_part"

  else
    echo "Disk usage is normal."
fi
largest_file=$(find ~ -type f -exec du -h {} + | sort -hr | head -n 1)

echo "Largest file in home directory: $largest_file"