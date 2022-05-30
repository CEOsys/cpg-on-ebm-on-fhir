// Author: Gregor Lichtner @glichtner
Profile: EligibilityCriteria
Parent: PICOEvidenceVariable
Id: eligibility-criteria
Title: "Eligibility Criteria"
Description: "Definition of a population (e.g. for guideline recommendation, clinical study) via the eligibility criteria."
* insert metadata(2022-05-15, #draft, 0.2.0)
* ^abstract = true
* insert characteristic-definition
* characteristic.definitionByCombination
  * insert characteristic-definition

RuleSet: characteristic-definition
* characteristic 1..* MS
* characteristic ^slicing.discriminator.type = #pattern
* characteristic ^slicing.discriminator.path = "definitionByTypeAndValue.type"
* characteristic ^slicing.rules = #open
* characteristic contains
  condition 0..* and
  allergy 0..* and
  radiologyFinding 0..* and
  typeOfCare 0..* and
  laboratory 0..* and
  ventilationObservableSCT 0..* and
  ventilationObservableLOINC 0..* and
  procedure 0..*
* characteristic[condition].definitionByTypeAndValue
  * type[x] only CodeableConcept
  * typeCodeableConcept = $sct#404684003 "Clinical finding (finding)"
  * value[x] only CodeableConcept
  * valueCodeableConcept from $vs-clinical-findings-sct (required)
* characteristic[allergy].definitionByTypeAndValue
  * type[x] only CodeableConcept
  * typeCodeableConcept = $sct#609328004 "Allergic disposition (finding)"
  * value[x] only CodeableConcept
  * valueCodeableConcept from $vs-allergic-disposition-sct (required)
* characteristic[radiologyFinding].definitionByTypeAndValue
  * type[x] only CodeableConcept
  * typeCodeableConcept = $sct#118247008 "Radiologic finding (finding)"
  * value[x] only CodeableConcept
  * valueCodeableConcept from $vs-radiologic-finding-sct (required)
* characteristic[typeOfCare].definitionByTypeAndValue
  * type[x] only CodeableConcept
  * typeCodeableConcept = $loinc#78030-4 "Episode of care Type"
  * value[x] only CodeableConcept
  * valueCodeableConcept from $vs-episode-of-care-type (required)
* characteristic[laboratory].definitionByTypeAndValue
  * type[x] only CodeableConcept
  * typeCodeableConcept from $vs-laboratory-observation-loinc (required)
  * value[x] only Range or Quantity
* characteristic[ventilationObservableSCT].definitionByTypeAndValue
  * type[x] only CodeableConcept
  * typeCodeableConcept from vs-ventilation-observable-sct (required)
  * value[x] only Range or Quantity
* characteristic[ventilationObservableLOINC].definitionByTypeAndValue
  * type[x] only CodeableConcept
  * typeCodeableConcept from vs-ventilation-observable-loinc (required)
  * value[x] only Range or Quantity
* characteristic[procedure].definitionByTypeAndValue
  * type[x] only CodeableConcept
  * typeCodeableConcept = $sct#71388002 "Procedure (procedure)"
  * value[x] only CodeableConcept
  * valueCodeableConcept from $vs-procedures-sct (required)
