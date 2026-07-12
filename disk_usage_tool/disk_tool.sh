#!/usr/bin/bash

disk_used_part=$(df -h / | awk 'NR==2 {print $5}' | tr -d '%')
max_permitted_usage=80
while [ "$disk_used_part" -lt "$max_permitted_usage" ]; do
  continue
done

if [ "$disk_used_part" -gt "$max_permitted_usage" ]; then
    echo "Warning"
    echo "Disk usage is $disk_used_part"
fi
