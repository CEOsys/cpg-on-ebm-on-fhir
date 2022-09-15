#!/bin/bash
# workaround for Sushi 2.6.1 not using the new ImplementationGuide structure (which changed definition.page.nameUrl to definition.page.name)
sushi .
sed -i 's/"nameUrl"/"name"/g' fsh-generated/resources/ImplementationGuide-cpg.ceosys.de.json
sed -i 's/"exampleBoolean"/"isExample"/g' fsh-generated/resources/ImplementationGuide-cpg.ceosys.de.json
sed -i 's/"code": "\([^"]\+\)"/"code": { "code": "\1"}/g' fsh-generated/resources/ImplementationGuide-cpg.ceosys.de.json
sed -i 's/"exampleCanonical": "\([^"]\+\)"/"isExample": "true",\n\t\t\t\t"profile": ["\1"]/g' fsh-generated/resources/ImplementationGuide-cpg.ceosys.de.json
curl -L https://github.com/CEOsys/fhir-ig-publisher/releases/latest/download/publisher.jar -o ./input-cache/publisher.jar --create-dirs
java -jar ./input-cache/publisher.jar publisher -ig . -no-sushi
