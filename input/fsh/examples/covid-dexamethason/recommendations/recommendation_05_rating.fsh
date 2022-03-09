Instance: DexamethasoneRecommendationRating
InstanceOf: cpg-recommendation-rating
Usage: #example
Title: "Dexamethasone for critically ill COVID-19 patients"
Description: "Dexamethasone in critically ill patients with COVID-19."
* artifactReference = Reference(DexamaethasoneRecommendationOutcomes)
* date = "2020-01-03"
* extension[publicationStatus].valueCode = #retired
* extension[version].valueString = "v2.0"
//* extension[relatedTo] = Reference(DexamethasoneRecommendationCitation) // TODO: implement extension
* content[strength]
  * type = $cs-ceosys#strength "Strength of recommendation"
  * classifier = ceosys-cs-recommendation-strength#strong-for
* content[certaintyOfEvidence]
  * type = $cs-certainty-type#Overall "Overall certainty"
  * classifier = $cs-certainty-rating#low "Low quality"
* content[consensus]
  * type = CEOsysCodeSystem#consensus "Consensus"
  * classifier = $cs-recommendation-strength#strong "Strong"

Instance: DexamaethasoneRecommendationOutcomes
InstanceOf: list-outcome-evidence
Usage: #example
Title: "List of outcomes for Dexamethasone recommendation"
Description: "List of outcomes for Dexamethasone recommendation"
* status = #current "Current"
* mode = #working "Working List"
* entry[+].item = Reference(ExampleOutcomeEvidence) // TODO: replace with real outcome evidence
