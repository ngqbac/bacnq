for %%a in ("*.mp4") do ffmpeg -y -i "%%a" -vf "select=eq(n\,2)" -vframes 1 "%%~na.png"
pause