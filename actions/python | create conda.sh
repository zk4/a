#!/usr/bin/env bash

source "$(dirname "$0")/../util/base.sh"

SCRIPT_DIR=$(basename "$(pwd)")

conda create -n ${SCRIPT_DIR} python=3.8.10
green "手动执行:  conda activate ${SCRIPT_DIR}"

