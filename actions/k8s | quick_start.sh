#!/bin/bash
source "$(dirname "$0")/../util/base.sh"
# -------------------------------------------

# enable debug
# set -x


# simple input
directory=$(simple_input "文件夹位置: ")

# color input
color_input localBranch "本地分支名" 
localBranch="${localBranch/#\~/$HOME}"

# fzf input
remoteBranch=`fzf_input "远程分支名" git branch -r`
# cmd here 

echo $directory $localBranch $remoteBranch

