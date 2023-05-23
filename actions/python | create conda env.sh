#!/usr/bin/env bash

source "$(dirname "$0")/../util/base.sh"

SCRIPT_DIR=$(basename "$(pwd)")

color_input envname "自定义 env 名字"
conda create -n ${envname} python=3.8.10
green "手动执行:  conda activate ${envname}"

