// Author: Gregor Lichtner @glichtner
ValueSet: Assessment
Id: vs-assessment
Title: "Assessment"
Description: "Assessments"
* insert metadata(2023-10-16, #draft, 0.1.0)
* insert cpg-computable-valueset
* include codes from system $sct where concept is-a #363787002 "Observable entity (observable entity)"
* include codes from system $sct-us where concept is-a #363787002 "Observable entity (observable entity)"
* include codes from system $loinc where ORDER_OBS = "ORDER" 
* include codes from system $loinc where ORDER_OBS = "BOTH"
