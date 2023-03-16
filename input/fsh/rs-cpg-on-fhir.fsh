// Author Gregor Lichtner @glichtner

Alias: $cqf-knowledgeCapability = http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-knowledgeCapability
Alias: $cqf-knowledgeRepresentationLevel = http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-knowledgeRepresentationLevel

// RuleSets for making ValueSets conformant to CPGonFHIR IG
RuleSet: cpg-shareable-valueset
* ^meta.profile[+] = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-shareablevalueset"
* ^extension[$cqf-knowledgeCapability][+].valueCode = $cs-cpg-knowledgeCapability#shareable "Shareable"
* ^extension[$cqf-knowledgeRepresentationLevel].valueCode = $cs-cpg-knowledgeRepresentationLevel#structured "Structured"

RuleSet: cpg-publishable-valueset
* ^meta.profile[+] = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-publishablevalueset"
* ^extension[$cqf-knowledgeCapability][+].valueCode = $cs-cpg-knowledgeCapability#shareable "Shareable"
* ^extension[$cqf-knowledgeCapability][+].valueCode = $cs-cpg-knowledgeCapability#computable "Computable"
* ^extension[$cqf-knowledgeCapability][+].valueCode = $cs-cpg-knowledgeCapability#publishable "Publishable"
* ^extension[$cqf-knowledgeRepresentationLevel].valueCode = $cs-cpg-knowledgeRepresentationLevel#structured "Structured"

RuleSet: cpg-computable-valueset
* ^meta.profile[+] = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-computablevalueset"
* ^extension[$cqf-knowledgeCapability][+].valueCode = $cs-cpg-knowledgeCapability#shareable "Shareable"
* ^extension[$cqf-knowledgeCapability][+].valueCode = $cs-cpg-knowledgeCapability#computable "Computable"
* ^extension[$cqf-knowledgeCapability][+].valueCode = $cs-cpg-knowledgeCapability#publishable "Publishable"
* ^extension[$cqf-knowledgeRepresentationLevel].valueCode = $cs-cpg-knowledgeRepresentationLevel#structured "Structured"

RuleSet: cpg-executable-valueset
* ^meta.profile[+] = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-computablevalueset"
* ^meta.profile[+] = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-publishablevalueset"
* ^meta.profile[+] = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-executablevalueset"
* ^extension[$cqf-knowledgeCapability][+].valueCode = $cs-cpg-knowledgeCapability#shareable "Shareable"
* ^extension[$cqf-knowledgeCapability][+].valueCode = $cs-cpg-knowledgeCapability#computable "Computable"
* ^extension[$cqf-knowledgeCapability][+].valueCode = $cs-cpg-knowledgeCapability#publishable "Publishable"
* ^extension[$cqf-knowledgeCapability].valueCode = $cs-cpg-knowledgeCapability#executable "Executable"
* ^extension[$cqf-knowledgeRepresentationLevel].valueCode = $cs-cpg-knowledgeRepresentationLevel#executable "Executable"
* ^extension[usageWarning].valueString = "This value set contains a point-in-time expansion enumerating the codes that meet the value set intent. As new versions of the code systems used by the value set are released, the contents of this expansion will need to be updated to incorporate newly defined codes that meet the value set intent. Before, and periodically during production use, the value set expansion contents SHOULD be updated. The value set expansion specifies the timestamp when the expansion was produced, SHOULD contain the parameters used for the expansion, and SHALL contain the codes that are obtained by evaluating the value set definition. If this is ONLY an executable value set, a distributable definition of the value set must be obtained to compute the updated expansion."


// RuleSets for making CodeSystems according to CPGonFHIR
RuleSet: cpg-shareable-codesystem
* ^meta.profile[+] = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-shareablecodesystem"
* ^extension[$cqf-knowledgeCapability][+].valueCode = $cs-cpg-knowledgeCapability#shareable "Shareable"
* ^extension[$cqf-knowledgeRepresentationLevel].valueCode = $cs-cpg-knowledgeRepresentationLevel#structured "Structured"

RuleSet: cpg-computable-codesystem
* ^meta.profile[+] = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-shareablecodesystem"
* ^extension[$cqf-knowledgeCapability][+].valueCode = $cs-cpg-knowledgeCapability#shareable "Shareable"
* ^extension[$cqf-knowledgeCapability][+].valueCode = $cs-cpg-knowledgeCapability#computable "Computable"
* ^extension[$cqf-knowledgeCapability][+].valueCode = $cs-cpg-knowledgeCapability#publishable "Publishable"
* ^extension[$cqf-knowledgeRepresentationLevel].valueCode = $cs-cpg-knowledgeRepresentationLevel#structured "Structured"

RuleSet: cpg-publishable-codesystem
* ^meta.profile[+] = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-publishablecodesystem"
* ^extension[$cqf-knowledgeCapability][+].valueCode = $cs-cpg-knowledgeCapability#shareable "Shareable"
* ^extension[$cqf-knowledgeCapability][+].valueCode = $cs-cpg-knowledgeCapability#computable "Computable"
* ^extension[$cqf-knowledgeCapability][+].valueCode = $cs-cpg-knowledgeCapability#publishable "Publishable"
* ^extension[$cqf-knowledgeRepresentationLevel].valueCode = $cs-cpg-knowledgeRepresentationLevel#structured "Structured"

RuleSet: cpg-executable-codesystem
* ^meta.profile[+] = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-shareablecodesystem"
* ^extension[$cqf-knowledgeCapability][+].valueCode = $cs-cpg-knowledgeCapability#shareable "Shareable"
* ^extension[$cqf-knowledgeCapability][+].valueCode = $cs-cpg-knowledgeCapability#computable "Computable"
* ^extension[$cqf-knowledgeCapability][+].valueCode = $cs-cpg-knowledgeCapability#publishable "Publishable"
* ^extension[$cqf-knowledgeCapability].valueCode = $cs-cpg-knowledgeCapability#executable "Executable"
* ^extension[$cqf-knowledgeRepresentationLevel].valueCode = $cs-cpg-knowledgeRepresentationLevel#structured "Structured"
