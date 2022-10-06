#!/bin/bash
source ~/git/a/core/.base.sh
# -------------------------------------------

input flick "开或关(on|off)" 
sudo mdutil -a -i $flick

