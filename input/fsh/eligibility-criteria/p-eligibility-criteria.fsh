// Author: Gregor Lichtner @glichtner
Profile: EligibilityCriteria
Parent: PICOEvidenceVariable
Id: eligibility-criteria
Title: "Eligibility Criteria"
Description: "Definition of a population (e.g. for guideline recommendation, clinical study) via the eligibility criteria."
* insert metadata(2022-05-15, #draft, 0.2.0)
* ^abstract = true
* insert characteristic-definition
* characteristic.definitionByTypeAndValue // allow only a single type and single valueCodeableConcept coding
  * type.coding 1..1 MS
  * valueCodeableConcept.coding 1..1 MS
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
  episodeOfCare 0..* and
  laboratory 0..* and
  ventilationObservableSCT 0..* and
  ventilationObservableLOINC 0..* and
  procedure 0..* and
  assessmentScale 0..* and
  device 0..* and
  observation 0..*
* characteristic.definitionByTypeAndValue
  * value[x] only Quantity or Range or CodeableConcept // 22-11-02 @glichtner: required, otherwise "* valueCodeableConcept.coding 1..1 MS" leads to FHIR validator error
* characteristic[condition].definitionByTypeAndValue
  * type = $sct#404684003 "Clinical finding (finding)"
  //* value[x] only CodeableConcept // 22-07-22 @glichtner: removed due to sushi error
  * valueCodeableConcept from $vs-clinical-findings-sct (required)
* characteristic[allergy].definitionByTypeAndValue
  * type = $sct#609328004 "Allergic disposition (finding)"
  //* value[x] only CodeableConcept // 22-07-22 @glichtner: removed due to sushi error
  * valueCodeableConcept from $vs-allergic-disposition-sct (required)
* characteristic[radiologyFinding].definitionByTypeAndValue
  * type = $sct#118247008 "Radiologic finding (finding)"
  //* value[x] only CodeableConcept // 22-07-22 @glichtner: removed due to sushi error
  * valueCodeableConcept from $vs-radiologic-finding-sct (required)
* characteristic[episodeOfCare].definitionByTypeAndValue
  * type = $loinc#78030-4 "Episode of care Type"
  //* value[x] only CodeableConcept // 22-07-22 @glichtner: removed due to sushi error
  * valueCodeableConcept from $vs-episode-of-care-type (required)
* characteristic[laboratory].definitionByTypeAndValue
  * type from $vs-laboratory-observation-loinc (required)
  //* value[x] only Range or Quantity // 22-07-22 @glichtner: removed due to sushi error
* characteristic[ventilationObservableSCT].definitionByTypeAndValue
  * type from $vs-ventilation-observable-sct (required)
  //* value[x] only Range or Quantity // 22-07-22 @glichtner: removed due to sushi error
* characteristic[ventilationObservableLOINC].definitionByTypeAndValue
  * type from $vs-ventilation-observable-loinc (required)
  //* value[x] only Range or Quantity // 22-07-22 @glichtner: removed due to sushi error
* characteristic[procedure].definitionByTypeAndValue
  * type = $sct#71388002 "Procedure (procedure)"
  //* value[x] only CodeableConcept // 22-07-22 @glichtner: removed due to sushi error
  * valueCodeableConcept from $vs-procedures-sct (required)
* characteristic[assessmentScale].definitionByTypeAndValue
  * type from vs-assessment-scales (required)
    //* value[x] only CodeableConcept or Range or Quantity // 22-07-22 @glichtner: removed due to sushi error
* characteristic[device].definitionByTypeAndValue
  * type = $sct#49062001 "Device (physical object)"
  //* value[x] only CodeableConcept // 22-07-22 @glichtner: removed due to sushi error
  * valueCodeableConcept from $vs-devices (required)
* characteristic[observation].definitionByTypeAndValue
  * type from vs-observations-sct (required)
  //* value[x] only Range or Quantity // 22-07-22 @glichtner: removed due to sushi error