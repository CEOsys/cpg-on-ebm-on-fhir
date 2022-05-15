// Author: Gregor Lichtner, @glichtner
Profile: InterventionDefinition
Parent: PICOEvidenceVariable
Id: intervention-definition
Title: "Intervention Definition"
Description: "Description of the intervention element of a PICO construct that evidence is about."
* insert metadata(2022-05-15, #draft, 0.1.1)
* insert profile("This profile is used to describe the intervention element of a PICO construct that evidence is about.")
* name 1..1 MS
* characteristic
  * insert evidence-variable-only-codeable-concept
  * definitionCodeableConcept from $vs-snomed-procedures (extensible)

Instance: ExampleIntervention
InstanceOf: intervention-definition
Usage: #example
Title: "Example Intervention"
Description: "Example of an intervention definition."
* status = #active
* name = "Bariatric Surgery"
* characteristic.definitionCodeableConcept = $sct#430715008 "Bariatric operative procedure (procedure)"
