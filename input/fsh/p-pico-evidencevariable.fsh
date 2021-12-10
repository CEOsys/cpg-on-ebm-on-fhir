// Author: Gregor Lichtner @glichtner
Profile: PICOEvidenceVariable
Parent: EvidenceVariable
Id: pico-evidence-variable
Title: "PICO Evidence Variable"
* insert metadata(2021-12-03, #draft, 0.1.0)
* ^abstract = true
* name 1..1 MS
* characteristicCombination 1..1 MS
* characteristicCombination.code = #any-of
* characteristic 1..* MS
  * type 1..1 MS
  * type from CochranePICO (required)
  * definition[x] only Reference or CodeableConcept
* characteristic.exclude MS
