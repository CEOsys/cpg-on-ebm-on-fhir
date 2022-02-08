// Author: Gregor Lichtner @glichtner
Extension: EvidenceReportDate
Id: ceosys-extension-evidencereport-date
Title: "EvidenceReport Date"
Description: "Adds date attribute to EvidenceReport."
* insert metadata(2022-01-28, #draft, 0.1.0)
* . ^short = "Date"
* . ^definition = "Extension used on EvidenceReport resources to describe the guideline date."
* ^context.type = #element
* ^context.expression = "EvidenceReport"
* value[x] 1..
* value[x] only dateTime
