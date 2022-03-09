// Author: Gregor Lichtner @glichtner
Extension: ArtifactAssessmentVersion
Id: ceosys-extension-artifact-assessment-version
Title: "ArtifactAssessment Version"
Description: "Adds version attribute to Artifact Assessment."
* insert metadata(2021-11-16, #draft, 0.1.0)
* . ^short = "Version"
* . ^definition = "Extension used on Artifact Assessment resources to describe the guideline recommendation version."
* ^context.type = #element
* ^context.expression = "ArtifactAssessment"
* value[x] 1..
* value[x] only string
