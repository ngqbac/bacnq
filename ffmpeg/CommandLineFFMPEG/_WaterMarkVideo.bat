for %%i in ("input\*.mp4") do ffmpeg -hwaccel cuda -y -i "input\%%~ni.mp4" -i logo.png -filter_complex "overlay=W-w-5:H-h-5" "output\%%~ni.mp4"
pause

::Top left
::overlay=5:5

::Top right
::overlay=main_w-overlay_w-5:5
::overlay=W-w-5:5

::Bottom right
::overlay=main_w-overlay_w-5:main_h-overlay_h-5
::overlay=W-w-5:H-h-5

::Bottom left
::overlay=5:main_h-overlay_h
::overlay=5:H-h-5

::Convert
::-c:v libx264 -crf 0 -c:a copy