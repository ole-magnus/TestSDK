#!/usr/bin/env bash

set -e

is_ole_magnus() {
  local last_author="$(git log -1 --pretty=format:'%an')"
  if [ "$last_author" == "olemaga" ]; then
    return 0
  else
    return 1
  fi
}

