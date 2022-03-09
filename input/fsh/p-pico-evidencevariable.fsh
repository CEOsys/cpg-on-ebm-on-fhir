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
  * definition[x] 0..1 MS
  * definition[x] only CodeableConcept
  * definitionCodeableConcept = $sct#89780004 "Combination" // TODO: is this concept correct? Rather use own code?
  * type[x] 0..1 MS
  * type[x] only CodeableConcept
  * typeCodeableConcept
    * coding ^slicing.discriminator.type = #pattern
    * coding ^slicing.discriminator.path = "$this"
    * coding ^slicing.rules = #open
    * coding contains
        cochrane 0..* and sct 1..* // TODO: add LOINC, ATC, etc.
    * coding[cochrane]
      * ^patternCoding.system = $cochrane-ld
      * system 1.. MS
      * code 1.. MS
    * coding[sct]
      * ^patternCoding.system = $sct
      * system 1.. MS
      * code 1.. MS
  * value[x] 0..1 MS
  // list all types to prevent validator warning
  * valueBoolean 0..1 MS
  * valueQuantity 0..1 MS
  * valueRange 0..1 MS
  * valueReference 0..1 MS
  * valueId 0..1 MS
  * valueCodeableConcept
    * coding ^slicing.discriminator.type = #pattern
    * coding ^slicing.discriminator.path = "$this"
    * coding ^slicing.rules = #open
    * coding contains
        cochrane 0..* and sct 1..* // TODO: add LOINC, ATC, etc. if applicable
    * coding[cochrane]
      * ^patternCoding.system = $cochrane-ld
      * system 1.. MS
      * code 1.. MS
    * coding[sct]
      * ^patternCoding.system = $sct
      * system 1.. MS
      * code 1.. MS
* characteristic.exclude 1..1 MS
