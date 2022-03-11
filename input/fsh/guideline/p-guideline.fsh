// Author: Gregor Lichtner @glichtner
Profile: Guideline
Parent: Composition
Id: guideline
Title: "Clinical Practice Guideline"
Description: "Representation of an evidence-based clinical practice guideline."
* insert metadata(2021-12-03, #draft, 0.1.0)
* insert profile("This profile is intended to be used as a description of clinical practice guidelines.")
* identifier 1..1 MS
  * type 1.. MS
  * type = $cs-v2-0203#RI "Resource identifier"
  * system 1.. MS
  * value 1.. MS
* title 1..1 MS
* date 1..1 MS
* status 1..1 MS
//* version 1..1 MS // TODO: uncomment once version field available (see https://jira.hl7.org/browse/FHIR-34159 )
//* name 1..1 MS // TODO: uncomment once name field available (see https://jira.hl7.org/browse/FHIR-34159 )
//* url 1..1 MS // TODO: uncomment once url field available (see https://jira.hl7.org/browse/FHIR-34159 )
* extension contains
  CompositionVersion named version 1..1 MS // TODO: replace by actual version field once available
  and CompositionPublicationStatus named status 1..1 MS
* encounter 0..0
* subject 0..0
* relatesTo 0..1
  * type = #citation
  * resourceReference 1..1
  * resourceReference only Reference(GuidelineCitation)
* type 1..1 MS
  * coding ^slicing.discriminator.type = #pattern
  * coding ^slicing.discriminator.path = "$this"
  * coding ^slicing.rules = #open
  * coding contains ceosys 1..1 and cochrane 1..1
  * coding[ceosys] = $cs-ceosys#clinical-practice-guideline
    * system 1.. MS
    * code 1.. MS
  * coding[cochrane] = $cochrane-ld#e07eN1w1Rwswg4 "Guidelines"
    * system 1.. MS
    * code 1.. MS
* section 1..* MS
  * title 1..1 MS
  * code 1..1 MS
  * code = $cs-ceosys#guideline-recommendation "Clinical practice guideline recommendation"
  * focus only Reference(InterventionPlan)

Instance: GuidelineExample
InstanceOf: guideline
Usage: #example
Title: "Example Guideline"
Description: "Example of a guideline resource."
* identifier
  * system = $ceosys
  * value = "guideline example"
* title = "Example Guideline"
* author = Reference(ExampleOrganization)
* date = "2022-01-28"
* status = #final
* extension[status].valueCode = #active
* extension[version].valueString = "0.1.0"
* relatesTo.resourceReference = Reference(ExampleGuidelineCitation)
* section
  * title = "Example Guideline Recommendation"
  * text
    * status = #generated
    * div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">This is an example guideline recommendation.</div>"
  * focus = Reference(ExampleInterventionPlan)
