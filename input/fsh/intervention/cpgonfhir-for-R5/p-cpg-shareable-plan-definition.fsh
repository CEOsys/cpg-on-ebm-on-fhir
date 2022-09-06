// Workaround for CPGonFHIR snapshots being based on FHIR R4,
// where PlanDefinition does not support canonical(EvidenceVariable) as type for subjectCanonical
// By generating the profiles via sushi based on FHIR R5, the R5 PlanDefinition resource is used,
// which is required for CPGonEBMonFHIR
// Auto-generated using GoFSH v1.6.2 (via FSH Online)
Alias: $shareableplandefinition = http://hl7.org/fhir/StructureDefinition/shareableplandefinition
Alias: $cpg-knowledgeCapability = http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-knowledgeCapability
Alias: $cpg-knowledgeRepresentationLevel = http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-knowledgeRepresentationLevel

Profile: CPGShareablePlanDefinition
Parent: $shareableplandefinition
Id: cpg-shareableplandefinition
Description: "Defines the minimum expectations for a shareable plan definition for use with computable guideline content. This profile derives from the ShareablePlanDefinition profile defined in the base FHIR specification, and adds support for declaring knowledge representation level and knowledge artifact capabilities."
* ^abstract = true // modification to original CPGonFHIR definition to not having the FSH Validator require a defined instance
* ^version = "1.0.0"
* ^status = #draft
* ^experimental = false
* ^date = "2019-06-06"
* ^publisher = "Health Level Seven, Inc. - CDS WG"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://hl7.org/special/committees/DSS"
* ^jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#001 "World"
* . ^mustSupport = false
* extension contains
    $cpg-knowledgeCapability named knowledgeCapability 1..* MS and
    $cpg-knowledgeRepresentationLevel named knowledgeRepresentationLevel 0..* MS
