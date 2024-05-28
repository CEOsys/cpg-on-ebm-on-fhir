// Author: Gregor Lichtner, @glichtner
ValueSet: Drugs
Id: vs-drugs
Title: "Drugs"
Description: "Drugs"
* include codes from system $sct where concept is-a $sct#105590001 "Substance (substance)"
* include codes from system $sct where concept is-a $sct#763158003 "Medicinal product (product)"
* include codes from system $atc
* include codes from system $atcde
