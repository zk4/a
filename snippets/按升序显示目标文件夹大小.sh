#!/bin/bash
source "$(dirname "$0")/../core/.base.sh"
# -------------------------------------------

# set -x
# input directory "文件夹位置"

# expand str to real path
# directory="${directory/#\~/$HOME}"

directory=$(input2 "文件夹位置: ")

du -h -d 2 $directory | gsort -h

