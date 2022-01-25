// Author: Gregor Lichtner @glichtner
Profile: Guideline
Parent: EvidenceReport
Id: guideline
Title: "Clinical Practice Guideline"
Description: "Representation of an evidence-based clinical practice guideline."
* insert metadata(2021-12-03, #draft, 0.1.0)
* insert profile("This profile is intended to be used as a description of clinical practice guideline.")
* identifier 1..* MS
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "type"
* identifier ^slicing.rules = #open
* identifier contains MAGICapp 0..1 MS
* identifier[MAGICapp].type 1.. MS
* identifier[MAGICapp].type = $cs-v2-0203#RI "Resource identifier"
* identifier[MAGICapp].system 1.. MS
* identifier[MAGICapp].system = "https://app.magicapp.org/#/guidelines"
* identifier[MAGICapp].value 1.. MS
// TODO: Add these fields once they are available for EvidenceReport (and remove work-around extensions)
// * version 1..1 MS
// * name 1..1 MS
* extension contains EvidenceReportVersion named version 1..1 MS // TODO: Work around for missing "version" attribute in EvidenceReport. Remove once available.
* subject MS
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
Description: "Example of a guideline resource."
* identifier
  * system = $ceosys
  * value = "guideline example"
* status = #active
* extension[version].valueString = "0.1.0"
* subject[+]
  * characteristic[+]
    * code.coding[cochrane] = $cochrane-pico#Population
    * code.coding[focusCharacteristicCode] = $cs-focus-characteristic#population
    * valueReference = Reference(ExamplePopulation)
  * characteristic[+]
    * code.coding[cochrane] = $cochrane-pico#Intervention
    * code.coding[focusCharacteristicCode] = $cs-focus-characteristic#exposure
    * valueReference = Reference(ExampleIntervention)
