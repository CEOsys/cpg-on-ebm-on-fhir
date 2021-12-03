Profile: InterventionEvidenceVariable
Parent: EvidenceVariable
Id: intervention-evidence-variable
Title: "Intervention Evidence Variable"
* identifier 1..* MS
* name 1..1 MS

Instance: ExampleIntervention
InstanceOf: intervention-evidence-variable
Usage: #example
Title: "Example Intervention"
Description: ""
* status = #active
* identifier
  * system = $ceosys
  * value = "intervention-example"
* name = "TestIntervention"
