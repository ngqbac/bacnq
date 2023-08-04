for %%i in ("*.mp2") do ffmpeg -i "%%~ni.mp2" -c:v copy -c:a libmp3lame -q:a 4 "%%~ni.mp3"
pause