// Author: Gregor Lichtner @glichtner
Profile: PICOEvidenceVariable
Parent: EvidenceVariable
Id: pico-evidence-variable
Title: "PICO Evidence Variable"
Description: "Description of the a PICO element that knowledge is about. This abstract resource is used as parent for all PICO (population, intervention, comparison, outcome) evidence variables."
* insert metadata(2022-05-15, #draft, 0.1.1)
* ^abstract = true
* name 1..1 MS
* status 1..1 MS
* characteristic 1..* MS
  * obeys evidence-variable-unique-definition
* characteristic.definitionByCombination
  * characteristic 1..* MS
    * obeys evidence-variable-unique-definition
