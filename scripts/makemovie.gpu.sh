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

ffmpeg -framerate 60 -hwaccel cuda -hwaccel_output_format cuda -extra_hw_frames 2 -pattern_type glob -i 'capture/*.jpg' -i capture/audio.wav -c:v h264_nvenc -c:a aac -rc vbr -cq 24 -qmin 24 -qmax 24 -b:v 10M -preset slow $timestamp.mp4
