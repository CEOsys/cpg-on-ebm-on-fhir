// Author: Gregor Lichtner @glichtner
// TODO: Update with proper resources etc
Profile: GuidelineBundle
Parent: Bundle
Id: guideline-bundle
Title: "Guideline Bundle"
Description: "Collection of all resources that represent a single clinical practice guideline."
* insert metadata(2021-12-03, #draft, 0.1.0)
* insert profile("This profile is a guideline bundle")
* obeys bdl-1
* type = #collection
* entry 4..* MS
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #closed
* entry contains
  guideline 1..1 MS
  and guidelineCitation 0..1 MS
  and interventionPlan 1..* MS
  and interventionActivity 1..* MS
  and populationGroup 1..* MS
  and PICOEvidenceVariable 1..* MS // includes Population, StudyEligibilityCriteria, and Outcome
  and recommendationJustification 1..* MS
  and certaintyOfEvidenceRating 0..* MS
  and outcomeEvidence 0..* MS
  and studyGroup 0..* MS
  and studyCitation 0..* MS
  and recommendationCitation 0..* MS
  and netEffect 0..* MS
* entry[guideline]
  * resource 1.. MS
  * resource only Guideline
  * fullUrl 1..1 MS
* entry[guidelineCitation]
  * resource 1.. MS
  * resource only GuidelineCitation
  * fullUrl 1..1 MS
* entry[interventionPlan]
  * resource 1.. MS
  * resource only InterventionPlan
  * fullUrl 1..1 MS
* entry[interventionActivity]
  * resource 1.. MS
  * resource only InterventionActivity
  * fullUrl 1..1 MS
* entry[populationGroup]
  * resource 1.. MS
  * resource only PopulationGroup
  * fullUrl 1..1 MS
* entry[PICOEvidenceVariable]
  * resource 1.. MS
  * resource only PICOEvidenceVariable
  * fullUrl 1..1 MS
* entry[recommendationJustification]
  * resource 1.. MS
  * resource only CPGRecommendationJustification
  * fullUrl 1..1 MS
* entry[certaintyOfEvidenceRating]
  * resource 1.. MS
  * resource only CertaintyOfEvidenceRating
  * fullUrl 1..1 MS
* entry[outcomeEvidence]
  * resource 1.. MS
  * resource only OutcomeEvidence
  * fullUrl 1..1 MS
* entry[studyGroup]
  * resource 1.. MS
  * resource only StudyGroup
  * fullUrl 1..1 MS
* entry[studyCitation]
  * resource 1.. MS
  * resource only StudyCitation
  * fullUrl 1..1 MS
* entry[recommendationCitation]
  * resource 1.. MS
  * resource only RecommendationCitation
  * fullUrl 1..1 MS
* entry[netEffect]
  * resource 1.. MS
  * resource only NetEffectEvidence
  * fullUrl 1..1 MS

Invariant: bdl-1
Description: "First element of Bundle must be an Composition."
Expression: "entry.first().resource.is(Composition)"
Severity: #error

Instance: GuidelineRecommendationExample
InstanceOf: guideline-bundle
Usage: #example
Title: "Guideline Recommendation Example"
Description: "Example of a clinical practice guideline representation bundle."
* entry[guideline][+]
  * resource = GuidelineExample
  * fullUrl = "https://www.ceosys.de/guidelines/guideline-example"
* entry[guidelineCitation][+]
  * resource = ExampleGuidelineCitation
  * fullUrl = "https://www.ceosys.de/guidelines/guideline-example/citation"
* entry[interventionPlan][+]
  * resource = ExampleInterventionPlan
  * fullUrl = "https://www.ceosys.de/guidelines/guideline-example/intervention-plan"
* entry[interventionActivity][+]
  * resource = ExampleInterventionActivity
  * fullUrl = "https://www.ceosys.de/guidelines/guideline-example/intervention-activity"
* entry[populationGroup][+]
  * resource = ExamplePopulationGroup
  * fullUrl = "https://www.ceosys.de/guidelines/guideline-example/population-group"
* entry[PICOEvidenceVariable][+]
  * resource = ExamplePopulation
  * fullUrl = "https://www.ceosys.de/guidelines/guideline-example/population"
* entry[recommendationJustification][+]
  * resource = ExampleRecommendationJustification
  * fullUrl = "https://www.ceosys.de/guidelines/guideline-example/recommendation-justification"
* entry[certaintyOfEvidenceRating][+]
  * resource = ExampleCertaintyOfEvidenceRating
  * fullUrl = "https://www.ceosys.de/guidelines/guideline-example/certainty-of-evidence-rating"
* entry[outcomeEvidence][+]
  * resource = ExampleOutcomeEvidence
  * fullUrl = "https://www.ceosys.de/guidelines/guideline-example/outcome-evidence"
* entry[studyGroup][+]
  * resource = ExampleStudyGroup
  * fullUrl = "https://www.ceosys.de/guidelines/guideline-example/study-group"
* entry[PICOEvidenceVariable][+] // StudyEligibilityCriteria
  * resource = ExampleStudyEligibilityCriteria
  * fullUrl = "https://www.ceosys.de/guidelines/guideline-example/study-eligbility-criteria"
* entry[studyCitation][+]
  * resource = ExampleStudyCitation
  * fullUrl = "https://www.ceosys.de/guidelines/guideline-example/study-citation"
* entry[PICOEvidenceVariable][+] // Outcome
  * resource = ExampleOutcome
  * fullUrl = "https://www.ceosys.de/guidelines/guideline-example/outcome"
* entry[recommendationCitation][+]
  * resource = ExampleRecommendationCitation
  * fullUrl = "https://www.ceosys.de/guidelines/guideline-example/recommendation-citation"
* entry[netEffect][+]
  * resource = ExampleNetEffect
  * fullUrl = "https://www.ceosys.de/guidelines/guideline-example/net-effect"
