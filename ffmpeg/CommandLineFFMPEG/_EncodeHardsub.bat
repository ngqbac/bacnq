for %%i in ("*.mp4") do ffmpeg -hwaccel cuda -i "%%~ni.mp4" -vf ass="%%~ni.ass" -crf 18 "output\%%~ni.mp4"
pause