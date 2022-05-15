// Author: Gregor Lichtner @glichtner
Profile: EligibilityCriteria
Parent: PICOEvidenceVariable
Id: eligibility-criteria
Title: "Eligibility Criteria"
Description: "Definition of a population (e.g. for guideline recommendation, clinical study) via the eligibility criteria."
* insert metadata(2022-05-15, #draft, 0.1.1)
* ^abstract = true
* characteristic 1..* MS
  * insert evidence-variable-only-type-value-or-combination // only type/value or combination allowed
* characteristic.definitionByTypeAndValue MS
  * insert evidence-variable-type-value
* characteristic.definitionByCombination
  * characteristic 1..* MS
    * insert evidence-variable-only-type-value-or-combination // only type/value or combination allowed
  * characteristic.definitionByTypeAndValue MS
    * insert evidence-variable-type-value
  * characteristic.exclude 1..1 MS
* characteristic.exclude 1..1 MS

RuleSet: evidence-variable-type-value
* type[x] 1..1 MS
* type[x] only CodeableConcept
* typeCodeableConcept
  * insert default-code-systems
* value[x] 1..1 MS
// list all types to prevent validator warning ("Information @ EvidenceVariable.characteristic[0].definitionByTypeAndValue.value.ofType(boolean) (line 28, col8): This element does not match any known slice defined in the profile https://www.ceosys.de/fhir/StructureDefinition/population-evidence-variable)")
* valueBoolean 0..1 MS
* valueQuantity 0..1 MS
* valueRange 0..1 MS
* valueReference 0..1 MS
* valueId 0..1 MS
* valueCodeableConcept
  * insert default-code-systems
