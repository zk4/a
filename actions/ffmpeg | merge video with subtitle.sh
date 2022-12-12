#!/usr/bin/env bash
source "$(dirname "$0")/../util/base.sh"

echo "demo: ffmpeg -i ./a.mkv -vf subtitles='a.en.vtt' out.mkv "

vpath=$(simple_input "do not use double quoto, video path: ")
spath=$(simple_input "do not use double quoto, subtitle path: ")
oname=$(simple_input "output video name: ")

ffmpeg -i "$vpath"  -vf subtitles="$spath" $oname
