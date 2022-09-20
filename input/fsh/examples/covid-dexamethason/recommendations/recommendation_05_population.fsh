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
* insert canonical-url(example/population/Population_COVID19_Ventilated)
* description = "Population for guideline from https://app.magicapp.org/#/guidelines / 5691 with characteristics: COVID-19, Ventilated"
* characteristic[0][condition]
  * linkId = "covid19"
  * definitionByTypeAndValue
    * valueCodeableConcept = $sct#840539006 "Disease caused by Severe acute respiratory syndrome coronavirus 2 (disorder)"
* characteristic[1].definitionByCombination
  * code = #any-of
  * characteristic[procedure][+]
    * linkId = "oxy-administration-nasal-cannula"
    * definitionByTypeAndValue
      * valueCodeableConcept = $sct#371907003 "Oxygen administration by nasal cannula (procedure)"
    * timeFromEvent
      * eventId = "covid19"
      * quantity = 0 'd'
  * characteristic[procedure][=].exclude = false
  * characteristic[procedure][+]
    * linkId = "noninvasive-ventilation"
    * definitionByTypeAndValue
      * valueCodeableConcept = $sct#428311008 "Non-invasive ventilation (regime/therapy)"
    * timeFromEvent
      * eventId = "covid19"
      * quantity = 0 'd'
  * characteristic[procedure][=].exclude = false
  * characteristic[procedure][+]
    * linkId = "artificial-respiration"
    * definitionByTypeAndValue
      * valueCodeableConcept = $sct#40617009 "Artificial respiration (procedure)"
    * timeFromEvent
      * eventId = "covid19"
      * quantity = 0 'd'
  * characteristic[procedure][=].exclude = false
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
* insert canonical-url(example/population/Population_COVID19_NonVentilated)
* description = "Population for guideline from https://app.magicapp.org/#/guidelines / 5691 with characteristics: COVID-19, not ventilated"
* characteristic[0][condition]
  * linkId = "covid19"
  * definitionByTypeAndValue
    * valueCodeableConcept = $sct#840539006 "Disease caused by Severe acute respiratory syndrome coronavirus 2 (disorder)"
* characteristic[0][condition].exclude = false
* characteristic[1].definitionByCombination
  * code = #any-of
  * characteristic[procedure][+]
    * linkId = "oxy-administration-nasal-cannula"
    * definitionByTypeAndValue
      * valueCodeableConcept = $sct#371907003 "Oxygen administration by nasal cannula (procedure)"
    * timeFromEvent
      * eventId = "covid19"
      * quantity = 0 'd'
  * characteristic[procedure][=].exclude = false
  * characteristic[procedure][+]
    * linkId = "noninvasive-ventilation"
    * definitionByTypeAndValue
      * valueCodeableConcept = $sct#428311008 "Non-invasive ventilation (regime/therapy)"
    * timeFromEvent
      * eventId = "covid19"
      * quantity = 0 'd'
  * characteristic[procedure][=].exclude = false
  * characteristic[procedure][+]
    * linkId = "artificial-respiration"
    * definitionByTypeAndValue
      * valueCodeableConcept = $sct#40617009 "Artificial respiration (procedure)"
    * timeFromEvent
      * eventId = "covid19"
      * quantity = 0 'd'
  * characteristic[procedure][=].exclude = false
* characteristic[=].exclude = true
