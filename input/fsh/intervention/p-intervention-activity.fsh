// Author: Gregor Lichtner @glichtner
Profile: InterventionActivity
Parent: ActivityDefinition
Id: intervention-activity
Title: "Intervention Activity"
Description: ""
* insert metadata(2021-12-03, #draft, 0.1.0)
* subject[x] only CodeableConcept
* subjectCodeableConcept 1..1 MS
* subjectCodeableConcept = $cs-resource-type#Patient

Instance: InterventionActivity
InstanceOf: intervention-activity
Usage: #example
Title: ""
Description: ""
* name = "InterventionActivity"
* status = #active
