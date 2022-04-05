// Author: Gregor Lichtner, @glichtner
Profile: OutcomeDefinition
Parent: PICOEvidenceVariable
Id: outcome-definition
Title: "Outcome"
Description: "Description of the outcome element of a PICO construct that evidence is about."
* insert metadata(2021-12-21, #draft, 0.1.0)
* insert profile("This profile is used to describe the outcome element of a PICO construct that evidence is about.")
* name 1..1 MS
* handling 1..1 MS // continuous | dichotomous | ordinal | polychotomous
* characteristic
  * definition[x] only Reference or CodeableConcept
  * definitionReference only Reference(ObservationDefinition)
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
* characteristic.defByTypeAndValue
  * typeCodeableConcept = $sct#409651001 "Mortality rate (observable entity)"
  * valueQuantity
    * unit = "percent"
    * system = $ucum
    * code = #%
* characteristic[=].exclude = false
