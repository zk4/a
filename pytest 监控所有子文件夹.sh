#!/bin/bash
source ~/git/a/.base.sh
# -------------------------------------------

watchexec -rce py 'pytest -s'
