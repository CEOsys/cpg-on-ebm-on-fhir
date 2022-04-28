Instance: AntithromboticProphylaxisRecommendationJustification
InstanceOf: cpg-recommendation-justification
Usage: #example
Title: "Antithrombotic prophylaxis in hospitalised COVID-19 patients"
Description: "Antithrombotic prophylaxis in hospitalised COVID-19 patients."
* artifactReference = Reference(AntithromboticLWMHProphylaxisInHospitalisedCOVID19PatientsInterventionPlan)
// it should be several intervention-plans here, shouldn't it? Both LWMH and Fondaparinux should be mentioned here, I think
* date = "2022-04-28"
* extension[status].valueCode = #active
* extension[version].valueString = "v0.1"
* content[strength].classifier = ceosys-cs-recommendation-strength#strong-for
//* content[certaintyOfEvidence].classifier = $cs-certainty-rating#low "Low quality"
* content[consensus].classifier = $cs-recommendation-strength#strong "Strong"
* content[preferenceAndValues].classifier = $cs-etd-certainty-rating#factor-not-considered "Factor not considered"
* content[resources].classifier = $cs-etd-certainty-rating#no-important-issues "No important issues"
* content[acceptability].classifier = $cs-etd-certainty-rating#factor-not-considered "Factor not considered"
* content[feasibility].classifier = $cs-etd-certainty-rating#factor-not-considered "Factor not considered"
* content[evidenceRating].relatedArtifact.resourceReference = Reference(AntithromboticProphylaxisRatingOutcomeMortality)

Instance: NoAntithromboticProphylaxisRecommendationJustification
InstanceOf: cpg-recommendation-justification
Usage: #example
Title: "NO Antithrombotic prophylaxis in hospitalised COVID-19 patients with thrombosis"
Description: "NO Antithrombotic prophylaxis in hospitalised COVID-19 patients with thrombosis."
* artifactReference = Reference(NoAntithromboticProphylaxisInHospitalisedCOVID19PatientsInterventionPlan)
* date = "2022-04-28"
* extension[status].valueCode = #active
* extension[version].valueString = "v0.1"
* content[strength].classifier = ceosys-cs-recommendation-strength#strong-for
//* content[certaintyOfEvidence].classifier = $cs-certainty-rating#low "Low quality"
* content[consensus].classifier = $cs-recommendation-strength#strong "Strong"
* content[preferenceAndValues].classifier = $cs-etd-certainty-rating#factor-not-considered "Factor not considered"
* content[resources].classifier = $cs-etd-certainty-rating#no-important-issues "No important issues"
* content[acceptability].classifier = $cs-etd-certainty-rating#factor-not-considered "Factor not considered"
* content[feasibility].classifier = $cs-etd-certainty-rating#factor-not-considered "Factor not considered"
* content[evidenceRating].relatedArtifact.resourceReference = Reference(AntithromboticProphylaxisRatingOutcomeMortality)
