#!/bin/bash

source "$(dirname "$0")/../util/base.sh"

ask "what tag you want delete?" 
tag=$?
kubectl delete all -l app=$tag


