#!/bin/bash
source "$(dirname "$0")/../util/base.sh"
# -------------------------------------------

input flick "开或关(on|off)" 
sudo mdutil -a -i $flick

