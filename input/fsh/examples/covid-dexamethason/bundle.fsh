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
  * resource = DexamethasoneApplicationPlan
  * fullUrl = "https://www.ceosys.de/guidelines/covid19-intensive-care-treatment/dexamethasone/intervention-plan"
* entry[interventionActivity][+]
  * resource = DexamethasoneApplicationActivity
  * fullUrl = "https://www.ceosys.de/guidelines/covid19-intensive-care-treatment/dexamethasone/intervention-activity"
* entry[recommendationCitation][+]
  * resource = DexamethasoneRecommendationCitation
  * fullUrl = "https://www.ceosys.de/guidelines/covid19-intensive-care-treatment/dexamethasone/recommendation-citation"
* entry[populationGroup][+]
  * resource = PopulationCriticallyIllCOVID19Patients
  * fullUrl = "https://www.ceosys.de/guidelines/covid19-intensive-care-treatment/population-group"
* entry[PICOEvidenceVariable][+]
  * resource = PopulationCOVID19OxygenSaturationLt90
  * fullUrl = "https://www.ceosys.de/guidelines/covid19-intensive-care-treatment/evidence-variable-oxygen-saturation-lt-90"
* entry[PICOEvidenceVariable][+]
  * resource = PopulationCOVID19RespiratoryRateGt30
  * fullUrl = "https://www.ceosys.de/guidelines/covid19-intensive-care-treatment/evidence-variable-respiratory-rate-gt-30"
* entry[PICOEvidenceVariable][+]
  * resource = PopulationCOVID19ARDS
  * fullUrl = "https://www.ceosys.de/guidelines/covid19-intensive-care-treatment/evidence-variable-ards"
* entry[PICOEvidenceVariable][+]
  * resource = PopulationCOVID19Sepsis
  * fullUrl = "https://www.ceosys.de/guidelines/covid19-intensive-care-treatment/evidence-variable-sepsis"
* entry[PICOEvidenceVariable][+]
  * resource = PopulationCOVID19Ventilated
  * fullUrl = "https://www.ceosys.de/guidelines/covid19-intensive-care-treatment/evidence-variable-ventilated"
* entry[PICOEvidenceVariable][+]
  * resource = PopulationCOVID19VasopressorTherapy
  * fullUrl = "https://www.ceosys.de/guidelines/covid19-intensive-care-treatment/evidence-variable-vasopressor-therapy"
* entry[recommendationRating][+]
  * resource = DexamethasoneRecommendationRating
  * fullUrl = "https://www.ceosys.de/guidelines/covid19-intensive-care-treatment/dexamethasone/recommendation-rating"
* entry[listOutcomeEvidence][+]
  * resource = DexamaethasoneRecommendationOutcomes
  * fullUrl = "https://www.ceosys.de/guidelines/covid19-intensive-care-treatment/dexamethasone/list-outcome-evidence"
