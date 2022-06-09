// Author: Gregor Lichtner @glichtner
Instance: COVID19IntensiveCareTreatmentGuideline
InstanceOf: guideline
Usage: #example
Title: "COVID19 Intensive Care Treatment Guideline"
Description: "COVID19 Intensive Care Treatment Guideline."
* identifier
  * system = "https://www.awmf.org/"
  * value = "113-001"
* status = #final
* date = "2022-03-01"
* version = "7.0"
* status = #final
* title = "Empfehlungen zur stationären Therapie von Patienten mit COVID-19 - Living Guideline"
* author[+] = Reference(AWMFOrganization)
* relatesTo.resourceReference = Reference(COVID19IntensiveCareTreatmentGuidelineCitation)
* category[stageClassification] = $cs-guideline-stage-classification#S3 "Evidence- and consensus-based guideline"
* section[+]
  * title = "Stationäre Therapie von COVID-19 Patienten"
  * text
    * status = #generated
    * div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
     <strong>Systemische Steroide:</strong>
    Bei Patienten mit COVID-19- und Sauerstoff-Bedarf (Niedrigfluss-Sauerstoff-Insufflation, High-Flow Nasal Cannula, Nichtinvasive Beatmung/CPAP, invasive Beatmung)
    soll eine Therapie mit systemischen Kortikosteroiden erfolgen. Die Therapie sollte mit 6 mg Dexamethason p.o. oder i.v. über zehn Tage erfolgen.</div>"
  * focus = Reference(COVID19VentilatedPatientsDexamethasoneApplicationPlan)
* section[+]
  * title = "Stationäre Therapie von COVID-19 Patienten"
  * text
    * status = #generated
    * div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
     <strong>Systemische Steroide:</strong>
     Bei Patienten mit moderater Erkrankung (hospitalisiert ohne Notwendigkeit von Niedrigfluss-Sauerstoff-Insufflation) soll keine Therapie mit systemischen Kortikosteroiden erfolgen.</div>"
  * focus = Reference(COVID19NonVentilatedPatientsDexamethasoneApplicationPlan)

Instance: AWMFOrganization
InstanceOf: Organization
Usage: #example
Title: "Arbeitsgemeinschaft der Wissenschaftlichen Medizinischen Fachgesellschaften (AWMF) e.V"
Description: "Arbeitsgemeinschaft der Wissenschaftlichen Medizinischen Fachgesellschaften (AWMF) e.V"
* name = "Arbeitsgemeinschaft der Wissenschaftlichen Medizinischen Fachgesellschaften (AWMF) e.V."

Instance: COVID19IntensiveCareTreatmentGuidelineCitation
InstanceOf: guideline-citation
Usage: #example
Title: "Therapy of hospitalized COVID-19 patients"
Description: "Guideline for therapy of hospitalized COVID-19 patients"
* name = "COVID19_Intensive_Care_Treatment_Guideline"
* status = #active
* citedArtifact
  * identifier
    * system = "https://www.awmf.org/"
    * value = "113-001"
  * title.text = "S3-Leitlinie Stationäre Therapie von COVID-19 Patienten"
  * version.value = "7.0"
  * currentState = $cs-cited-artifact-status-type#active "Active"
  * webLocation.url = "https://www.awmf.org/leitlinien/detail/ll/113-001.html"
