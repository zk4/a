#!/bin/bash
source "$(dirname "$0")/../util/base.sh"

set -x
green "start minikube"
minikube start --cpus=4 --memory='6000mb' --image-mirror-country='cn' --image-repository='registry.cn-hangzhou.aliyuncs.com/google_containers' --driver=hyperkit

 
green "check status"
minikube status


green "check addons"
minikube addons list



green "check context"
kubectl config get-contexts
kubectl get no

green "cluster info"
kubectl cluster-info

# 罗列某名称空间的 serect 
# green "cluster info"
# kubectl get  secret -n kubernetes-dashboard

green "开启 dashboard 插件"
minikube addons enable dashboard

# green "打开 dashboard "
# minikube dashboard
