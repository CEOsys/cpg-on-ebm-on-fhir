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
* type 1..1 MS
  * coding ^slicing.discriminator.type = #pattern
  * coding ^slicing.discriminator.path = "$this"
  * coding ^slicing.rules = #open
  * coding contains ceosys 1..1 and cochrane 1..1
  * coding[ceosys] = CEOsysCodeSystem#clinical-practice-guideline
    * system 1.. MS
    * code 1.. MS
  * coding[cochrane] = $cochrane-ld#e07eN1w1Rwswg4 "Guidelines"
    * system 1.. MS
    * code 1.. MS
* subject MS
  * characteristic 1..* MS
  * characteristic ^slicing.discriminator.type = #pattern
  * characteristic ^slicing.discriminator.path = "code.coding"
  * characteristic ^slicing.rules = #open
  * characteristic contains
      population 1..* MS
      and intervention 1..* MS
      and outcome 0..* MS
    * code 1..1 MS
      * coding ^slicing.discriminator.type = #pattern
      * coding ^slicing.discriminator.path = "$this"
      * coding ^slicing.rules = #open
      * coding contains
          cochrane 0..1 and focusCharacteristicCode 1..1
      * coding[cochrane] from CochranePICO (required)
        * system 1..1 MS
        * code 1..1 MS
      * coding[focusCharacteristicCode] from $vs-focus-characteristic (required)
        * system 1..1 MS
        * code 1..1 MS
    * value[x] only Reference
    * valueReference only Reference(PICOEvidenceVariable)
  * characteristic[population]
    * code.coding[focusCharacteristicCode] = $cs-focus-characteristic#population "Population"
    * valueReference only Reference(PopulationEvidenceVariable)
  * characteristic[intervention]
    * code.coding[focusCharacteristicCode] = $cs-focus-characteristic#exposure "Exposure"
    * valueReference only Reference(InterventionEvidenceVariable)
  * characteristic[outcome]
    * code.coding[focusCharacteristicCode] = $cs-focus-characteristic#outcome "Outcome"
    * valueReference only Reference(OutcomeEvidenceVariable)
* section 1..* MS
  * title 1..1 MS
  * focus 1..1 MS
  * focus = CEOsysCodeSystem#guideline-recommendation "Clinical practice guideline recommendation"
  * focusReference only Reference(GuidelineRecommendation)


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
* subject
  * characteristic[population]
    * code.coding[focusCharacteristicCode] = $cs-focus-characteristic#population "Population"
    * valueReference = Reference(ExamplePopulation)
  * characteristic[intervention]
    * code.coding[focusCharacteristicCode] = $cs-focus-characteristic#exposure "Exposure"
    * valueReference = Reference(ExampleIntervention)
  * characteristic[outcome]
    * code.coding[focusCharacteristicCode] = $cs-focus-characteristic#outcome "Outcome"
    * valueReference = Reference(ExampleOutcome)
* section
  * title = "Example Guideline Recommendation"
  * focus = CEOsysCodeSystem#guideline-recommendation "Clinical practice guideline recommendation"
  * focusReference = Reference(ExampleGuidelineRecommendation)
