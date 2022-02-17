// Author: Gregor Lichtner @glichtner
Profile: InterventionEvidenceVariable
Parent: PICOEvidenceVariable
Id: intervention-evidence-variable
Title: "Intervention"
Description: "Description of the intervention element of a PICO construct that evidence is about."
* insert metadata(2021-12-03, #draft, 0.1.0)
* insert profile("This profile is used to describe the intervention element of a PICO construct that evidence is about.")
* characteristicCombination.code = $cs-characteristic-combination#all-of "All of"
* characteristic 1..* MS
  * type from CochranePICOIntervention (required)
  * definitionReference
    * extension contains ReferencePlanDefinition named ReferencePlanDefinition 0..1
    * extension[ReferencePlanDefinition].valueReference only Reference(InterventionPlan)
    * display 1..1

Instance: ExampleIntervention
InstanceOf: intervention-evidence-variable
Usage: #example
Title: "Example Intervention"
Description: "Example of an intervention as part of a clinical practice guideline."
* status = #active
* name = "TestIntervention"
* characteristic[+]
  * type = $cochrane-pico#Intervention
  * definitionReference
    * extension[ReferencePlanDefinition].valueReference = Reference(ExampleInterventionPlan)
    * display = "TestIntervention"
