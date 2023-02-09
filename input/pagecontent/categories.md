Population
==========

Fixed CodesIn EligibilityCriteria, `characteristic.definitionByTypeAndValue.typeCodeableConcept` **must** be exactly as defined in the typeCodeableConcept column, or from the value set defined in the typeCodeableConcept column (see examples)






| Type | Slice Name | definitionByTypeAndValue | Example |
| --- | --- | --- | --- |
| typeCodeableConcept | valueCodeableConcept | valueQuantity/valueRange |
| Condition | condition | SCT [404684003 "Clinical finding (finding)](https://browser.ihtsdotools.org/?perspective=full&conceptId1=404684003&edition=MAIN/2022-04-30&release=&languages=en)" | from <http://hl7.org/fhir/ValueSet/clinical-findings> |  | \* characteristic[condition][+]
 \* linkId = "covid19"
 \* definitionByTypeAndValue
 // typeCodeableConcept \*must\* use the code below
 \* typeCodeableConcept = $sct#404684003 "Clinical finding (finding)"
    \* valueCodeableConcept = $sct#840539006 "Disease caused by Severe acute respiratory syndrome coronavirus 2 (disorder)" |
| Allergy | allergy | SCT [609328004 "Allergic disposition (finding)](https://browser.ihtsdotools.org/?perspective=full&conceptId1=609328004&edition=MAIN/2022-04-30&release=&languages=en)" | SCT *is-a* [609328004 "Allergic disposition (finding)](https://browser.ihtsdotools.org/?perspective=full&conceptId1=609328004&edition=MAIN/2022-04-30&release=&languages=en)" |  | \* characteristic[allergy][+]
 \* linkId = "heparin-allergy"
 \* definitionByTypeAndValue
 // typeCodeableConcept \*must\* use the code below
 \* typeCodeableConcept = $sct#609328004 "Allergic disposition (finding)"
    \* valueCodeableConcept = $sct#294872001 "Allergy to heparin (finding)" |
| Radiology Finding | radiologyFinding | SCT [118247008 "Radiologic finding (finding)](https://browser.ihtsdotools.org/?perspective=full&conceptId1=118247008&edition=MAIN/2022-04-30&release=&languages=en)" | SCT *is-a* [118247008 "Radiologic finding (finding)](https://browser.ihtsdotools.org/?perspective=full&conceptId1=118247008&edition=MAIN/2022-04-30&release=&languages=en)" |  | \* characteristic[radiologyFinding][+]
  \* linkId = "heparin-allergy"
 \* definitionByTypeAndValue
 // typeCodeableConcept \*must\* use the code below
    \* typeCodeableConcept = $sct#118247008 "Radiologic finding (finding)"
    \* valueCodeableConcept = $sct#8701000175105 "Single lobe lung infiltrate (disorder)" |
| Episode of Care | episodeOfCare | LOINC [78030-4 "Episode of care Type](https://loinc.org/78030-4/)" | from `<http://fhir.de/CodeSystem/kontaktart-de>` |  | \* characteristic[episodeOfCare][+]
 \* linkId = "intensive-care-treatment"
 \* definitionByTypeAndValue
 // typeCodeableConcept \*must\*use the code below
   \* typeCodeableConcept = $loinc#78030-4 "Episode of care Type"
   \* valueCodeableConcept = $cs-kontaktart-de#intensivstationaer "Intensivstationär" |
| Lab Value | laboratory | from <http://loinc.org/vs/top-2000-lab-observations-si> | `-` |  | \* characteristic[laboratory][+]
 \* linkId = "ddimer-range"
 \* definitionByTypeAndValue
 // typeCodeableConcept \*must\* be from the valueset defined in typeCodeableConcept column (left)
    \* typeCodeableConcept = $loinc#48066-5 "Fibrin D-dimer DDU [Mass/volume] in Platelet poor plasma"
 \* valueRange
 \* high = 250 'ng/mL' |
| Ventilation | ventilationObservableSNOMED | from vs-ventilation-observable-sct (preferred)SCT *is-a* [364698001 "Ventilator observable (observable entity)"](https://browser.ihtsdotools.org/?perspective=full&conceptId1=364698001&edition=MAIN/2022-04-30&release=&languages=en) | - |  | \* characteristic[ventilationObservableSNOMED][+]
 \* linkId = "ventilator-rate"
 \* definitionByTypeAndValue
 // typeCodeableConcept \*must\* be from the valueset defined in typeCodeableConcept column (left)
     \* typeCodeableConcept = $sct#250876000 "Ventilator rate (observable entity)"
     \* valueRange
 \* low = 20 '/min' |
| ventilationObservableLOINC | from [MII\_Code\_Observation\_Beatmung\_LOINC](https://simplifier.net/medizininformatikinitiative-modul-intensivmedizin/valueset-code-observation-beatmung-loinc) | - |  | \* characteristic[ventilationObservableLOINC][+]
 \* linkId = "respiratory-rate-on-ventilator"
 \* definitionByTypeAndValue
 // typeCodeableConcept \*must\* be from the valueset defined in typeCodeableConcept column (left)
    \* typeCodeableConcept = $loinc#33438-3 "Breath rate mechanical --on ventilator"
 \* valueRange
 \* low = 20 '/min'
 \* high = 24 '/min'

 |
| Procedure | procedure | SCT [71388002 "Procedure (procedure)](https://browser.ihtsdotools.org/?perspective=full&conceptId1=71388002&edition=MAIN/2022-05-31&release=&languages=en)" | from `<http://hl7.org/fhir/ValueSet/procedure-code>` |  | \* characteristic[procedure][+]
 \* linkId = "noninvasive-ventilation"
 \* definitionByTypeAndValue
 // typeCodeableConcept \*must\* use the code below
 \* typeCodeableConcept = $sct#71388002 "Procedure (procedure)"
      \* valueCodeableConcept = $sct#428311008 "Non-invasive ventilation (regime/therapy)"
 |






Intervention
============



Fixed CodesIn RecommendationPlan,

* `action.code`  **must** be exactly as defined in the example
* `goal.category`  **must** be exactly as defined in the example


| Type | RecommendationPlan | Action ProfileName | Example |
| --- | --- | --- | --- |
| .action Slice Name | .goal Slice Name |
| Drug Administration | drugAdministration | *not required* | DrugAdministrationAction | // in RecommendationPlan instance
\* action[drugAdministration][+]
 // code \*must\* use the code below
  \* code = $sct#432102000 "Administration of substance (procedure)"
  \* definitionCanonical = Canonical(ExampleDrugAdministrationAction)

// in ExampleDrugAdministrationAction
Instance: ExampleDrugAdministrationAction
InstanceOf: drug-administration-action
Usage: #example
Title: "Example DrugAdministration Action"
Description: "An active DrugAdministration action."
\* name = "DrugAdministrationAction"
\* status = #active
\* url = "https://www.ceosys.de/fhir/canonical/recommendation-action/drug-administration-example"
\* productCodeableConcept = $sct#372584003 "Dexamethasone (substance)"
\* dosage
 \* route = $sct#26643006 "Oral route"
 \* timing
 \* repeat
 \* count = 10
 \* duration = 10
 \* durationUnit = $ucum#d "d"
 \* frequency = 1
 \* period = 1
 \* periodUnit = $ucum#d "d"
 \* doseAndRate
 \* doseQuantity = 6 'mg' "mg"
 \* rateQuantity = 1 '/d' "/d"

 |
| Laboratory Observation | *not required* *this might change* | laboratoryValue | *n/a* | // in RecommendationPlan instance
\* goal[laboratoryValue][+]
 // category \*must\* use the code below
 \* category = $sct#410394004 "Lab findings surveillance (regime/therapy)"
  \* id = "lab-ddimer-concentration-goal"
 \* description.text = "D-Dimer concentration shall be below 250 ng/mL"
 \* target
 \* measure = $loinc#48066-5 "Fibrin D-dimer DDU [Mass/volume] in Platelet poor plasma"
 \* detailRange
 \* high = 250 'ng/mL' |
| Ventilation Measure/Setting | ventilatorManagement | ventilatorManagement | *n/a* | // in RecommendationPlan instance
\* action[ventilatorManagement][+]
 // code \*must\* use the code below
 \* code = $sct#410210009 "Ventilator care management (procedure)"
  \* goalId[+] = "ventilator-management-goal" // note that goalId must match the id of the goal

\* goal[ventilatorManagement][+]
 // category \*must\* use the code below
  \* category = $sct#385857005 "Ventilator care and adjustment (regime/therapy)"
 \* id = "ventilator-management-goal"
 \* description.text = "The ventilator should be set up to provide a breath reate of at least 20 and at most per minute."
 \* target
 \* measure = $loinc#33438-3 "Breath rate mechanical --on ventilator"
 \* detailRange
 \* low = 20 '/min'
 \* high = 24 '/min'  |
| Body position | bodyPositioning | *not required* | BodyPositioningAction | // in RecommendationPlan instance
\* action[bodyPositioning][+]
 // code \*must\* use the code below
  \* code = $sct#229824005 "Positioning patient (procedure)"
  \* definitionCanonical = Canonical(ExampleBodyPositioningAction)

// in ExampleBodyPositioningAction
Instance: ExampleBodyPositioningAction
InstanceOf: body-positioning-action
Usage: #example
Title: "Example Body Positioning Action"
Description: "Example of a body positioning action."
\* name = "DrugAdministrationAction"
\* status = #active
\* url = "https://www.ceosys.de/fhir/canonical/recommendation-action/body-positioning-example"
\* code = $sct#431182000 "Placing subject in prone position (procedure)"  |
