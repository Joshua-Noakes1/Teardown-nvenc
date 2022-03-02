:: Modified using commands provided from NVIDIA ::
@echo off

for /f "usebackq" %%x in (`powershell "get-date -f yyyy-MM-dd-HH-mm-ss"`) do set timestamp=%%x

:: FFMPEG NVENC GPU (NVIDIA) - https://developer.nvidia.com/blog/turing-h264-video-encoding-speed-and-quality/ - https://superuser.com/a/1549957 ::
if exist "ffmpeg.exe" (
    ffmpeg -framerate 60 -hwaccel cuda -hwaccel_output_format cuda -i capture/%%4d.jpg -i capture/audio.wav -c:v h264_nvenc -c:a aac -rc vbr -cq 24 -qmin 24 -qmax 24 -b:v 10M -preset slow %timestamp%.mp4
) else (
	@echo on
	echo ffmpeg.exe not found
	echo ------------------------------
	echo Download a Windows build of FFmpeg from https://www.ffmpeg.org
	echo Place the ffmpeg.exe file in this folder and run this script again
	echo ------------------------------
	pause
)
