#!/bin/bash

# Check if ffmpeg is installed
if ! [ -x "$(command -v ffmpeg)" ]; then
  echo 'Error: ffmpeg is not installed.' >&2
  exit 1
fi

# Check if the input directory is specified and exists
if [ -z "$1" ]; then
    echo "Usage: $0 <input-directory> [output-directory]"
    exit 1
elif [ ! -d "$1" ]; then
    echo "Error: $1 directory does not exist."
    exit 1
fi

# Use the input directory as the output directory if none is specified
OUTPUT_DIR=${2:-$1}

# Convert all WebM files in the input directory to MP3 in the output directory
for file in "$1"/*.webm
do
    # Extract the filename without the directory or extension
    filename=$(basename -- "$file")
    filename="${filename%.*}"
    
    # Convert the file to MP3
    ffmpeg -i "$file" -vn -codec:a libmp3lame -b:a 320k -ar 48000 "$OUTPUT_DIR/$filename.mp3"
done
