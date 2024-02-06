ValueSet: AssessmentScales
Id: vs-assessment-scales
Title: "Assessment Scales"
Description: "Codes for assessment scales (scores etc.)"
* insert metadata(2023-10-13, #draft, 0.1.0)
* insert cpg-computable-valueset
* include codes from system $sct where concept is-a #273249006 "Assessment scales (assessment scale)"
* include codes from system $sct-us where concept is-a #273249006 "Assessment scales (assessment scale)" // US Edition for RASS etc.
* $loinc#72514-3 "Pain severity - 0-10 verbal numeric rating [Score] - Reported"
* $loinc#54627-5 "Signs and symptoms of delirium (from CAM)"
* include codes from system $loinc where PROPERTY = "Score"
