#!/bin/bash

## Names & Locations
YAML_NAME="openapi.yaml"
CONFIG_NAME="openapi-generator-config.yml"
OUTPUTDIR_NAME="GeneratedSources"

SCRIPT_LOCATION=$(dirname "$0")
YAML_LOCATION="$SCRIPT_LOCATION/$YAML_NAME"
SOURCES_PATH="$SCRIPT_LOCATION/Sources"

## Make sure we have sources path, aka the script is in the right location
if [ ! -d "$SOURCES_PATH" ]; then
  echo "Sources does not exist!"
  exit
fi

for SOURCE in "$SOURCES_PATH"/*; do
  ## Define destinations for ./Sources/Webhooks
  SOURCE_CONFIG_PATH="$SOURCE/$CONFIG_NAME"
  OUTPUT_DIR="$SOURCE/$OUTPUTDIR_NAME"
  
  echo "Building $SOURCE at $OUTPUT_DIR"

  ## If this command executes successfully
  if swift run swift-openapi-generator generate \
    --config "$SOURCE_CONFIG_PATH" \
    --output-directory="$OUTPUT_DIR" \
    "$YAML_LOCATION";
  then
    echo "Successful output for $SOURCE at $OUTPUT_DIR"
  else
    echo "Command failed"
    exit
    ## if this says no yaml found, you need the yaml in each root folder: /Sources/<folder>/openapi.yaml
  fi
done

# swift package plugin generate-code-from-openapi --target Push
# swift package plugin generate-code-from-openapi --target Webhooks

# swift run swift-openapi-generator generate ./Sources/Webhooks/openapi.yaml --config ./Sources/Webhooks/openapi-generator-config.yml --output-directory ./Sources/Webhooks/GeneratedSources
