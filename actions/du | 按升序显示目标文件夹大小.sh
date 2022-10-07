#!/bin/bash
source "$(dirname "$0")/../util/base.sh"
# -------------------------------------------

directory=$(simple_input "文件夹位置: ")

du -h -d 2 $directory | gsort -h

