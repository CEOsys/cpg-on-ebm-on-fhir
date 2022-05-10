// Author: Gregor Lichtner @glichtner
Profile: OutcomeEvidenceSynthesis
Parent: OutcomeEvidence
Id: outcome-evidence-synthesis
Title: "Outcome Evidence Synthesis"
Description: "A single evidence for an outcome from an evidence synthesis."
* insert metadata(2022-05-10, #draft, 0.1.0)
* variableDefinition[population]
  * observed only Reference(EvidenceSynthesisCohorts)
* variableDefinition[outcome]
  * observed only Reference(EvidenceDataSet)

Instance: ExampleOutcomeEvidenceSynthesis
InstanceOf: outcome-evidence-synthesis
Usage: #example
Title: "Example Outcome Evidence Synthesis"
Description: "Example Outcome Evidence Synthesis"
* name = "ExampleOutcomeEvidenceSynthesis"
* status = #active
* studyType = $cs-study-type#RCT
* synthesisType = $cs-synthesis-type#NotApplicable
* relatedArtifact[studyCitation].resourceReference = Reference(ExampleStudyCitation)
* variableDefinition[population].intended = Reference(ExampleStudyEligibilityCriteria)
* variableDefinition[population].observed = Reference(ExampleEvidenceSynthesisCohorts)
* variableDefinition[outcome].observed = Reference(ExampleOutcome)
