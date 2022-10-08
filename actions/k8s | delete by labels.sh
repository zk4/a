#!/bin/bash
source "$(dirname "$0")/../util/base.sh"

color_input label  "what label you want delete?(app=nginx)" 
kubectl delete all -l "$label"


