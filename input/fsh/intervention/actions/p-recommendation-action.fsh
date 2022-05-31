// Author: Gregor Lichtner @glichtner
Profile: RecommendationAction
Parent: ActivityDefinition
Id: recommendation-action
Title: "Recommendation Action"
Description: "Definition of an activity that is part of an intervention in the context of a clinical practice guideline recommendation."
* insert metadata(2021-12-03, #draft, 0.1.1)
* insert profile("This abstract profile is used to define the recommended activity for an intervention in the context of a clinical practice guideline recommendation.")
* ^abstract = true
* url 1..1 MS
* subject[x] only CodeableConcept
* subjectCodeableConcept 1..1 MS
* subjectCodeableConcept = $cs-resource-type#Patient
* doNotPerform MS
* kind MS
* code 1..1 MS
* timing[x] MS
* product[x] MS
* quantity MS
* dosage MS
* bodySite MS
