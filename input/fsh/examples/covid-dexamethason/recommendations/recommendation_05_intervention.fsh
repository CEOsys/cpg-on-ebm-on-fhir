/*********************/
/* Intervention Plan */
/*********************/
Instance: DexamethasoneApplicationPlan
InstanceOf: intervention-plan
Usage: #example
Title: "Dexamethasone Application"
Description: "Application of Dexamethasone: 6 mg once per day for 10 days"
* name = "Dexamaethasone_Application"
* title = "Dexamaethasone Application"
* version = "1.0"
* date = "2022-02-14"
* status = #retired
* description = "Application of Dexamethasone: 6 mg once per day for 10 days"
* subjectReference = Reference(PopulationCriticallyIllCOVID19Patients)
* action[+]
  * definitionCanonical = Canonical(DexamethasoneApplicationActivity)
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
    * value = "80618"
    * system = "https://api.magicapp.org/api/v1/recommendations"
  * title.text = "Steroide:"
  * version.value = "v1.0"
  * currentState = $cs-cited-artifact-status-type#archived "Archived"

/*************************/
/* Intervention Activity */
/*************************/
Instance: DexamethasoneApplicationActivity
InstanceOf: intervention-activity
Usage: #example
Title: "Dexamethasone Application"
Description: "Application of Dexamethasone: 6 mg once per day for 10 days"
* name = "DexamethasoneApplicationActivity"
* url = "https://www.ceosys.de/fhir/canonical/intervention-activity/example"
* status = #active
* code = $sct#182832007 "Procedure related to management of drug administration (procedure)"
* productCodeableConcept = $sct#372584003 "Dexamethasone (substance)"
* dosage
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
