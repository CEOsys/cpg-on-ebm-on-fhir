/**************/
/* Population */
/**************/
Instance: PopulationCriticallyIllCOVID19Patients
InstanceOf: population-group
Usage: #example
Title: "Population: Critically Ill COVID-19 Patients"
Description: "Population for guideline from https://app.magicapp.org/#/guidelines / 5062"
* name = "Population_CriticallyIll_COVID19_Patients"
* actual = false
* characteristic[+]
  * code = $cochrane-pico#Population
  * valueReference = Reference(PopulationCOVID19OxygenSaturationLt90)
* characteristic[=].exclude = false
* characteristic[+]
  * code = $cochrane-pico#Population
  * valueReference = Reference(PopulationCOVID19RespiratoryRateGt30)
* characteristic[=].exclude = false
* characteristic[+]
  * code = $cochrane-pico#Population
  * valueReference = Reference(PopulationCOVID19ARDS)
* characteristic[=].exclude = false
* characteristic[+]
  * code = $cochrane-pico#Population
  * valueReference = Reference(PopulationCOVID19Sepsis)
* characteristic[=].exclude = false
* characteristic[+]
  * code = $cochrane-pico#Population
  * valueReference = Reference(PopulationCOVID19Ventilated)
* characteristic[=].exclude = false
* characteristic[+]
  * code = $cochrane-pico#Population
  * valueReference = Reference(PopulationCOVID19VasopressorTherapy)
* characteristic[=].exclude = false

/*********************/
/* Population Groups */
/*********************/
Instance: PopulationCOVID19OxygenSaturationLt90
InstanceOf: population-evidence-variable
Usage: #example
Title: "Population: COVID19 / Oxygen saturation < 90%"
Description: "Population for guideline from https://app.magicapp.org/#/guidelines / 5062 with characteristics: COVID-19, Oxygen-Saturation<90"
* identifier.value = "Oxygen-Saturation<90"
* identifier.system = $ceosys
* status = #active
* name = "Population_COVID19_Oxygen_Saturation_lt_90_percent"
* description = "Population for guideline from https://app.magicapp.org/#/guidelines / 5062 with characteristics: COVID-19, Oxygen-Saturation&lt;90"
* characteristic[+]
  * linkId = "covid19"
  * typeCodeableConcept.coding[cochrane] = $cochrane-ld#NrO30O5ZnYIkjE "COVID-19"
  * typeCodeableConcept.coding[sct] = $sct#840539006 "Disease caused by Severe acute respiratory syndrome coronavirus 2 (disorder)"
  * valueBoolean = true
* characteristic[=].exclude = false
* characteristic[+]
  * linkId = "oxy-saturation"
  * typeCodeableConcept.coding[cochrane] = $cochrane-ld#r4hp3qjmm9l6 "Oxygen Saturation"
  * typeCodeableConcept.coding[sct] = $sct#431314004 "Peripheral oxygen saturation (observable entity)"
  * valueRange.high = 90 '%' "%"
  * timeFromEvent
    * eventId = "covid19"
    * quantity = 0 'd'
* characteristic[=].exclude = false

Instance: PopulationCOVID19RespiratoryRateGt30
InstanceOf: population-evidence-variable
Usage: #example
Title: "Population: COVID19 / Respiratory Rate > 30 /min"
Description: "Population for guideline from https://app.magicapp.org/#/guidelines / 5062 with characteristics: COVID-19, Respiratory Rate > 30/min"
* identifier.value = "Respiratory-Rate > 30/min"
* identifier.system = $ceosys
* status = #active
* name = "Population_COVID19_Respiratory_Rate_lt_30_per_min"
* description = "Population for guideline from https://app.magicapp.org/#/guidelines / 5062 with characteristics: COVID-19, Respiratory Rate &gt; 30/min"
* characteristic[+]
  * typeCodeableConcept.coding[cochrane] = $cochrane-ld#NrO30O5ZnYIkjE "COVID-19"
  * typeCodeableConcept.coding[sct] = $sct#840539006 "Disease caused by Severe acute respiratory syndrome coronavirus 2 (disorder)"
  * valueBoolean = true
* characteristic[=].exclude = false
* characteristic[+]
  * typeCodeableConcept.coding[cochrane] = $cochrane-ld#r4hp3qg8yn71 "Respiratory Rate"
  * typeCodeableConcept.coding[sct] = $sct#86290005 "Respiratory rate (observable entity)"
  * valueRange.low = 30 '{breaths}/min' "{breaths}/min"
* characteristic[=].exclude = false

Instance: PopulationCOVID19ARDS
InstanceOf: population-evidence-variable
Usage: #example
Title: "Population: COVID19 / ARDS"
Description: "Population for guideline from https://app.magicapp.org/#/guidelines / 5062 with characteristics: COVID-19, ARDS"
* identifier.value = "ARDS"
* identifier.system = $ceosys
* status = #active
* name = "Population_COVID19_ARDS"
* description = "Population for guideline from https://app.magicapp.org/#/guidelines / 5062 with characteristics: COVID-19, ARDS"
* characteristic[+]
  * typeCodeableConcept.coding[cochrane] = $cochrane-ld#NrO30O5ZnYIkjE "COVID-19"
  * typeCodeableConcept.coding[sct] = $sct#840539006 "Disease caused by Severe acute respiratory syndrome coronavirus 2 (disorder)"
  * valueBoolean = true
* characteristic[=].exclude = false
* characteristic[+]
  * typeCodeableConcept.coding[cochrane] = $cochrane-ld#r4hp3pkr3yl3 "Acute Respiratory Distress Syndrome"
  * typeCodeableConcept.coding[sct] = $sct#67782005 "Acute respiratory distress syndrome (disorder)"
  * valueBoolean = true
* characteristic[=].exclude = false

Instance: PopulationCOVID19Sepsis
InstanceOf: population-evidence-variable
Usage: #example
Title: "Population: COVID19 / Sepsis"
Description: "Population for guideline from https://app.magicapp.org/#/guidelines / 5062 with characteristics: COVID-19, Sepsis"
* identifier.value = "Sepsis"
* identifier.system = $ceosys
* status = #active
* name = "Population_COVID19_Sepsis"
* description = "Population for guideline from https://app.magicapp.org/#/guidelines / 5062 with characteristics: COVID-19, Sepsis"
* characteristic[+]
  * typeCodeableConcept.coding[cochrane] = $cochrane-ld#NrO30O5ZnYIkjE "COVID-19"
  * typeCodeableConcept.coding[sct] = $sct#840539006 "Disease caused by Severe acute respiratory syndrome coronavirus 2 (disorder)"
  * valueBoolean = true
* characteristic[=].exclude = false
* characteristic[+]
  * typeCodeableConcept.coding[cochrane] = $cochrane-ld#r4hp3p86xjp4 "Sepsis"
  * typeCodeableConcept.coding[sct] = $sct#91302008 "Sepsis (disorder)"
  * valueBoolean = true
* characteristic[=].exclude = false

Instance: PopulationCOVID19Ventilated
InstanceOf: population-evidence-variable
Usage: #example
Title: "Population COVID19 Ventilated"
Description: "Population for guideline from https://app.magicapp.org/#/guidelines / 5062 with characteristics: COVID-19, Ventilated"
* identifier.value = "Ventilated"
* identifier.system = $ceosys
* status = #active
* name = "Population_COVID19_Ventilated"
* description = "Population for guideline from https://app.magicapp.org/#/guidelines / 5062 with characteristics: COVID-19, Ventilated"
* characteristic[+]
  * typeCodeableConcept.coding[cochrane] = $cochrane-ld#NrO30O5ZnYIkjE "COVID-19"
  * typeCodeableConcept.coding[sct] = $sct#840539006 "Disease caused by Severe acute respiratory syndrome coronavirus 2 (disorder)"
  * valueBoolean = true
* characteristic[=].exclude = false
* characteristic[+]
  * typeCodeableConcept.coding[cochrane] = $cochrane-ld#r4hp38jjqmxs "Ventilation Finding"
  * typeCodeableConcept.coding[sct] = $sct#128258000 "Ventilation Finding (finding)"
  * valueCodeableConcept.coding[cochrane] = $cochrane-ld#r4hp399q34v1 "Patient Ventilated"
  * valueCodeableConcept.coding[sct] = $sct#371820004 "Patient ventilated (finding)"
* characteristic[=].exclude = false

Instance: PopulationCOVID19VasopressorTherapy
InstanceOf: population-evidence-variable
Usage: #example
Title: "Population COVID19 Vasopressor Therapy"
Description: "Population for guideline from https://app.magicapp.org/#/guidelines / 5062 with characteristics: COVID-19, Vasopressor Therapy"
* identifier.value = "Vasopressor Therapy"
* identifier.system = $ceosys
* status = #active
* name = "Population_COVID19_Vasopressor_Therapy"
* description = "Population for guideline from https://app.magicapp.org/#/guidelines / 5062 with characteristics: COVID-19, Vasopressor Therapy"
* characteristic[+]
  * typeCodeableConcept.coding[cochrane] = $cochrane-ld#NrO30O5ZnYIkjE "COVID-19"
  * typeCodeableConcept.coding[sct] = $sct#840539006 "Disease caused by Severe acute respiratory syndrome coronavirus 2 (disorder)"
  * valueBoolean = true
* characteristic[=].exclude = false
* characteristic[+]
  * typeCodeableConcept = $sct#870386000 "Vasopressor therapy (procedure)"
  * valueBoolean = true
* characteristic[=].exclude = false
