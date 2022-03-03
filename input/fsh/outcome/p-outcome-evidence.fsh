Profile: OutcomeEvidence
Parent: Evidence
Id: outcome-evidence
Title: "Outcome Evidence"
Description: ""
* citeAs[x] only Reference
* citeAsReference 1..1
* studyType 1..1 MS
* synthesisType 1..1 MS
* variableDefinition
  * variableRole = $cs-variable-role#measuredVariable
* statistic 0..* MS
* statistic ^slicing.discriminator.type = #value
* statistic ^slicing.discriminator.path = "type"
* statistic ^slicing.rules = #open
* statistic contains relativeEffect 0..1 MS
* statistic[relativeEffect]
  * description 1..
  * description = "Relative effect of intervention vs. comparator"
  * quantity 1..1 MS
    * ^short = "Relative Effect of the presented evidence (intervention vs. comparator)"
  * statisticType 1..1 MS
  * statisticType from vs-relative-effect-type (extensible)
  * attributeEstimate 1..* MS
  * attributeEstimate ^slicing.discriminator.type = #value
  * attributeEstimate ^slicing.discriminator.path = "type"
  * attributeEstimate ^slicing.rules = #open
  * attributeEstimate contains confidenceInterval 1..1 MS
  * attributeEstimate[confidenceInterval]
    * type 1..1
      * coding
        * system 1..
        * code 1..
        * display 1..
    * type = $cs-attribute-estimate-type#C53324 "Confidence interval"
    * range 1..1 MS
      * ^short = "Confidence interval of the relative effect"
      * ^definition = "Relative effect 95% confidence interval."
    * level 1.. MS
    * level = 0.95
* certainty 1..* MS
* certainty ^slicing.discriminator.type = #value
* certainty ^slicing.discriminator.path = "type"
* certainty ^slicing.rules = #open
* certainty contains
  certaintyOfEvidence 1..1 MS
  and riskOfBias 0..1 MS
  and inconsistency 0..1 MS
  and indirectness 0..1 MS
  and imprecision 0..1 MS
  and publicationBias 0..1 MS
* certainty[certaintyOfEvidence]
  * type 1..
  * type = $cs-certainty-type#Overall "Overall certainty"
  * rating 1..1
  * rating from vs-rating-certainty-of-evidence (required)
* certainty[riskOfBias]
  * type 1..
  * type = $cs-certainty-type#RiskOfBias "Risk of bias"
  * rating 1..1
  * rating from vs-rating-concern-degree (required)
* certainty[inconsistency]
  * type 1..
  * type = $cs-certainty-type#Inconsistency "Inconsistency"
  * rating 1..1
  * rating from vs-rating-concern-degree (required)
* certainty[indirectness]
  * type 1..
  * type = $cs-certainty-type#Indirectness "Indirectness"
  * rating 1..1
  * rating from vs-rating-concern-degree (required)
* certainty[imprecision]
  * type 1..
  * type = $cs-certainty-type#Imprecision "Imprecision"
  * rating 1..1
  * rating from vs-rating-concern-degree (required)
* certainty[publicationBias]
  * type 1..
  * type = $cs-certainty-type#PublicationBias "Publication bias"
  * rating 1..1
  * rating from vs-rating-concern-degree (required)

Instance: ExampleOutcomeEvidence
InstanceOf: outcome-evidence
Usage: #example
Title: "Example Outcome Evidence"
Description: "Example Outcome Evidence"
* status = #active
* citeAsReference = Reference(ExampleCitation)
* studyType = $cs-study-type#RCT
* synthesisType = $cs-synthesis-type#NotApplicable
* certainty[certaintyOfEvidence]
  * description = "very low"
  * type = $cs-certainty-type#Overall "Overall certainty"
  * rating = $cs-certainty-rating#very-low "Very low quality"
