// Author: Gregor Lichtner @glichtner
Extension: ReferencePlanDefinition
Id: ceosys-extension-reference-plan-definition
Title: "Reference Plan Definition"
Description: "Adds the possibility to reference an PlanDefinition resource."
* insert metadata(2021-12-03, #draft, 0.1.0)
* . ^short = "Reference to Plan Definition resource"
* . ^definition = "Reference to PlanDefinition resource"
* value[x] 1..
* value[x] only Reference
* value[x] only Reference(PlanDefinition)
