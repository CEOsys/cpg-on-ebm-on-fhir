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
* date = "2021-02"
* extension[version].valueString = "4.0"
* extension[publicationStatus].valueCode = #retired
* title = "Empfehlungen zur stationären Therapie von Patienten mit COVID-19 - Living Guideline"
* author[+] = Reference(AWMFOrganization)
* relatesTo.resourceReference = Reference(COVID19IntensiveCareTreatmentGuidelineCitation)
* section[+]
  * title = "Stationäre Therapie von COVID-19 Patienten"
  * text
    * status = #generated
    * div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Bei Patienten mit COVID-19- und Sauerstoff-Bedarf (Niedrigfluss-Sauerstoff-Insufflation, High-Flow Nasal Cannula, Nichtinvasive Beatmung/CPAP, invasive Beatmung) soll eine Therapie mit systemischen Kortikosteroiden erfolgen. Die Therapie sollte mit 6 mg Dexamethason p.o. oder i.v. über zehn Tage erfolgen. Bei Patienten mit moderater Erkrankung (hospitalisiert ohne Notwendigkeit von Niedrigfluss-Sauerstoff-Insufflation) soll keine Therapie mit systemischen Kortikosteroiden erfolgen.</div>"
  * focus = Reference(DexamethasoneApplicationPlan)

Instance: AWMFOrganization
InstanceOf: Organization
Usage: #example
Title: "Arbeitsgemeinschaft der Wissenschaftlichen Medizinischen Fachgesellschaften (AWMF) e.V"
Description: "Arbeitsgemeinschaft der Wissenschaftlichen Medizinischen Fachgesellschaften (AWMF) e.V"
* name = "Arbeitsgemeinschaft der Wissenschaftlichen Medizinischen Fachgesellschaften (AWMF) e.V."

Instance: COVID19IntensiveCareTreatmentGuidelineCitation
InstanceOf: guideline-citation
Usage: #example
Title: "Example Guideline Citation"
Description: "Example of a Citation of a clinical practice guideline"
* name = "COVID19_Intensive_Care_Treatment_Guideline"
* status = #retired
* citedArtifact
  * identifier
    * system = "https://www.awmf.org/"
    * value = "113-001"
  * title.text = "S3-Leitlinie Stationäre Therapie von COVID-19 Patienten"
  * version.value = "1.0-alpha1"
  * currentState = $cs-cited-artifact-status-type#archived "Archived"
  * webLocation.url = "https://www.awmf.org/leitlinien/detail/ll/113-001.html"
