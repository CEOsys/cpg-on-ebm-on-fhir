/*********************/
/* Intervention Plan */
/*********************/
Instance: COVID19DexamethasoneApplication
InstanceOf: recommendation
Usage: #example
Title: "Dexamethasone Application"
Description: "Application of Dexamethasone for ventilated patients only"
* name = "Dexamethasone_Application"
* title = "Dexamethasone Application"
* version = "4.0"
* date = "2021-12-12"
* status = #active
* description = "Application of Dexamethasone for ventilated patients only"
* insert canonical-url(example/covid19-dexamethasone-recommendation)
* experimental = true
* publisher = "CPGonEBMonFHIR"
* subjectCanonical = Canonical(PopulationCOVID19Ventilated)
* insert rs-combination-one-or-more
* action[+]
  * title = "Dexamethasone Application"
  * code = $cs-common-process#guideline-based-care
  * description = "Application of Dexamethasone: 6 mg once per day for 10 days p.o. or i.v. for ventilated COVID-19 patients"
  * definitionCanonical = Canonical(COVID19VentilatedPatientsDexamethasoneApplicationPlan)
* action[+]
  * title = "No Dexamethasone Application"
  * code = $cs-common-process#guideline-based-care
  * description = "No Dexamethasone Application for non-ventilated COVID-19 patients"
  * definitionCanonical = Canonical(COVID19NonVentilatedPatientsDexamethasoneApplicationPlan)
* relatedArtifact[recommendationJustification].resourceReference = Reference(DexamethasoneRecommendationJustification)
* relatedArtifact[recommendationCitation].resourceReference = Reference(DexamethasoneRecommendationCitation)
* relatedArtifact[guidelineCitation].resourceReference = Reference(COVID19IntensiveCareTreatmentGuidelineCitation)

Instance: COVID19VentilatedPatientsDexamethasoneApplicationPlan
InstanceOf: recommendation-plan
Usage: #example
Title: "Dexamethasone Application"
Description: "Application of Dexamethasone: 6 mg once per day for 10 days p.o. or i.v. for ventilated COVID-19 patients"
* name = "Dexamethasone_Application"
* title = "Dexamethasone Application in ventilated COVID-19 patients"
* version = "4.0"
* date = "2021-12-12"
* status = #active
* description = "Application of Dexamethasone: 6 mg once per day for 10 days p.o. or i.v. for ventilated COVID-19 patients"
* insert canonical-url(example/covid19-ventilated-patients-dexamethasone-application-plan)
* experimental = true
* publisher = "CPGonEBMonFHIR"
* subjectCanonical = Canonical(PopulationCOVID19Ventilated)
* extension[partOf].valueCanonical = Canonical(COVID19DexamethasoneApplication)
* insert rs-combination-exactly(1)
* action[drugAdministration][+]
  * definitionCanonical = Canonical(DexamethasoneApplicationActionOral)
* action[drugAdministration][+]
  * definitionCanonical = Canonical(DexamethasoneApplicationActionIntravenous)

Instance: COVID19NonVentilatedPatientsDexamethasoneApplicationPlan
InstanceOf: recommendation-plan
Usage: #example
Title: "No dexamethasone application for non-ventilated COVID-19 patients"
Description: "No application of Dexamethasone for non-ventilated COVID-19 patients"
* name = "No_Dexamethasone_Application"
* title = "No Dexamethasone Application for non-ventilated COVID-19 patients"
* version = "4.0"
* date = "2021-12-12"
* status = #active
* description = "No Dexamethasone Application for non-ventilated COVID19 patients"
* insert canonical-url(example/covid19-non-ventilated-patients-no-dexamethasone-application-plan)
* experimental = true
* publisher = "CPGonEBMonFHIR"
* subjectCanonical = Canonical(PopulationCOVID19NonVentilated)
* extension[partOf].valueCanonical = Canonical(COVID19DexamethasoneApplication)
* insert rs-combination-exactly(1)
* action[drugAdministration][+]
  * definitionCanonical = Canonical(NoDexamethasoneApplication)

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
InstanceOf: drug-administration-action
Usage: #example
Title: "Dexamethasone Application (Oral)"
Description: "Application of Dexamethasone: 6 mg once per day for 10 days (oral route)"
* name = "DexamethasoneApplicationActionOral"
* insert canonical-url(example/recommendation-action/dexamethasone-application-oral)
* version = "1.0"
* experimental = true
* publisher = "CPGonEBMonFHIR"
* description = "Application of Dexamethasone: 6 mg once per day for 10 days (oral route)"
* status = #active
* kind = $cs-fhir-types#MedicationRequest "MedicationRequest"
* productCodeableConcept
  * coding[atcde] = $atcde#C05AA09 "Dexamethason"
  * coding[sct] = $sct#372584003 "Dexamethasone (substance)"
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
InstanceOf: drug-administration-action
Usage: #example
Title: "Dexamethasone Application (Intravenous)"
Description: "Application of Dexamethasone: 6 mg once per day for 10 days (intravenous route)"
* name = "DexamethasoneApplicationActionIntravenous"
* insert canonical-url(example/recommendation-action/dexamethasone-application-intravenous)
* version = "1.0"
* experimental = true
* publisher = "CPGonEBMonFHIR"
* description = "Application of Dexamethasone: 6 mg once per day for 10 days (intravenous route)"
* status = #active
* kind = $cs-fhir-types#MedicationRequest "MedicationRequest"
* productCodeableConcept
  * coding[atcde] = $atcde#C05AA09 "Dexamethason"
  * coding[sct] = $sct#372584003 "Dexamethasone (substance)"
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
InstanceOf: drug-administration-action
Usage: #example
Title: "No Dexamethasone Application"
Description: "No Application of Dexamethasone"
* name = "NoDexamethasoneApplicationActivity"
* insert canonical-url(example/recommendation-action/no-dexamethasone-application)
* version = "1.0"
* experimental = true
* publisher = "CPGonEBMonFHIR"
* description = "No Application of Dexamethasone"
* status = #active
* kind = $cs-fhir-types#MedicationRequest "MedicationRequest"
* productCodeableConcept
  * coding[atcde] = $atcde#C05AA09 "Dexamethason"
  * coding[sct] = $sct#372584003 "Dexamethasone (substance)"
* dosage
  * route = $sct#26643006 "Oral route"
  * doseAndRate
    * doseQuantity = 6 'mg' "mg"
    * rateQuantity = 1 '/d' "/d"
* doNotPerform = true
