for %%i in ("*.m4a") do ffmpeg -i "%%~ni.m4a" -c:v copy -c:a libmp3lame -q:a 4 "%%~ni.mp3"
pause