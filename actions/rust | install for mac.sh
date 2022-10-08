#!/bin/bash

source "$(dirname "$0")/../util/base.sh"
# -------------------------------------------

set -x

if ! command -v rustc &> /dev/null
then
    echo "rustc could not be found"
    # install 
    xcode-select --install
    curl --proto '=https' --tlsv1.2 https://sh.rustup.rs -sSf | sh
else
    echo "rustc found"
fi

