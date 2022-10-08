#!/bin/bash

set -x
green "start minikube"
minikube start --cpus=4 --memory='6000mb' --image-mirror-country='cn' --image-repository='registry.cn-hangzhou.aliyuncs.com/google_containers'

 
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
green "cluster info"
kubectl get  secret -n kubernetes-dashboard



kubectl dashboard
