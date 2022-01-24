// Author: Gregor Lichtner @glichtner
Extension: ReferenceActivityDefinition
Id: ReferenceActivityDefinition
Title: "ReferenceActivityDefinition"
Description: "Adds the possibility to reference an ActivityDefinition resource"
* insert metadata(2021-12-03, #draft, 0.1.0)
* . ^short = "Reference to Activity Definition resource"
* . ^definition = "Reference to ActivityDefinition resource"
* value[x] 1..
* value[x] only Reference
* value[x] only Reference(ActivityDefinition)
