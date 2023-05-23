#!/usr/bin/env bash
source "$(dirname "$0")/../util/base.sh"



color_input icon_key_word "icon keyword:" 
open https://www.flaticon.com/search?word=$icon_key_word
