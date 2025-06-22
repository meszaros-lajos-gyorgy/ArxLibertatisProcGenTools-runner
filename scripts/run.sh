#!/bin/bash

# find the root dir of the repo relative to this current shellscript
# https://stackoverflow.com/a/63072463/1806628
REPO_ROOT="$(realpath $(dirname "$(realpath "${BASH_SOURCE[0]:-$0}")")/../)/"

# read the contents of .env and make them accessible as global variables
if [ -f "${REPO_ROOT}.env" ]; then
  set -a
  source "${REPO_ROOT}.env"
  set +a
fi

# make sure to be able to write into mounted folders
# https://stackoverflow.com/a/56904335/1806628
export USER_ID=$(id -u)
export GROUP_ID=$(id -g)

if [ -f $ARX_DIR/arx.exe ]; then
  $ARX_DIR/arx.exe --loadlevel=1
else
  $ARX_DIR/arx --loadlevel=1
fi
