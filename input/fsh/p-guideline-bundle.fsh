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
  and recommendationPlan 1..* MS
  and recommendationAction 1..* MS
  and PICOEvidenceVariable 1..* MS // includes RecommendationEligibilityCriteria, StudyEligibilityCriteria, and Outcome
  and recommendationJustification 1..* MS
  and certaintyOfEvidenceRating 0..* MS
  and outcomeEvidence 0..* MS
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
* entry[recommendationPlan]
  * resource 1.. MS
  * resource only RecommendationPlan
  * fullUrl 1..1 MS
* entry[recommendationAction]
  * resource 1.. MS
  * resource only RecommendationAction
  * fullUrl 1..1 MS
* entry[PICOEvidenceVariable]
  * resource 1.. MS
  * resource only PICOEvidenceVariable
  * fullUrl 1..1 MS
* entry[recommendationJustification]
  * resource 1.. MS
  * resource only RecommendationJustification
  * fullUrl 1..1 MS
* entry[certaintyOfEvidenceRating]
  * resource 1.. MS
  * resource only CertaintyOfEvidenceRating
  * fullUrl 1..1 MS
* entry[outcomeEvidence]
  * resource 1.. MS
  * resource only OutcomeEvidence
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
  * resource only NetEffectEstimate
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
  * insert canonical-full-url(example/guidelines/guideline-example)
* entry[guidelineCitation][+]
  * resource = ExampleGuidelineCitation
  * insert canonical-full-url(example/guidelines/guideline-example/citation)
* entry[recommendationPlan][+]
  * resource = ExampleRecommendationPlan
  * insert canonical-full-url(example/guidelines/guideline-example/recommendation-plan)
* entry[recommendationAction][+]
  * resource = ExampleDrugAdministrationAction
  * insert canonical-full-url(example/guidelines/guideline-example/recommendation-action)
* entry[PICOEvidenceVariable][+]
  * resource = ExampleRecommendationEligibilityCriteria
  * insert canonical-full-url(example/guidelines/guideline-example/population)
* entry[recommendationJustification][+]
  * resource = ExampleRecommendationJustification
  * insert canonical-full-url(example/guidelines/guideline-example/recommendation-justification)
* entry[certaintyOfEvidenceRating][+]
  * resource = ExampleCertaintyOfEvidenceRating
  * insert canonical-full-url(example/guidelines/guideline-example/certainty-of-evidence-rating)
* entry[outcomeEvidence][+]
  * resource = ExampleStudyOutcomeEvidence
  * insert canonical-full-url(example/guidelines/guideline-example/study-outcome-evidence)
* entry[outcomeEvidence][+]
  * resource = ExampleOutcomeEvidenceSynthesis
  * insert canonical-full-url(example/guidelines/guideline-example/outcome-evidence-synthesis)
* entry[PICOEvidenceVariable][+] // StudyEligibilityCriteria
  * resource = ExampleStudyEligibilityCriteria
  * insert canonical-full-url(example/guidelines/guideline-example/study-eligbility-criteria)
* entry[studyCitation][+]
  * resource = ExampleStudyCitation
  * insert canonical-full-url(example/guidelines/guideline-example/study-citation)
* entry[PICOEvidenceVariable][+] // Outcome
  * resource = ExampleOutcome
  * insert canonical-full-url(example/guidelines/guideline-example/outcome)
* entry[recommendationCitation][+]
  * resource = ExampleRecommendationCitation
  * insert canonical-full-url(example/guidelines/guideline-example/recommendation-citation)
* entry[netEffect][+]
  * resource = ExampleNetEffectEstimate
  * insert canonical-full-url(example/guidelines/guideline-example/net-effect-estimate)
