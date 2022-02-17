// Author: Gregor Lichtner @glichtner
Profile: InterventionPlan
Parent: PlanDefinition
Id: intervention-plan
Title: "Intervention Plan"
Description: "Definition of an activity that is part of an intervention in the context of a clinical practice guideline recommendation."
* insert metadata(2021-12-03, #draft, 0.1.0)
* insert profile("This profile is used to define the recommended activities for an intervention in the context of a clinical practice guideline recommendation.")
* subject[x] only CodeableConcept
* subjectCodeableConcept 1..1 MS
* subjectCodeableConcept = $cs-resource-type#Patient
* version 1..1 MS
* name 1..1 MS
* title 1..1
* date 1..1
* description 1..1
* action 1..*
  * definition[x] 1..1 MS
  * definition[x] only canonical
  * definitionCanonical only Canonical(InterventionActivity)

Instance: ExampleInterventionPlan
InstanceOf: intervention-plan
Usage: #example
Title: "Example Intervention plan"
Description: "An active intervention plan."
* name = "InterventionPlan"
* title = "Intervention Plan"
* version = "1.0"
* date = "2022-02-14"
* status = #active
* description = "Example Intervention Plan"
* action[+]
  * definitionCanonical = Canonical(ExampleInterventionActivity)
