// Author: Gregor Lichtner @glichtner
Profile: InterventionEvidenceVariable
Parent: PICOEvidenceVariable
Id: intervention-evidence-variable
Title: "Intervention Evidence Variable"
* insert metadata(2021-12-03, #draft, 0.1.0)
* characteristic 1..* MS
  * type from CochranePICOIntervention (required)
  * definitionReference.extension contains ReferenceActivityDefinition named ReferenceActivityDefinition 0..1

Instance: ExampleIntervention
InstanceOf: intervention-evidence-variable
Usage: #example
Title: "Example Intervention"
Description: ""
* status = #active
* name = "TestIntervention"
* characteristic[+]
  * type = $cochrane-pico#Intervention
  * definitionReference.extension[ReferenceActivityDefinition].valueReference = Reference(InterventionActivity)
