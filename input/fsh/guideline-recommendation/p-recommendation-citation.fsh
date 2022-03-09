// Author: Gregor Lichtner @glichtner
Profile: RecommendationCitation
Parent: Citation
Id: recommendation-citation
Title: "Recommendation Citation"
Description: "Citation of a clinical practice guideline recommendation"
* insert metadata(2022-03-04, #draft, 0.1.0)
* status 1..1 // inherited from Citation resource
* name 1..1
* citedArtifact 1..1 MS
  * identifier 1..*
  * title 1..1
  * version 1..1
  * currentState 1..1 MS
  * currentState from GuidelineRecommendationStatus (extensible)
  * classification 1..*
    * type 1..1
    * type = $cs-cited-artifact-classification-type#publication-type "Publication Type"
    * classifier 1..1
    * classifier = $cs-ceosys#guideline-recommendation "Clinical practice guideline recommendation"

Instance: ExampleRecommendationCitation
InstanceOf: recommendation-citation
Usage: #example
Title: "Example Recommendation Citation"
Description: "Example of a Citation of a clinical practice guideline recommendation"
* name = "ExampleRecommendationCitation"
* status = #active
* citedArtifact
  * identifier
    * value = "ceoysy/exampleIdentifier"
  * title.text = "Example Citation"
  * version.value = "1.0-alpha1"
  * currentState = $cs-cited-artifact-status-type#archived "Archived"
