// Author: Gregor Lichtner @glichtner
Profile: PopulationGroup
Parent: Group
Id: population-group
Title: "Population Group"
Description: "Characterization of a group of patients or subjects for which a clinical guideline recommends a treatment or intervention."
* insert metadata(2021-12-03, #draft, 0.1.0)
* insert profile("This profile is used to describe the group of patients or subjects for which a clinical guideline recommends a treatment or intervention.")
* type 1..1
* type = #person
* actual 1..1 MS
* actual = false
* characteristic 1..* MS
* characteristic
  * code
    * coding ^slicing.discriminator.type = #pattern
    * coding ^slicing.discriminator.path = "$this"
    * coding ^slicing.rules = #open
    * coding contains cochrane 1..1
    * coding[cochrane] from CochranePICOPopulation (required)
  * value[x] 1..1 MS
  * value[x] only Reference
  * valueReference only Reference(PopulationEvidenceVariable)
* characteristic.exclude = false // Exclusions are captured in EvidenceVariable.characteristic.exclude

Instance: ExamplePopulationGroup
InstanceOf: population-group
Usage: #example
Title: "Example Population Group"
Description: "Example of a population group: COVID-19 patients."
* characteristic
  * code = $cochrane-pico#Population
  * valueReference = Reference(ExamplePopulation)
* characteristic[=].exclude = false // Exclusions are captured in EvidenceVariable.characteristic.exclude
* actual = false
