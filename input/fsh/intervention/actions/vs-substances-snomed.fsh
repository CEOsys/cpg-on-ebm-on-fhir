// Author: Gregor Lichtner @glichtner
ValueSet: SubstancesSNOMED
Id: vs-substances-snomed
Title: "Substances SNOMED CT"
Description: "All substance codes from SNOMED CT"
* insert metadata(2022-09-06, #draft, 0.1.1)
* insert cpg-computable-valueset
* include codes from system $sct where concept is-a #105590001 "Substance (substance)"
