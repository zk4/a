#!/usr/bin/env bash
source "$(dirname "$0")/../util/base.sh"

separateGitDir=$(simple_input ".git 文件夹存放文件夹: ")
gitUrl=$(simple_input "gitUrl: ")



git clone  --separate-git-dir="$separateGitDir"  $gitUrl 

