Profile: PICOPopulationGroup
Parent: Group
Id: pico-population-group
Title: "PICO Population"
Description: ""
* type 1..1
* type = #person
* actual 1..1 MS
* actual = false
* characteristic 1..* MS
* characteristic.code
  * coding ^slicing.discriminator.type = #pattern
  * coding ^slicing.discriminator.path = "$this"
  * coding ^slicing.rules = #open
  * coding contains
      cochrane 1..1 and sct 1..*
  * coding[cochrane]
    * ^patternCoding.system = $cochrane-ld
    * system 1.. MS
    * code 1.. MS
  * coding[sct]
    * ^patternCoding.system = $sct
    * system 1.. MS
    * code 1.. MS

Instance: pico-population
InstanceOf: pico-population-group
Usage: #example
Title: "pico-population"
Description: ""
* characteristic[+]
  * code.coding[cochrane] = $cochrane-ld#NrO30O5ZnYIkjE "Condition - COVID-19"
  * code.coding[sct] = $sctIntl2021#840539006 "Disease caused by Severe acute respiratory syndrome coronavirus 2 (disorder)"
  * valueBoolean = true
* characteristic[=].exclude = false
* actual = false
