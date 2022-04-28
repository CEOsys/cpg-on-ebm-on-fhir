// Author: Gregor Lichtner @glichtner
Profile: RecommendationJustification
Parent: ArtifactAssessment
Id: recommendation-justification
Title: "Recommendation Justification"
Description: "Justification of a clinical guideline recommendation through the underlying evidence and their ratings"
* insert metadata(2022-03-04, #draft, 0.1.0)
* insert profile("This profile is used to define the recommendation rating")
* artifact[x] only Reference
* artifactReference only Reference(InterventionPlan)
//* version 1..1 MS // TODO: uncomment if version is available
* extension contains
  ArtifactAssessmentVersion named version 1..1 MS and // TODO: replace by actual version field if added
  ArtifactAssessmentPublicationStatus named publicationStatus 1..1 MS
* date 1..1
* content 2..* MS
* content ^slicing.discriminator.type = #value
* content ^slicing.discriminator.path = "type"
* content ^slicing.rules = #closed
* content contains
  strength 1..1 MS
  and consensus 0..1 MS
  and benefitAndHarms 0..1 MS
  and certaintyOfEvidence 0..1 MS
  and preferenceAndValues 0..1 MS
  and resources 0..1 MS
  and equity 0..1 MS
  and acceptability 0..1 MS
  and feasibility 0..1 MS
  and evidenceRating 0..* MS
  and netEffect 0..1

* content[strength]
  * informationType 1..1
  * informationType = #rating
  * type 1..
  * type = $cs-ceosys#strength "Strength of recommendation"
  * classifier 1..1
  * classifier from ceosys-vs-recommendation-strength (required)

* content[consensus]
  * informationType 1..1
  * informationType = #rating
  * type 1..
  * type = $cs-ceosys#consensus "Consensus"
  * classifier 1..1
  * classifier from vs-rating-consensus (required)

* content[certaintyOfEvidence]
  * informationType 1..1
  * informationType = #rating
  * type 1..
  * type = $cs-certainty-type#Overall "Overall certainty"
  * classifier 1..1
  * classifier from vs-rating-certainty-of-evidence (required)

* content[benefitAndHarms]
  * informationType 1..1
  * informationType = #rating
  * type 1..
  * type = $cs-etd-certainty-type#benefit-and-harms "Benefit and harms"
  * classifier 1..1
  * classifier from vs-rating-benefit-and-harms (required)

* content[preferenceAndValues]
  * informationType 1..1
  * informationType = #rating
  * type 1..
  * type = $cs-etd-certainty-type#preference-and-values "Preference and values"
  * classifier 1..1
  * classifier from vs-rating-preference-and-values (required)

* content[resources]
  * informationType 1..1
  * informationType = #rating
  * type 1..
  * type = $cs-etd-certainty-type#resources "Resources"
  * classifier 1..1
  * classifier from vs-rating-resources (required)

* content[equity]
  * informationType 1..1
  * informationType = #rating
  * type 1..
  * type = $cs-etd-certainty-type#equity "Equity"
  * classifier 1..1
  * classifier from vs-rating-equity (required)

* content[acceptability]
  * informationType 1..1
  * informationType = #rating
  * type 1..
  * type = $cs-etd-certainty-type#acceptability "Acceptability"
  * classifier 1..1
  * classifier from vs-rating-acceptability (required)

* content[feasibility]
  * informationType 1..1
  * informationType = #rating
  * type 1..
  * type = $cs-etd-certainty-type#feasibility "Feasibility"
  * classifier 1..1
  * classifier from vs-rating-feasibility (required)

* content[evidenceRating]
  * informationType 1..1
  * informationType = #container
  * type 1..
  * type = $cs-ceosys#certainty-of-evidence-rating "Certainty of evidence rating"
  * relatedArtifact 1..1 MS
    * type = $cs-related-artifact-type#justification
    * classifier 1..1
    * classifier = $cs-ceosys#certainty-of-evidence-rating "Certainty of evidence rating"
    * resourceReference 1..1 MS
    * resourceReference only Reference(CertaintyOfEvidenceRating)

* content[netEffect]
  * informationType 1..1
  * informationType = #container
  * type 1..
  * type = $cs-ceosys#net-effect "Net effect"
  * relatedArtifact 1..1  MS
    * type = $cs-related-artifact-type#supported-with
    * classifier 1..1
    * classifier = $cs-ceosys#net-effect "Net effect"
    * resourceReference 1..1 MS
    * resourceReference only Reference(NetEffectEvidence)

Instance: ExampleRecommendationJustification
InstanceOf: recommendation-justification
Usage: #example
Title: "Example Recommendation Justification"
Description: "Example of a recommendation justification"
* artifactReference = Reference(ExampleInterventionPlan)
* date = "2020-01-03"
* extension[publicationStatus].valueCode = #active
* extension[version].valueString = "0.1.0"
* content[strength]
  * type = $cs-ceosys#strength "Strength of recommendation"
  * classifier = ceosys-cs-recommendation-strength#strong-for
* content[certaintyOfEvidence]
  * type = $cs-certainty-type#Overall "Overall certainty"
  * classifier = $cs-certainty-rating#very-low "Very low quality"
* content[consensus]
  * type = CEOsysCodeSystem#consensus "Consensus"
  * classifier = $cs-recommendation-strength#strong "Strong"
* content[evidenceRating][+].relatedArtifact.resourceReference = Reference(ExampleCertaintyOfEvidenceRating)
* content[netEffect].relatedArtifact.resourceReference = Reference(ExampleNetEffect)
