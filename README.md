# WebM-to-MP3-Converter

This repository contains an efficient Bash script designed for high-quality audio conversion from WebM files to MP3. The script utilizes the robustness of ffmpeg and the libmp3lame codec to perform batch conversion of audio files, maintaining a high audio quality output at a bitrate of 320 kbps and a sampling rate of 48 kHz.

## Features

- **Batch Conversion**: Enables the user to convert all WebM files in a specified directory in a single operation.
- **High-Quality Output**: Outputs audio files with a bitrate of 320 kbps and a sampling rate of 48 kHz, ensuring high-quality audio.
- **Efficient Performance**: Leverages the power of ffmpeg for quick and efficient conversion.
- **User-friendly**: Command-line arguments for ease of use, allowing users to specify the input and output directories.

## Usage

1. Save the script as `convert_webm_to_mp3.sh` in your local system.
2. Make the script executable by running the command: `chmod +x convert_webm_to_mp3.sh`.
3. Use the script by specifying the input and output directories in the format: `./convert_webm_to_mp3.sh <input-directory> [output-directory]`.

If the output directory is not specified, the script will default to saving the MP3 files in the same directory as the input WebM files.

Please note that this script requires the presence of ffmpeg with libmp3lame support installed on your system.
