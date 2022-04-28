Instance: COVID19IntensiveCareTreatmentGuidelineBundle
InstanceOf: guideline-bundle
Usage: #example
Title: "COVID19 Intensive Care Treatment Guideline"
Description: "COVID19 Intensive Care Treatment Guideline (Bundle)."
* entry[guideline]
  * resource = COVID19IntensiveCareTreatmentGuideline
  * fullUrl = "https://www.ceosys.de/guidelines/covid19-intensive-care-treatment/guideline"
* entry[guidelineCitation][+]
  * resource = COVID19IntensiveCareTreatmentGuidelineCitation
  * fullUrl = "https://www.ceosys.de/guidelines/covid19-intensive-care-treatment/guideline-citation"
* entry[recommendationPlan][+]
  * resource = COVID19VentilatedPatientsDexamethasoneApplicationPlan
  * fullUrl = "https://www.ceosys.de/guidelines/covid19-intensive-care-treatment/dexamethasone/recommendation-plan-ventilated-patients"
* entry[recommendationPlan][+]
  * resource = COVID19NonVentilatedPatientsDexamethasoneApplicationPlan
  * fullUrl = "https://www.ceosys.de/guidelines/covid19-intensive-care-treatment/dexamethasone/recommendation-plan-non-ventilated-patients"
* entry[recommendationAction][+]
  * resource = DexamethasoneApplicationActionOral
  * fullUrl = "https://www.ceosys.de/guidelines/covid19-intensive-care-treatment/dexamethasone/recommendation-action-oral"
* entry[recommendationAction][+]
  * resource = DexamethasoneApplicationActionIntravenous
  * fullUrl = "https://www.ceosys.de/guidelines/covid19-intensive-care-treatment/dexamethasone/recommendation-action-intravenous"
* entry[recommendationAction][+]
  * resource = NoDexamethasoneApplication
  * fullUrl = "https://www.ceosys.de/guidelines/covid19-intensive-care-treatment/dexamethasone/recommendation-action-no-application"
* entry[recommendationCitation][+]
  * resource = DexamethasoneRecommendationCitation
  * fullUrl = "https://www.ceosys.de/guidelines/covid19-intensive-care-treatment/dexamethasone/recommendation-citation"
* entry[recommendationPatientGroup][+]
  * resource = PopulationCriticallyIllCOVID19Patients
  * fullUrl = "https://www.ceosys.de/guidelines/covid19-intensive-care-treatment/population-group-ventilated"
* entry[PICOEvidenceVariable][+]
  * resource = PopulationCOVID19Ventilated
  * fullUrl = "https://www.ceosys.de/guidelines/covid19-intensive-care-treatment/evidence-variable-ventilated"
* entry[recommendationPatientGroup][+]
  * resource = PopulationModeratelyIllCOVID19Patients
  * fullUrl = "https://www.ceosys.de/guidelines/covid19-intensive-care-treatment/population-group-non-ventilated"
* entry[PICOEvidenceVariable][+]
  * resource = PopulationCOVID19NonVentilated
  * fullUrl = "https://www.ceosys.de/guidelines/covid19-intensive-care-treatment/evidence-variable-non-ventilated"
* entry[certaintyOfEvidenceRating][+]
  * resource = DexamethasoneRatingOutcomeMortality
  * fullUrl = "https://www.ceosys.de/guidelines/covid19-intensive-care-treatment/dexamethasone/rating-outcome-mortality"
* entry[outcomeEvidence][+]
  * resource = DexamethasoneOutcomeMortality
  * fullUrl = "https://www.ceosys.de/guidelines/covid19-intensive-care-treatment/dexamethasone/outcome-mortality"
* entry[PICOEvidenceVariable][+]
  * resource = StudyEligibilityCriteriaSystemicCorticosteroidsCOVID19
  * fullUrl = "https://www.ceosys.de/guidelines/covid19-intensive-care-treatment/dexamethasone/study-eligibility-criteria"
* entry[PICOEvidenceVariable][+]
  * resource = OutcomeAllCauseMortality
  * fullUrl = "https://www.ceosys.de/guidelines/covid19-intensive-care-treatment/outcome-all-cause-mortality"
* entry[recommendationJustification][+]
  * resource = DexamethasoneRecommendationJustification
  * fullUrl = "https://www.ceosys.de/guidelines/covid19-intensive-care-treatment/dexamethasone/recommendation-justification"
* entry[studyCitation][+]
  * resource = SystemicCorticosteroidsForTheTreatmentOfCOVID19
  * fullUrl = "https://www.ceosys.de/guidelines/covid19-intensive-care-treatment/dexamethasone/study-citation"
