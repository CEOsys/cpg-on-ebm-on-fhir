Instance: DexamethasoneRatingOutcomeMortality
InstanceOf: certainty-of-evidence-rating
Usage: #example
Title: "Certainty of Evidence for outcome: mortality of Dexamethasone application"
Description: "Certainty of evidence rating for mortality outcome of Dexamethasonse application recommendation"
* date = "2020-01-03"
* extension[publicationStatus].valueCode = #active
* extension[version].valueString = "v4.0"
* artifactReference = Reference(DexamethasoneOutcomeMortality)
* content[certaintyOfEvidence].classifier = $cs-certainty-rating#moderate "Moderate quality"
* content[clinicalImportance].classifier = $cs-clinical-importance#9 "Critical"
* content[riskOfBias].classifier = $cs-certainty-rating#serious-concern "serious concern"
* content[inconsistency].classifier = $cs-certainty-rating#no-concern "no serious concern"
* content[indirectness].classifier = $cs-certainty-rating#no-concern "no serious concern"
* content[imprecision].classifier = $cs-certainty-rating#no-concern "no serious concern"
* content[publicationBias].classifier = $cs-certainty-rating#no-concern "no serious concern"

Instance: DexamethasoneOutcomeMortality
InstanceOf: outcome-evidence-synthesis
Usage: #example
Title: "Mortality Outcome for Dexamethasone application"
Description: "Mortality Outcome for Dexamethasone application in hospitalized COVID-19 patients"
* name = "ExampleOutcomeEvidence"
* status = #active
* studyType = $cs-study-type#RCT
* synthesisType = $cs-synthesis-type#NotApplicable
* relatedArtifact[studyCitation].resourceReference = Reference(SystemicCorticosteroidsForTheTreatmentOfCOVID19)
* variableDefinition[population].intended = Reference(StudyEligibilityCriteriaSystemicCorticosteroidsCOVID19)
* variableDefinition[population].observed = Reference(StudyCohortCorticosteroidsCOVID19)
* variableDefinition[outcome].observed = Reference(OutcomeAllCauseMortality)
* statistic[relativeEffect]
  * statisticType = $cs-statistic-type#C93152	"Relative Risk"
  * quantity.value = 0.89
  * attributeEstimate[confidenceInterval]
    * range.low.value = 0.80
    * range.high.value = 1.00
  * sampleSize
    * numberOfStudies = 9
    * numberOfParticipants = 7930
* statistic[baselineRisk].quantity = 245 '1/1000'

Instance: StudyCohortCorticosteroidsCOVID19
InstanceOf: evidence-synthesis-cohorts
Usage: #example
Title: "Study cohort for Systemic corticosteroids plus standard care vs. standard care (plus/minus placebo)"
Description: "Study cohort for for Systemic corticosteroids plus standard care vs. standard care (plus/minus placebo)"
* name = "StudyCohortCriteriaSystemicCorticosteroidsCOVID19"
* quantity = 7898

Instance: StudyEligibilityCriteriaSystemicCorticosteroidsCOVID19
InstanceOf: study-eligibility-criteria
Usage: #example
Title: "Study eligibility criteria for Systemic corticosteroids plus standard care vs. standard care (plus/minus placebo)"
Description: "Study eligibility criteria for Systemic corticosteroids plus standard care vs. standard care (plus/minus placebo)"
* name = "StudyEligibilityCriteriaSystemicCorticosteroidsCOVID19"
* status = #active
* characteristic[+].definitionByTypeAndValue
  * typeCodeableConcept.coding[sct] = $sct#840539006 "Disease caused by Severe acute respiratory syndrome coronavirus 2 (disorder)"
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
