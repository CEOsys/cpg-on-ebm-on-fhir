// Author: Gregor Lichtner @glichtner
Profile: InterventionEvidenceVariable
Parent: PICOEvidenceVariable
Id: intervention-evidence-variable
Title: "Intervention"
Description: "Description of the intervention element of a PICO construct that evidence is about."
* insert metadata(2021-12-03, #draft, 0.1.0)
* characteristic 1..* MS
  * type from CochranePICOIntervention (required)
  * definitionReference
    * extension contains ReferenceActivityDefinition named ReferenceActivityDefinition 0..1
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
    * extension[ReferenceActivityDefinition].valueReference = Reference(InterventionActivity)
    * display = "TestIntervention"
