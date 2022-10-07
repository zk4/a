#!/bin/bash
source "$(dirname "$0")/../util/base.sh"
# -------------------------------------------

color_input localBranch "本地分支名" 
localBranch="${localBranch/#\~/$HOME}"

# remoteBranch=`git branch -r | fzf --header="远程分支名" --header-first`
# same as using the function from base.sh
remoteBranch=`fzf_input "远程分支名" git branch -r`

# cmd here 
git checkout -b $localBranch $remoteBranch

