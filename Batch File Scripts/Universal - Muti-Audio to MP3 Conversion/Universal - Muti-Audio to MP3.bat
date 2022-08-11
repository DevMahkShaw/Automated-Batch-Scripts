@echo off
rem
if not exist "Converted\" MD "Converted"
FOR %%A IN ("*.flac") Do ffmpeg -i "%%~nA.flac" -c:v copy -map_metadata 0 -id3v2_version 3 -b:a 320k "Converted/%%~nA.mp3"
FOR %%A IN ("*.wav") Do ffmpeg -i "%%~nA.wav" -c:v copy -map_metadata 0 -id3v2_version 3 -b:a 320k "Converted/%%~nA.mp3"
FOR %%A IN ("*.ogg") Do ffmpeg -i "%%~nA.ogg" -c:v copy -map_metadata 0 -id3v2_version 3 -b:a 320k "Converted/%%~nA.mp3"
FOR %%A IN ("*.wma") Do ffmpeg -i "%%~nA.wma" -c:v copy -map_metadata 0 -id3v2_version 3 -b:a 320k "Converted/%%~nA.mp3"
FOR %%A IN ("*.aac") Do ffmpeg -i "%%~nA.aac" -c:v copy -map_metadata 0 -id3v2_version 3 -b:a 320k "Converted/%%~nA.mp3"
FOR %%A IN ("*.pcm") Do ffmpeg -i "%%~nA.pcm" -c:v copy -map_metadata 0 -id3v2_version 3 -b:a 320k "Converted/%%~nA.mp3"
FOR %%A IN ("*.aiff") Do ffmpeg -i "%%~nA.aiff" -c:v copy -map_metadata 0 -id3v2_version 3 -b:a 320k "Converted/%%~nA.mp3"
FOR %%A IN ("*.alac") Do ffmpeg -i "%%~nA.alac" -c:v copy -map_metadata 0 -id3v2_version 3 -b:a 320k "Converted/%%~nA.mp3"
FOR %%A IN ("*.m4a") Do ffmpeg -i "%%~nA.m4a" -c:v copy -map_metadata 0 -id3v2_version 3 -b:a 320k "Converted/%%~nA.mp3"
FOR %%A IN ("*.opus") Do ffmpeg -i "%%~nA.opus" -c:v copy -map_metadata 0 -id3v2_version 3 -b:a 320k "Converted/%%~nA.mp3"
pause