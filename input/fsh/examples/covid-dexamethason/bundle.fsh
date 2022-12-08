Instance: COVID19IntensiveCareTreatmentGuidelineBundle
InstanceOf: guideline-bundle
Usage: #example
Title: "COVID19 Intensive Care Treatment Guideline"
Description: "COVID19 Intensive Care Treatment Guideline (Bundle)."
* entry[guideline]
  * resource = COVID19IntensiveCareTreatmentGuideline
  * insert canonical-full-url(example/guidelines/covid19-intensive-care-treatment/guideline)
* entry[guidelineCitation][+]
  * resource = COVID19IntensiveCareTreatmentGuidelineCitation
  * insert canonical-full-url(example/guidelines/covid19-intensive-care-treatment/guideline-citation)
* entry[recommendation][+]
  * resource = COVID19DexamethasoneApplication
  * insert canonical-full-url(example/guidelines/covid19-intensive-care-treatment/dexamethasone/recommendation)
* entry[recommendationPlan][+]
  * resource = COVID19VentilatedPatientsDexamethasoneApplicationPlan
  * insert canonical-full-url(example/guidelines/covid19-intensive-care-treatment/dexamethasone/recommendation-plan-ventilated-patients)
* entry[recommendationPlan][+]
  * resource = COVID19NonVentilatedPatientsDexamethasoneApplicationPlan
  * insert canonical-full-url(example/guidelines/covid19-intensive-care-treatment/dexamethasone/recommendation-plan-non-ventilated-patients)
* entry[recommendationAction][+]
  * resource = DexamethasoneApplicationActionOral
  * insert canonical-full-url(example/guidelines/covid19-intensive-care-treatment/dexamethasone/recommendation-action-oral)
* entry[recommendationAction][+]
  * resource = DexamethasoneApplicationActionIntravenous
  * insert canonical-full-url(example/guidelines/covid19-intensive-care-treatment/dexamethasone/recommendation-action-intravenous)
* entry[recommendationAction][+]
  * resource = NoDexamethasoneApplication
  * insert canonical-full-url(example/guidelines/covid19-intensive-care-treatment/dexamethasone/recommendation-action-no-application)
* entry[recommendationCitation][+]
  * resource = DexamethasoneRecommendationCitation
  * insert canonical-full-url(example/guidelines/covid19-intensive-care-treatment/dexamethasone/recommendation-citation)
* entry[PICOEvidenceVariable][+]
  * resource = PopulationCOVID19Ventilated
  * insert canonical-full-url(example/guidelines/covid19-intensive-care-treatment/evidence-variable-ventilated)
* entry[PICOEvidenceVariable][+]
  * resource = PopulationCOVID19NonVentilated
  * insert canonical-full-url(example/guidelines/covid19-intensive-care-treatment/evidence-variable-non-ventilated)
* entry[certaintyOfEvidenceRating][+]
  * resource = DexamethasoneRatingOutcomeMortality
  * insert canonical-full-url(example/guidelines/covid19-intensive-care-treatment/dexamethasone/rating-outcome-mortality)
* entry[outcomeEvidence][+]
  * resource = DexamethasoneOutcomeMortality
  * insert canonical-full-url(example/guidelines/covid19-intensive-care-treatment/dexamethasone/outcome-mortality)
* entry[PICOEvidenceVariable][+]
  * resource = StudyEligibilityCriteriaSystemicCorticosteroidsCOVID19
  * insert canonical-full-url(example/guidelines/covid19-intensive-care-treatment/dexamethasone/study-eligibility-criteria)
* entry[PICOEvidenceVariable][+]
  * resource = OutcomeAllCauseMortality
  * insert canonical-full-url(example/guidelines/covid19-intensive-care-treatment/outcome-all-cause-mortality)
* entry[recommendationJustification][+]
  * resource = DexamethasoneRecommendationJustification
  * insert canonical-full-url(example/guidelines/covid19-intensive-care-treatment/dexamethasone/recommendation-justification)
* entry[studyCitation][+]
  * resource = SystemicCorticosteroidsForTheTreatmentOfCOVID19
  * insert canonical-full-url(example/guidelines/covid19-intensive-care-treatment/dexamethasone/study-citation)
