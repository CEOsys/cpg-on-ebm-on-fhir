// Author: Gregor Lichtner @glichtner
Extension: ArtifactAssessmentPublicationStatus
Id: ceosys-extension-artifact-assessment-publication-status
Title: "ArtifactAssessment Publication Status"
Description: "Adds publication status attribute to ArtifactAssessment."
* insert metadata(2022-02-08, #draft, 0.1.0)
* . ^short = "Publication status"
* . ^definition = "Extension used on ArtifactAssessment resources to describe the guideline recommendation publication status."
* ^context.type = #element
* ^context.expression = "ArtifactAssessment"
* value[x] 1..
* value[x] only code
* valueCode from $vs-publication-status
