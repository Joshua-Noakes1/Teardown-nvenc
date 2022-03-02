:: Modified using commands provided from NVIDIA ::
@echo off

for /f "usebackq" %%x in (`powershell "get-date -f yyyy-MM-dd-HH-mm-ss"`) do set timestamp=%%x

:: FFMPEG NVENC GPU (NVIDIA) - https://developer.nvidia.com/blog/turing-h264-video-encoding-speed-and-quality/ ::
if exist "ffmpeg.exe" (
    ffmpeg -framerate 60 -strict 2 -hwaccel auto -i capture/%%4d.jpg -i capture/audio.wav  -c:v hevc_nvenc -c:a aac -rc vbr -cq 24 -qmin 24 -qmax 24 -profile:v main10 -pix_fmt p010le -b:v 0K -c:a aac -map 0 "%timestamp%.mp4"
) else (
	@echo on
	echo ffmpeg.exe not found
	echo ------------------------------
	echo Download a Windows build of FFmpeg from https://www.ffmpeg.org
	echo Place the ffmpeg.exe file in this folder and run this script again
	echo ------------------------------
	pause
)
