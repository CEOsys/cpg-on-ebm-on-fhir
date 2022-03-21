// Author: Gregor Lichtner @glichtner
Profile: InterventionActivity
Parent: ActivityDefinition
Id: intervention-activity
Title: "Intervention Activity"
Description: "Definition of an activity that is part of an intervention in the context of a clinical practice guideline recommendation."
* insert metadata(2021-12-03, #draft, 0.1.0)
* insert profile("This profile is used to define the recommended activity for an intervention in the context of a clinical practice guideline recommendation.")
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

Instance: ExampleInterventionActivity
InstanceOf: intervention-activity
Usage: #example
Title: "Example Intervention Activity"
Description: "An active intervention activity."
* name = "InterventionActivity"
* status = #active
* url = "https://www.ceosys.de/fhir/canonical/intervention-activity/example"
* code = $sct#182832007 "Procedure related to management of drug administration (procedure)"
