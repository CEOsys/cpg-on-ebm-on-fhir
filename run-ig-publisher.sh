#!/bin/bash
sushi .
curl -L https://github.com/CEOsys/fhir-ig-publisher/releases/latest/download/publisher.jar -o ./input-cache/publisher.jar --create-dirs
java -jar ./input-cache/publisher.jar publisher -ig . -no-sushi
