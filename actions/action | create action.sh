#!/bin/bash

source "$(dirname "$0")/../util/base.sh"
# -------------------------------------------

color_input actionName "action 全名(文件名.后缀)" 
color_input interperatorName "解释器名(python3,bash,node,java...)" 
echo "#!/usr/bin/env $interperatorName" >> "$(dirname "$0")/$actionName"
echo 'source "$(dirname "$0")/../util/base.sh"' >> "$(dirname "$0")/$actionName"

echo ' ' >> "$(dirname "$0")/$actionName"
echo '#--------- demo variable code---------' >> "$(dirname "$0")/$actionName"
echo 'color_input color_v "variable description:"' >> "$(dirname "$0")/$actionName"
echo 'fzf_v=`fzf_input "远程分支名:" ls`' >> "$(dirname "$0")/$actionName"
echo 'simple_v=$(simple_input "simpleinput desc:")' >> "$(dirname "$0")/$actionName"

echo ' ' >> "$(dirname "$0")/$actionName"
echo 'echo $color_v $fzf_v $simple_v' >> "$(dirname "$0")/$actionName"
echo '#--------- demo code end---------' >> "$(dirname "$0")/$actionName"

chmod 777  "$(dirname "$0")/$actionName"
nvim "$(dirname "$0")/$actionName"


