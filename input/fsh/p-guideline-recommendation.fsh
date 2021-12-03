Profile: GuidelineRecommendation
Parent: Evidence
Id: guideline-recommendation
Title: "Guideline Recommendation"
Description: ""
* variableDefinition ^slicing.discriminator.type = #value
* variableDefinition ^slicing.discriminator.path = "variableRole"
* variableDefinition ^slicing.rules = #closed
* variableDefinition contains
  Population 1..1 MS
  and Intervention 1..1 MS
  and Outcome 0..1 MS
* variableDefinition[Population]
  * variableRole = $cs-variable-role#population
  * intended 1..1 MS
  * intended only Reference(PopulationEvidenceVariable)
* variableDefinition[Intervention]
  * variableRole = $cs-variable-role#exposure
  * intended 1..1 MS
  * intended only Reference(InterventionEvidenceVariable)
* variableDefinition[Outcome]
  * variableRole = $cs-variable-role#measuredVariable
  * intended 1..1 MS
  * intended only Reference(OutcomeEvidenceVariable)


Instance: ExampleGuidelineRecommendation
InstanceOf: guideline-recommendation
Usage: #example
Title: "Example of a guideline recommendation"
Description: ""
* status = #active
* variableDefinition[Population]
  * intended = Reference(ExamplePopulation)
* variableDefinition[Intervention]
  * intended = Reference(ExampleIntervention)
* variableDefinition[Outcome]
  * intended = Reference(ExampleOutcome)
