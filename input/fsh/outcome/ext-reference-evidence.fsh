// Author: Gregor Lichtner @glichtner
Extension: ReferenceEvidence
Id: ceosys-extension-reference-evidence
Title: "Reference Evidence"
Description: "Adds the possibility to reference an Evidence resource."
* insert metadata(2022-03-03, #draft, 0.1.0)
* . ^short = "Reference to Evidence resource"
* . ^definition = "Reference to Evidence resource"
* value[x] 1..
* value[x] only Reference
* value[x] only Reference(Evidence)
