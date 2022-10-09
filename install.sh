#!/usr/bin/env bash

set -u

version=0.0.1


download() {
  echo "Downloading bin/fzf ..."
  if [ -x "$fzf_base"/bin/fzf ]; then
    echo "  - Already exists"
    check_binary && return
  fi
  link_fzf_in_path && return
  mkdir -p "$fzf_base"/bin && cd "$fzf_base"/bin
  if [ $? -ne 0 ]; then
    binary_error="Failed to create bin directory"
    return
  fi

  local url
  url=https://github.com/junegunn/fzf/releases/download/$version/${1}
  set -o pipefail
  if ! (try_curl $url || try_wget $url); then
    set +o pipefail
    binary_error="Failed to download with curl and wget"
    return
  fi
  set +o pipefail

  if [ ! -f fzf ]; then
    binary_error="Failed to download ${1}"
    return
  fi

  chmod +x fzf && check_binary
}

download
