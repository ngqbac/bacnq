for %%a in ("*.png") do ffmpeg -y -i "%%a" -vf scale=320:180 "output\_%%~na.png"
pause