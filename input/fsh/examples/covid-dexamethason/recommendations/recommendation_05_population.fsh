/**************/
/* Population */
/**************/
Instance: PopulationCOVID19Ventilated
InstanceOf: recommendation-eligibility-criteria
Usage: #example
Title: "Population: COVID19 Ventilated"
Description: "Population for guideline from https://app.magicapp.org/#/guidelines / 5691 with characteristics: COVID-19, Ventilated"
* identifier.value = "Ventilated"
* identifier.system = $ceosys
* status = #active
* name = "Population_COVID19_Ventilated"
* url = "https://www.ceosys.de/fhir/population/Population_COVID19_Ventilated"
* description = "Population for guideline from https://app.magicapp.org/#/guidelines / 5691 with characteristics: COVID-19, Ventilated"
* characteristic[+]
  * linkId = "covid19"
  * defByTypeAndValue
    * typeCodeableConcept.coding[cochrane] = $cochrane-ld#NrO30O5ZnYIkjE "COVID-19"
    * typeCodeableConcept.coding[sct] = $sct#840539006 "Disease caused by Severe acute respiratory syndrome coronavirus 2 (disorder)"
    * valueBoolean = true
* characteristic[=].exclude = false
* characteristic[+].defByCombination
  * code = #any-of
  * characteristic[+]
    * linkId = "oxy-administration-nasal-cannula"
    * defByTypeAndValue
      * typeCodeableConcept.coding[sct] = $sct#371907003 "Oxygen administration by nasal cannula (procedure)"
      * valueBoolean = true
    * timeFromEvent
      * eventId = "covid19"
      * quantity = 0 'd'
  * characteristic[=].exclude = false
  * characteristic[+]
    * linkId = "noninvasive-ventilation"
    * defByTypeAndValue
      * typeCodeableConcept.coding[sct] = $sct#428311008 "Noninvasive ventilation (procedure)"
      * valueBoolean = true
    * timeFromEvent
      * eventId = "covid19"
      * quantity = 0 'd'
  * characteristic[=].exclude = false
  * characteristic[+]
    * linkId = "artificial-respiration"
    * defByTypeAndValue
      * typeCodeableConcept.coding[sct] = $sct#40617009 "Artificial respiration (procedure)"
      * valueBoolean = true
    * timeFromEvent
      * eventId = "covid19"
      * quantity = 0 'd'
  * characteristic[=].exclude = false
* characteristic[=].exclude = false

Instance: PopulationCOVID19NonVentilated
InstanceOf: recommendation-eligibility-criteria
Usage: #example
Title: "Population: COVID19 Non-Ventilated"
Description: "Population for guideline from https://app.magicapp.org/#/guidelines / 5691 with characteristics: COVID-19, not ventilated"
* identifier.value = "NonVentilated"
* identifier.system = $ceosys
* status = #active
* name = "Population_COVID19_NonVentilated"
* url = "https://www.ceosys.de/fhir/population/Population_COVID19_NonVentilated"
* description = "Population for guideline from https://app.magicapp.org/#/guidelines / 5691 with characteristics: COVID-19, not ventilated"
* characteristic[+]
  * linkId = "covid19"
  * defByTypeAndValue
    * typeCodeableConcept.coding[cochrane] = $cochrane-ld#NrO30O5ZnYIkjE "COVID-19"
    * typeCodeableConcept.coding[sct] = $sct#840539006 "Disease caused by Severe acute respiratory syndrome coronavirus 2 (disorder)"
    * valueBoolean = true
* characteristic[=].exclude = false
* characteristic[+].defByCombination
  * code = #any-of
  * characteristic[+]
    * linkId = "oxy-administration-nasal-cannula"
    * defByTypeAndValue
      * typeCodeableConcept.coding[sct] = $sct#371907003 "Oxygen administration by nasal cannula (procedure)"
      * valueBoolean = true
    * timeFromEvent
      * eventId = "covid19"
      * quantity = 0 'd'
  * characteristic[=].exclude = false
  * characteristic[+]
    * linkId = "noninvasive-ventilation"
    * defByTypeAndValue
      * typeCodeableConcept.coding[sct] = $sct#428311008 "Noninvasive ventilation (procedure)"
      * valueBoolean = true
    * timeFromEvent
      * eventId = "covid19"
      * quantity = 0 'd'
  * characteristic[=].exclude = false
  * characteristic[+]
    * linkId = "artificial-respiration"
    * defByTypeAndValue
      * typeCodeableConcept.coding[sct] = $sct#40617009 "Artificial respiration (procedure)"
      * valueBoolean = true
    * timeFromEvent
      * eventId = "covid19"
      * quantity = 0 'd'
  * characteristic[=].exclude = false
* characteristic[=].exclude = true
