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

CONTAINER_NAME=arx-powershell

# start container if not already running
# https://stackoverflow.com/a/44731522/1806628
if ! docker ps --format '{{.Names}}' | grep -w $CONTAINER_NAME &> /dev/null; then
  docker run \
    --name $CONTAINER_NAME \
    --volume $ARX_DIR:/arx/output \
    --volume $LIB_DIR:/arx/lib \
    --detach \
    debian-with-powershell
fi

MAP=$1
if [ -f $MAP ]; then
  FILENAME=$(basename $MAP)

  docker cp $MAP $CONTAINER_NAME:/arx/scripts/$FILENAME

  docker exec $CONTAINER_NAME pwsh "/arx/scripts/$FILENAME"
else
  echo "File not found: ${MAP}"
fi

