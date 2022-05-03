/*********************/
/* Intervention Plan */
/*********************/
Instance: COVID19VentilatedPatientsDexamethasoneApplicationPlan
InstanceOf: recommendation-plan
Usage: #example
Title: "Dexamethasone Application"
Description: "Application of Dexamethasone: 6 mg once per day for 10 days p.o. or i.v. for ventilated COVID-19 patients"
* name = "Dexamaethasone_Application"
* title = "Dexamaethasone Application in ventilated COVID-19 patients"
* version = "4.0"
* date = "2021-12-12"
* status = #active
* description = "Application of Dexamethasone: 6 mg once per day for 10 days p.o. or i.v. for ventilated COVID-19 patients"
* subjectCanonical = Canonical(PopulationCOVID19Ventilated)
* action[+]
  * definitionCanonical = Canonical(DexamethasoneApplicationActionOral)
  * selectionBehavior = #exactly-one
* action[+]
  * definitionCanonical = Canonical(DexamethasoneApplicationActionIntravenous)
  * selectionBehavior = #exactly-one
* relatedArtifact[recommendationJustification].resourceReference = Reference(DexamethasoneRecommendationJustification)
* relatedArtifact[recommendationCitation].resourceReference = Reference(DexamethasoneRecommendationCitation)
* relatedArtifact[guidelineCitation].resourceReference = Reference(COVID19IntensiveCareTreatmentGuidelineCitation)

Instance: COVID19NonVentilatedPatientsDexamethasoneApplicationPlan
InstanceOf: recommendation-plan
Usage: #example
Title: "No dexamethasone application for non-ventilated COVID-19 patients"
Description: "No application of Dexamethasone for non-ventilated COVID-19 patients"
* name = "No_Dexamaethasone_Application"
* title = "No Dexamaethasone Application for non-ventilated COVID-19 patients"
* version = "4.0"
* date = "2021-12-12"
* status = #active
* description = "No Dexamaethasone Application for non-ventilated COVID19 patients"
* subjectCanonical = Canonical(PopulationCOVID19NonVentilated)
* action[+]
  * definitionCanonical = Canonical(NoDexamethasoneApplication)
  * selectionBehavior = #exactly-one
* relatedArtifact[recommendationJustification].resourceReference = Reference(DexamethasoneRecommendationJustification)
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
/* Intervention Actions  */
/*************************/
Instance: DexamethasoneApplicationActionOral
InstanceOf: recommendation-action
Usage: #example
Title: "Dexamethasone Application (Oral)"
Description: "Application of Dexamethasone: 6 mg once per day for 10 days (oral route)"
* name = "DexamethasoneApplicationActionOral"
* url = "https://www.ceosys.de/fhir/canonical/recommendation-action/dexamethasone-application-oral"
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

Instance: DexamethasoneApplicationActionIntravenous
InstanceOf: recommendation-action
Usage: #example
Title: "Dexamethasone Application (Intravenous)"
Description: "Application of Dexamethasone: 6 mg once per day for 10 days (intravenous route)"
* name = "DexamethasoneApplicationActionIntravenous"
* url = "https://www.ceosys.de/fhir/canonical/recommendation-action/dexamethasone-application-intravenous"
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

Instance: NoDexamethasoneApplication
InstanceOf: recommendation-action
Usage: #example
Title: "No Dexamethasone Application"
Description: "No Application of Dexamethasone"
* name = "NoDexamethasoneApplicationActivity"
* url = "https://www.ceosys.de/fhir/canonical/recommendation-action/no-dexamethasone-application"
* status = #active
* code = $sct#182832007 "Procedure related to management of drug administration (procedure)"
* productCodeableConcept = $sct#372584003 "Dexamethasone (substance)"
* doNotPerform = true
