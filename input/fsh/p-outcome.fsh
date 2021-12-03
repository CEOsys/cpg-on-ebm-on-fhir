// Author: Gregor Lichtner @glichtner
Profile: OutcomeEvidenceVariable
Parent: EvidenceVariable
Id: outcome-evidence-variable
Title: "Outcome Evidence Variable"
* identifier 1..* MS
* name 1..1 MS

Instance: ExampleOutcome
InstanceOf: outcome-evidence-variable
Usage: #example
Title: "Example Outcome"
Description: ""
* status = #active
* identifier
  * system = $ceosys
  * value = "outcome-example"
* name = "OutcomeExample"
