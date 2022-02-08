// Author: Gregor Lichtner @glichtner
Profile: InterventionActivity
Parent: ActivityDefinition
Id: intervention-activity
Title: "Intervention Activity"
Description: "Definition of an activity that is part of an intervention in the context of a clinical practice guideline recommendation."
* insert metadata(2021-12-03, #draft, 0.1.0)
* insert profile("This profile is used to define the recommended activity for an intervention in the context of a clinical practice guideline recommendation.")
* subject[x] only CodeableConcept
* subjectCodeableConcept 1..1 MS
* subjectCodeableConcept = $cs-resource-type#Patient

Instance: InterventionActivity
InstanceOf: intervention-activity
Usage: #example
Title: "Example Intervention Activity"
Description: "An active intervention activity."
* name = "InterventionActivity"
* status = #active
