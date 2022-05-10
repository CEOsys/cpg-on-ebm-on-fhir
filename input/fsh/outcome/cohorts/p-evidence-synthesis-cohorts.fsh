// Author Gregor Lichtner, @glichtner
Profile: EvidenceSynthesisCohorts
Parent: Cohorts
Id: evidence-synthesis-cohorts
Title: "Evidence Synthesis Cohorts"
Description: "The actual group of Groups observed in an evidence synthesis."
* insert metadata(2022-05-10, #draft, 0.1.0)
* member 0..* MS
  * entity only Reference(StudyCohort)

Instance: ExampleEvidenceSynthesisCohorts
InstanceOf: evidence-synthesis-cohorts
Usage: #example
Title: "Example Evidence Synthesis Cohorts"
Description: "Example of a cohort in an evidence synthesis"
* quantity = 20
* member[+].entity = Reference(ExampleStudyCohort)
