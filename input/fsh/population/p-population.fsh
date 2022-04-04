// Author: Gregor Lichtner @glichtner
Profile: PopulationEvidenceVariable // TODO: rename?
Parent: PopulationDefinition
Id: population-evidence-variable
Title: "Population"
Description: "Description of the population element of a PICO construct that evidence is about."
* insert metadata(2021-12-03, #draft, 0.1.0)
* insert profile("This profile describes a population defined in clinical practice guideline recommendation.")

Instance: ExamplePopulation
InstanceOf: population-evidence-variable
Usage: #example
Title: "Example Population"
Description: "Example of a population element of a PICO construct that evidence is about."
* status = #active
* name = "PopulationExample"
* characteristic[+].defByTypeAndValue
  * typeCodeableConcept.coding[cochrane] = $cochrane-ld#NrO30O5ZnYIkjE "Condition - COVID-19"
  * typeCodeableConcept.coding[sct] = $sctIntl2021#840539006 "Disease caused by Severe acute respiratory syndrome coronavirus 2 (disorder)"
  * valueBoolean = true
* characteristic[=].exclude = false
