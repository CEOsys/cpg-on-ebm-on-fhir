// Author: Gregor Lichtner, @glichtner
ValueSet: Observations
Id: vs-observations
Title: "Observations"
Description: "Observations are measurements of a patient's state of health. They are typically made by a healthcare professional, but can also be self-reported by the patient."
* insert metadata(2024-05-14, #draft, 0.1.1)
* insert cpg-computable-valueset
* include codes from system $sct where concept is-a #363787002 "Observable entity (observable entity)"
// compare http://hl7.org/fhir/loinc.html#props
// CLASSTYPE: 1=Laboratory class; 2=Clinical class; 3=Claims attachments; 4=Surveys
// ORDER_OBS: Provides users with an idea of the intended use of the term by categorizing it as an order only, observation only, or both
* include codes from system $loinc where CLASSTYPE regex /Laboratory class|Clinical class/ and STATUS = "ACTIVE"
* exclude $loinc#78030-4 "Episode of care Type" // need to exclude it explicitly as the FHIR validator doesn't seem to use filters, 
                                                //and then doesn't distinguish between episodeOfCare and observation slice in eligibility-criteria

