// Author: Gregor Lichtner @glichtner
Profile: GuidelineRecommendation
Parent: Evidence
Id: guideline-recommendation
Title: "Guideline Recommendation"
Description: "Single recommendation from a clinical practice guideline."
* insert metadata(2021-12-03, #draft, 0.1.0)
* insert profile("This profile is used to describe a recommendation from a clinical practice guideline.")
* identifier 1..* MS
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "type"
* identifier ^slicing.rules = #open
* identifier contains MAGICapp 0..1 MS
* identifier[MAGICapp].type 1.. MS
* identifier[MAGICapp].type = $cs-v2-0203#RI "Resource identifier"
* identifier[MAGICapp].system 1.. MS
* identifier[MAGICapp].system = "https://api.magicapp.org/api/v1/recommendations"
* identifier[MAGICapp].value 1.. MS
// * name 1..1 MS // TODO: Missing in Evidence resource, add once available.
* status 1..1 MS
* version 1..1 MS
* title 1..1 MS
* date 1..1 MS
* description 1..1 MS
* variableDefinition ^slicing.discriminator.type = #value
* variableDefinition ^slicing.discriminator.path = "variableRole"
* variableDefinition ^slicing.rules = #closed
* variableDefinition contains
  population 1..1 MS
  and intervention 1..1 MS
  and outcome 0..* MS
  and netEffect 0..*
* variableDefinition[population]
  * variableRole = $cs-variable-role#population
  * intended 1..1 MS
  * intended only Reference(PopulationEvidenceVariable)
* variableDefinition[intervention]
  * variableRole = $cs-variable-role#exposure
  * intended 1..1 MS
  * intended only Reference(InterventionEvidenceVariable)
* variableDefinition[outcome]
  * variableRole = $cs-variable-role#measuredVariable
  * intended 1..1 MS
  * intended only Reference(OutcomeEvidenceVariable)
* variableDefinition[netEffect]
  * variableRole = $cs-variable-role#measuredVariable
  * intended 1..1 MS
  * intended only Reference(NetEffectEvidenceVariable)

* extension contains $ext-strengthOfRecommendation named strengthOfRecommendation 1..1 MS
* extension[strengthOfRecommendation].valueCodeableConcept from ceosys-vs-recommendation-strength (required)

* statistic 0..* MS
* statistic ^slicing.discriminator.type = #value
* statistic ^slicing.discriminator.path = "type"
* statistic ^slicing.rules = #open
* statistic contains netEffect 0..1 MS
* statistic[netEffect]
  * description 1..
  * description = "Net Effect"
  * quantity 1..1 MS
    * ^short = "Net effect (benefit/harm) of the presented evidence"
    * ^definition = "Net effect calculated by the relative importance weighing of different outcomes. Details can be found in 'Alper, B. S. et al. Defining certainty of net benefit: a GRADE concept paper. BMJ Open 9, e027445 (2019)'."
  * statisticType 1..1 MS
  * statisticType = $cs-statistic-type#0000424 "Risk Difference"
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
      * ^short = "Confidence interval of the net effect estimate"
      * ^definition = "Net effect 95% confidence interval calculated according to 'Alper, B. S. et al. Defining certainty of net benefit: a GRADE concept paper. BMJ Open 9, e027445 (2019)'."
    * level 1.. MS
    * level = 0.95
  * modelCharacteristic 1..* MS
    * code = CEOsysCodeSystem#relative-importance-weighting
    * value 1..1 MS
      * ^short = "Relative importance weighting for the outcome referenced in variable.variableDefinition"
      * ^definition = "Relative importance weighting for the outcome referenced in variable.variableDefinition"
    * variable 1..1 MS
      * ^short = "Variable for which the relative importance weighting is defined"
      * ^definition = "Variable for which the relative importance weighting is defined"
      * variableDefinition only Reference(OutcomeEvidenceVariable)
* certainty 1..* MS
* certainty ^slicing.discriminator.type = #value
* certainty ^slicing.discriminator.path = "type"
* certainty ^slicing.rules = #open
* certainty contains
  consensus 0..1 MS
  and benefitAndHarms 0..1 MS
  and certaintyOfEvidence 1..1 MS
  and preferenceAndValues 0..1 MS
  and resources 0..1 MS
  and equity 0..1 MS
  and acceptability 0..1 MS
  and feasibility 0..1 MS
* certainty[consensus]
  * type 1..
  * type = CEOsysCodeSystem#consensus "Consensus"
  * rating 1..1
  * rating from vs-rating-consensus (required)
* certainty[benefitAndHarms]
  * type 1..
  * type = $cs-etd-certainty-type#benefit-and-harms "Benefit and harms"
  * rating 1..1
  * rating from vs-rating-benefit-and-harms (required)
* certainty[certaintyOfEvidence]
  * type 1..
  * type = $cs-certainty-type#Overall "Overall certainty"
  * rating 1..1
  * rating from vs-rating-certainty-of-evidence (required)
* certainty[preferenceAndValues]
  * type 1..
  * type = $cs-etd-certainty-type#preference-and-values "Preference and values"
  * rating 1..1
  * rating from vs-rating-preference-and-values (required)
* certainty[resources]
  * type 1..
  * type = $cs-etd-certainty-type#resources "Resources"
  * rating 1..1
  * rating from vs-rating-resources (required)
* certainty[equity]
  * type 1..
  * type = $cs-etd-certainty-type#equity "Equity"
  * rating 1..1
  * rating from vs-rating-equity (required)
* certainty[acceptability]
  * type 1..
  * type = $cs-etd-certainty-type#acceptability "Acceptability"
  * rating 1..1
  * rating from vs-rating-acceptability (required)
* certainty[feasibility]
  * type 1..
  * type = $cs-etd-certainty-type#feasibility "Feasibility"
  * rating 1..1
  * rating from vs-rating-feasibility (required)



// TODO: add example of net benefit
Instance: ExampleGuidelineRecommendation
InstanceOf: guideline-recommendation
Usage: #example
Title: "Example Guideline Recommendation"
Description: "Example of a single clinical practice guideline recommendation."
* status = #active
* identifier[MAGICapp].value = "12345"
* version = "1.0.0"
* title = "Example of a guideline recommendation"
* date = "2020-01-01"
* description = "This is an example of a guideline recommendation."
// * name = "ExampleGuidelineRecommendation" // TODO: Missing in Evidence resource, add once available.
* variableDefinition[population]
  * intended = Reference(ExamplePopulation)
* variableDefinition[intervention]
  * intended = Reference(ExampleIntervention)
* certainty[+]
  * description = "very low"
  * type = $cs-certainty-type#Overall "Overall certainty"
  * rating = $cs-certainty-rating#very-low "Very low quality"
* certainty[+]
  * type = $cs-certainty-type#RiskOfBias "Risk of bias"
  * rating = $cs-certainty-rating#no-concern "No serious concern"
* certainty[+]
  * type = CEOsysCodeSystem#consensus "Consensus"
  * rating = $cs-recommendation-strength#strong "Strong"
* insert recommendation-strength(#strong-for)
