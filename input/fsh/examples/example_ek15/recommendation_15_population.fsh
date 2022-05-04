/**************/
/* Population */
/**************/
Instance: PopHospitalisedCOVID19PatientsWOVenousThrombosisWOCI
InstanceOf: recommendation-eligibility-criteria
Usage: #example
Title: "Population: Hospitalised COVID-19 patients without (venous) thrombosis and without contraindications to LWMH"
Description: "Population for recommendation 15: Hospitalised COVID-19 patients without (venous) thrombosis and without contraindications to LWMH"
* name = "HospitalisedCOVID19PatientsWOVenousThrombosisWOCI"
* actual = false
// * characteristic[+]
//   * code = $cochrane-pico#Population
// * characteristic[=].exclude = false
//  do we need this characteristic anymore: $ochrane-pico#Population
* identifier.value = "WOThrombosisWOCI"
* identifier.system = $ceosys
// which values are actually allowed?
* status = #active
* name = "COVID19_patients_without_venous_thrombosis_without_contraindications"
* description = "Population for guideline from https://www.awmf.org/leitlinien/detail/ll/113-001LG.html with characteristics: COVID-19 patients without (venous) thrombosis and without contraindications to LWMH"

// Beginning of conditions to include patients
* characteristic[+]
  * linkId = "covid19"
  * defByTypeAndValue
    * typeCodeableConcept.coding[snomed] = $sct#840539006 "COVID-19"
    * valueBoolean = true
* characteristic[=].exclude = false

// Exclude patients with Thrombosis
* characteristic[+]
  * linkId = "venous thrombosis"
  * defByTypeAndValue
    * typeCodeableConcept.coding[snomed] = $sct#111293003 "Venous Thrombosis"
    * valueBoolean = true
* characteristic[=].exclude = true

// Exclude patients with any of the following contraindications
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
      * typeCodeableConcept.coding[snomed] = $sct#302215000 "Thrombocytopenic disorder (disorder)"
      * valueBoolean = true
    * characteristic[=].exclude = false
* characteristic[=].exclude = true


Instance: PopHospitalisedCOVID19PatientsWOVenousThrombosisWITHCI
InstanceOf: recommendation-eligibility-criteria
Usage: #example
Title: "Population: Hospitalised COVID-19 patients without (venous) thrombosis, existing contraindications to LWMH"
Description: "Population for recommendation 15: Hospitalised COVID-19 patients without (venous) thrombosis, existing contraindications to LWMH"
* name = "HospitalisedCOVID19PatientsWOVenousThrombosisWITHCI"
* actual = false
// * characteristic[+]
//   * code = $cochrane-pico#Population
// * characteristic[=].exclude = false
//  see above, still needed?
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


Instance: PopHospitalisedCOVID19PatientsWITHThrombosis
InstanceOf: recommendation-eligibility-criteria
Usage: #example
Title: "Population: Hospitalised COVID-19 Patients with (venous) thrombosis"
Description: "Population for recommendation 15: Hospitalised COVID-19 Patients with (venous) thrombosis"
* name = "HospitalisedCOVID19PatientsWITHThrombosis"
* actual = false
// * characteristic[+]
//   * code = $cochrane-pico#Population
// * characteristic[=].exclude = false
// see above, still needed?
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
