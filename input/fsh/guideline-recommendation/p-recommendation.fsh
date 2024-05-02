// Author: Gregor Lichtner @glichtner
Profile: Recommendation
Parent: CPGStrategyDefinition
Id: recommendation
Description: "A recommendation as part of a clinical practice guideline."
* obeys selection-behavior-unique-or-no-value
* insert metadata(2022-10-03, #draft, 0.1.0)
* insert profile("This profile is used to group separate recommendations in the context of a clinical practice guideline recommendation.")
* extension[knowledgeCapability] 1..1
  * valueCode 1..1
  * valueCode = $cs-cpg-knowledgeCapability#computable "Computable"
* extension[knowledgeRepresentationLevel] 1..1
  * valueCode 1..1
  * valueCode = $cs-cpg-knowledgeRepresentationLevel#structured "Structured"
* insert rs-action-combination-method
* insert recommendation-related-artifacts
* action
  * definitionCanonical 1..1
  * definition[x] only canonical
  * definitionCanonical only Canonical(RecommendationPlan)
  * code 1..1 MS


Instance: ExampleRecommendation
InstanceOf: recommendation
Usage: #example
Title: "recommendation"
Description: "Recommendation"
* name = "Recommendation"
* title = "Recommendation"
* version = "1.0"
* date = "2022-02-14"
* status = #active
* description = "Example Recommendation"
* insert canonical-url(example/recommendation-plan/example-recommendation)
* experimental = true
* publisher = "CPGonEBMonFHIR"
* insert rs-combination-at-least(2)
* action[+]
  * title = "example recommendation"
  * code = $cs-common-process#guideline-based-care
  * description = "Example recommendation"
  * definitionCanonical = Canonical(ExampleRecommendationPlan)
* action[+]
  * title = "example recommendation"
  * code = $cs-common-process#guideline-based-care
  * description = "Example recommendation"
  * definitionCanonical = Canonical(ExampleRecommendationPlan)
* relatedArtifact[recommendationJustification].resourceReference = Reference(ExampleRecommendationJustification)
* relatedArtifact[recommendationCitation].resourceReference = Reference(ExampleRecommendationCitation)
* relatedArtifact[guidelineCitation].resourceReference = Reference(ExampleGuidelineCitation)
