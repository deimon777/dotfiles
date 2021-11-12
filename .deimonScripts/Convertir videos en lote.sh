for f in *.MOV; do ffmpeg -i "${f}" -vf scale=1920:1080 "${f%%.*}.mp4"; done
