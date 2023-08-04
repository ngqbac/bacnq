for %%i in ("*.mxf") do ffmpeg -hwaccel cuda -i "%%~ni.mxf" -c:v libx264 -vf yadif "%%~ni.mp4"
pause