// Author: Gregor Lichtner @glichtner
Profile: OutcomeEvidenceVariable
Parent: EvidenceVariable
Id: outcome-evidence-variable
Title: "Outcome"
Description: "Description of the outcome element of a PICO construct that evidence is about."
* insert metadata(2021-12-21, #draft, 0.1.0)
* insert profile("This profile is used to describe the outcome element of a PICO construct that evidence is about.")
* name 1..1 MS
* handling 1..1 MS // continuous | dichotomous | ordinal | polychotomous
* characteristic.exclude 1..1
* characteristic.exclude = false // no need to exclude outcomes

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
  * typeCodeableConcept = $sct#409651001 "Mortality rate (observable entity)"
  * valueQuantity
    * unit = "percent"
    * system = $ucum
    * code = #%
* characteristic[=].exclude = false // no need to exclude outcomes
