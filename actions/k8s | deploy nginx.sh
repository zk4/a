#!/usr/bin/env bash
source "$(dirname "$0")/../util/base.sh"

# green https://kubernetes.io/zh-cn/docs/tasks/run-application/run-stateless-application-deployment/

kubectl apply -f "$(dirname "$0")"/k8s_config/nginx/deploy.yml

# kubectl describe deployment nginx-deployment

# green "列出该 Deployment 创建的 Pod"
# kubectl get pods -l app=nginx


kubectl apply -f "$(dirname "$0")"/k8s_config/nginx/svc.yml


# kubectl get deploy -o wide

# retry 
until curl -s -f -o /dev/null "http://`minikube ip`:30080/"
do
  sleep 1
done

open "http://`minikube ip`:30080/"

