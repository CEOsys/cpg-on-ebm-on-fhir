// Author Gregor Lichtner @glichtner
Profile: EvidenceDataSet
Parent: PICOEvidenceVariable
Id: evidence-data-set
Title: "Evidence Data Set"
Description: "Definition of the outcome used as the observed measured variable for an evidence synthesis."
* insert metadata(2021-12-21, #draft, 0.1.0)
* name 1..1 MS
* characteristic
  * definition[x] 0..0
  * defByTypeAndValue 0..0
  * defByCombination 1..1 MS
    * code = #dataset
    * characteristic
      * definition[x] 1..1 MS
      * definition[x] only Reference
      * definitionReference only Reference(StudyOutcomeEvidence)
      * defByTypeAndValue 0..0
      * defByCombination 0..0
    * characteristic.exclude = false
* characteristic.exclude = false

Instance: ExampleEvidenceDataSet
InstanceOf: evidence-data-set
Usage: #example
Title: "Example Evidence Data Set"
Description: "Example of an evidence data set"
* name = "ExampleEvidenceDataSet"
* status = #active
* characteristic.defByCombination
  * characteristic[+].definitionReference = Reference(ExampleOutcomeEvidence)
