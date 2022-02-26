:: Original Script from Teardown devs included in Screen Recorder Mod ::
@echo off

for /f "usebackq" %%x in (`powershell "get-date -f yyyy-MM-dd-HH-mm-ss"`) do set timestamp=%%x

if exist "ffmpeg.exe" (
	ffmpeg.exe -framerate 60 -i capture/%%4d.jpg -i capture/audio.wav -acodec aac -vcodec libx264 -preset slow -profile:v high -crf 20 %timestamp%.mp4
) else (
	@echo on
	echo ffmpeg.exe not found
	echo ------------------------------
	echo Download a Windows build of FFmpeg from https://www.ffmpeg.org
	echo Place the ffmpeg.exe file in this folder and run this script again
	echo ------------------------------
	pause
)

