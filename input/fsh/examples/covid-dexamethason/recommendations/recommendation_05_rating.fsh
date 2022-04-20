Instance: DexamethasoneRecommendationJustification
InstanceOf: recommendation-justification
Usage: #example
Title: "Dexamethasone for critically ill COVID-19 patients"
Description: "Dexamethasone in critically ill patients with COVID-19."
* artifactReference = Reference(COVID19VentilatedPatientsDexamethasoneApplicationPlan)
* date = "2020-01-03"
* extension[status].valueCode = #active
* extension[version].valueString = "v4.0"
* content[strength].classifier = ceosys-cs-recommendation-strength#strong-for
//* content[certaintyOfEvidence].classifier = $cs-certainty-rating#low "Low quality"
* content[consensus].classifier = $cs-recommendation-strength#strong "Strong"
* content[preferenceAndValues].classifier = $cs-etd-certainty-rating#factor-not-considered "Factor not considered"
* content[resources].classifier = $cs-etd-certainty-rating#no-important-issues "No important issues"
* content[acceptability].classifier = $cs-etd-certainty-rating#factor-not-considered "Factor not considered"
* content[feasibility].classifier = $cs-etd-certainty-rating#factor-not-considered "Factor not considered"
* content[evidenceRating].relatedArtifact.resourceReference = Reference(DexamethasoneRatingOutcomeMortality)

Instance: NoDexamethasoneRecommendationJustification
InstanceOf: recommendation-justification
Usage: #example
Title: "NO Dexamethasone for moderately ill COVID-19 patients"
Description: "No Dexamethasone in moderately ill patients with COVID-19."
* artifactReference = Reference(COVID19NonVentilatedPatientsDexamethasoneApplicationPlan)
* date = "2020-01-03"
* extension[status].valueCode = #active
* extension[version].valueString = "v4.0"
* content[strength].classifier = ceosys-cs-recommendation-strength#strong-for
//* content[certaintyOfEvidence].classifier = $cs-certainty-rating#low "Low quality"
* content[consensus].classifier = $cs-recommendation-strength#strong "Strong"
* content[preferenceAndValues].classifier = $cs-etd-certainty-rating#factor-not-considered "Factor not considered"
* content[resources].classifier = $cs-etd-certainty-rating#no-important-issues "No important issues"
* content[acceptability].classifier = $cs-etd-certainty-rating#factor-not-considered "Factor not considered"
* content[feasibility].classifier = $cs-etd-certainty-rating#factor-not-considered "Factor not considered"
* content[evidenceRating].relatedArtifact.resourceReference = Reference(DexamethasoneRatingOutcomeMortality)
