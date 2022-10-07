#!/bin/bash
source "$(dirname "$0")/../core/.base.sh"
# -------------------------------------------

watchexec -rce py 'pytest -s'
