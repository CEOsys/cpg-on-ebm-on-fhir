#!/bin/bash
curl -L https://github.com/CEOsys/fhir-ig-publisher/releases/latest/download/publisher_cli.jar -o ./input-cache/publisher.jar --create-dirs
./download-fhir-r5-ci.sh
java -jar ./input-cache/publisher.jar publisher -ig .
