for %%A IN (*.wav) do c:\ffmpeg\ffmpeg\bin\ffmpeg.exe -i "%%A" -write_id3v1 1 -id3v2_version 3 -dither_method modified_e_weighted -map_metadata 0 -c:a libmp3lame -r:a 44100 -q:a 3 -n "%%~nA.mp3"

:: Nov. 15, 2016 note, SC: ffmpeg was installed on Zale's computer on the C:\ drive at the path named above. Adjust this script based on where ffmpeg is located, per computer running the script.
:: batch script for Windows 7 at KBOO
:: keeps same filename of wav for mp3
:: Ctrl-C to abort the script, will ask "Terminiate batch job (Y/N)?" hit N to exit the batch script
:: The batch script runs a loop for each wav file. To stop the loop command for an individual file, press Q to stop. This will leave you with an unfinished mp3 file and the script will move on to the next wav file queued in the loop.
:: -vn disable video i.e. video no
:: -r:a or -ar 44100 sample rate
:: -c:a or -ac  set # of audio channels. For output streams it is set by default to # input audio streams
:: libmp3lame external encoding library within ffmpeg
:: -q:a 3 transcode at constant quality as opposed to constant bitrate 3 is 150-195 bitrate range kbit/s
:: -n skips wav files where mp3 file exists with same name
:: full documentation at ffmpeg.org/ffmpeg.html
