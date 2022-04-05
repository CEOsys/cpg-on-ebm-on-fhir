// Author: Gregor Lichtner @glichtner
Profile: NetEffectEvidence
Parent: Evidence
Id: net-effect-evidence
Title: "Net Effect"
Description: "The net effect is the overall expected effect of a recommendation, calculated by an importance-weighted average of the individual outcome effects"
* insert metadata(2022-03-04, #draft, 0.1.0)
* name 1..1
* variableDefinition ^slicing.discriminator.type = #value
* variableDefinition ^slicing.discriminator.path = "variableRole"
* variableDefinition ^slicing.rules = #closed
* variableDefinition contains
  outcome 1..* MS
* variableDefinition[outcome]
  * variableRole = $cs-variable-role#measuredVariable
  * intended 1..1 MS
  * intended only Reference(OutcomeDefinition)

* statistic 1..* MS
* statistic ^slicing.discriminator.type = #value
* statistic ^slicing.discriminator.path = "statisticType"
* statistic ^slicing.rules = #open
* statistic contains netEffect 1..1 MS
* statistic[netEffect]
  * description 1..
  * description = "Net Effect"
  * quantity 1..1 MS
    * ^short = "Net effect (benefit/harm) of the presented evidence"
    * ^definition = "Net effect calculated by the relative importance weighing of different outcomes. Details can be found in 'Alper, B. S. et al. Defining certainty of net benefit: a GRADE concept paper. BMJ Open 9, e027445 (2019)'."
  * statisticType 1..1 MS
  * statisticType = $cs-ceosys#net-effect "Net Effect"
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
    * code = $cs-ceosys#relative-importance-weighting
    * value 1..1 MS
      * ^short = "Relative importance weighting for the outcome referenced in variable.variableDefinition"
      * ^definition = "Relative importance weighting for the outcome referenced in variable.variableDefinition"
    * variable 1..1 MS
      * ^short = "Variable for which the relative importance weighting is defined"
      * ^definition = "Variable for which the relative importance weighting is defined"
      * variableDefinition only Reference(OutcomeDefinition)

Instance: ExampleNetEffect
InstanceOf: net-effect-evidence
Usage: #example
Title: "Example Net Effect"
Description: "Example of a net effect"
* name = "NetEffectExample"
* status = #unknown
* variableDefinition[outcome].intended = Reference(ExampleOutcome)
* statistic[netEffect]
  * quantity = 1.7 '%'
  * attributeEstimate[confidenceInterval].range
    * low = 1.5 '%'
    * high = 1.9 '%'
  * modelCharacteristic[+]
    * value.value = 1.0
    * variable.variableDefinition = Reference(ExampleOutcome)
