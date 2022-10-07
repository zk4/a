#!/bin/bash

source "$(dirname "$0")/../util/base.sh"

color_input var_name "确定要 nuke 掉所有？（yes|no)" 

if [[ -n $var_name && $var_name == "yes" ]]; then
  kubectl delete deploy --all
  kubectl delete svc --all
  kubectl delete pod --all
fi


