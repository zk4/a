#!/bin/bash

source "$(dirname "$0")/../util/base.sh"
# -------------------------------------------

color_input actionName "action 全名(文件名.后缀)" 
color_input interperatorName "解释器名(python3,bash,node,java...)" 
echo "#!/usr/bin/env $interperatorName" >> "$(dirname "$0")/$actionName"
chmod 777  "$(dirname "$0")/$actionName"
nvim "$(dirname "$0")/$actionName"


