Profile: Guideline
Parent: EvidenceReport
Id: guideline
Title: "Evidence Report Guideline"
Description: ""
//* ^title 1..1 MS
//* ^text 1..1 MS
* status 1..1 MS
* identifier 1..* MS
//* identifier.system = https://app.magicapp.org/#/guidelines

* subject
  * characteristic 1..* MS // TODO: slice characteristic by code.coding[cochrane] or focuescode
    * code 1..1 MS
      * coding ^slicing.discriminator.type = #pattern
      * coding ^slicing.discriminator.path = "$this"
      * coding ^slicing.rules = #closed
      * coding contains
          cochrane 1..1 and focusCharacteristicCode 1..*
      * coding[cochrane] from CochranePICO (required)
        * system 1..1 MS
        * code 1..1 MS
      * coding[focusCharacteristicCode] from $vs-focus-characteristic (required)
        * system 1..1 MS
        * code 1..1 MS
/*
* subject
  * characteristic[+].code = $cochrane-pico#Population
    * value[x] only Reference(PopulationEvidenceVariable)
  * characteristic[+]
    * code = $cochrane-pico#Intervention
    //* valueReference only Reference(PICOPopulationGroup) // TODO: Define
  * characteristic[+]
    * code = $cochrane-pico#Reecommendation
    //* valueReference only Reference(PICOPopulationGroup) // TODO: Define
  */

Instance: GuidelineExample
InstanceOf: guideline
Usage: #example
Title: "Example"
Description: ""
* identifier
  * system = $ceosys
  * value = "guideline example"
* status = #active
* subject[+]
  * characteristic[+]
    * code.coding[cochrane] = $cochrane-pico#Population
    * code.coding[focusCharacteristicCode] = $cs-focus-characteristic#population
    * valueReference = Reference(PopulationExample)
  * characteristic[+]
    * code.coding[cochrane] = $cochrane-pico#Intervention
    * code.coding[focusCharacteristicCode] = $cs-focus-characteristic#exposure
    * valueReference = Reference(InterventionExample)
