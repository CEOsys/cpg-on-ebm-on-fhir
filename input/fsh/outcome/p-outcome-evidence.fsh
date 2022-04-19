// Author: Gregor Lichtner @glichtner
Profile: OutcomeEvidence
Parent: Evidence
Id: outcome-evidence
Title: "Outcome Evidence"
Description: "A single evidence for an outcome from a specific, single study."
* insert metadata(2022-03-04, #draft, 0.1.0)
* name 1..1
* studyType 1..1 MS
* synthesisType 1..1 MS
* relatedArtifact 1..* MS
* relatedArtifact ^slicing.discriminator.type = #pattern
* relatedArtifact ^slicing.discriminator.path = "type"
* relatedArtifact ^slicing.rules = #open
* relatedArtifact contains
    studyCitation 1..* MS
* relatedArtifact[studyCitation]
  * type = $cs-related-artifact-type#citation
  * resourceReference 1..1 MS
  * resourceReference only Reference(StudyCitation)
* variableDefinition ^slicing.discriminator.type = #value
* variableDefinition ^slicing.discriminator.path = "variableRole"
* variableDefinition ^slicing.rules = #open
* variableDefinition contains
    population 1..1 MS and
    outcome 1..1 MS and
    intervention 0..* and
    comparator 0..*
* variableDefinition[population]
  * variableRole = $cs-variable-role#population
  * observed 1..1 MS
  * observed only Reference(StudyEligibilityCriteria)
* variableDefinition[outcome]
  * variableRole = $cs-variable-role#measuredVariable
  * observed 1..1 MS
  * observed only Reference(OutcomeDefinition)
* variableDefinition[intervention]
  * variableRole = $cs-variable-role#exposure
  * observed 1..1 MS
* variableDefinition[comparator]
  * variableRole = $cs-variable-role#referenceExposure
  * observed 1..1 MS

* statistic 0..* MS
* statistic ^slicing.discriminator.type = #value
* statistic ^slicing.discriminator.path = "statisticType"
* statistic ^slicing.rules = #open
* statistic contains
  relativeEffect 0..1 MS and
  baselineRisk 0..1 MS and
  meanDifference 0..1 MS
* statistic[relativeEffect]
  * description 1..
  * description = "Relative effect of intervention vs. comparator"
  * quantity 1..1 MS
    * ^short = "Relative Effect of the presented evidence (intervention vs. comparator) for dichotomous outcomes"
  * statisticType 1..1 MS
  * statisticType from vs-relative-effect-type (required)
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
  * sampleSize 1..1
    * numberOfStudies 1..1
    * numberOfParticipants 1..1
* statistic[baselineRisk]
  * description 1..
  * description = "Baseline risk/result in the comparison group"
  * quantity 1..1 MS
    * ^short = "Baseline risk of the presented evidence (intervention vs. comparator) for dichotomous outcomes"
    * code 1..1
    * code = #1/1000
    * system 1..1
    * system = $ucum
  * statisticType 1..1 MS
  * statisticType = $cs-statistic-type#C16726 "Incidence"
* statistic[meanDifference]
  * description 1..
  * description = "Difference intervention vs. comparator"
  * quantity 1..1 MS
    * ^short = "Difference intervention vs. comparator for continous outcomes"
  * statisticType 1..1 MS
  * statisticType from vs-mean-difference-type (required)
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

Instance: ExampleOutcomeEvidence
InstanceOf: outcome-evidence
Usage: #example
Title: "Example Outcome Evidence"
Description: "Example Outcome Evidence"
* name = "ExampleOutcomeEvidence"
* status = #active
* studyType = $cs-study-type#RCT
* synthesisType = $cs-synthesis-type#NotApplicable
* relatedArtifact[studyCitation].resourceReference = Reference(ExampleStudyCitation)
* variableDefinition[population].observed = Reference(ExampleStudyEligibilityCriteria)
* variableDefinition[outcome].observed = Reference(ExampleOutcome)
