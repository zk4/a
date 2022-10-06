#!/bin/bash
source ~/git/a/.base.sh
# -------------------------------------------

ffmpeg -i in.mp4 -f mp3 -ab 192000 -vn out.mp3
