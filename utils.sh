#!/usr/bin/env bash


is_ole_magnus() {
  local last_author="$(git log -1 --pretty=format:'%an')"
  if [ "$last_author" == "olemaga" ]; then
    echo "YES" 
  else
    echo "NO"
  fi
}

export IS_OLE_MAGNUS=$(is_ole_magnus)

