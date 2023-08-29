#!/usr/bin/env bash
source "$(dirname "$0")/../util/base.sh"


open https://stackblitz.com/
