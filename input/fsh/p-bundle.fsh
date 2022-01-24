// Author: Gregor Lichtner @glichtner
Profile: GuidelineRecommendationBundle
Parent: Bundle
Id: guideline-recommendation-bundle
Title: "Guideline Recommendation Bundle"
Description: ""
* insert metadata(2021-12-03, #draft, 0.1.0)
* obeys bdl-1
* type = #collection
* entry 4..* MS
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #closed
* entry contains
  guideline 1..1 MS
  and guidelineRecommendation 1..* MS
  and population 1..* MS
  and intervention 1..* MS
  and outcome 0..* MS
  and netEffect 0..* MS
  and populationGroup 1..* MS
  and interventionActivity 0..* MS
* entry[guideline]
  * resource 1.. MS
  * resource only Guideline
  * fullUrl 1..1 MS
* entry[guidelineRecommendation]
  * resource 1.. MS
  * resource only GuidelineRecommendation
  * fullUrl 1..1 MS
* entry[population]
  * resource 1.. MS
  * resource only PopulationEvidenceVariable
  * fullUrl 1..1 MS
* entry[intervention]
  * resource 1.. MS
  * resource only InterventionEvidenceVariable
  * fullUrl 1..1 MS
* entry[outcome]
  * resource 1.. MS
  * resource only OutcomeEvidenceVariable
  * fullUrl 1..1 MS
* entry[netEffect]
  * resource 1.. MS
  * resource only NetEffectEvidenceVariable
  * fullUrl 1..1 MS
* entry[populationGroup]
  * resource 1.. MS
  * resource only PopulationGroup
  * fullUrl 1..1 MS
* entry[interventionActivity]
  * resource 1.. MS
  * resource only InterventionActivity
  * fullUrl 1..1 MS

Invariant: bdl-1
Description: "First element of Bundle must be an EvidenceReport"
Expression: "entry.first().resource.is(EvidenceReport)"
Severity: #error

Instance: EvidenceReportGuidelineRecommendationExample
InstanceOf: guideline-recommendation-bundle
Usage: #example
Title: "Guideline Recommendation Example"
Description: ""
* entry[guideline]
  * resource = GuidelineExample
  * fullUrl = "https://www.ceosys.de/guidelines/guideline-example"
* entry[guidelineRecommendation]
  * resource = ExampleGuidelineRecommendation
  * fullUrl = "https://www.ceosys.de/guidelines/guideline-recommendation-example"
* entry[population]
  * resource = ExamplePopulation
  * fullUrl = "https://www.ceosys.de/guidelines/guideline-example/population"
* entry[intervention]
  * resource = ExampleIntervention
  * fullUrl = "https://www.ceosys.de/guidelines/guideline-example/intervention"
* entry[populationGroup]
  * resource = ExamplePopulationGroup
  * fullUrl = "https://www.ceosys.de/guidelines/guideline-example/population-group"
