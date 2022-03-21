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
* entry[interventionPlan][+]
  * resource = COVID19VentilatedPatientsDexamethasoneApplicationPlan
  * fullUrl = "https://www.ceosys.de/guidelines/covid19-intensive-care-treatment/dexamethasone/intervention-plan-ventilated-patients"
* entry[interventionPlan][+]
  * resource = COVID19NonVentilatedPatientsDexamethasoneApplicationPlan
  * fullUrl = "https://www.ceosys.de/guidelines/covid19-intensive-care-treatment/dexamethasone/intervention-plan-non-ventilated-patients"
* entry[interventionActivity][+]
  * resource = DexamethasoneApplicationActivityOral
  * fullUrl = "https://www.ceosys.de/guidelines/covid19-intensive-care-treatment/dexamethasone/intervention-activity-oral"
* entry[interventionActivity][+]
  * resource = DexamethasoneApplicationActivityIntravenous
  * fullUrl = "https://www.ceosys.de/guidelines/covid19-intensive-care-treatment/dexamethasone/intervention-activity-intravenous"
* entry[interventionActivity][+]
  * resource = NoDexamethasoneApplication
  * fullUrl = "https://www.ceosys.de/guidelines/covid19-intensive-care-treatment/dexamethasone/intervention-activity-no-application"
* entry[recommendationCitation][+]
  * resource = DexamethasoneRecommendationCitation
  * fullUrl = "https://www.ceosys.de/guidelines/covid19-intensive-care-treatment/dexamethasone/recommendation-citation"
* entry[populationGroup][+]
  * resource = PopulationCriticallyIllCOVID19Patients
  * fullUrl = "https://www.ceosys.de/guidelines/covid19-intensive-care-treatment/population-group-ventilated"
* entry[PICOEvidenceVariable][+]
  * resource = PopulationCOVID19Ventilated
  * fullUrl = "https://www.ceosys.de/guidelines/covid19-intensive-care-treatment/evidence-variable-ventilated"
* entry[populationGroup][+]
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
* entry[studyGroup][+]
  * resource = StudyGroupSystemicCorticosteroidsCOVID19
  * fullUrl = "https://www.ceosys.de/guidelines/covid19-intensive-care-treatment/dexamethasone/study-group"
* entry[PICOEvidenceVariable][+]
  * resource = StudyEligibilityCriteriaSystemicCorticosteroidsCOVID19
  * fullUrl = "https://www.ceosys.de/guidelines/covid19-intensive-care-treatment/dexamethasone/study-eligibility-criteria"
* entry[PICOEvidenceVariable][+]
  * resource = OutcomeAllCauseMortality
  * fullUrl = "https://www.ceosys.de/guidelines/covid19-intensive-care-treatment/outcome-all-cause-mortality"
* entry[recommendationRating][+]
  * resource = DexamethasoneRecommendationRating
  * fullUrl = "https://www.ceosys.de/guidelines/covid19-intensive-care-treatment/dexamethasone/recommendation-rating"
* entry[studyCitation][+]
  * resource = SystemicCorticosteroidsForTheTreatmentOfCOVID19
  * fullUrl = "https://www.ceosys.de/guidelines/covid19-intensive-care-treatment/dexamethasone/study-citation"
