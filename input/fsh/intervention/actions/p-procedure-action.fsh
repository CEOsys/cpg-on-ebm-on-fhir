// Author: Gregor Lichtner @glichtner
Profile: ProcedureAction
Parent: RecommendationAction
Id: procedure-action
Title: "Procedure Action"
Description: "Definition of a procedure action."
* insert metadata(2024-05-22, #draft, 0.1.0)
* kind = $cs-fhir-types#ServiceRequest "ServiceRequest"
* code 1..1
* code from vs-procedures (required)
* timingTiming 1..1
* product[x] 0..0
* dosage 0..0
* quantity 0..0

Instance: ExampleProcedureAction
InstanceOf: procedure-action
Usage: #example
Title: "Example Procedure Action"
Description: "Example of a procedure action."
* name = "ExampleProcedureAction"
* version = "1.0"
* experimental = true
* publisher = "CPGonEBMonFHIR"
* description = "Example of a procedure action."
* timingTiming
  * repeat
    * frequency = 1
    * period = 1
    * periodUnit = #d "d"
* status = #active
* insert canonical-url(example/recommendation-action/procedure-example)
* code = $sct#1290259006 "Coagulation of lesion of middle ear (procedure)"
