// Author: Gregor Lichtner @glichtner
Extension: GuidelineStageClassification
Id: guideline-stage-classification
Title: "Guideline Stage Classification"
Description: "Stage classification according to systematics"
* insert metadata(2022-09-27, #draft, 0.1.0)
* . ^short = "guideline-stage-classification"
* . ^definition = "Extension used on resources to specify a the stage classification of a guideline."
* ^context.type = #element
* ^context.expression = "Resource"
* value[x] only CodeableConcept
* valueCodeableConcept from vs-guideline-stage-classification (required)
