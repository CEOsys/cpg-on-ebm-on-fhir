// Author: Gregor Lichtner @glichtner
Profile: OutcomeEvidenceVariable
Parent: PICOEvidenceVariable
Id: outcome-evidence-variable
Title: "Outcome"
Description: "Description of the outcome element of a PICO construct that evidence is about."
* insert metadata(2021-12-21, #draft, 0.1.0)
* name 1..1 MS
* characteristicCombination.code = $cs-characteristic-combination#all-of "All of"
* characteristic 1..* MS
  * type 1..1 MS
  * type from CochranePICOOutcome (required)
* characteristic.exclude = false

Instance: ExampleOutcome
InstanceOf: outcome-evidence-variable
Usage: #example
Title: "Example Outcome"
Description: "Example of an outcome evidence variable."
* status = #active
* identifier
  * system = $ceosys
  * value = "outcome-example"
* name = "OutcomeExample"
* characteristic
  * type = $cochrane-pico#Outcome
  * definitionCodeableConcept
    * text = "OutcomeExample"
