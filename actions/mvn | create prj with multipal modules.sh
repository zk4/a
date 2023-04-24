#!/usr/bin/env bash
source "$(dirname "$0")/../util/base.sh"


color_input serviceName "service name:" 
coge java rabbit-service  rabbit:$serviceName  @:$serviceName-service
