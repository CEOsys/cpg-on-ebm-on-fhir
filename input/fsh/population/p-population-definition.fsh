// Author: Gregor Lichtner @glichtner
Profile: PopulationDefinition
Parent: PICOEvidenceVariable
Id: population-definition
Title: "Population Definition"
Description: "Definition of a population (e.g. for guideline recommendation, clinical study)."
* insert metadata(2021-12-03, #draft, 0.1.0)
* ^abstract = true
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
  * combination MS
    * characteristic 1..* MS
      * definition[x] 0..0 MS
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
* characteristic.exclude 1..1 MS
