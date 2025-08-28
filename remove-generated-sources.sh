#!/bin/bash

## Names & Locations
OUTPUTDIR_NAME="GeneratedSources"

SCRIPT_LOCATION=$(dirname "$0")
SOURCES_PATH="$SCRIPT_LOCATION/Sources"

## Make sure we have sources path, aka the script is in the right location
if [ ! -d "$SOURCES_PATH" ]; then
  echo "Sources does not exist!"
  exit
fi

for SOURCE in "$SOURCES_PATH"/*; do
  ## Define destinations for ./Sources/Webhooks
  OUTPUT_DIR="$SOURCE/$OUTPUTDIR_NAME"
  
  if rm -rf "$OUTPUT_DIR";
  then
    echo "Successfully removed contents of $OUTPUT_DIR"
  else
    echo "Failed to remove contents of $OUTPUT_DIR"
    exit
  fi
done
