#!/bin/bash
source "$(dirname "$0")/../util/base.sh"

# set -x

green "install minikube"
proxychains4 brew install minikube
brew link --overwrite minikube

