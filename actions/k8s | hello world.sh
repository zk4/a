#!/bin/bash

set -x 
kubectl run hello --image=googlecontainer/echoserver --port=8082



var=`fzf_input "description" ls`

