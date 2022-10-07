#!/bin/bash

source "$(dirname "$0")/../util/base.sh"
# -------------------------------------------

input_video_name=`ls *.mp4 | fzf`
output_audio_name=$(input2 "output audio name [ex: out.mp3]:") 


ffmpeg -i "$input_video_name" -f mp3 -ab 192000 -vn "$output_audio_name"






