$filename='Sedinta plenara a Parlamentului - 28 decembrie 2023'

#ffmpeg -i "$($filename).mp4" -acodec libmp3lame "$($filename).mp3"
ffmpeg -i $filename'.mp4' -vn -ar 44100 -ac 1 -q:a 9 -acodec libmp3lame $filename'-vbr.mp3'

pause