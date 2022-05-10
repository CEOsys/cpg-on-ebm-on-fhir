// Author: Gregor Lichtner @glichtner
Profile: StudyOutcomeEvidence
Parent: OutcomeEvidence
Id: study-outcome-evidence
Title: "Study Outcome Evidence"
Description: "A single evidence for an outcome from a primary study."
* insert metadata(2022-05-10, #draft, 0.1.0)
* variableDefinition[population]
  * observed only Reference(StudyCohort)
* variableDefinition[outcome]
  * observed only Reference(OutcomeDefinition)

Instance: ExampleStudyOutcomeEvidence
InstanceOf: study-outcome-evidence
Usage: #example
Title: "Example Study Outcome Evidence"
Description: "Example Study Outcome Evidence"
* name = "ExampleStudyOutcomeEvidence"
* status = #active
* studyType = $cs-study-type#RCT
* synthesisType = $cs-synthesis-type#NotApplicable
* relatedArtifact[studyCitation].resourceReference = Reference(ExampleStudyCitation)
* variableDefinition[population].intended = Reference(ExampleStudyEligibilityCriteria)
* variableDefinition[population].observed = Reference(ExampleStudyCohort)
* variableDefinition[outcome].observed = Reference(ExampleOutcome)
