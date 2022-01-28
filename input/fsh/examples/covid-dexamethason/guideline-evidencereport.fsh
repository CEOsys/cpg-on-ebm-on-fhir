// Author: Gregor Lichtner @glichtner
Instance: COVID19IntensiveCareTreatmentGuideline
InstanceOf: guideline
Usage: #example
Title: "COVID19 Intensive Care Treatment Guideline"
Description: "COVID19 Intensive Care Treatment Guideline."
* identifier[+]
  * value = "5062"
  * system = "https://app.magicapp.org/#/guidelines"
* identifier[+]
  * system = "https://www.awmf.org/"
  * value = "113-001"
* extension[version].valueString = "4.0"
* extension[date].valueDateTime = "2021-02-23"
* status = #retired
* publisher = "Arbeitsgemeinschaft der Wissenschaftlichen Medizinischen Fachgesellschaften (AWMF) e.V."
* author[+]
  * name = "CEOsys Team"
* subject
  * characteristic[population]
    * valueReference = Reference(PopulationCriticallyIllCOVID19Patients)
  * characteristic[intervention]
    * valueReference = Reference(ExampleIntervention)
* section[+]
  * title = "Stationäre Therapie von COVID-19 Patienten"
  * text
    * status = #generated
    * div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Steroide: Bei Patienten mit schwerer (SpO2 &lt; 90 %, Atemfrequenz &gt; 30/min) oder kritischer (ARDS, Sepsis, Beatmung, Vasopressorengabe) COVID-19-Erkrankung soll eine Therapie mit Dexamethason erfolgen.</div>"
  * focusReference = Reference(DexamethasoneRecommendation)

Instance: DexamethasoneRecommendation
InstanceOf: guideline-recommendation
Usage: #example
Title: "Dexamethasone for critically ill COVID-19 patients"
Description: "Dexamethasone in critically ill patients with COVID-19."
* identifier[MAGICapp].value = "80618"
* status = #retired
* date = "2020-03-01"
* version = "1.0.0"
* title = "Dexamethason bei kritisch kranken Patienten mit COVID-19"
* description = "Bei Patienten mit schwerer (SpO2 < 90 %, Atemfrequenz > 30/min) oder kritischer (ARDS, Sepsis, Beatmung, Vasopressorengabe) COVID-19-Erkrankung soll eine Therapie mit Dexamethason erfolgen. Die Dosis beträgt 6 mg Dexamethason p. o./i. v. täglich für 10 Tage."
* variableDefinition[population]
  * intended = Reference(PopulationCriticallyIllCOVID19Patients)
* variableDefinition[intervention]
  * intended = Reference(InterventionDexamethasoneApplication)
* certainty[overall]
  * description = "Low quality"
  * rating = $cs-certainty-rating#low "Low quality"
* insert recommendation-strength(#strong-for)
