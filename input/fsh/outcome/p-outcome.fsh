// Author: Gregor Lichtner @glichtner
Profile: OutcomeEvidenceVariable
Parent: PICOEvidenceVariable
Id: outcome-evidence-variable
Title: "Outcome"
Description: "Description of the outcome element of a PICO construct that evidence is about."
* insert metadata(2021-12-21, #draft, 0.1.0)
* insert profile("This profile is used to describe the outcome element of a PICO construct that evidence is about.")
* name 1..1 MS
* handling 1..1 MS
* characteristicCombination.code = $cs-characteristic-combination#all-of "All of"
* characteristic 1..* MS
  * type 1..1 MS
  * type from CochranePICOOutcome (required)
  * definition[x] only Reference
  * definitionReference
    * extension contains ReferenceEvidence named ReferenceEvidence 0..1
    * extension[ReferenceEvidence].valueReference only Reference(OutcomeEvidence)
    * display 1..1 // to suppress warning that a reference without an actual reference should have a display
* characteristic.exclude = false

Instance: ExampleOutcome
InstanceOf: outcome-evidence-variable
Usage: #example
Title: "Example Outcome"
Description: "Example of an outcome evidence variable."
* status = #active
* handling = #dichotomous
* identifier
  * system = $ceosys
  * value = "outcome-example"
* name = "Mortality"
* characteristic
  * type = $cochrane-pico#Outcome
  * definitionReference
    * extension[ReferenceEvidence].valueReference = Reference(ExampleOutcomeEvidence)
    * display = "Example of an outcome evidence."
