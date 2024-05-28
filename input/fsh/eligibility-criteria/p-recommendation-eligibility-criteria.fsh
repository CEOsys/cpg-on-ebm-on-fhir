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
* insert canonical-url(example/recommendation-eligibility-criteria)
* status = #active
* name = "PopulationExample"
* characteristic[condition].definitionByTypeAndValue
  * valueCodeableConcept = $sct#840539006 "Disease caused by Severe acute respiratory syndrome coronavirus 2 (disorder)"


Instance: ExampleRecommendationEligibilityCriteria5Levels
InstanceOf: recommendation-eligibility-criteria
Usage: #example
Title: "Example Recommendation Eligibility Criteria"
Description: "Example of a population element of a PICO construct that evidence is about."
* insert canonical-url(example/recommendation-eligibility-criteria)
* status = #active
* name = "PopulationExample"
* characteristic[+].definitionByCombination
  * code = #all-of
  * characteristic[+].definitionByCombination
    * code = #all-of
    * characteristic[+].definitionByCombination
      * code = #all-of
      * characteristic[+].definitionByCombination
        * code = #all-of
        * characteristic[condition][+].definitionByTypeAndValue
          * valueCodeableConcept = $sct#840539006 "Disease caused by Severe acute respiratory syndrome coronavirus 2 (disorder)"

Instance: ExampleRecommendationEligibilityCriteriaDrugs
InstanceOf: recommendation-eligibility-criteria
Usage: #example
Title: "Example Recommendation Eligibility Criteria"
Description: "Example of a population element of a PICO construct that evidence is about."
* insert canonical-url(example/recommendation-eligibility-criteria)
* status = #active
* name = "PopulationExample"
* characteristic[+].definitionByCombination
  * code = #all-of
  * characteristic[+].definitionByCombination
    * code = #all-of
    * characteristic[drugAdministration].definitionByTypeAndValue
      * valueCodeableConcept = $sct#372877000 "Heparin (substance)"
      * extension[dosage].valueDosage
        * extension[condition]
          * extension[type].valueCodeableConcept = $loinc#29463-7 "Body weight"
          * extension[value].valueRange.high = 70 'kg' "kg"
        * route = $sct#26643006 "Oral route"
        * timing
          * repeat
            * count = 10
            * duration = 10
            * durationUnit = $ucum#d "d"
            * frequency = 1
            * period = 1
            * periodUnit = $ucum#d "d"
        * doseAndRate
          * doseQuantity = 6 'mg' "mg"
          * rateQuantity = 1 '/d' "/d"
