// Author: Gregor Lichtner @glichtner
Profile: DrugAdministrationAction
Parent: RecommendationAction
Id: drug-administration-action
Title: "Drug Administration Action"
Description: "Definition of a drug administration action as part of a recommended intervention."
* insert metadata(2022-05-31, #draft, 0.1.0)
* obeys dosage-required-if-administration-should-be-performed
* code = $sct#432102000 "Administration of substance (procedure)"
* product[x] only CodeableConcept
* productCodeableConcept
  * coding ^slicing.discriminator.type = #pattern
  * coding ^slicing.discriminator.path = "$this"
  * coding ^slicing.rules = #open
  * coding contains
      atcde 1..* and
      sct 0..*
  * insert code-system-pattern(sct, $sct)
  * coding[sct] from vs-substances-snomed (required)
  * insert code-system-pattern(atcde, $atcde)
* dosage 0..1
  * extension contains DosageCondition named condition 0..1 MS
  * route MS
  * timing 1..1
  * doseAndRate 1..*
* quantity 0..0 // we don't use quantity, instead use dosage
* timing[x] 0..0 // we don't use timing, instead use dosage.timing

Invariant: dosage-required-if-administration-should-be-performed
Description: "Dosage must be defined if the drug administration should be performed"
Expression: "(doNotPerform = false) implies dosage.exists()"
Severity: #error

Instance: ExampleDrugAdministrationAction
InstanceOf: drug-administration-action
Usage: #example
Title: "Example DrugAdministration Action"
Description: "A drug administration that should be performed."
* name = "DrugAdministrationAction"
* status = #active
* url = "https://www.ceosys.de/fhir/canonical/recommendation-action/drug-administration-example"
* productCodeableConcept
  * coding[atcde] = $atcde#C05AA09 "Dexamethason"
  * coding[sct] = $sct#372584003 "Dexamethasone (substance)"
* dosage[+]
  * extension[condition]
    * extension[type].valueCodeableConcept = $loinc#29463-7 "Body weight"
    * extension[value].valueRange.high = 70 'kg' "kg"
  * route = $sct#26643006 "Oral route"
  * timing
    * repeat
      * count = 10
      * duration = 10
      * durationUnit = $ucum#d "d"
      * frequency = 1
      * period = 1
      * periodUnit = $ucum#d "d"
  * doseAndRate
    * doseQuantity = 6 'mg' "mg"
    * rateQuantity = 1 '/d' "/d"

Instance: ExampleNoDrugAdministrationAction
InstanceOf: drug-administration-action
Usage: #example
Title: "Example No DrugAdministration Action"
Description: "A drug administration that should not be performed."
* name = "DrugAdministrationAction"
* status = #active
* url = "https://www.ceosys.de/fhir/canonical/recommendation-action/no-drug-administration-example"
* productCodeableConcept
  * coding[atcde] = $atcde#C05AA09 "Dexamethason"
  * coding[sct] = $sct#372584003 "Dexamethasone (substance)"
* doNotPerform = true
