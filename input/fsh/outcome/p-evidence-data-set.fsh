// Author Gregor Lichtner @glichtner
Profile: EvidenceDataSet
Parent: PICOEvidenceVariable
Id: evidence-data-set
Title: "Evidence Data Set"
Description: "Definition of the outcome used as the observed measured variable for an evidence synthesis."
* insert metadata(2022-05-15, #draft, 0.1.1)
* name 1..1 MS
* characteristic
  * insert evidence-variable-only-combination
  * definitionByCombination 1..1 MS
    * code = #dataset
    * characteristic
      * insert evidence-variable-only-reference
      * definitionReference only Reference(StudyOutcomeEvidence)
    * characteristic.exclude = false
* characteristic.exclude = false

Instance: ExampleEvidenceDataSet
InstanceOf: evidence-data-set
Usage: #example
Title: "Example Evidence Data Set"
Description: "Example of an evidence data set"
* name = "ExampleEvidenceDataSet"
* status = #active
* characteristic.definitionByCombination
  * characteristic[+].definitionReference = Reference(ExampleStudyOutcomeEvidence)
