// Author: Gregor Lichtner @glichtner
Profile: DrugAdministrationAction
Parent: RecommendationAction
Id: drug-administration-action
Title: "Drug Administration Action"
Description: "Definition of a drug administration action as part of a recommended intervention."
* insert metadata(2022-09-06, #draft, 0.3.1)
* obeys dosage-if-administration-should-be-performed
* kind = $cs-fhir-types#MedicationRequest "MedicationRequest"
* code = $sct#432102000 "Administration of substance (procedure)"
* timing[x] 0..0 // we don't use timing for drug administrations, instead use dosage.timing
* product[x] only CodeableConcept
* productCodeableConcept
  * coding ^slicing.discriminator.type = #pattern
  * coding ^slicing.discriminator.path = "$this"
  * coding ^slicing.rules = #open
  * coding contains
      sct 1..1 and
      atc 0..1 and
      rxnorm 0..1 and
      atcde 0..1
  * insert code-system-pattern(sct, $sct)
  * coding[sct] from vs-substances-snomed (required)
  * insert code-system-pattern(atc, $atc)
  * insert code-system-pattern(rxnorm, $rxnorm)
  * insert code-system-pattern(atcde, $atcde)
* dosage 0..*
  * extension contains DosageCondition named condition 0..1 MS
  * route MS
  * route from $vs-route-codes (required)
  * timing 1..1
  * doseAndRate 1..*
* quantity 0..0 // we don't use quantity, instead use dosage
* timing[x] 0..0 // we don't use timing, instead use dosage.timing

Instance: ExampleDrugAdministrationAction
InstanceOf: drug-administration-action
Usage: #example
Title: "Example DrugAdministration Action"
Description: "A drug administration that should be performed."
* name = "DrugAdministrationAction"
* status = #active
* insert canonical-url(example/recommendation-action/drug-administration-example)
* version = "1.0"
* experimental = true
* publisher = "CPGonEBMonFHIR"
* description = "A drug administration that should be performed."
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
* insert canonical-url(example/recommendation-action/no-drug-administration-example)
* version = "1.0"
* experimental = true
* publisher = "CPGonEBMonFHIR"
* description = "A drug administration that should not be performed."
* kind = $cs-fhir-types#MedicationRequest "MedicationRequest"
* productCodeableConcept
  * coding[atcde] = $atcde#C05AA09 "Dexamethason"
  * coding[sct] = $sct#372584003 "Dexamethasone (substance)"
* doNotPerform = true
