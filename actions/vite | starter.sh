#!/usr/bin/env bash
source "$(dirname "$0")/../util/base.sh"


green  "1) pnpm create vite $prjname --template react"
green  "2) pnpm create vite $prjname --template vue"
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
elif [ $input -eq 3 ]
then
	pnpm create vite $prjname --template vue
fi

cd $prjname
pnpm i
vite
