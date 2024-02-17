### Categories
The following categories are used to describe the population of the patients in the [Eligibility Criteria resources][Eligibility Criteria] ([Recommendation Eligibility Criteria][Recommendation Eligibility Criteria], [Study Eligibility Criteria][Study Eligibility Criteria]).

The categories are defined as slices of the `characteristic` element in the respective resource.

> Fixed Codes:
>
>  In EligibilityCriteria:
> * `characteristic.definitionByTypeAndValue.typeCodeableConcept` **must** be exactly as defined in the typeCodeableConcept column, or from the value set defined in the typeCodeableConcept column (see examples)

| Type | Slice Name | typeCodeableConcept | valueCodeableConcept | valueQuantity/valueRange |
| --- | --- | --- | --- | :---: |
| Condition | condition | SCT [404684003 "Clinical finding (finding)](https://browser.ihtsdotools.org/?perspective=full&conceptId1=404684003&edition=MAIN/2022-04-30&release=&languages=en)" | from <http://hl7.org/fhir/ValueSet/clinical-findings> | ❌ |
| Allergy | allergy | SCT [609328004 "Allergic disposition (finding)](https://browser.ihtsdotools.org/?perspective=full&conceptId1=609328004&edition=MAIN/2022-04-30&release=&languages=en)" | SCT *is-a* [609328004 "Allergic disposition (finding)](https://browser.ihtsdotools.org/?perspective=full&conceptId1=609328004&edition=MAIN/2022-04-30&release=&languages=en)" | ❌ |
| Radiology Finding | radiologyFinding | SCT [118247008 "Radiologic finding (finding)](https://browser.ihtsdotools.org/?perspective=full&conceptId1=118247008&edition=MAIN/2022-04-30&release=&languages=en)" | SCT *is-a* [118247008 "Radiologic finding (finding)](https://browser.ihtsdotools.org/?perspective=full&conceptId1=118247008&edition=MAIN/2022-04-30&release=&languages=en)" | ❌ |
| Episode of Care | episodeOfCare | LOINC [78030-4 "Episode of care Type](https://loinc.org/78030-4/)" | from `<http://fhir.de/CodeSystem/kontaktart-de>` | ❌ |
| Lab Value | laboratory | from <http://loinc.org/vs/top-2000-lab-observations-si> | ❌ | ✔️ |
| Ventilation | ventilationObservableSNOMED | from vs-ventilation-observable-sct (preferred)SCT *is-a* [364698001 "Ventilator observable (observable entity)"](https://browser.ihtsdotools.org/?perspective=full&conceptId1=364698001&edition=MAIN/2022-04-30&release=&languages=en) | ❌ | ✔️ |
| Ventilation | ventilationObservableLOINC | from [MII\_Code\_Observation\_Beatmung\_LOINC](https://simplifier.net/medizininformatikinitiative-modul-intensivmedizin/valueset-code-observation-beatmung-loinc) | ❌ | ✔️ |
| Procedure | procedure | SCT [71388002 "Procedure (procedure)](https://browser.ihtsdotools.org/?perspective=full&conceptId1=71388002&edition=MAIN/2022-05-31&release=&languages=en)" | from `<http://hl7.org/fhir/ValueSet/procedure-code>` | ❌ |
| Assessment Scale | assessmentScale | from [vs-assessment-scales][VS:Assessment Scales] | ✔️  | ✔️ |
{:.grid}

#### Examples

##### Condition
```C
* characteristic[condition][+]
  * linkId = "covid19"
  * definitionByTypeAndValue
    // typeCodeableConcept *must* use the code below
    * typeCodeableConcept = $sct#404684003 "Clinical finding (finding)"
    * valueCodeableConcept = $sct#840539006 "Disease caused by Severe acute respiratory syndrome coronavirus 2 (disorder)"
```

##### Allergy
```C
* characteristic[allergy][+]
  * linkId = "heparin-allergy"
  * definitionByTypeAndValue
    // typeCodeableConcept *must* use the code below
    * typeCodeableConcept = $sct#609328004 "Allergic disposition (finding)"
    * valueCodeableConcept = $sct#294872001 "Allergy to heparin (finding)"
```

##### Radiology Finding
```C
* characteristic[radiologyFinding][+]
  * linkId = "heparin-allergy"
  * definitionByTypeAndValue
    // typeCodeableConcept *must* use the code below
    * typeCodeableConcept = $sct#118247008 "Radiologic finding (finding)"
    * valueCodeableConcept = $sct#8701000175105 "Single lobe lung infiltrate (disorder)"
```

##### Episode of Care
```C
* characteristic[episodeOfCare][+]
  * linkId = "intensive-care-treatment"
  * definitionByTypeAndValue
   // typeCodeableConcept *must*use the code below
   * typeCodeableConcept = $loinc#78030-4 "Episode of care Type"
   * valueCodeableConcept = $cs-kontaktart-de#intensivstationaer "Intensivstationär"
```

##### Lab Value
```C
* characteristic[laboratory][+]
  * linkId = "ddimer-range"
  * definitionByTypeAndValue
    // typeCodeableConcept *must* be from the valueset defined in typeCodeableConcept column (left)
    * typeCodeableConcept = $loinc#48066-5 "Fibrin D-dimer DDU [Mass/volume] in Platelet poor plasma"
    * valueRange
      * high = 250 'ng/mL'
```

##### Ventilation

For SNOMED CT codes:
```C
* characteristic[ventilationObservableSNOMED][+]
  * linkId = "ventilator-rate"
  * definitionByTypeAndValue
     // typeCodeableConcept *must* be from the valueset defined in typeCodeableConcept column (left)
     * typeCodeableConcept = $sct#250876000 "Ventilator rate (observable entity)"
     * valueRange
       * low = 20 '/min'
```

For LOINC codes:
```C
* characteristic[ventilationObservableLOINC][+]
  * linkId = "respiratory-rate-on-ventilator"
  * definitionByTypeAndValue
    // typeCodeableConcept *must* be from the valueset defined in typeCodeableConcept column (left)
    * typeCodeableConcept = $loinc#33438-3 "Breath rate mechanical --on ventilator"
    * valueRange
      * low = 20 '/min'
      * high = 24 '/min'

```

##### Procedure
```C
* characteristic[procedure][+]
  * linkId = "noninvasive-ventilation"
  * definitionByTypeAndValue
      // typeCodeableConcept *must* use the code below
      * typeCodeableConcept = $sct#71388002 "Procedure (procedure)"
      * valueCodeableConcept = $sct#428311008 "Non-invasive ventilation (regime/therapy)"
```

##### Assessment Scale

```C
  * characteristic[assessmentScale][+]
    * linkId = "cam-icu+"
    * definitionByTypeAndValue
      * type = $loinc#54627-5 "Signs and symptoms of delirium (from CAM)"
      * valueRange.low = 1
```
