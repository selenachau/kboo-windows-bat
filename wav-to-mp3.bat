for %%A IN (*.wav) do c:\ffmpeg\ffmpeg\bin\ffmpeg.exe -i "%%A" -vn -c:a libmp3lame -r:a 44100 -b:a 192k "%%~nA.mp3"

::Nov. 15, 2016 note, SC--ffmpeg was installed on Zale's computer on the C:\ drive at the path named above. Better to install it in program files folder, then will need to adjust this script based on where ffmpeg is located, per computer running the script.
:: batch script for Windows 7 at KBOO
:: keeps same filename of wav for mp3
:: -vn disable video i.e. video no
:: -r:a or -ar 44100 sample rate
:: -c:a or -ac  set # of audio channels. For output streams it is set by default to # input audio streams
:: libmp3lame external encoding library within ffmpeg
:: -b:a 192k audio bitrate 
:: full documentation at ffmpeg.org/ffmpeg.html
