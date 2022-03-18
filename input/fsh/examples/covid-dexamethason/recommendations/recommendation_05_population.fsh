/**************/
/* Population */
/**************/
Instance: PopulationCriticallyIllCOVID19Patients
InstanceOf: population-group
Usage: #example
Title: "Population: Critically Ill COVID-19 Patients"
Description: "Population for guideline from https://app.magicapp.org/#/guidelines / 5691"
* name = "Population_CriticallyIll_COVID19_Patients"
* actual = false
* characteristic[+]
  * code = $cochrane-pico#Population
  * valueReference = Reference(PopulationCOVID19Ventilated)
* characteristic[=].exclude = false

/*********************/
/* Population Groups */
/*********************/
Instance: PopulationCOVID19Ventilated
InstanceOf: population-evidence-variable
Usage: #example
Title: "Population: COVID19 Ventilated"
Description: "Population for guideline from https://app.magicapp.org/#/guidelines / 5691 with characteristics: COVID-19, Oxygen-Saturation<90"
* identifier.value = "Ventilated"
* identifier.system = $ceosys
* status = #active
* name = "Population_COVID19_Ventilated"
* description = "Population for guideline from https://app.magicapp.org/#/guidelines / 5691 with characteristics: COVID-19, Oxygen-Saturation&lt;90"
* characteristic[+]
  * linkId = "covid19"
  * typeCodeableConcept.coding[cochrane] = $cochrane-ld#NrO30O5ZnYIkjE "COVID-19"
  * typeCodeableConcept.coding[sct] = $sct#840539006 "Disease caused by Severe acute respiratory syndrome coronavirus 2 (disorder)"
  * valueBoolean = true
* characteristic[=].exclude = false
* characteristic[+]
  * definitionCodeableConcept = $sct#89780004 "Combination" // TODO: is this concept correct? Rather use own code?
  * combination
    * code = #any-of
    * characteristic[+]
      * linkId = "oxy-administration-nasal-cannula"
      * typeCodeableConcept.coding[sct] = $sct#371907003 "Oxygen administration by nasal cannula (procedure)"
      * valueBoolean = true
      * timeFromEvent
        * eventId = "covid19"
        * quantity = 0 'd'
    * characteristic[=].exclude = false
    * characteristic[+]
      * linkId = "noninvasive-ventilation"
      * typeCodeableConcept.coding[sct] = $sct#428311008 "Noninvasive ventilation (procedure)"
      * valueBoolean = true
      * timeFromEvent
        * eventId = "covid19"
        * quantity = 0 'd'
    * characteristic[=].exclude = false
    * characteristic[+]
      * linkId = "artificial-respiration"
      * typeCodeableConcept.coding[sct] = $sct#40617009 "Artificial respiration (procedure)"
      * valueBoolean = true
      * timeFromEvent
        * eventId = "covid19"
        * quantity = 0 'd'
    * characteristic[=].exclude = false
* characteristic[=].exclude = false
