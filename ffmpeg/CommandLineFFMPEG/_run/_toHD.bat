for %%i in ("input\*.mp4") do ffmpeg -hwaccel cuda -i "input\%%~ni.mp4" -vf scale=1280:720 -c:a copy "output\%%~ni.mp4"
pause