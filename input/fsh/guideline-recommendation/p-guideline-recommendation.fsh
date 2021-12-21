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
* identifier[MAGICapp].type = $cs-v2-0203#RI
* identifier[MAGICapp].system 1.. MS
* identifier[MAGICapp].system = "https://api.magicapp.org/api/v1/recommendations"
* identifier[MAGICapp].value 1.. MS

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
  and measuredVariable 0..1 MS
* variableDefinition[population]
  * variableRole = $cs-variable-role#population
  * intended 1..1 MS
  * intended only Reference(PopulationEvidenceVariable)
* variableDefinition[intervention]
  * variableRole = $cs-variable-role#exposure
  * intended 1..1 MS
  * intended only Reference(InterventionEvidenceVariable)
* variableDefinition[measuredVariable]
  * variableRole = $cs-variable-role#measuredVariable
  * intended 1..1 MS
  * intended only Reference(MeasuredVariableEvidenceVariable)

* extension contains $ext-strengthOfRecommendation named strengthOfRecommendation 1..1 MS
* extension[strengthOfRecommendation].valueCodeableConcept from ceosys-vs-recommendation-strength (required)

* statistic 0..* MS
* statistic ^slicing.discriminator.type = #value
* statistic ^slicing.discriminator.path = "type"
* statistic ^slicing.rules = #open
* statistic contains netBenefit 0..1 MS
* statistic[netBenefit]
  * description 1..
  * description = "Net Benefit" // TODO: make clearer
  * quantity 1..1 MS
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

* certainty 1..* MS
* certainty ^slicing.discriminator.type = #value
* certainty ^slicing.discriminator.path = "type"
* certainty ^slicing.rules = #open
* certainty contains overall 1..1 MS
* certainty[overall]
  * type 1..
  * type = $cs-certainty-type#Overall "Overall certainty"
  * rating 1..1

// TODO: add example of net benefit
Instance: ExampleGuidelineRecommendation
InstanceOf: guideline-recommendation
Usage: #example
Title: "Example of a guideline recommendation"
Description: ""
* status = #active

* identifier[MAGICapp].value = "12345"
* version = "1.0.0"
* title = "Example of a guideline recommendation"
* date = "2020-01-01"
* description = "This is an example of a guideline recommendation."

* variableDefinition[population]
  * intended = Reference(ExamplePopulation)
* variableDefinition[intervention]
  * intended = Reference(ExampleIntervention)
//* variableDefinition[measuredVariable]
//  * intended = Reference(ExampleMeasuredVariable)
* certainty[+]
  * description = "very low"
  * type = $cs-certainty-type#Overall "Overall certainty"
  * rating = $cs-certainty-rating#very-low "Very low quality"
* certainty[+]
  * type = $cs-certainty-type#RiskOfBias "Risk of bias"
  * rating = $cs-certainty-rating#no-concern "No serious concern"

* insert recommendation-strength(#strong-for)
