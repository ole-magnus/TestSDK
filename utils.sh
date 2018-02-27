#!/usr/bin/env bash

last_author="$(git log -1 --pretty=format:'%an')"
echo "last author is: $last_author"
if [ "$last_author" == "olemaga" ]; then
  export IS_OLE_MAGNUS=YES 
else
  export IS_OLE_MAGNUS=NO
fi

