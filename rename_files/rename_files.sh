#!/usr/bin/bash

count=1

for file in ./*; do
    extension="${file##*.}"
    new_name="shul${count}.${extension}"

    mv "$file" "$new_name"

    ((count++))
done
echo "done"