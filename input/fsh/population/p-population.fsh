// Author: Gregor Lichtner @glichtner
Profile: PopulationEvidenceVariable
Parent: PICOEvidenceVariable
Id: population-evidence-variable
Title: "Population"
Description: "Description of the population element of a PICO construct that evidence is about."
* insert metadata(2021-12-03, #draft, 0.1.0)
* insert profile("This profile describes a population defined in clinical practice guideline recommendation.")
* characteristic 1..* MS
  * type from CochranePICOPopulation (required)
  * definition[x] only Reference(PopulationGroup)

Instance: ExamplePopulation
InstanceOf: population-evidence-variable
Usage: #example
Title: "Example Population"
Description: "Example of a population element of a PICO construct that evidence is about."
* status = #active
* name = "PopulationExample"
* characteristic[+]
  * type = $cochrane-pico#Population
  * definitionReference = Reference(ExamplePopulationGroup)
