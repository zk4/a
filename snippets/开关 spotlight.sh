#!/bin/bash
source "$(dirname "$0")/../core/.base.sh"
# -------------------------------------------

input flick "开或关(on|off)" 
sudo mdutil -a -i $flick

