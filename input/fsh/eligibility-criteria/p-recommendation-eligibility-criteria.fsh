// Author: Gregor Lichtner @glichtner
Profile: RecommendationEligibilityCriteria
Parent: EligibilityCriteria
Id: recommendation-eligibility-criteria
Title: "Recommendation Eligibility Criteria"
Description: "Eligibility Criteria for a Clinical Guideline Recommendation"
* insert metadata(2022-05-15, #draft, 0.1.1)
* insert profile("This profile describes a population defined in clinical practice guideline recommendation.")
* url 1..1 MS // canonical resource

Instance: ExampleRecommendationEligibilityCriteria
InstanceOf: recommendation-eligibility-criteria
Usage: #example
Title: "Example Recommendation Eligibility Criteria"
Description: "Example of a population element of a PICO construct that evidence is about."
* status = #active
* url = "https://www.example.com/recommendation-eligibility-criteria"
* name = "PopulationExample"
* characteristic[condition].definitionByTypeAndValue
  * valueCodeableConcept = $sct#840539006 "Disease caused by Severe acute respiratory syndrome coronavirus 2 (disorder)"
