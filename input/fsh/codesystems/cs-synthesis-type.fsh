CodeSystem: SynthesisType
Id: synthesis-type
Title: "SynthesisType"
Description: "Types of combining results from a body of evidence (eg. summary data meta-analysis)."
* ^meta.lastUpdated = "2022-05-28T13:47:40.239+11:00"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablecodesystem"
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension[=].valueCode = #cds
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension[=].valueCode = #trial-use
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 1
* ^url = "http://terminology.hl7.org/CodeSystem/synthesis-type"
* ^identifier.system = "urn:ietf:rfc:3986"
* ^identifier.value = "urn:oid:2.16.840.1.113883.4.642.1.1348"
* ^version = "4.3.0"
* ^status = #draft
* ^experimental = false
* ^date = "2020-12-28T16:55:11+11:00"
* ^publisher = "HL7 (FHIR Project)"
* ^contact.telecom[0].system = #url
* ^contact.telecom[=].value = "http://hl7.org/fhir"
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "fhir@lists.hl7.org"
* ^caseSensitive = true
* ^valueSet = "http://hl7.org/fhir/ValueSet/synthesis-type"
* ^content = #complete
* #std-MA "summary data meta-analysis" "A meta-analysis of the summary data of estimates from individual studies or data sets."
* #IPD-MA "individual patient data meta-analysis" "A meta-analysis of the individual participant data from individual studies or data sets."
* #indirect-NMA "indirect network meta-analysis" "An indirect meta-analysis derived from 2 or more direct comparisons in a network meta-analysis."
* #combined-NMA "combined direct plus indirect network meta-analysis" "An composite meta-analysis derived from direct comparisons and indirect comparisons in a network meta-analysis."
* #range "range of results" "A range of results across a body of evidence."
* #classification "classifcation of results" "An approach describing a body of evidence by categorically classifying individual studies (eg 3 studies showed beneft and 2 studied found no effect)."
* #NotApplicable "not applicable" "Not applicable because the evidence is not from a synthesis but from a single study. Used fo explicitly state that it's not a synthesis."
