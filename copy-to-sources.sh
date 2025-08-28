#!/bin/bash

## Names & Locations
YAML_NAME="openapi.yaml"

SCRIPT_LOCATION=$(dirname "$0")
YAML_LOCATION="$SCRIPT_LOCATION/$YAML_NAME"
SOURCES_PATH="$SCRIPT_LOCATION/Sources"

## Make sure we have sources path, aka the script is in the right location
if [ ! -d "$SOURCES_PATH" ]; then
  echo "Sources does not exist!"
  exit
fi

for SOURCE in "$SOURCES_PATH"/*; do
  ## Dump the same yaml in each Sources folder
  
  if cp "$YAML_LOCATION" "$SOURCE"; then
    echo "Successfully copied $YAML_LOCATION to $SOURCE/$YAML_NAME"
  else
    echo "Failed to copy $YAML_LOCATION to $SOURCE/$YAML_NAME"
  fi
done

echo "Done."
