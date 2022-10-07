#!/bin/bash
source "$(dirname "$0")/../util/base.sh"
# -------------------------------------------

watchexec -rce py 'pytest -s'
