for %%a in ("*.*") do ffmpeg -i "%%a" -filter_complex "[0:v]setpts=0.5*PTS[v];[0:a]atempo=2.0[a]" -map "[v]" -map "[a]" "newfiles\%%~na.mp3"
pause