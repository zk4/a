#!/usr/bin/env bash

source "$(dirname "$0")/../util/base.sh"
# -------------------------------------------

green "https://stackoverflow.com/questions/66669224/how-do-i-access-the-docker-ce-virtual-machine-on-macos-bigsur"
docker run -it --privileged --pid=host debian nsenter -t 1 -m -u -n -i sh
stty -echo -icanon && nc -U ~/Library/Containers/com.docker.docker/Data/debug-shell.sock && stty sane
