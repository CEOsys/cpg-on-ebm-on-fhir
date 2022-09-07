// Author: Gregor Lichtner, @glichtner
ValueSet: AllergicDispositionSCT
Id: vs-allergic-disposition-sct
Title: "Allergic Disposition SCT"
Description: "Allergic Dispositions from SNOMED CT"
* insert metadata(2022-09-06, #draft, 0.1.1)
* insert cpg-computable-valueset
* include codes from system $sct where concept is-a #609328004 "Allergic disposition (finding)"
