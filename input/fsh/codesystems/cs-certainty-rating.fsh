CodeSystem: EvidenceCertaintyRating
Id: certainty-rating
Title: "Evidence Certainty Rating"
Description: "The assessment of quality, confidence, or certainty."
* ^meta.lastUpdated = "2023-03-25T23:39:05.544+00:00"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablecodesystem"
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-wg].valueCode = #cds
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status].valueCode = #trial-use
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 1
* ^url = "http://hl7.org/fhir/certainty-rating"
* ^identifier.system = "urn:ietf:rfc:3986"
* ^identifier.value = "urn:oid:2.16.840.1.113883.4.642.4.1941"
* ^version = "5.0.0-cibuild"
* ^status = #active
* ^experimental = false
* ^date = "2020-12-28T16:55:11+11:00"
* ^publisher = "HL7 (FHIR Project)"
* ^contact.telecom[0].system = #url
* ^contact.telecom[=].value = "http://hl7.org/fhir"
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "fhir@lists.hl7.org"
* ^jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#001 "World"
* ^caseSensitive = true
* ^valueSet = "http://hl7.org/fhir/ValueSet/certainty-rating"
* ^content = #complete
* #high "High quality" "High quality evidence."
* #moderate "Moderate quality" "Moderate quality evidence."
* #low "Low quality" "Low quality evidence."
* #very-low "Very low quality" "Very low quality evidence."
* #no-concern "no serious concern" "no serious concern."
* #serious-concern "serious concern" "serious concern."
* #very-serious-concern "very serious concern" "very serious concern."
* #extremely-serious-concern "extremely serious concern" "extremely serious concern."
* #present "present" "possible reason for increasing quality rating was checked and found to be present."
* #absent "absent" "possible reason for increasing quality rating was checked and found to be absent."
* #no-change "no change to rating" "no change to quality rating."
* #downcode1 "reduce rating: -1" "reduce quality rating by 1."
* #downcode2 "reduce rating: -2" "reduce quality rating by 2."
* #downcode3 "reduce rating: -3" "reduce quality rating by 3."
* #upcode1 "increase rating: +1" "increase quality rating by 1."
* #upcode2 "increase rating: +2" "increase quality rating by 2."
