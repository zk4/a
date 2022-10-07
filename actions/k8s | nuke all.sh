#!/bin/bash

input var_name "var description" 
var_name="${var_name/#\~/$HOME}"


kubectl delete deploy --all
kubectl delete svc --all
