// Author: Gregor Lichtner, @glichtner
ValueSet: RadiologicFindingSCT
Id: vs-radiologic-finding-sct
Title: "Radiologic Finding SCT"
Description: "Radiologic findings from SNOMED CT"
* insert metadata(2022-09-06, #draft, 0.1.1)
* insert cpg-computable-valueset
* include codes from system $sct where concept is-a #118247008 "Radiologic finding (finding)"
