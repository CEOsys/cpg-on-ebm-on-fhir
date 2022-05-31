// Author: Gregor Lichtner @glichtner
Profile: BodyPositioningAction
Parent: RecommendationAction
Id: body-positioning-action
Title: "Body Positioning Action"
Description: "Definition of a body positioning action as part of a recommended intervention."
* insert metadata(2022-05-31, #draft, 0.1.0)
* code from vs-body-positioning-snomed (required)
* product[x] 0..0
* dosage 0..0
* quantity 0..0
* timing[x] 0..0

Instance: ExampleBodyPositioningAction
InstanceOf: body-positioning-action
Usage: #example
Title: "Example Body Positioning Action"
Description: "Example of a body positioning action."
* name = "DrugAdministrationAction"
* status = #active
* url = "https://www.ceosys.de/fhir/canonical/recommendation-action/body-positioning-example"
* code = $sct#431182000 "Placing subject in prone position (procedure)"
