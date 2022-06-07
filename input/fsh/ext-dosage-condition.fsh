// Author: Gregor Lichtner @glichtner
Extension: DosageCondition
Id: ext-dosage-condition
Title: "Dosage Condition"
Description: "Adds type/value pair to elements of datatype Dosage to express a condition on the dosage."
* insert metadata(2022-07-06, #draft, 0.1.0)
* . ^short = "condition"
* . ^definition = "Extension used on elements of datatype Dosage to specify a condition for the dosage."
* ^context.type = #element
* ^context.expression = "Dosage"
* extension contains type 1..1 and value 1..1
* extension[type] ^short = "Expresses the type of condition"
* extension[type].value[x] only CodeableConcept
* extension[value] ^short = "Defines the condition when coupled with type"
* extension[value].value[x] only
  boolean or
  Quantity or
  Duration or
  Range or
  CodeableConcept
* value[x] 0..0
