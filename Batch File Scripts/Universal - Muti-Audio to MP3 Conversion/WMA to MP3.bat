@echo off
rem
if not exist "Converted\" MD "Converted"
FOR %%A IN ("*.wma") Do ffmpeg -i "%%~nA.wma" -c:v copy -map_metadata 0 -id3v2_version 3 -b:a 320k "Converted/%%~nA.mp3"
pause