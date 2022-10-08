#!/bin/bash

source "$(dirname "$0")/../util/base.sh"
# -------------------------------------------

set -x

if ! command -v picgo &> /dev/null
then
    echo "picgo could not be found"
    # install 
    npm install -g picgo 
else
    echo "picgo found"
fi


# setup 
picgo set uploader


# show config 
cat ~/.picgo/config.json
# test upload
  # generate random image
  gen_random_img "random22.png"
  # upload
  picgo upload random22.png
  # clean up 
  rm "random22.png"

