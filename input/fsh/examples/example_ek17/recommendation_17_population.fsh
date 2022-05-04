/**************/
/* Population */
/**************/
Instance: PopHospitalisedNonICUCOVID19PatientsWOThrombosisWITHHighRisk
InstanceOf: population-group
Usage: #example
Title: "Population: Rec17EK, Hospitalised COVID-19 patients without the need for intensive care therapy, without venous thrombosis, considered high-risk for developing venous thrombosis"
Description: "Hospitalised COVID-19 patients without the need for intensive care therapy, without venous thrombosis, considered high-risk for developing venous thrombosis"
* name = "HospitalisedNonICUCOVID19PatientsWOThrombosisWITHHighRisk"
* actual = false
* characteristic[+]
  * code = $cochrane-pico#Population
  * valueReference = Reference(PopGroupHospitalisedNonICUCOVID19PatientsWOThrombosisWITHHighRisk)
* characteristic[=].exclude = false
// extremely difficult to model, as "high-risk" is not very specific...

Instance: PopHospitalisedNonICUCOVID19PatientsWOThrombosisWOHighRisk
InstanceOf: population-group
Usage: #example
Title: "Population: Rec17EK, Hospitalised COVID-19 patients without the need for intensive care therapy, without venous thrombosis, NOT considered high-risk for developing venous thrombosis"
Description: "Hospitalised COVID-19 patients without the need for intensive care therapy, without venous thrombosis, NOT considered high-risk for developing venous thrombosis"
* name = "HospitalisedNonICUCOVID19PatientsWOThrombosisWOHighRisk"
* actual = false
* characteristic[+]
  * code = $cochrane-pico#Population
  * valueReference = Reference(PopGroupHospitalisedNonICUCOVID19PatientsWOThrombosisWOHighRisk)
* characteristic[=].exclude = false

Instance: PopHospitalisedCOVID19PatientsWITHThrombosis
InstanceOf: population-group
Usage: #example
Title: "Population: Hospitalised COVID-19 Patients with (venous) thrombosis"
Description: "Hospitalised COVID-19 Patients with (venous) thrombosis"
* name = "HospitalisedCOVID19PatientsWITHThrombosis"
* actual = false
* characteristic[+]
  * code = $cochrane-pico#Population
  * valueReference = Reference(PopGroupHospitalisedCOVID19PatientsWITHThrombosis)
* characteristic[=].exclude = false
// possible duplicate with other recommendations
// I've included this population here, as of now, we don't really know if we'll have one big "population definition" file in the end, right?


/*********************/
/* Population Groups */
/*********************/
Instance: PopGroupHospitalisedNonICUCOVID19PatientsWOThrombosisWITHHighRisk
InstanceOf: population-evidence-variable
Usage: #example
Title: "Population: Rec17EK, Hospitalised COVID-19 patients without the need for intensive care therapy, without venous thrombosis, considered high-risk for developing venous thrombosis"
Description: "Population for recommendation 17 from guideline from https://www.awmf.org/leitlinien/detail/ll/113-001LG.html with characteristics: without the need for intensive care therapy, without venous thrombosis, considered high-risk for developing venous thrombosis"
* identifier.value = "WOThrombosisWITHHighRisk"
// difficult decision, this is a suggestion
* identifier.system = $ceosys
// which values are actually allowed?
* status = #active
* name = "COVID19_patients_NOT_ICU_without_venous_thrombosis_with_high_risk"
* description = "Population for recommendation 17 from guideline from https://www.awmf.org/leitlinien/detail/ll/113-001LG.html with characteristics: without the need for intensive care therapy, without venous thrombosis, considered high-risk for developing venous thrombosis"

// Include patients with COVID-19 that are considered high-risk (here: ONLY high D-Dimer is counted as such!!!) and that are not treated on ICU currently
  // include covid-19 patients
* characteristic[+].defByCombination
  * code = #all-of
  * characteristic[+]
    * linkId = "covid19"
    * defByTypeAndValue
      * typeCodeableConcept.coding[snomed] = $sct#840539006 "Disease caused by severe acute respiratory syndrome coronavirus 2 (disorder)"
      * valueBoolean = true
  * characteristic[=].exclude = false
  // include patients with d-dimer of higher than 2
  * characteristic[+]
    * linkId = "d-dimer"
    * defByTypeAndValue
    // probably wrong.... below is a kind of pseudocode after the example here http://build.fhir.org/datatypes-examples.html#Quantity
    // missing "Quantity", for example, 
      * typeCodeableConcept.coding[snomed] = $sct#25607008 "D-dimer (substance)"
      * valueRange.low
      * value = "2" 
      * unit = "mg/l"
      * system = $ucum
      * code = "mg/l"
      // not sure we need "unit" and "code"? "mg/l" actually is a valid ucum code :-) 
  * characteristic[=].exclude = false
  // exclude patients on ICU
  * characteristic[+]
    * linkId = "non_ICU"
    * defByTypeAndValue
      * typeCodeableConcept.coding[snomed] = $sct#309904001 "Intensive care unit (environment)"
      * valueBoolean = true
      * characteristic[=].exclude = true
* characteristic[=].exclude = false

// Exclude patients having Thrombosis
* characteristic[+]
  * linkId = "venous thrombosis"
  * defByTypeAndValue
    * typeCodeableConcept.coding[snomed] = $sct#111293003 "Venous thrombosis (disorder)"
    * valueBoolean = true
* characteristic[=].exclude = false


Instance: PopGroupHospitalisedCOVID19PatientsWOVenousThrombosisWITHCI
InstanceOf: population-evidence-variable
Usage: #example
Title: "Population: Hospitalised COVID-19 patients without (venous) thrombosis, existing contraindications to LWMH"
Description: "Population for guideline from https://www.awmf.org/leitlinien/detail/ll/113-001LG.html with characteristics: COVID-19 patients without (venous) thrombosis, existing contraindications to LWMH"
* identifier.value = "WOThrombosisWITHCI"
* identifier.system = $ceosys
// which values are actually allowed?
* status = #active
* name = "COVID19_patients_without_venous_thrombosis_with_contraindications"
* description = "Population for guideline from https://www.awmf.org/leitlinien/detail/ll/113-001LG.html with characteristics: COVID-19 patients without (venous) thrombosis, existing contraindications to LWMH"

// Include COVID-19 patients without thrombosis

// characteristic-KLAMMER BEGINN all-of
* characteristic[+].defByCombination
* code = #all-of
  * characteristic[+].defByCombination
  * code = #all-of
    * characteristic[+]
      * linkId = "covid19"
      * defByTypeAndValue
        * typeCodeableConcept.coding[snomed] = $sct#840539006 "COVID-19"
        * valueBoolean = true
    * characteristic[=].exclude = false
    * characteristic[+]
      * linkId = "venous thrombosis"
      * defByTypeAndValue
        * typeCodeableConcept.coding[snomed] = $sct#111293003 "Venous Thrombosis"
        * valueBoolean = true
    * characteristic[=].exclude = true
  * characteristic[=].exclude = false

  // include patients with any of the following contraindications (same as above)

  * characteristic[+].defByCombination
    * code = #any-of
    * characteristic[+]
        * linkId = "hit2"
        * defByTypeAndValue
          * typeCodeableConcept.coding[snomed] = $sct#111588002 "Heparin-induced thrombocytopenia with thrombosis (disorder)"
          * valueBoolean = true
      * characteristic[=].exclude = false
    * characteristic[+]
      * linkId = "heparin_allergy"
      * defByTypeAndValue
        * typeCodeableConcept.coding[snomed] = $sct#294872001 "Allergy to heparin (finding)"
        * valueBoolean = true
      * characteristic[=].exclude = false
    * characteristic[+]
      * linkId = "heparinoid_allergy"
      * defByTypeAndValue
        * typeCodeableConcept.coding[snomed] = $sct#294876003 "Allergy to heparinoid (finding)"
        * valueBoolean = true
      * characteristic[=].exclude = false
    * characteristic[+]
      * linkId = "thrombocytopenia"
      * defByTypeAndValue
        * typeCodeableConcept.coding[snomed] = $sct#302215000 " Thrombocytopenic disorder (disorder)"
        * valueBoolean = true
      * characteristic[=].exclude = false
  * characteristic[=].exclude = false
* characteristic[=].exclude = false

Instance: PopGroupHospitalisedCOVID19PatientsWITHThrombosis
InstanceOf: population-evidence-variable
Usage: #example
Title: "Population: Hospitalised COVID-19 patients with (venous) thrombosis"
Description: "Population for guideline from https://www.awmf.org/leitlinien/detail/ll/113-001LG.html with characteristics: COVID-19 patients with (venous) thrombosis"
* identifier.value = "WITHThrombosis"
* identifier.system = $ceosys
* status = #active
* name = "COVID19_patients_with_venous_thrombosis"
* description = "Population for guideline from https://www.awmf.org/leitlinien/detail/ll/113-001LG.html with characteristics: COVID-19 patients with (venous) thrombosis"

// Include COVID-19 patients without thrombosis
* characteristic[+].defByCombination
* code = #all-of
  * characteristic[+]
    * linkId = "covid19"
    * defByTypeAndValue
      * typeCodeableConcept.coding[snomed] = $sct#840539006 "COVID-19"
      * valueBoolean = true
  * characteristic[=].exclude = false
  * characteristic[+]
    * linkId = "venous thrombosis"
    * defByTypeAndValue
      * typeCodeableConcept.coding[snomed] = $sct#111293003 "Venous Thrombosis"
      * valueBoolean = true
  * characteristic[=].exclude = false
* characteristic[=].exclude = false
