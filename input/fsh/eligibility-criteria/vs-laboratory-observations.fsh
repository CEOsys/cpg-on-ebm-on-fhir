// Author: Gregor Lichtner, @glichtner
ValueSet: LaboratoryObservations
Id: vs-laboratory-observations
Title: "Laboratory Observations"
Description: "Most important"
* insert metadata(2022-11-29, #draft, 0.1.0)
* insert cpg-computable-valueset
// compare http://hl7.org/fhir/loinc.html#props
// CLASSTYPE: 1=Laboratory class; 2=Clinical class; 3=Claims attachments; 4=Surveys
// ORDER_OBS: Provides users with an idea of the intended use of the term by categorizing it as an order only, observation only, or both
* include codes from system $loinc where CLASSTYPE = "1" and STATUS = "Active" and ORDER_OBS regex /Order|Both/
