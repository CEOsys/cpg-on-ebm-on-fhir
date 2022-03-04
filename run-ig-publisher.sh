#!/bin/bash
curl -L https://github.com/CEOsys/fhir-ig-publisher/releases/latest/download/publisher.jar -o ./input-cache/publisher.jar --create-dirs
./download-fhir-r5.sh
java -jar ./input-cache/publisher.jar publisher -ig .
