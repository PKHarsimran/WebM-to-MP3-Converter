#!/bin/bash

# This script will convert all WebM files in the current directory to MP3.

for file in *.webm
do
    ffmpeg -i "$file" -vn -codec:a libmp3lame -b:a 320k -ar 48000 "${file%.webm}.mp3"
done
