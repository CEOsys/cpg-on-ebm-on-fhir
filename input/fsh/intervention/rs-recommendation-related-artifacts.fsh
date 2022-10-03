RuleSet: recommendation-related-artifacts
* relatedArtifact 0..*
* relatedArtifact ^slicing.discriminator.type = #value
* relatedArtifact ^slicing.discriminator.path = "classifier"
* relatedArtifact ^slicing.rules = #open
* relatedArtifact contains
    recommendationJustification 0..1 and
    recommendationCitation 0..1 and
    guidelineCitation 0..1
* relatedArtifact[recommendationJustification]
  * type = $cs-related-artifact-type#justification
  * classifier 1..1
  * classifier = $cs-ceosys#recommendation-rating "Recommendation rating"
  * resourceReference 1..1 MS
  * resourceReference only Reference(RecommendationJustification)
* relatedArtifact[recommendationCitation]
  * type = $cs-related-artifact-type#citation
  * classifier 1..1
  * classifier = $cs-ceosys#guideline-recommendation "Clinical practice guideline recommendation"
  * resourceReference 1..1 MS
  * resourceReference only Reference(RecommendationCitation)
* relatedArtifact[guidelineCitation]
  * type = $cs-related-artifact-type#citation
  * classifier 1..1
  * classifier = $cs-ceosys#clinical-practice-guideline "Clinical practice guideline"
  * resourceReference 1..1 MS
  * resourceReference only Reference(GuidelineCitation)
