#!/bin/bash

# get timestamp - https://stackoverflow.com/a/60241816
timestamp=$(date +%d-%m-%Y_%H-%M-%S)

if ! ffmpeg -version &>/dev/null; then
	echo ffmpeg not found
	echo ------------------------------
	echo Download a build of FFmpeg from https://www.ffmpeg.org and run this script again.
	echo ------------------------------
	exit 1
fi

ffmpeg -framerate 60 -pattern_type glob -i 'capture/*.jpg' -i capture/audio.wav -acodec aac -vcodec libx264 -preset slow -profile:v high -crf 20 $timestamp.mp4
