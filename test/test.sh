#!/bin/bash
source "$(dirname "$0")/../util/base.sh"




ask "hello"
ret=$?

if [ $ret -eq 0 ]; then
    echo "n"
else
    echo "y"
fi
