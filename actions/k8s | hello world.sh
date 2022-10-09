#!/bin/bash
set -x 

green "https://kubernetes.io/zh-cn/docs/tasks/run-application/run-stateless-application-deployment/"

kubectl run hello --image=googlecontainer/echoserver --port=8082

