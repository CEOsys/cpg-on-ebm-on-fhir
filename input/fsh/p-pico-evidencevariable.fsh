// Author: Gregor Lichtner @glichtner
Profile: PICOEvidenceVariable
Parent: EvidenceVariable
Id: pico-evidence-variable
Title: "PICO Evidence Variable"
Description: "Description of the a PICO element that knowledge is about. This abstract resource is used as parent for all PICO (population, intervention, comparison, outcome) evidence variables."
* insert metadata(2021-12-03, #draft, 0.1.0)
* ^abstract = true
* name 1..1 MS
* status 1..1 MS
* characteristic 1..* MS
  * obeys definition-or-type-value-or-combination // TODO: test this invariant
* characteristic.defByCombination
  * characteristic 1..* MS
    * obeys definition-or-type-value-or-combination // TODO: test this invariant
