// Author: Gregor Lichtner @glichtner
ValueSet: BodyPositioningSNOMED
Id: vs-body-positioning-snomed
Title: "Body Positioning SNOMED CT"
Description: "Body positioning procedure codes from SNOMED CT"
* insert metadata(2022-09-06, #draft, 0.1.1)
* insert cpg-computable-valueset
* include codes from system $sct where concept is-a #229824005 "Positioning patient (procedure)"
