#!/usr/bin/env bash

bat --style=numbers --color=always --language bash --line-range :500 << EOF
# simple input 
output_audio_name=\$(simple_input "output audio name [ex: out.mp3]:") 

# color input 
color_input localBranch "本地分支名" 
localBranch="\${localBranch/#\~/$HOME}"

# fzf input 
remoteBranch=\`fzf_input "远程分支名" git branch -r\`
EOF
