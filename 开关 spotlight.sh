#!/bin/bash
source ~/git/a/.base.sh
# -------------------------------------------

input flick "开或关(on|off)" 
sudo mdutil -a -i $flick

