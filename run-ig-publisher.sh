#!/bin/bash
# workaround for Sushi 2.6.1 not using the new ImplementationGuide structure (which changed definition.page.nameUrl to definition.page.name)
./download-fhir-r5-ci.sh
sushi .
sed -i 's/"nameUrl"/"name"/g' fsh-generated/resources/ImplementationGuide-cpg.ceosys.de.json
curl -L https://github.com/CEOsys/fhir-ig-publisher/releases/latest/download/publisher.jar -o ./input-cache/publisher.jar --create-dirs
java -jar ./input-cache/publisher.jar publisher -ig . -no-sushi
