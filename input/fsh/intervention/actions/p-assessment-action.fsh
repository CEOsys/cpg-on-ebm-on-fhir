// Author: Gregor Lichtner @glichtner
Profile: AssessmentAction
Parent: RecommendationAction
Id: assessment-action
Title: "Assessment Action"
Description: "Definition of an assessment action."
* insert metadata(2023-11-20, #draft, 0.3.1)
* kind = $cs-fhir-types#ServiceRequest "ServiceRequest"
* code 1..1
* product[x] 0..0
* dosage 0..0
* quantity 0..0

Instance: ExampleAssessmentAction
InstanceOf: assessment-action
Usage: #example
Title: "Example Assessment Action"
Description: "Example of an assessment action."
* name = "ExampleAssessmentAction"
* version = "1.0"
* experimental = true
* publisher = "CPGonEBMonFHIR"
* description = "Example of an assessment action."
* status = #active
* insert canonical-url(example/recommendation-action/assessment-example)
* code = $sct#406127006 "Pain intensity (observable entity)"
