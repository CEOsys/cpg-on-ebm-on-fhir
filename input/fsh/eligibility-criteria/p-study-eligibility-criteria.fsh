// Author: Gregor Lichtner, @glichtner
Profile: StudyEligibilityCriteria
Parent: EligibilityCriteria
Id: study-eligibility-criteria
Title: "Study Eligibility Criteria"
Description: "Eligibility Criteria for a clinical study"
* insert metadata(2022-05-15, #draft, 0.1.1)
* insert profile("This profile describes a population from a clinical study/trial.")

Instance: ExampleStudyEligibilityCriteria
InstanceOf: study-eligibility-criteria
Usage: #example
Title: "Example Study Eligibility Criteria"
Description: "Example of Study Eligbility Criteria"
* name = "ExampleStudyEligibilityCriteria"
* status = #active
* characteristic[condition].definitionByTypeAndValue
  * valueCodeableConcept = $sct#840539006 "Disease caused by Severe acute respiratory syndrome coronavirus 2 (disorder)"
