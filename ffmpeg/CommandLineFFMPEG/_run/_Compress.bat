for %%i in ("input\*.mp4") do ffmpeg -hwaccel cuda -i "input\%%~ni.mp4" -vcodec h264 -acodec aac "output\%%~ni.mp4"
pause