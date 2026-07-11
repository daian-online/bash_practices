#!/usr/bin/bash

organize_file() {
  local file_extension="$1"
  case "$file_extension" in
    jpg|jpeg|png|svg)
      target_directory="Images"
      ;;
    pdf|text|txt|doc|docx)
      target_directory="Documents"
      ;;
    mp3|wav)
      target_directory="Musics"
      ;;
    mp4|mkv)
      target_directory="Videos"
      ;;
    *)
      echo "Unknown type for: $file (extension: $file_extension)"
      return 1
      ;;
  esac
  mkdir "$target_directory"
  mv "$file" "$target_directory/"
}

for file in *; do
  [ -f "$file" ] || continue
    IFS="." read -ra file_name <<< "$file"
    file_extension=${file_name[-1]}
    organize_file "$file_extension"
done