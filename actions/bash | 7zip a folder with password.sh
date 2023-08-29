#!/usr/bin/env bash
source "$(dirname "$0")/../util/base.sh"


color_input zipName     "7z 压缩包名" 
color_input folderName  "文件夹名" 

echo "7z a -p $zipName.7z $folderName"

7z a -p $zipName.7z $folderName
