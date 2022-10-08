#!/bin/bash
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

# test upload
  # generate random image
  mx=320;my=256;head -c "$((3*mx*my))" /dev/urandom | convert -depth 8 -size "${mx}x${my}" RGB:- random.png
  # upload
  picgo upload random.png
  # clean up 
  rm random.png

