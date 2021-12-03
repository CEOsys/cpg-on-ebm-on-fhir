Profile: PopulationEvidenceVariable
Parent: EvidenceVariable
Id: population-evidence-variable
Title: "Population Evidence Variable"
* identifier 1..* MS
* name 1..1 MS
* characteristicCombination 1..1 MS
* characteristicCombination.code = #any-of
* characteristic 1..* MS
* characteristic.type 1..1 MS
* characteristic.type from CochranePICOPopulation (required)
* characteristic.definition[x] only Reference(PopulationGroup)

Instance: ExamplePopulation
InstanceOf: population-evidence-variable
Usage: #example
Title: "Example Population"
Description: ""
* status = #active
* identifier
  * system = $ceosys
  * value = "population-example"
* name = "PopulationExample"
* characteristic[+]
  * type = $cochrane-pico#Population
  * definitionReference = Reference(population)
