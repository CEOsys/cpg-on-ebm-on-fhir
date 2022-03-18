/*********************/
/* Intervention Plan */
/*********************/
Instance: DexamethasoneApplicationPlan
InstanceOf: intervention-plan
Usage: #example
Title: "Dexamethasone Application"
Description: "Application of Dexamethasone: 6 mg once per day for 10 days p.o. or i.v."
* name = "Dexamaethasone_Application"
* title = "Dexamaethasone Application"
* version = "4.0"
* date = "2021-12-12"
* status = #active
* description = "Application of Dexamethasone: 6 mg once per day for 10 days"
* subjectReference = Reference(PopulationCriticallyIllCOVID19Patients)
* action[+]
  * definitionCanonical = Canonical(DexamethasoneApplicationActivityOral)
  * selectionBehavior = #exactly-one
* action[+]
  * definitionCanonical = Canonical(DexamethasoneApplicationActivityIntravenous)
  * selectionBehavior = #exactly-one
* relatedArtifact[recommendationRating].resourceReference = Reference(DexamethasoneRecommendationRating)
* relatedArtifact[recommendationCitation].resourceReference = Reference(DexamethasoneRecommendationCitation)
* relatedArtifact[guidelineCitation].resourceReference = Reference(COVID19IntensiveCareTreatmentGuidelineCitation)

Instance: DexamethasoneRecommendationCitation
InstanceOf: recommendation-citation
Usage: #example
Title: "Dexamethasone Recommendation"
Description: "Citation of Dexamethasone Recommenation from COVID-19 intensive care patients treatment guideline"
* name = "DexamethasoneRecommendationCitation"
* status = #active
* citedArtifact
  * identifier
    * value = "98398"
    * system = "https://api.magicapp.org/api/v1/recommendations"
  * title.text = "Steroide"
  * version.value = "v4.0"
  * currentState = $cs-cited-artifact-status-type#active "Active"

/*************************/
/* Intervention Activity */
/*************************/
Instance: DexamethasoneApplicationActivityOral
InstanceOf: intervention-activity
Usage: #example
Title: "Dexamethasone Application (Oral)"
Description: "Application of Dexamethasone: 6 mg once per day for 10 days (oral route)"
* name = "DexamethasoneApplicationActivity"
* url = "https://www.ceosys.de/fhir/canonical/intervention-activity/example"
* status = #active
* code = $sct#182832007 "Procedure related to management of drug administration (procedure)"
* productCodeableConcept = $sct#372584003 "Dexamethasone (substance)"
* dosage
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

Instance: DexamethasoneApplicationActivityIntravenous
InstanceOf: intervention-activity
Usage: #example
Title: "Dexamethasone Application (Intravenous)"
Description: "Application of Dexamethasone: 6 mg once per day for 10 days (intravenous route)"
* name = "DexamethasoneApplicationActivity"
* url = "https://www.ceosys.de/fhir/canonical/intervention-activity/example"
* status = #active
* code = $sct#182832007 "Procedure related to management of drug administration (procedure)"
* productCodeableConcept = $sct#372584003 "Dexamethasone (substance)"
* dosage
  * route = $sct#47625008 "Intravenous route"
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
