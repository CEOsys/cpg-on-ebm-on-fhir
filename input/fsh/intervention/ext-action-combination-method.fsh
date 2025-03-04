// Author: Gregor Lichtner @glichtner

// use a fixed URL to make sure it is properly referenced in the the nested-action-requires-combination-method invariant
Alias: $ext-action-combination-method = https://www.netzwerk-universitaetsmedizin.de/fhir/cpg-on-ebm-on-fhir/StructureDefinition/ext-action-combination-method

Extension: ActionCombinationMethodExt
Id: ext-action-combination-method
Title: "Action Combination Method"
Description: "Extension used on PlanDefinition.action to specify a method for combining the actions."
* insert metadata(2022-07-06, #draft, 0.1.0)
* . ^short = "combinationMethod"
* . ^definition = "Extension used on PlanDefinition.action to specify a method for combining the actions."
* ^context[+].type = #element
* ^context[=].expression = "PlanDefinition"
* ^context[+].type = #element
* ^context[=].expression = "PlanDefinition.action"
* ^context[+].type = #element
* ^context[=].expression = "ElementDefinition"
* ^context[+].type = #element
* ^context[=].expression = "BackboneElement"
* ^url = $ext-action-combination-method
* extension contains method 1..1 and threshold 0..1
* extension[method] ^short = "Expresses the method for combining the actions"
* extension[method].value[x] only CodeableConcept
* extension[method].valueCodeableConcept from vs-action-combination-method (required)
* extension[threshold] ^short = "Expresses the threshold for the method for combining the actions"
* extension[threshold].value[x] only positiveInt
* value[x] 0..0
