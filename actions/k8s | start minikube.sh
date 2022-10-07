#!/bin/bash

set -x
minikube start --cpus=4 --memory='6000mb' --image-mirror-country='cn' --image-repository='registry.cn-hangzhou.aliyuncs.com/google_containers'

# check if ok
minikube status


# check addons 
minikube addons list



# check context
kubectl config get-contexts

kubectl get no

# check cluster info 
kubectl cluster-info

# 罗列某名称空间的 serect 
kubectl get  secret -n kubernetes-dashboard
