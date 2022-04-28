Instance: AntithromboticProphylaxisRatingOutcomeMortality
InstanceOf: certainty-of-evidence-rating
Usage: #example
Title: "Certainty of Evidence for outcome: mortality of hospitalised COVID-19 patients under antithrombotic prophylaxis"
Description: "Certainty of evidence rating for mortality outcome of antithrombotic prophylaxis recommendation"
// I think title and description are pretty redundant here, do we really need both?
* date = "2022-04-27"
* extension[status].valueCode = #active
* extension[version].valueString = "0.1"
* artifactReference = Reference(AntithromboticProphylaxisOutcomeMortality)
* content[certaintyOfEvidence].classifier = $cs-certainty-rating#moderate "Moderate quality"
* content[clinicalImportance].classifier = $cs-clinical-importance#9 "Critical"
* content[riskOfBias].classifier = $cs-certainty-rating#serious-concern "serious concern"
* content[inconsistency].classifier = $cs-certainty-rating#no-concern "no serious concern"
* content[indirectness].classifier = $cs-certainty-rating#no-concern "no serious concern"
* content[imprecision].classifier = $cs-certainty-rating#no-concern "no serious concern"
* content[publicationBias].classifier = $cs-certainty-rating#no-concern "no serious concern"
// I don't really understand...

Instance: AntithromboticProphylaxisOutcomeMortality
InstanceOf: outcome-evidence
Usage: #example
Title: "Mortality Outcome for hospitalised COVID-19 patients under antithrombotic prophylaxis"
Description: "Mortality Outcome for hospitalised COVID-19 patients under antithrombotic prophylaxis"
* name = "ExampleOutcomeEvidence"
* status = #active
// * studyType = $cs-study-type#RCT
// * synthesisType = $cs-synthesis-type#NotApplicable
// * relatedArtifact[studyCitation].resourceReference = Reference(SystemicCorticosteroidsForTheTreatmentOfCOVID19)
// * variableDefinition[population].observed = Reference(StudyGroupSystemicCorticosteroidsCOVID19)
// * variableDefinition[outcome].observed = Reference(OutcomeAllCauseMortality)
// * statistic[relativeEffect]
//   * statisticType = $cs-statistic-type#C93152	"Relative Risk"
//   * quantity.value = 0.89
//   * attributeEstimate[confidenceInterval]
//     * range.low.value = 0.80
//     * range.high.value = 1.00
//   * sampleSize
//     * numberOfStudies = 9
//     * numberOfParticipants = 7930
// * statistic[baselineRisk].quantity = 245 '1/1000'
// "Der  Nutzen  einer  medikamentösen  VTE-Prophylaxe, vorzugsweise mit NMH, 
// bei stationären Patienten mit akuten internistischen Erkrankungen und Bettlägerigkeit  wurde  in  mehreren  randomisierten  Studien  
// prospektiv  untersucht.  Bezüglich  hospitalisierter Patienten mit COVID-19 liegen zwar keine spezifischen Studiendaten zur VTE-Prophylaxe vor; 
// die bisher verfügbare Evidenz ist aber auf die Pandemiesituation übertragbar. Unter Berücksichtigung von Kontraindikationen reduziert die 
// Thromboseprophylaxe mit NMH (oder alternativ mit Fondaparinux) hochwirksam das VTE-Risiko, ohne das Risiko für schwere Blutungen signifikant zu 
// erhöhen."
// translates into: We do not have the quantifying data necessary for the "measurement" of abovementioned "relativeEffect", as no explicit studies have been done


Instance: StudyGroupSystemicCorticosteroidsCOVID19
InstanceOf: study-group
Usage: #example
Title: "Study group for Systemic corticosteroids plus standard care vs. standard care (plus/minus placebo)"
Description: "Study group for Systemic corticosteroids plus standard care vs. standard care (plus/minus placebo)."
* characteristic
  * valueReference = Reference(StudyEligibilityCriteriaSystemicCorticosteroidsCOVID19)
* characteristic[=].exclude = false // no need to exclude outcomes

Instance: StudyEligibilityCriteriaSystemicCorticosteroidsCOVID19
InstanceOf: study-eligibility-criteria
Usage: #example
Title: "Study eligibility criteria for Systemic corticosteroids plus standard care vs. standard care (plus/minus placebo)"
Description: "Study eligibility criteria for Systemic corticosteroids plus standard care vs. standard care (plus/minus placebo)"
* name = "StudyEligibilityCriteriaSystemicCorticosteroidsCOVID19"
* status = #active
* characteristic[+].defByTypeAndValue
  * typeCodeableConcept.coding[sct] = $sctIntl2021#840539006 "Disease caused by Severe acute respiratory syndrome coronavirus 2 (disorder)"
  * valueBoolean = true
* characteristic[=].exclude = false

Instance: OutcomeAllCauseMortality
InstanceOf: outcome-definition
Usage: #example
Title: "All-cause mortality"
Description: "All-cause mortality."
* status = #active
* handling = #dichotomous
* name = "AllCauseMortality"
* characteristic
  * definitionCodeableConcept = $sct#409651001 "Mortality rate (observable entity)"
* characteristic[=].exclude = false // no need to exclude outcomes
