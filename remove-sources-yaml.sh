#!/bin/bash

## Names & Locations
SCRIPT_LOCATION=$(dirname "$0")
SOURCES_PATH="$SCRIPT_LOCATION/Sources"

## Make sure we have sources path, aka the script is in the right location
if [ ! -d "$SOURCES_PATH" ]; then
  echo "Sources does not exist!"
  exit
fi

for SOURCE in "$SOURCES_PATH"/*; do
  SOURCE_FILE_PATH="$SOURCE/openapi.yaml"
  ## Remove each yaml inside sources folder
  if rm -f "$SOURCE_FILE_PATH"; then
    echo "Successfully removed $SOURCE_FILE_PATH" 
  else
    echo "Failed to remove $SOURCE_FILE_PATH"
  fi
done

echo "Done."
