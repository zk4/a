#!/bin/bash
source "$(dirname "$0")/../util/base.sh"
# -------------------------------------------

directory=$(input2 "文件夹位置: ")

du -h -d 2 $directory | gsort -h

