/**************/
/* Population */
/**************/

Instance: PopulationCOVID19OxygenSaturationLt90
InstanceOf: population-evidence-variable
Usage: #example
Title: "Population: COVID19 / Oxygen saturation < 90%"
Description: "Population for guideline from https://app.magicapp.org/#/guidelines / 5062 with characteristics: COVID-19, Oxygen-Saturation<90"
* identifier.value = "Population_COVID-19_Oxygen-Saturation<90"
* identifier.system = $ceosys
* status = #active // TODO: check if correct
* name = "Population_COVID19_Oxygen_Saturation_lt_90_percent"
* description = "Population for guideline from https://app.magicapp.org/#/guidelines / 5062 with characteristics: COVID-19, Oxygen-Saturation<90"
* characteristic[+]
  * type = $cochrane-pico#Population
  * definitionReference = Reference(covid19-patients)
* characteristic[+]
  * type = $cochrane-pico#Population
  * definitionReference = Reference(oxygen-saturation-lt-90)

Instance: PopulationCOVID19RespiratoryRateGt30
InstanceOf: population-evidence-variable
Usage: #example
Title: "Population: COVID19 / Respiratory Rate > 30 /min"
Description: "Population for guideline from https://app.magicapp.org/#/guidelines / 5062 with characteristics: COVID-19, Respiratory Rate > 30/min"
* identifier.value = "Population_COVID-19_Respiratory_Rate>30/min"
* identifier.system = $ceosys
* status = #active // TODO: check if correct
* name = "Population_COVID19_Respiratory_Rate_lt_30_per_min"
* description = "Population for guideline from https://app.magicapp.org/#/guidelines / 5062 with characteristics: COVID-19, Respiratory Rate > 30/min"
* characteristic[+]
  * type = $cochrane-pico#Population
  * definitionReference = Reference(covid19-patients)
* characteristic[+]
  * type = $cochrane-pico#Population
  * definitionReference = Reference(respiratory-rate-gt-30)

Instance: PopulationCOVID19ARDS
InstanceOf: population-evidence-variable
Usage: #example
Title: "Population: COVID19 / ARDS"
Description: ""
* identifier.value = "Population_COVID-19_ARDS"
* identifier.system = $ceosys
* status = #active // TODO: check if correct
* name = "Population_COVID19_ARDS"
* description = "Population for guideline from https://app.magicapp.org/#/guidelines / 5062 with characteristics: COVID-19, ARDS"
* characteristic[+]
  * type = $cochrane-pico#Population
  * definitionReference = Reference(covid19-patients)
* characteristic[+]
  * type = $cochrane-pico#Population
  * definitionReference = Reference(ards)

Instance: PopulationCOVID19Sepsis
InstanceOf: population-evidence-variable
Usage: #example
Title: "Population: COVID19 / Sepsis"
* identifier.value = "Population_COVID-19_Sepsis"
* identifier.system = $ceosys
* status = #active
* name = "Population_COVID19_Sepsis"
* description = "Population for guideline from https://app.magicapp.org/#/guidelines / 5062 with characteristics: COVID-19, Sepsis"
* characteristic[+]
  * type = $cochrane-pico#Population
  * definitionReference = Reference(covid19-patients)
* characteristic[+]
  * type = $cochrane-pico#Population
  * definitionReference = Reference(sepsis)

Instance: PopulationCOVID19Ventilated
InstanceOf: population-evidence-variable
Usage: #example
Title: "Population COVID19 Ventilated"
Description: "Population for guideline from https://app.magicapp.org/#/guidelines / 5062 with characteristics: COVID-19, Ventilated"
* identifier.value = "Population_COVID19_Ventilated"
* identifier.system = $ceosys
* description = "Population for guideline from https://app.magicapp.org/#/guidelines / 5062 with characteristics: COVID-19, Ventilated"
* status = #active
* name = "Population_COVID-19_Ventilated"
* characteristic[+]
  * type = $cochrane-pico#Population
  * definitionReference = Reference(covid19-patients)
* characteristic[+]
  * type = $cochrane-pico#Population
  * definitionReference = Reference(ventilated)

Instance: PopulationCOVID19VasopressorTherapy
InstanceOf: population-evidence-variable
Usage: #example
Title: "Population COVID19 Vasopressor Therapy"
Description: "Population for guideline from https://app.magicapp.org/#/guidelines / 5062 with characteristics: COVID-19, Vasopressor Therapy"
* identifier.value = "Population_COVID-19_Vasopressor_Therapy"
* identifier.system = $ceosys
* status = #active
* name = "Population_COVID-19_Vasopressor_Therapy"
* description = "Population for guideline from https://app.magicapp.org/#/guidelines / 5062 with characteristics: COVID-19, Vasopressor Therapy"
* characteristic[+]
  * type = $cochrane-pico#Population
  * definitionReference = Reference(covid19-patients)
* characteristic[+]
  * type = $cochrane-pico#Population
  * definitionReference = Reference(vasopressor-therapy)


/*********************/
/* Population Groups */
/*********************/

Instance: covid19-patients
InstanceOf: population-group
Usage: #example
* identifier.value = "COVID-19"
* identifier.system = $ceosys
* type = #person
* actual = false
* characteristic
  * code.coding[cochrane] = $cochrane-ld#NrO30O5ZnYIkjE "COVID-19"
  * code.coding[sct] = $sct#840539006 "Disease caused by Severe acute respiratory syndrome coronavirus 2 (disorder)"
  * valueBoolean = true
* characteristic.exclude = false

Instance: oxygen-saturation-lt-90
InstanceOf: population-group
Usage: #example
* identifier.value = "Oxygen-Saturation<90"
* identifier.system = $ceosys
* type = #person
* actual = false
* characteristic
  * code.coding[cochrane] = $cochrane-ld#r4hp3qjmm9l6 "Oxygen Saturation"
  * code.coding[sct] = $sct#431314004 "Peripheral oxygen saturation (observable entity)"
  * valueRange.high = 90 '%' "%"
* characteristic.exclude = false


Instance: respiratory-rate-gt-30
InstanceOf: population-group
Usage: #example
* identifier.value = "Respiratory-Rate > 30/min"
* identifier.system = $ceosys
* type = #person
* actual = false
* characteristic
  * code.coding[cochrane] = $cochrane-ld#r4hp3qg8yn71 "Respiratory Rate"
  * code.coding[sct] = $sct#86290005 "Respiratory measure (observable entity)"
  * valueRange.low = 30 '{breaths}/min' "{breaths}/min"
* characteristic.exclude = false

Instance: ards
InstanceOf: population-group
Usage: #example
* identifier.value = "ARDS"
* identifier.system = $ceosys
* type = #person
* actual = false
* characteristic
  * code.coding[cochrane] = $cochrane-ld#r4hp3pkr3yl3 "Acute Respiratory Distress Syndrome"
  * code.coding[sct] = $sct#67782005 "Acute respiratory distress syndrome (disorder)"
  * valueBoolean = true
* characteristic.exclude = false

Instance: sepsis
InstanceOf: population-group
Usage: #example
* identifier.value = "Sepsis"
* identifier.system = $ceosys
* type = #person
* actual = false
* characteristic
  * code.coding[cochrane] = $cochrane-ld#r4hp3p86xjp4 "Sepsis"
  * code.coding[sct] = $sct#91302008 "Sepsis (disorder)"
  * valueBoolean = true
* characteristic.exclude = false

Instance: ventilated
InstanceOf: population-group
Usage: #example
* identifier.value = "Ventilated"
* identifier.system = $ceosys
* type = #person
* actual = false
* characteristic
  * code.coding[cochrane] = $cochrane-ld#r4hp38jjqmxs "Ventilation Finding"
  * code.coding[sct] = $sct#128258000 "Ventilation Finding (finding)"
  * valueCodeableConcept.coding[cochrane] = $cochrane-ld#r4hp399q34v1 "Patient Ventilated"
  * valueCodeableConcept.coding[sct] = $sct#371820004 "Patient ventilated (finding)"
* characteristic.exclude = false

Instance: vasopressor-therapy
InstanceOf: population-group
Usage: #example
* identifier.value = "Vasopressor Therapy"
* identifier.system = $ceosys
* type = #person
* actual = false
* characteristic
  * code = $ceosys#vasopressor-therapy "Vasopressor Therapy"
  * valueBoolean = true
* characteristic.exclude = false
