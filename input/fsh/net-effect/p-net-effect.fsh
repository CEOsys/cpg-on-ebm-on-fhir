// Author: Gregor Lichtner @glichtner
Profile: NetEffectEvidenceVariable
Parent: EvidenceVariable
Id: net-effect-evidence-variable
Title: "Net Effect Evidence Variable"
Description: "Net Effect for the provided evidence, calculated by aggregation of importance-weighted outcomes."
* insert metadata(2021-12-21, #draft, 0.1.0)
* name 1..1 MS
* characteristicCombination 1..1 MS
  * code = $cs-characteristic-combination#net-effect
* characteristic 1..* MS
  * type 1..1 MS
  * type from CochranePICOOutcome (required)
  * definition[x] only Reference
  * definitionReference only Reference(OutcomeEvidenceVariable)

Instance: ExampleNetEffect
InstanceOf: net-effect-evidence-variable
Usage: #example
Title: "Example Net Effect"
Description: "Example of a net effect with a single outcome."
* status = #active
* identifier
  * system = $ceosys
  * value = "net-effect-example"
* name = "NetEfectExample"
* characteristic
  * type = $cochrane-pico#Outcome
  * definitionReference = Reference(ExampleOutcome)
