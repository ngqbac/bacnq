for %%i in ("*.mp4") do ffmpeg -i "%%~ni.mp4" -b:a 192k -vn "%%~ni.mp3"
pause