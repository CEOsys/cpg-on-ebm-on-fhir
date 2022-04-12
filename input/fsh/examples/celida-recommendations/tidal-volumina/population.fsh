/**************/
/* Population */
/**************/
Instance: PopulationGroupVentilatedCOVID19patientsWithARDS
InstanceOf: population-group
Usage: #example
Title: "Population Group: Ventilated COVID-19 Patients with ARDS"
Description: "" // TODO: add description
//* name = "Population_ModeratlyIll_COVID19_Patients"
* actual = false
* characteristic[+]
  * code = $cochrane-pico#Population
  * valueReference = Reference(PopulationVentilatedCOVID19patientsWithARDS)
* characteristic[=].exclude = false

/*********************/
/* Population Groups */
/*********************/
Instance: PopulationVentilatedCOVID19patientsWithARDS
InstanceOf: population-evidence-variable
Usage: #example
Title: "Population: Ventilated COVID-19 Patients with ARDS"
Description: "" // TODO: add description
* status = #active
* name = "Population_COVID19_Ventilated_With_ARDS"
* description = "Ventilated COVID-19 patients with ARDS"
* characteristic[+].defByCombination
  * code = #all-of
  * characteristic[+]
    * defByTypeAndValue
      * typeCodeableConcept.coding[sct] = $sct#840539006 "Disease caused by Severe acute respiratory syndrome coronavirus 2 (disorder)"
      * valueBoolean = true
  * characteristic[=].exclude = false

  * characteristic[+]
    * defByTypeAndValue
      * typeCodeableConcept.coding[sct] = $sct#40617009 "Artificial respiration (procedure)"
      * valueBoolean = true
  * characteristic[=].exclude = false

  * characteristic[+]
    * defByTypeAndValue
      * typeCodeableConcept.coding[sct] = $sct#67782005 "Acute respiratory distress syndrome (disorder)"
      * valueBoolean = true
  * characteristic[=].exclude = false

* characteristic[=].exclude = false
