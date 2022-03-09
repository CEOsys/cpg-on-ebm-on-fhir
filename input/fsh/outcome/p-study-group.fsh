// Author: Gregor Lichtner @glichtner
Profile: StudyGroup
Parent: Group
Id: study-group
Title: "Study Group"
Description: "Characterization of a group of patients or subjects that were observed in a clinical study."
* insert metadata(2022-03-04, #draft, 0.1.0)
* insert profile("This profile is used to describe a group of patients or subjects that were observed in a clinical study.")
* type 1..1
* type = #person
* actual 1..1 MS
* actual = true
* characteristic 1..1 MS
  * code = $cs-ceosys#eligibility-criteria "Study Eligibility Criteria"
  * code 1..1 MS
  * value[x] 1..1 MS
  * value[x] only Reference
  * valueReference only Reference(StudyEligibilityCriteria)
* characteristic.exclude = false // Exclusions are captured in EvidenceVariable.characteristic.exclude

Instance: ExampleStudyGroup
InstanceOf: study-group
Usage: #example
Title: "Example Population Group"
Description: "Example of a population group: COVID-19 patients."
* characteristic
  * valueReference = Reference(ExampleStudyEligibilityCriteria)
* characteristic[=].exclude = false // no need to exclude outcomes
