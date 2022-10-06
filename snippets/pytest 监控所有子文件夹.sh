#!/bin/bash
source ~/git/a/core/.base.sh
# -------------------------------------------

watchexec -rce py 'pytest -s'
