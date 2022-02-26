:: Modified using commands provided from NVIDIA ::
@echo off

for /f "usebackq" %%x in (`powershell "get-date -f yyyy-MM-dd-HH-mm-ss"`) do set timestamp=%%x

:: FFMPEG NVENC GPU (NVIDIA) - https://developer.nvidia.com/blog/turing-h264-video-encoding-speed-and-quality/ ::
if exist "ffmpeg.exe" (
    ffmpeg.exe -framerate 60 -i capture/%%4d.jpg -i capture/audio.wav -c:a aac -c:v h264_nvenc -preset slow -profile:v high -b:v 1000*10000 -bufsize 1000*10000 -bf 3 -b_ref_mode 2 -temporal-aq 1 -rc-lookahead 20 %timestamp%.mp4
) else (
	@echo on
	echo ffmpeg.exe not found
	echo ------------------------------
	echo Download a Windows build of FFmpeg from https://www.ffmpeg.org
	echo Place the ffmpeg.exe file in this folder and run this script again
	echo ------------------------------
	pause
)
