// Author: Gregor Lichtner @glichtner
Extension: RelatedCharacteristic
Id: related-characteristic
Title: "Related Characteristic"
Description: "Adds the possibility to a characteristic to specify a temporal relationship with another characteristic."
* extension contains
    targetId 1..1 and
    relationship 1..1
    and offset 0..1
* extension[targetId] ^short = "What characteristic is this related to"
* extension[targetId].value[x] only id
* extension[relationship] ^short = "Type of relationship"
* extension[relationship].value[x] only code
* extension[relationship].valueCode from CharacteristicRelationshipType (required)
* extension[offset] ^short = "Time offset for the relationship"
* extension[offset].value[x] only Duration or Range
