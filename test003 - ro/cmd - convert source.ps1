$filename='Sedinta plenara a Parlamentului - 28 decembrie 2023'

#ffmpeg -i "$($filename).mp4" -acodec libmp3lame "$($filename).mp3"
ffmpeg -i $filename'.mp4' -vn -ar 44100 -ac 1 -b:a 96k -acodec libmp3lame $filename'.mp3'

pause