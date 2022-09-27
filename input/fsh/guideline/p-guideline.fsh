// Author: Gregor Lichtner @glichtner
Profile: Guideline
Parent: CPGPublishableGuideline
Id: guideline
Title: "Clinical Practice Guideline"
Description: "Representation of an evidence-based clinical practice guideline."
* insert metadata(2022-09-07, #draft, 0.2.0)
* insert profile("This profile is intended to be used as a description of clinical practice guidelines.")
* title 1..1 MS
* date 1..1 MS
* status 1..1 MS
* version 1..1 MS
* extension[cpg-relatedArtifact] 1..* MS
* extension[cpg-relatedArtifact].valueRelatedArtifact
  * type = #citation
  * resourceReference 1..1
  * resourceReference only Reference(GuidelineCitation)
* extension contains GuidelineStageClassification named stageClassification 0..1 MS

Instance: GuidelineExample
InstanceOf: guideline
Usage: #example
Title: "Example Guideline"
Description: "Example of a guideline resource."
* title = "Example Guideline"
* insert canonical-url(example/example-guideline)
* extension[cpg-author].valueContactDetail.name = "Example Organization"
* extension[knowledgeCapability][+].valueCode = $cs-cpg-knowledgeCapability#shareable "Shareable"
* extension[knowledgeCapability][+].valueCode = $cs-cpg-knowledgeCapability#computable "Computable"
* extension[knowledgeCapability][+].valueCode = $cs-cpg-knowledgeCapability#publishable "Publishable"
* name = "GuidelineExample"
* experimental = true
* description = "This is an example of a guideline resource."
* fhirVersion = #5.0.0-ballot
* packageId = "example-guideline.cpg-ebm-on-fhir"
* publisher = "Example Organization"
* date = "2022-01-28"
* status = #active
* version = "0.1.0"
* extension[cpg-relatedArtifact].valueRelatedArtifact.resourceReference = Reference(ExampleGuidelineCitation)
* extension[stageClassification].valueCodeableConcept = $cs-guideline-stage-classification#S3 "Evidence- and consensus-based guideline"
* definition[+].resource.reference = Reference(ExampleRecommendationPlan)
