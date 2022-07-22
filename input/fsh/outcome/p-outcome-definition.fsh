// Author: Gregor Lichtner, @glichtner
Profile: OutcomeDefinition
Parent: PICOEvidenceVariable
Id: outcome-definition
Title: "Outcome Definition"
Description: "Description of the outcome element of a PICO construct that evidence is about."
* insert metadata(2022-05-15, #draft, 0.1.1)
* insert profile("This profile is used to describe the outcome element of a PICO construct that evidence is about.")
* name 1..1 MS
* handling 1..1 MS // continuous | dichotomous | ordinal | polychotomous
* characteristic
  * insert evidence-variable-only-type-value-or-combination-or-codeable-concept
* characteristic.exclude 1..1

Instance: ExampleOutcome
InstanceOf: outcome-definition
Usage: #example
Title: "Example Outcome"
Description: "Example of an outcome evidence variable."
* status = #active
* handling = #dichotomous
* identifier
  * system = $ceosys
  * value = "outcome-example"
* name = "Mortality"
* characteristic.definitionByTypeAndValue
  * type = $sct#409651001 "Mortality rate (observable entity)"
  * valueQuantity
    * unit = "percent"
    * system = $ucum
    * code = #%
* characteristic[=].exclude = false
