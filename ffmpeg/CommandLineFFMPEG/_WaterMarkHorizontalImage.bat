for %%i in ("*.jpg") do ffmpeg -y -i "%%~ni.jpg" -i _logo.png -filter_complex "overlay=x=main_w-overlay_w-(main_w*0.01):y=main_h*0.01" "%%~ni.jpg"
pause