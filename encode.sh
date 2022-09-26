#!/bin/env bash
if [[ "$#" -lt 1 ]]; then
  # Encoder presets https://trac.ffmpeg.org/wiki/Encode/H.264#a2.Chooseapresetandtune'
  echo "Specify input file."
  echo "$0 myfile.mkv"
  echo ""
  echo "Encoding preset is an optional argument. Default value is medium."
  echo "$0 myfile.mkv fast"
  exit
fi

INPUT=$1

if [[ -z "$2" ]]; then
  PRESET='medium'
else
  PRESET=$2
fi

FFMPEG_TARGET_DIRECTORY="$(tar -tf ffmpeg.tar.xz | head -n 1)"
OUTPUT_FILE_NAME="$1.720p.x265.mkv"

FFMPEG_ENCODE_COMMAND="$FFMPEG_TARGET_DIRECTORY/ffmpeg -i $INPUT -vf scale=1280:720 -c:v libx265 -minrate 3600k -maxrate 3600k -bufsize 8096k -preset slow -pass 1 -ac 2 -c:a aac -ab 128k -tag:v hvc1 $OUTPUT_FILE_NAME"

$($FFMPEG_ENCODE_COMMAND)
