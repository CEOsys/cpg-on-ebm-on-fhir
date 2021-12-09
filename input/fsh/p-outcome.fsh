// Author: Gregor Lichtner @glichtner
Profile: OutcomeEvidenceVariable
Parent: PICOEvidenceVariable
Id: outcome-evidence-variable
Title: "Outcome Evidence Variable"
* insert metadata(2021-12-03, #draft, 0.1.0)
* characteristic 1..* MS
  * type from CochranePICOOutcome (required)

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
* characteristic
  * type = $cochrane-pico#Outcome
  * definitionCodeableConcept
    * text = "OutcomeExample"
