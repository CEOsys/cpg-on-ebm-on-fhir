// Author: Gregor Lichtner @glichtner
Profile: BodyPositioningAction
Parent: RecommendationAction
Id: body-positioning-action
Title: "Body Positioning Action"
Description: "Definition of a body positioning action as part of a recommended intervention."
* insert metadata(2022-09-06, #draft, 0.3.1)
* kind = $cs-fhir-types#ServiceRequest "ServiceRequest"
* code from vs-body-positioning-snomed (required)
* timingTiming 1..1
* product[x] 0..0
* dosage 0..0
* quantity 0..0

Instance: ExampleBodyPositioningAction
InstanceOf: body-positioning-action
Usage: #example
Title: "Example Body Positioning Action"
Description: "Example of a body positioning action."
* name = "DrugAdministrationAction"
* version = "1.0"
* experimental = true
* publisher = "CPGonEBMonFHIR"
* description = "Example of a body positioning action."
* status = #active
* insert canonical-url(example/recommendation-action/body-positioning-example)
* code = $sct#431182000 "Placing subject in prone position (procedure)"
* timingTiming
  * repeat
    * frequency = 1
    * period = 1
    * periodUnit = #d "d"