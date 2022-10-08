#!/bin/bash

source "$(dirname "$0")/../util/base.sh"
# -------------------------------------------

set -x


color_input prjName "项目名" 
if command -v proxychains4 &> /dev/null
then
  red "使用代理"
  proxychains4 git clone --depth 1 --branch main https://github.com/electron-react-boilerplate/electron-react-boilerplate.git $prjName
else 
  git clone --depth 1 --branch main https://github.com/electron-react-boilerplate/electron-react-boilerplate.git $prjName
fi

cd $prjName
npm install

