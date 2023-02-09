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

# run sushi
sushi .

# download publisher
curl -L https://github.com/HL7/fhir-ig-publisher/releases/latest/download/publisher.jar -o ./input-cache/publisher.jar --create-dirs

publisher=$input_cache_path/$publisher_jar

if ! test -f "$publisher"; then
	echo IG Publisher NOT FOUND in input-cache. Please run _updatePublisher. Aborting...
	exit 1
fi


if [[ "$version" == *"-snapshot"* ]]; then
  # snapshot build
  java -jar $publisher -ig . -no-sushi $*
else
  # release build
  java -jar $publisher -ig . -no-sushi -publish $targetUrl $*
  find ./output -name "*.html" -exec sed -i 's/Publication Build: This will be filled in by the publication tooling/This page is part of the CPG-on-EBMonFHIR Implementation Guide ($2)./g' {} +
fi
