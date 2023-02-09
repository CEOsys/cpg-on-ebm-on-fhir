#!/bin/bash

# This bash script is used to publish an Implementation Guide (IG) using the IG Publisher tool.
# The script requires two arguments: the target URL and the version of the IG.
# Depending on whether "-snapshot" is part of the version, the script will run an CI build or a release build.

if [ $# -eq 0 ]; then
  echo "Error: Two arguments are required."
  echo "Usage: $0 <targetUrl> <version>"
  exit 1
fi

publisher_jar=publisher.jar
input_cache_path=./input-cache/

export JAVA_TOOL_OPTIONS="$JAVA_TOOL_OPTIONS -Dfile.encoding=UTF-8"

targetUrl=$1
version=$2

function set_release_label() {
  local release_label=$1
  local sushi_config_file="sushi-config.yaml"

  if [ ! -f "$sushi_config_file" ]; then
    echo "Error: File $sushi_config_file does not exist."
    return 1
  fi

  sed -i "s/^releaseLabel: .*/releaseLabel: $release_label/g" "$sushi_config_file"
}

# download publisher

publisher=$input_cache_path/$publisher_jar

if ! test -f "$publisher"; then
    echo "Downloading IG Publisher..."
	curl -L https://github.com/HL7/fhir-ig-publisher/releases/latest/download/publisher.jar -o ./input-cache/publisher.jar --create-dirs
fi

if [[ "$version" == *"-snapshot"* ]]; then
  # snapshot build
  echo "Running snapshot build..."
  set_release_label "ci-build" #  the continuous integration build release (not stable); see #https://fshschool.org/docs/sushi/configuration/#fsh-and-ig-processing-minimum-configuration
  java -jar $publisher -ig . $*
else
  # release build
  echo "Running release build..."
  set_release_label "qa-preview" # frozen snapshot for non-ballot feedback; see #https://fshschool.org/docs/sushi/configuration/#fsh-and-ig-processing-minimum-configuration
  java -jar $publisher -ig . -publish $targetUrl $*
  find ./output -name "*.html" -exec sed -i "s/Publication Build: This will be filled in by the publication tooling/This page is part of the CPG-on-EBMonFHIR Implementation Guide ($version)./g" {} +
fi
