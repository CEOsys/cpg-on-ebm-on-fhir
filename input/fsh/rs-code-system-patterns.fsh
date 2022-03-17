//Author Gregor Lichtner @glichtner
RuleSet: default-code-systems
* coding ^slicing.discriminator.type = #pattern
* coding ^slicing.discriminator.path = "$this"
* coding ^slicing.rules = #open
* coding contains
    sct 1..* and
    cochrane 0..* and
    loinc 0..* and
    atc 0..* and
    icd10 0..* and
    icd10-cm 0..* and
    icd9 0..* and
    rxnorm 0..* and
    atcde 0..* and
    icd10-gm 0..*
* insert code-system-pattern(sct, $sct)
* insert code-system-pattern(cochrane, $cochrane-ld)
* insert code-system-pattern(loinc, $loinc)
* insert code-system-pattern(atc, $atc)
* insert code-system-pattern(icd10, $icd10)
* insert code-system-pattern(icd10-cm, $icd10-cm)
* insert code-system-pattern(icd9, $icd9)
* insert code-system-pattern(rxnorm, $rxnorm)
* insert code-system-pattern(atcde, $atcde)
* insert code-system-pattern(icd10-gm, $icd10-gm)

RuleSet: code-system-pattern(slicename, system)
* coding[{slicename}]
  * ^patternCoding.system = {system}
  * system 1.. MS
  * code 1.. MS
