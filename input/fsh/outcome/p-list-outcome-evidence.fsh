// Author: Gregor Lichtner @glichtner
Profile: ListOutcomeEvidence
Parent: List
Id: list-outcome-evidence
Title: "List Outcome Evidence"
Description: "List of Outcome Evidences that together form the basis of a clinical practice guideline (CPG)"
* entry 1..*
  * item only Reference(OutcomeEvidence)

Instance: ExampleListOutcomeEvidence
InstanceOf: list-outcome-evidence
Usage: #example
Title: "Example List Outcome Evidence"
Description: "Example of an outcome list"
* status = #current "Current"
* mode = #working "Working List"
* entry[+].item = Reference(ExampleOutcomeEvidence)
