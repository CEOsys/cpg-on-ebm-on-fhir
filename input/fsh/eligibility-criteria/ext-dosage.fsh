Extension: CharacteristicDosage
Id: ext-characteristic-dosage
Title: "Characteristic Dosage"
Description: "Adds Dosage type to characteristic"
* value[x] 1..1
* value[x] only Dosage
* valueDosage
  * extension contains DosageCondition named condition 0..1 MS
  * route MS
  * route from $vs-route-codes (required)
  * timing 1..1
  * doseAndRate 1..*
