#!/usr/bin/env bash
source "$(dirname "$0")/../util/base.sh"

emptyfolder=$(simple_input "git clone to emptyfolder:") 
mkdir -p $emptyfolder
git clone git@github.com:spring2go/spring-petclinic-msa.git $emptyfolder

kubectl apply -f  $emptyfolder/k8s/local
