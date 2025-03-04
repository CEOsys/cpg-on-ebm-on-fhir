Extension: CharacteristicAttributeExt
Id: ext-characteristic-attribute
Title: "Characteristic Attribute"
Description: "Define an attribute of a characteristic."
Context: EvidenceVariable.characteristic.definitionByTypeAndValue
* . ^short = "Characteristic Attribute"
* . ^definition = "Define an attribute of a characteristic."
* value[x] 0..0
* extension contains type 1..1 and value 1..1
* extension[type].value[x] only CodeableConcept
  * ^short = "The type of attribute"
  * ^definition = "Define the type of attribute."
* extension[value].value[x] only CodeableConcept or Quantity or Range or code
  * ^short = "The value of the attribute"
  * ^definition = "Define the value of the attribute."
 