#!/bin/bash

set -x

"./k8s | nuke all.sh"
"./k8s | stop minikube.sh"


minikube delete

