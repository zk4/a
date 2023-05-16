#!/usr/bin/env bash
source "$(dirname "$0")/../util/base.sh"


yellow "选择一个模板"
green  "1) pnpm create vite <prjname> --template react"
green  "2) pnpm create vite <prjname> --template vue"
green  "3) (custom) npm init vite@latest"

input=$(simple_input "choose(1,2,3): ")

if [ $input -eq 1 ]
then
	prjname=$(simple_input "project folder name: ")
	pnpm create vite $prjname --template react
elif [ $input -eq 2 ]
then
	prjname=$(simple_input "project folder name: ")
	pnpm create vite $prjname --template vue
	# 本来是想增加路由,但因为要改文件,还是用 coge 吧
	# router=$(simple_input "是否需要路由(1/0)?")
	# if [ $router -eq 1 ]
	# then
	#   pnpm i vue-router@4
	# else
	#   echo "no"
	# fi
elif [ $input -eq 3 ]
then
	pnpm create vite $prjname --template vue
fi

cd $prjname


# pnpm i
# vite
