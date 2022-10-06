#!/bin/bash
source ~/git/a/.base.sh
# -------------------------------------------

# set -x
input p "排序显示当前文件夹" 

# expand str to real path
p="${p/#\~/$HOME}"

du -h -d 2 $p | gsort -h

