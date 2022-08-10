#!/usr/bin/env bash

# I need to check if this will work for symlinks.
if [[ -f "/usr/bin/apt" ]]; then
  apt update
  apt install -y wget xz-utils tar
elif [[ -f "/usr/bin/yum" ]]; then
  yum makecache
  yum install -y wget xz tar
else
  echo "Could not determine which package manager is installed."
  exit
fi

FFMPEG_ARCHIVE_NAME='ffmpeg.tar.xz'
# uname -p is not portable
ARCH="$(uname -a | cut -d ' ' -f12)"

if [[ "aarch64" -eq "$ARCH" ]]; then
  wget 'https://johnvansickle.com/ffmpeg/builds/ffmpeg-git-arm64-static.tar.xz' -O $FFMPEG_ARCHIVE_NAME
elif [[ "x86_64" -eq "$ARCH" ]]; then
  wget 'https://johnvansickle.com/ffmpeg/builds/ffmpeg-git-amd64-static.tar.xz' -O $FFMPEG_ARCHIVE_NAME
fi

tar -xvf $FFMPEG_ARCHIVE_NAME
