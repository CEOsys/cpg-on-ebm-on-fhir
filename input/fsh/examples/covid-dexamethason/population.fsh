/**************/
/* Population */
/**************/

Instance: PopulationCriticallyIllCOVID19Patients
InstanceOf: population-evidence-variable
Usage: #example
Title: "Population: Critically Ill COVID-19 Patients"
Description: "Population for guideline from https://app.magicapp.org/#/guidelines / 5062"
* identifier.value = "Population_COVID-19_Oxygen-Saturation<90"
* identifier.system = $ceosys
* status = #active // TODO: check if correct
* name = "Population_CriticallyIll_COVID19_Patients"
* description = "Population for guideline from https://app.magicapp.org/#/guidelines / 5062"
* characteristic[+]
  * type = $cochrane-pico#Population
  * definitionReference = Reference(PopulationCOVID19OxygenSaturationLt90)
* characteristic[+]
  * type = $cochrane-pico#Population
  * definitionReference = Reference(PopulationCOVID19RespiratoryRateGt30)
* characteristic[+]
  * type = $cochrane-pico#Population
  * definitionReference = Reference(PopulationCOVID19ARDS)
* characteristic[+]
  * type = $cochrane-pico#Population
  * definitionReference = Reference(PopulationCOVID19Sepsis)
* characteristic[+]
  * type = $cochrane-pico#Population
  * definitionReference = Reference(PopulationCOVID19Ventilated)
* characteristic[+]
  * type = $cochrane-pico#Population
  * definitionReference = Reference(PopulationCOVID19VasopressorTherapy)

/*********************/
/* Population Groups */
/*********************/
Instance: PopulationCOVID19OxygenSaturationLt90
InstanceOf: population-group
Usage: #example
Title: "Population: COVID19 / Oxygen saturation < 90%"
Description: "Population for guideline from https://app.magicapp.org/#/guidelines / 5062 with characteristics: COVID-19, Oxygen-Saturation<90"
* identifier.value = "Oxygen-Saturation<90"
* identifier.system = $ceosys
* type = #person
* actual = false
* name = "Population_COVID19_Oxygen_Saturation_lt_90_percent"
* text
  * status = #generated
  * div = "<p>Population for guideline from https://app.magicapp.org/#/guidelines / 5062 with characteristics: COVID-19, Oxygen-Saturation&lt;90</p>"
* characteristic[+]
  * code.coding[cochrane] = $cochrane-ld#NrO30O5ZnYIkjE "COVID-19"
  * code.coding[sct] = $sct#840539006 "Disease caused by Severe acute respiratory syndrome coronavirus 2 (disorder)"
  * valueBoolean = true
  * extension[linkId].valueId = "covid19"
* characteristic[=].exclude = false
* characteristic[+]
  * code.coding[cochrane] = $cochrane-ld#r4hp3qjmm9l6 "Oxygen Saturation"
  * code.coding[sct] = $sct#431314004 "Peripheral oxygen saturation (observable entity)"
  * valueRange.high = 90 '%' "%"
  * extension[linkId].valueId = "oxy-saturation"
  * extension[relatedCharacteristic]
    * extension[targetId].valueId = "covid19"
    * extension[relationship].valueCode = #concurrent
    * extension[offset].valueDuration = 0 'd'
* characteristic[=].exclude = false

Instance: PopulationCOVID19RespiratoryRateGt30
InstanceOf: population-group
Usage: #example
Title: "Population: COVID19 / Respiratory Rate > 30 /min"
Description: "Population for guideline from https://app.magicapp.org/#/guidelines / 5062 with characteristics: COVID-19, Respiratory Rate > 30/min"
* identifier.value = "Respiratory-Rate > 30/min"
* identifier.system = $ceosys
* type = #person
* actual = false
* name = "Population_COVID19_Respiratory_Rate_lt_30_per_min"
* text
  * status = #generated
  * div = "<p>Population for guideline from https://app.magicapp.org/#/guidelines / 5062 with characteristics: COVID-19, Respiratory Rate &gt; 30/min</p>"
* characteristic[+]
  * code.coding[cochrane] = $cochrane-ld#NrO30O5ZnYIkjE "COVID-19"
  * code.coding[sct] = $sct#840539006 "Disease caused by Severe acute respiratory syndrome coronavirus 2 (disorder)"
  * valueBoolean = true
* characteristic[=].exclude = false
* characteristic[+]
  * code.coding[cochrane] = $cochrane-ld#r4hp3qg8yn71 "Respiratory Rate"
  * code.coding[sct] = $sct#86290005 "Respiratory measure (observable entity)"
  * valueRange.low = 30 '{breaths}/min' "{breaths}/min"
* characteristic[=].exclude = false

Instance: PopulationCOVID19ARDS
InstanceOf: population-group
Usage: #example
Title: "Population: COVID19 / ARDS"
Description: "Population for guideline from https://app.magicapp.org/#/guidelines / 5062 with characteristics: COVID-19, ARDS"
* identifier.value = "ARDS"
* identifier.system = $ceosys
* type = #person
* actual = false
* name = "Population_COVID19_ARDS"
* text
  * status = #generated
  * div = "<p>Population for guideline from https://app.magicapp.org/#/guidelines / 5062 with characteristics: COVID-19, ARDS</p>"
* characteristic[+]
  * code.coding[cochrane] = $cochrane-ld#NrO30O5ZnYIkjE "COVID-19"
  * code.coding[sct] = $sct#840539006 "Disease caused by Severe acute respiratory syndrome coronavirus 2 (disorder)"
  * valueBoolean = true
* characteristic[=].exclude = false
* characteristic[+]
  * code.coding[cochrane] = $cochrane-ld#r4hp3pkr3yl3 "Acute Respiratory Distress Syndrome"
  * code.coding[sct] = $sct#67782005 "Acute respiratory distress syndrome (disorder)"
  * valueBoolean = true
* characteristic[=].exclude = false

Instance: PopulationCOVID19Sepsis
InstanceOf: population-group
Usage: #example
Title: "Population: COVID19 / Sepsis"
Description: "Population for guideline from https://app.magicapp.org/#/guidelines / 5062 with characteristics: COVID-19, Sepsis"
* identifier.value = "Sepsis"
* identifier.system = $ceosys
* type = #person
* actual = false
* name = "Population_COVID19_Sepsis"
* text
  * status = #generated
  * div = "<p>Population for guideline from https://app.magicapp.org/#/guidelines / 5062 with characteristics: COVID-19, Sepsis</p>"
* characteristic[+]
  * code.coding[cochrane] = $cochrane-ld#NrO30O5ZnYIkjE "COVID-19"
  * code.coding[sct] = $sct#840539006 "Disease caused by Severe acute respiratory syndrome coronavirus 2 (disorder)"
  * valueBoolean = true
* characteristic[=].exclude = false
* characteristic[+]
  * code.coding[cochrane] = $cochrane-ld#r4hp3p86xjp4 "Sepsis"
  * code.coding[sct] = $sct#91302008 "Sepsis (disorder)"
  * valueBoolean = true
* characteristic[=].exclude = false

Instance: PopulationCOVID19Ventilated
InstanceOf: population-group
Usage: #example
Title: "Population COVID19 Ventilated"
Description: "Population for guideline from https://app.magicapp.org/#/guidelines / 5062 with characteristics: COVID-19, Ventilated"
* identifier.value = "Ventilated"
* identifier.system = $ceosys
* type = #person
* actual = false
* name = "Population_COVID19_Ventilated"
* text
  * status = #generated
  * div = "<p>Population for guideline from https://app.magicapp.org/#/guidelines / 5062 with characteristics: COVID-19, Ventilated</p>"
* characteristic[+]
  * code.coding[cochrane] = $cochrane-ld#NrO30O5ZnYIkjE "COVID-19"
  * code.coding[sct] = $sct#840539006 "Disease caused by Severe acute respiratory syndrome coronavirus 2 (disorder)"
  * valueBoolean = true
* characteristic[=].exclude = false
* characteristic[+]
  * code.coding[cochrane] = $cochrane-ld#r4hp38jjqmxs "Ventilation Finding"
  * code.coding[sct] = $sct#128258000 "Ventilation Finding (finding)"
  * valueCodeableConcept.coding[cochrane] = $cochrane-ld#r4hp399q34v1 "Patient Ventilated"
  * valueCodeableConcept.coding[sct] = $sct#371820004 "Patient ventilated (finding)"
* characteristic[=].exclude = false

Instance: PopulationCOVID19VasopressorTherapy
InstanceOf: population-group
Usage: #example
Title: "Population COVID19 Vasopressor Therapy"
Description: "Population for guideline from https://app.magicapp.org/#/guidelines / 5062 with characteristics: COVID-19, Vasopressor Therapy"
* identifier.value = "Vasopressor Therapy"
* identifier.system = $ceosys
* type = #person
* actual = false
* name = "Population_COVID19_Vasopressor_Therapy"
* text
  * status = #generated
  * div = "<p>Population for guideline from https://app.magicapp.org/#/guidelines / 5062 with characteristics: COVID-19, Vasopressor Therapy</p>"
* characteristic[+]
  * code.coding[cochrane] = $cochrane-ld#NrO30O5ZnYIkjE "COVID-19"
  * code.coding[sct] = $sct#840539006 "Disease caused by Severe acute respiratory syndrome coronavirus 2 (disorder)"
  * valueBoolean = true
* characteristic[=].exclude = false
* characteristic[+]
  * code = $ceosys#vasopressor-therapy "Vasopressor Therapy"
  * valueBoolean = true
* characteristic[=].exclude = false
