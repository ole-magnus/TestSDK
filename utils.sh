#!/usr/bin/env bash

last_author="$(git log -1 --pretty=format:'%an')"
if [ "$last_author" == "olemaga" ]; then
  export IS_OLE_MAGNUS=YES 
else
  export IS_OLE_MAGNUS=NO
fi

