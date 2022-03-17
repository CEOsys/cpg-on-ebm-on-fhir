// Author: Gregor Lichtner @glichtner
Profile: PICOEvidenceVariable
Parent: EvidenceVariable
Id: pico-evidence-variable
Title: "PICO Evidence Variable"
Description: "Description of the a PICO element that knowledge is about. This abstract resource is used as parent for all PICO (population, intervention, outcome) evidence variables."
* insert metadata(2021-12-03, #draft, 0.1.0)
* insert profile("This abstract profile is used as parent for all PICO-related EvidenceVariable resources.")
* ^abstract = true
* name 1..1 MS
* status 1..1 MS
* characteristic 1..* MS
  * obeys definition-or-type-value // TODO: test this invariant
  * definition[x] 0..1 MS
  * definition[x] only CodeableConcept
  * definitionCodeableConcept = $sct#89780004 "Combination" // TODO: is this concept correct? Rather use own code?
  * type[x] 0..1 MS
  * type[x] only CodeableConcept
  * typeCodeableConcept
    * insert default-code-systems
  * value[x] 0..1 MS
  // list all types to prevent validator warning
  * valueBoolean 0..1 MS
  * valueQuantity 0..1 MS
  * valueRange 0..1 MS
  * valueReference 0..1 MS
  * valueId 0..1 MS
  * valueCodeableConcept
    * insert default-code-systems
* characteristic.exclude 1..1 MS
