<!-- markdownlint-configure-file { "MD004": { "style": "consistent" } } -->
<!-- markdownlint-disable MD033 -->
# 

<p align="center">
 <img src="https://user-images.githubusercontent.com/108546884/184180384-a48d6bf9-b05c-4a86-94a1-8c95319dc548.png" width="150" title="Bat Icon">
 <br>
 <strong>Automated Batch Scripts</strong>
</p>

<p align="center">
  <strong>Collective Repo with a variety of automated Command Prompt batch-scripts for various or normal use and needs.</strong>
</p>
<!-- markdownlint-enable MD033 -->




### Who's this for?

Maybe there's something you want or need to automate the writing to execute a simple line or task. Use cases as in converting files for specific needs such as resolving or to eliminate minimal conflicts with compatibility in devices, software, and many more. This repo is just for mostly not everyday use scripts but are very handy when needed.

-----

## Requirements:

- Command Prompt
- Ability to understand how Batch Scripts work
- Ability to edit the Batch Scripts to your liking for any reason
- Read requirements for specific Batch Scripts in case they need additional software or environments to boot


### How to use:

1. Drag n' Drop the Bat files where your needed task or file you are working on are located.
2. Open.
  
**Disclaimer: Some Bat files may need to be opened "Run as Administrator" in order to bypass permissions. Some may not.**

 -----
 
 
# Scripts

## Universal - Muti-Audio to MP3 Converter

Automated method of converting various audio formats, multiple or just a few audio files losslessly to MP3, keeping, transfering all metadata and tags as from the original files.
Useful when you need to convert a whole album or discography from an artist.
This script relies on FFmpeg.

### Audio formats that are being converted:

```bash
AAC  (Advanded Audio Coding/Codec)    - .aac
AIFF (Audio Interchange File Format)  - .aiff
ALAC (Apple Lossless Audio Codec)     - .alac
FLAC (Free Lossless Audio Codec)      - .flac
M4A  (MPEG-4 or MP4 Audio Format)     - .m4a
OGG  (Vorbis - Open Container Format) - .ogg
OPUS (Opus Interactive Audio Codec)   - .opus
PCM  (Pulse-code modulation)          - .pcm
WAV  (Waveform Audio File)            - .wav
WMA  (Windows Media Audio)            - .wma
```

### Requirements for Script:

- Install and setup [FFmpeg](https://www.ffmpeg.org/)
- Audio or Music files that you want to convert

Here's a tutorial/guide on how to install FFmpeg:
https://youtu.be/IECI72XEox0

### How to Use:

1. Download the **Universal - Muti-Audio to MP3.bat** file from the repo.
2. Drag n' drop the bat file to where you have the audio or music files located. Preferrably separated or you have selected few included in a folder.
3. **Do not "Run as Administrator."** 
4. Open/Execute.
5. Command Prompt will be opened and FFmpeg is running.
6. Wait till ```Press any key to continue...``` to appear in command prompt at the end.
7. Press any key within the prompt and the prompt should close.
8. If done successfully, there should be a new folder called "Converted" where you have the original audio files located, that's been created from the script should now contain the converted MP3 audio files.



https://user-images.githubusercontent.com/108546884/184210898-1052e2b7-d0b0-445e-8cbb-a7b839aa2a3c.mp4

### Source Code:


```batch
#echo displays messages of the commands
@echo off
#rem prevents some commands or lines from being executed if fails
rem
#Creates a directory for the files to go
if not exist "Converted\" MD "Converted"
#Make the lines search for the extensions of the file types instead of file names,
#then copies the information of the original file and transcodes to MP3 format and outputs to the folder.
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
```

-----





