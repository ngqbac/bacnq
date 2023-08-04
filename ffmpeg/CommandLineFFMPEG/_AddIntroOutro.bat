::Flow: extract ts from video then concat
::Requirement:
::	place main video in input folder
::	place intro/outro in inout folder
::	create output folder

::Step1: create intro outro ts file from inout folder
for %%i in ("inout\*.mp4") do ffmpeg -y -i "inout\%%~ni.mp4" -c copy -bsf:v h264_mp4toannexb -f mpegts "inout\%%~ni.ts"

::Step2: create input ts file from input folder
for %%i in ("input\*.mp4") do ffmpeg -y -i "input\%%~ni.mp4" -c copy -bsf:v h264_mp4toannexb -f mpegts "input\%%~ni.ts" 

::Step3: merge intro-input-outro then save file to output folder
for %%i in ("input\*.mp4") do ffmpeg -y -i concat:"inout\intro.ts|input\%%~ni.ts|inout\outro.ts" -c copy -bsf:a aac_adtstoasc "output\%%~ni.mp4"
pause