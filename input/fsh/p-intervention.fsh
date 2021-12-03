Profile: InterventionEvidenceVariable
Parent: EvidenceVariable
Id: intervention-evidence-variable
Title: "Intervention Evidence Variable"
* identifier 1..* MS
* name 1..1 MS
* characteristicCombination 1..1 MS
* characteristicCombination.code = #any-of
* characteristic 1..* MS
  * type 1..1 MS
  * type from CochranePICOIntervention (required)
  // * characteristic.definition[x] only Reference(InterventionActivity)
  * definition[x].extension contains ReferenceActivityDefinition named ReferenceActivityDefinition 0..1 and $ext-data-absent-reason named dataAbsentReason 1..1
  * definition[x].extension[dataAbsentReason].valueCode = $cs-data-absent-reason#not-applicable

Extension: ReferenceActivityDefinition
Id: ReferenceActivityDefinition
Title: "ReferenceActivityDefinition"
Description: ""
* insert metadata(2021-12-03, #draft, 0.1.0)
* . ^short = "xxx"
* . ^definition = "xxx" // Todo specify
* value[x] 1..
* value[x] only Reference(ActivityDefinition)


Instance: ExampleIntervention
InstanceOf: intervention-evidence-variable
Usage: #example
Title: "Example Intervention"
Description: ""
* status = #active
* identifier
  * system = $ceosys
  * value = "intervention-example"
* name = "TestIntervention"
* characteristic[+]
  * type = $cochrane-pico#Intervention
  * definition[x].extension[ReferenceActivityDefinition].valueReference = Reference(InterventionActivity)
  * definition[x].extension[dataAbsentReason].valueCode = $cs-data-absent-reason#not-applicable


Profile: InterventionActivity
Parent: ActivityDefinition
Id: intervention-activity
Title: "Intervention Activity"
Description: ""
* subject[x] only CodeableConcept
* subjectCodeableConcept 1..1 MS
* subjectCodeableConcept = #Patient
