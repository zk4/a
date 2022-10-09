#!/usr/bin/env bash
source "$(dirname "$0")/../util/base.sh"


t=$(simple_input "types <deploy | svc | pods | all>:") 
kubectl logs -f  `kubectl get $t -o name | fzf`
