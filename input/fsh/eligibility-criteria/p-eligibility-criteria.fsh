// Author: Gregor Lichtner @glichtner
Profile: EligibilityCriteria
Parent: PICOEvidenceVariable
Id: eligibility-criteria
Title: "Eligibility Criteria"
Description: "Definition of a population (e.g. for guideline recommendation, clinical study) via the eligibility criteria."
* insert metadata(2022-05-15, #draft, 0.2.0)
* ^abstract = true
// recursive profiling should be perfomred using the http://hl7.org/fhir/StructureDefinition/elementdefinition-profile-element extension 
// (see "Extension for Profiling BackboneElements" in https://github.com/FHIR/sushi/releases/tag/v2.0.0), but this doesn't seem to work for slice definitions
// (see https://chat.fhir.org/#narrow/stream/215610-shorthand/topic/define.20slices.20recursively.20on.20backbone.20element/near/440505865)
* insert characteristic-definition
* characteristic.definitionByCombination 
  * insert characteristic-definition
  * characteristic.definitionByCombination
    * insert characteristic-definition
    * characteristic.definitionByCombination
      * insert characteristic-definition
      * characteristic.definitionByCombination
        * insert characteristic-definition

RuleSet: characteristic-definition
* characteristic 1..* MS
  * extension contains RelativeTime named relativeTime 0..*
* characteristic ^slicing.discriminator.type = #pattern
* characteristic ^slicing.discriminator.path = "definitionByTypeAndValue.type"
* characteristic ^slicing.rules = #open
* characteristic contains
  condition 0..* and
  allergy 0..* and
  radiologyFinding 0..* and
  episodeOfCare 0..* and
  procedure 0..* and
  assessmentScale 0..* and
  device 0..* and
  observation 0..* and
  drugAdministration 0..*

* characteristic.definitionByTypeAndValue // allow only a single type and single valueCodeableConcept coding
  * type.coding 1..1 MS
  * value[x] only Quantity or Range or CodeableConcept // 22-11-02 @glichtner: required, otherwise "* valueCodeableConcept.coding 1..1 MS" leads to FHIR validator error
  * extension contains ext-characteristic-attribute named attribute 0..*
  
* characteristic[condition]
  * definitionByCombination 0..0
  * definitionByTypeAndValue 1..1
    * type = $sct#404684003 "Clinical finding (finding)"
    //* value[x] only CodeableConcept // 22-07-22 @glichtner: removed due to sushi error
    * valueCodeableConcept from $vs-clinical-findings-sct (extensible)
    * valueCodeableConcept.coding 1..1 MS

* characteristic[allergy]
  * definitionByCombination 0..0
  * definitionByTypeAndValue 1..1
    * type = $sct#609328004 "Allergic disposition (finding)"
    //* value[x] only CodeableConcept // 22-07-22 @glichtner: removed due to sushi error
    * valueCodeableConcept from $vs-allergic-disposition-sct (extensible)
    * valueCodeableConcept.coding 1..1 MS

* characteristic[radiologyFinding]
  * definitionByCombination 0..0
  * definitionByTypeAndValue 1..1
    * type = $sct#118247008 "Radiologic finding (finding)"
    //* value[x] only CodeableConcept // 22-07-22 @glichtner: removed due to sushi error
    * valueCodeableConcept from $vs-radiologic-finding-sct (extensible)
    * valueCodeableConcept.coding 1..1 MS

* characteristic[episodeOfCare]
  * definitionByCombination 0..0
  * definitionByTypeAndValue 1..1
    * type = $loinc#78030-4 "Episode of care Type"
    //* value[x] only CodeableConcept // 22-07-22 @glichtner: removed due to sushi error
    * valueCodeableConcept from $vs-episode-of-care-type (extensible)
    * valueCodeableConcept.coding 1..1 MS

* characteristic[procedure]
  * definitionByCombination 0..0
  * definitionByTypeAndValue 1..1
    * type = $sct#71388002 "Procedure (procedure)"
    //* value[x] only CodeableConcept // 22-07-22 @glichtner: removed due to sushi error
    * valueCodeableConcept from $vs-procedures-sct (extensible)
    * valueCodeableConcept.coding 1..1 MS

* characteristic[assessmentScale]
  * definitionByCombination 0..0
  * definitionByTypeAndValue 1..1
    * type from vs-assessment-scales (required)
      //* value[x] only CodeableConcept or Range or Quantity // 22-07-22 @glichtner: removed due to sushi error

* characteristic[device]
  * definitionByCombination 0..0
  * definitionByTypeAndValue 1..1
    * type = $sct#49062001 "Device (physical object)"
    //* value[x] only CodeableConcept // 22-07-22 @glichtner: removed due to sushi error
    * valueCodeableConcept from $vs-devices (extensible)
    * valueCodeableConcept.coding 1..1 MS

* characteristic[observation]
  * definitionByCombination 0..0
  * definitionByTypeAndValue 1..1
    * type from vs-observations (required)
    //* value[x] only Range or Quantity // 22-07-22 @glichtner: removed due to sushi error

* characteristic[drugAdministration]
  * definitionByCombination 0..0
  * definitionByTypeAndValue 1..1
    * type = $sct#18629005 "Administration of drug or medicament (procedure)"
    * valueCodeableConcept from vs-drugs (extensible)
    * valueCodeableConcept.coding 1..1 MS
    * extension contains CharacteristicDosage named dosage 0..*
