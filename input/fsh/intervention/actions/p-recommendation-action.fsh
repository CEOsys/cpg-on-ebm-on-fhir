  // Author: Gregor Lichtner @glichtner
Profile: RecommendationAction
Parent: CPGComputableActivityDefinition
Id: recommendation-action
Title: "Recommendation Action"
Description: "Definition of an activity that is part of an intervention in the context of a clinical practice guideline recommendation."
* insert metadata(2021-12-03, #draft, 0.1.1)
* insert profile("This abstract profile is used to define the recommended activity for an intervention in the context of a clinical practice guideline recommendation.")
* obeys no-timing-if-dosage-specified
* ^abstract = true
* url 1..1 MS
* identifier MS
* version 1..1
* name 1..1
* title MS
* experimental 1..1
* date MS
* publisher 1..1
* contact MS
* description 1..1
* useContext MS
* jurisdiction MS
* subject[x] only CodeableConcept
* subjectCodeableConcept 1..1 MS
* subjectCodeableConcept = $cs-fhir-types#Patient
* doNotPerform MS
* kind MS
* code 1..1 MS
* timing[x] only Timing
* timingTiming
  * insert timing-restrictions
* timingTiming.repeat 1..1 MS
* product[x] MS
* quantity MS
* dosage MS
  * timing
    * insert timing-restrictions
* bodySite MS
* extension[knowledgeCapability] 1..1
  * valueCode 1..1
  * valueCode = $cs-cpg-knowledgeCapability#computable "Computable"
* extension[knowledgeRepresentationLevel] 1..1
  * valueCode 1..1
  * valueCode = $cs-cpg-knowledgeRepresentationLevel#structured "Structured"
