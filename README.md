
# Clinical Practice Guidelines on EBMonFHIR

[![FHIR Validation](https://github.com/CEOsys/cpg-on-ebm-on-fhir/actions/workflows/fhir-validate.yml/badge.svg)](https://github.com/CEOsys/cpg-on-ebm-on-fhir/actions/workflows/fhir-validate.yml)
[![ImplementationGuide Publisher](https://github.com/CEOsys/cpg-on-ebm-on-fhir/actions/workflows/ig-publish.yml/badge.svg)](https://github.com/CEOsys/cpg-on-ebm-on-fhir/actions/workflows/ig-publish.yml)

## Quick start
This implementation guide describes an [evidence-based medicine on FHIR (EBMonFHIR)][EMBonFHIR] approach to represent clinical practice guidelines using FHIR resources.

Apart from representing the actual treatment recommendations provided by the guidelines, a large set of metadata regarding the guideline creation process (risk of bias, certainty, authorships etc.) is also encoded.
The representation of clinical practice guidelines is oriented to the PICO (population, intervention/exposure, comparator, outcome) framework.

For detailed information, please visit the [Implementation Guide](https://ceosys.github.io/cpg-on-ebm-on-fhir/)!

## Summary

The following diagram provides an overview of the different profiles used in this implementation guide and their relationship:

![FHIR structure overview](https://github.com/CEOsys/cpg-on-ebm-on-fhir/raw/main/input/images/fhir-structure-overview.png)

## Description

The main elements of a clinical practice guideline in the context of this FHIR implementation guide is represented in the following table:

| Name | FHIR Resource | Description | References |
| ---- | ------------- | ----------- | ---------- |
| Clinical Practice Guideline | [EvidenceReport][Clinical Practice Guideline] | Representation of the whole guideline. | [Guideline Recommendations][Guideline Recommendation] |
| Guideline Recommendation | [Evidence][Guideline Recommendation] | Representation of a single recommendation from a guideline | [Population][Population], [Intervention][Intervention], [Outcome][Outcome] and [Net Effect][Net Effect] pertinent to the guideline recommendation. |
| Population | [EvidenceVariable][Population] | Description of the population to which a specific guideline recommendation applies. | [Population Groups][Population Group] making up the population addressed in the recommendation. |
| Intervention | [EvidenceVariable][Intervention] | Description of recommmended intervention addressed in a specific guideline recommendation. | [Intervention Activities][Intervention Activity] specified in the guideline recommendation. |
| Outcome | [EvidenceVariable][Outcome] | Description of the (expected) outcome of a specific guideline recommendation | - |


Additionally, the following profiles are used to specify a guideline:

| Name | FHIR Resource | Description | References |
| ---- | ------------- | ----------- | ---------- |
| Population Group | [Group][Population Group] | Characterization of a group of patients or subjects for which a clinical guideline recommends a treatment or intervention. | - |
| Intervention Activity | [ActivityDefinition][Intervention Activity] | Definition of an activity that is part of an intervention in the context of a clinical practice guideline recommendation. | - |
| Net Effect | [EvidenceVariable][Net Effect] | Description of the net effect of a guideline recommendation. | (Expected) [Outcomes][Outcome] of a guideline recommendation. |
| Guideline Bundle | [Bundle][Guideline Bundle] | Bundle of all resources of a single clinical practice guideline. | All other resources in this IG. |


## Authors
* [Gregor Lichtner](https://github.com/glichtner) (University Medicine Greifswald, Charité -- Universitätsmedizin Berlin)
* Falk von Dincklage (University Medicine Greifswald, Charité -- Universitätsmedizin Berlin)
* Carlo Jurth (Charité -- Universitätsmedizin Berlin)

## Involved organizations
* [Charité -- Universitätsmedizin Berlin](https://www.charite.de)
* [University Medicine Greifswald](https://www.medizin.uni-greifswald.de/de/home/)

## Links
* [Netzwerk Universitätsmedizin (NUM)][NUM]
* [COVID-19 Evidence Ecosystem (CEOsys)][CEOSYS]
* [GitHub project](https://github.com/CEOsys/cpg-on-ebm-on-fhir)

[Clinical Practice Guideline]: https://github.com/CEOsys/cpg-on-ebm-on-fhir/StructureDefinition-guideline.html
[Guideline Bundle]: https://github.com/CEOsys/cpg-on-ebm-on-fhir/StructureDefinition-guideline-bundle.html
[Guideline Recommendation]: https://github.com/CEOsys/cpg-on-ebm-on-fhir/StructureDefinition-guideline-recommendation.html
[Intervention Activity]: https://github.com/CEOsys/cpg-on-ebm-on-fhir/StructureDefinition-intervention-activity.html
[Intervention]: https://github.com/CEOsys/cpg-on-ebm-on-fhir/StructureDefinition-intervention-evidence-variable.html
[Net Effect]: https://github.com/CEOsys/cpg-on-ebm-on-fhir/StructureDefinition-net-effect-evidence-variable.html
[Outcome]: https://github.com/CEOsys/cpg-on-ebm-on-fhir/StructureDefinition-outcome-evidence-variable.html
[PICO Evidence Variable]: https://github.com/CEOsys/cpg-on-ebm-on-fhir/StructureDefinition-pico-evidence-variable.html
[Population]: https://github.com/CEOsys/cpg-on-ebm-on-fhir/StructureDefinition-population-evidence-variable.html
[Population Group]: https://github.com/CEOsys/cpg-on-ebm-on-fhir/StructureDefinition-population-group.html
[EvidenceReport Date]: https://github.com/CEOsys/cpg-on-ebm-on-fhir/StructureDefinition-ceosys-extension-evidencereport-date.html
[EvidenceReport Version]: https://github.com/CEOsys/cpg-on-ebm-on-fhir/StructureDefinition-ceosys-extension-evidencereport-version.html
[Group Characteristic Link Id]: https://github.com/CEOsys/cpg-on-ebm-on-fhir/StructureDefinition-group-characteristic-link-id.html
[Reference Activity Definition]: https://github.com/CEOsys/cpg-on-ebm-on-fhir/StructureDefinition-ceosys-extension-reference-activity-definition.html
[Related Characteristic]: https://github.com/CEOsys/cpg-on-ebm-on-fhir/StructureDefinition-related-characteristic.html

[CEOsys Code System]: https://github.com/CEOsys/cpg-on-ebm-on-fhir/CodeSystem-ceosys-code-system.html
[CS Characteristic Relationship Type]: https://github.com/CEOsys/cpg-on-ebm-on-fhir/CodeSystem-characteristic-relationship-type.html
[Cochrane Core Ontology]: https://github.com/CEOsys/cpg-on-ebm-on-fhir/CodeSystem-cochrane-core-ontology.html
[Cochrane PICO Ontology]: https://github.com/CEOsys/cpg-on-ebm-on-fhir/CodeSystem-cochrane-pico-ontology.html
[CS Recommendation Strength]: https://github.com/CEOsys/cpg-on-ebm-on-fhir/CodeSystem-ceosys-cs-recommendation-strength.html

[VS Characteristic Relationship Type]: https://github.com/CEOsys/cpg-on-ebm-on-fhir/ValueSet-characteristic-relationship-type.html
[Cochrane PICO]: https://github.com/CEOsys/cpg-on-ebm-on-fhir/ValueSet-cochrane-pico.html
[Cochrane PICO Intervention]: https://github.com/CEOsys/cpg-on-ebm-on-fhir/ValueSet-cochrane-pico-intervention.html
[Cochrane PICO Outcome]: https://github.com/CEOsys/cpg-on-ebm-on-fhir/ValueSet-cochrane-pico-outcome.html
[Cochrane PICO Population]: https://github.com/CEOsys/cpg-on-ebm-on-fhir/ValueSet-cochrane-pico-population.html
[Rating Consensus]: https://github.com/CEOsys/cpg-on-ebm-on-fhir/ValueSet-rating-consensus.html
[Rating Overall Quality]: https://github.com/CEOsys/cpg-on-ebm-on-fhir/ValueSet-rating-overall-quality.html
[Rating Risk Of Bias]: https://github.com/CEOsys/cpg-on-ebm-on-fhir/ValueSet-rating-risk-of-bias.html
[VS Recommendation Strength]: https://github.com/CEOsys/cpg-on-ebm-on-fhir/ValueSet-ceosys-vs-recommendation-strength.html

[SNOMEDCT]: http://snomed.info/sct
[COCHRANELD]: https://data.cochrane.org/concepts/
[LOINC]: http://loinc.org/
[UCUM]: http://unitsofmeasure.org
[VSdataAbsentReason]: http://hl7.org/fhir/R4/valueset-data-absent-reason.html
[CEOSYS]: https://covid-evidenz.de/
[NUM]: https://www.netzwerk-universitaetsmedizin.de/
[EMBonFHIR]: https://confluence.hl7.org/display/CDS/EBMonFHIR


[SNOMEDCT]: http://snomed.info/sct
[COCHRANELD]: https://data.cochrane.org/concepts/
[LOINC]: http://loinc.org/
[UCUM]: http://unitsofmeasure.org
[VSdataAbsentReason]: http://hl7.org/fhir/R4/valueset-data-absent-reason.html
[CEOSYS]: https://covid-evidenz.de/
[NUM]: https://www.netzwerk-universitaetsmedizin.de/
[EMBonFHIR]: https://confluence.hl7.org/display/CDS/EBMonFHIR
