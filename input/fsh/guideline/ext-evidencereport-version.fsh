// Author: Gregor Lichtner @glichtner
Extension: EvidenceReportVersion
Id: ceosys-extension-evidencereport-version
Title: "EvidenceReport Version"
Description: "Adds version attribute to EvidenceReport."
* insert metadata(2021-11-16, #draft, 0.1.0)
* . ^short = "Version"
* . ^definition = "Extension used on EvidenceReport resources to describe the guideline version."
* value[x] 1..
* value[x] only string
