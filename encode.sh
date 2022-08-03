#!/bin/env bash
if [[ "$#" -ne 2 ]]; then
  echo "Specify input file and number of threads to use."
  echo "$0 myfile.mkv 8"
  exit
fi

FFMPEG_TARGET_DIRECTORY="$(tar -tf ffmpeg.tar.xz | head -n 1)"
FFMPEG_ENCODE_COMMAND="$FFMPEG_TARGET_DIRECTORY/ffmpeg -i $1 -vf scale=1280:720 -c:v libx265 -b:v 3500k -minrate 3500k -maxrate 3500k -bufsize 7092k -preset veryslow -c:a aac -b:a 128k output.mp4 -threads $2"

$($FFMPEG_ENCODE_COMMAND)
