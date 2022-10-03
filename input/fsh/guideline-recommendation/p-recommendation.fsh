// Author: Gregor Lichtner @glichtner
Profile: Recommendation
Parent: CPGStrategyDefinition
Id: recommendation
* insert metadata(2022-10-03, #draft, 0.1.0)
* insert profile("This profile is used to group separate recommendations in the context of a clinical practice guideline recommendation.")
* action
  * obeys selection-behavior-unique-or-no-value
  * definitionCanonical 1..1
  * definition[x] only canonical
  * definitionCanonical only Canonical(RecommendationPlan)
  * selectionBehavior 1..1 MS
