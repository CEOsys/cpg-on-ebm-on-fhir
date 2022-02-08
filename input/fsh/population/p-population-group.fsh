// Author: Gregor Lichtner @glichtner
Profile: PopulationGroup
Parent: Group
Id: population-group
Title: "Population Group"
Description: "Characterization of a group of patients or subjects for which a clinical guideline recommends a treatment or intervention."
* insert metadata(2021-12-03, #draft, 0.1.0)
* insert profile("This profile is used to describe the group of patients or subjects for which a clinical guideline recommends a treatment or intervention.")
* type 1..1
* type = #person
* actual 1..1 MS
* actual = false
* characteristic 1..* MS
* characteristic
  * code
    * coding ^slicing.discriminator.type = #pattern
    * coding ^slicing.discriminator.path = "$this"
    * coding ^slicing.rules = #open
    * coding contains
        cochrane 0..* and sct 1..*
    * coding[cochrane]
      * ^patternCoding.system = $cochrane-ld
      * system 1.. MS
      * code 1.. MS
    * coding[sct]
      * ^patternCoding.system = $sct
      * system 1.. MS
      * code 1.. MS
  // explicitly allowing all valid types for value[x] as otherwise it seems to restrict the value to CodeableConcept
  * value[x] 1..1 MS
  * valueBoolean 0..1
  * valueQuantity 0..1
  * valueRange 0..1
  * valueReference 0..1
  * valueCodeableConcept 0..1
    * coding ^slicing.discriminator.type = #pattern
    * coding ^slicing.discriminator.path = "$this"
    * coding ^slicing.rules = #open
    * coding contains
        cochrane 0..* and sct 1..*
    * coding[cochrane]
      * ^patternCoding.system = $cochrane-ld
      * system 1.. MS
      * code 1.. MS
    * coding[sct]
      * ^patternCoding.system = $sct
      * system 1.. MS
      * code 1.. MS
  * extension contains
    GroupCharacteristicLinkId named linkId 0..1 MS and
    RelatedCharacteristic named relatedCharacteristic 0..* MS

Instance: ExamplePopulationGroup
InstanceOf: population-group
Usage: #example
Title: "Example Population Group"
Description: "Example of a population group: COVID-19 patients."
* characteristic[+]
  * code.coding[cochrane] = $cochrane-ld#NrO30O5ZnYIkjE "Condition - COVID-19"
  * code.coding[sct] = $sctIntl2021#840539006 "Disease caused by Severe acute respiratory syndrome coronavirus 2 (disorder)"
  * valueBoolean = true
* characteristic[=].exclude = false
* actual = false
