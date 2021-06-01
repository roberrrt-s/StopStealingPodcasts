#!/usr/bin/env bash

for podcast in ./audio/*.{wav,mp3}; do

	full=$(basename -- "$podcast")
	extension="${full##*.}"
	filename="${full%.*}"

	echo "file: ${filename} type: ${extension}"

	ffmpeg -loop 1 -framerate 1 -i "./img/${filename}.png" -i "./audio/${filename}.${extension}" \
	-c:v libx264 -preset veryslow -crf 0 -c:a copy -shortest "./dist/${filename}.mkv"

done;