// Author: Gregor Lichtner @glichtner
Instance: COVID19IntensiveCareTreatmentGuideline
InstanceOf: guideline
Usage: #example
Title: "COVID19 Intensive Care Treatment Guideline"
Description: "COVID19 Intensive Care Treatment Guideline."

* url = "https://www.awmf.org/leitlinien/detail/ll/113-001LG.html"
* extension[cpg-author].valueContactDetail.name = "Arbeitsgemeinschaft der Wissenschaftlichen Medizinischen Fachgesellschaften (AWMF)"
* extension[knowledgeCapability][+].valueCode = $cs-cpg-knowledgeCapability#shareable "Shareable"
* extension[knowledgeCapability][+].valueCode = $cs-cpg-knowledgeCapability#computable "Computable"
* extension[knowledgeCapability][+].valueCode = $cs-cpg-knowledgeCapability#publishable "Publishable"
* name = "StationaereTherapieVonCOVID19Patienten"
* date = "2022-03-01"
* version = "7.0"
* status = #final
* title = "Empfehlungen zur stationären Therapie von Patienten mit COVID-19 - Living Guideline"
* experimental = true
* description = "This is an example of a guideline resource."
* fhirVersion = #5.0.0-ballot
* packageId = "example-guideline.cpg-ebm-on-fhir"
* publisher = "Arbeitsgemeinschaft der Wissenschaftlichen Medizinischen Fachgesellschaften (AWMF)"
* extension[cpg-relatedArtifact].valueRelatedArtifact.resourceReference = Reference(COVID19IntensiveCareTreatmentGuidelineCitation)
* extension[stageClassification].valueCodeableConcept = $cs-guideline-stage-classification#S3 "Evidence- and consensus-based guideline"
* definition[+]
  * resource[+].reference = Reference(COVID19VentilatedPatientsDexamethasoneApplicationPlan)
  * resource[+].reference = Reference(COVID19NonVentilatedPatientsDexamethasoneApplicationPlan)

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
