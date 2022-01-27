
# Clinical Practice Guidelines on EBMonFHIR

[![FHIR Validation](https://github.com/CEOsys/fhir-cpg/actions/workflows/fhir-validate.yml/badge.svg)](https://github.com/CEOsys/fhir-cpg/actions/workflows/fhir-validate.yml)
[![ImplementationGuide Publisher](https://github.com/CEOsys/fhir-cpg/actions/workflows/ig-publish.yml/badge.svg)](https://github.com/CEOsys/fhir-cpg/actions/workflows/ig-publish.yml)

## Quick start
This implementation guide describes an [evidence-based medicine on FHIR (EBMonFHIR)][EMBonFHIR] approach to represent clinical practice guidelines using FHIR resources.

Apart from representing the actual treatment recommendations provided by the guidelines, a large set of metadata regarding the guideline creation process (risk of bias, certainty, authorships etc.) is also encoded.
The representation of clinical practice guidelines is oriented to the PICO (population, intervention/exposure, comparator, outcome) framework.

For detailed information, please visit the [Implementation Guide](https://ceosys.github.io/fhir-cpg/)!

## Summary

The following diagram provides an overview of the different profiles used in this implementation guide and their relationship:

![FHIR structure overview](https://github.com/CEOsys/fhir-cpg/raw/main/input/images/fhir-structure-overview.png)

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
* [GitHub project](https://github.com/CEOsys/fhir-cpg)

[Clinical Practice Guideline]: https://ceosys.github.io/fhir-cpg/StructureDefinition-guideline.html
[Guideline Bundle]: https://ceosys.github.io/fhir-cpg/StructureDefinition-guideline-bundle.html
[Guideline Recommendation]: https://ceosys.github.io/fhir-cpg/StructureDefinition-guideline-recommendation.html
[Intervention Activity]: https://ceosys.github.io/fhir-cpg/StructureDefinition-intervention-activity.html
[Intervention]: https://ceosys.github.io/fhir-cpg/StructureDefinition-intervention-evidence-variable.html
[Net Effect]: https://ceosys.github.io/fhir-cpg/StructureDefinition-net-effect-evidence-variable.html
[Outcome]: https://ceosys.github.io/fhir-cpg/StructureDefinition-outcome-evidence-variable.html
[PICO Evidence Variable]: https://ceosys.github.io/fhir-cpg/StructureDefinition-pico-evidence-variable.html
[Population]: https://ceosys.github.io/fhir-cpg/StructureDefinition-population-evidence-variable.html
[Population Group]: https://ceosys.github.io/fhir-cpg/StructureDefinition-population-group.html
[EvidenceReport Version]: https://ceosys.github.io/fhir-cpg/StructureDefinition-ceosys-extension-evidencereport-version.html
[Reference Activity Definition]: https://ceosys.github.io/fhir-cpg/StructureDefinition-reference-activity-definition.html

[CEOsys Code System]: https://ceosys.github.io/fhir-cpg/CodeSystem-ceosys-code-system.html
[CochraneCoreOntology]: https://ceosys.github.io/fhir-cpg/CodeSystem-cochrane-core-ontology.html
[CochranePICOOntology]: https://ceosys.github.io/fhir-cpg/CodeSystem-cochrane-pico-ontology.html
[Recommendation Strength]: https://ceosys.github.io/fhir-cpg/CodeSystem-ceosys-cs-recommendation-strength.html

[Cochrane PICO]: https://ceosys.github.io/fhir-cpg/ValueSet-cochrane-pico.html
[Cochrane PICO Intervention]: https://ceosys.github.io/fhir-cpg/ValueSet-cochrane-pico-intervention.html
[Cochrane PICO Outcome]: https://ceosys.github.io/fhir-cpg/ValueSet-cochrane-pico-outcome.html
[Cochrane PICO Population]: https://ceosys.github.io/fhir-cpg/ValueSet-cochrane-pico-population.html
[Recommendation Strength]: https://ceosys.github.io/fhir-cpg/ValueSet-ceosys-vs-recommendation-strength.html

[SNOMEDCT]: http://snomed.info/sct
[COCHRANELD]: https://data.cochrane.org/concepts/
[LOINC]: http://loinc.org/
[UCUM]: http://unitsofmeasure.org
[VSdataAbsentReason]: http://hl7.org/fhir/R4/valueset-data-absent-reason.html
[CEOSYS]: https://covid-evidenz.de/
[NUM]: https://www.netzwerk-universitaetsmedizin.de/
[EMBonFHIR]: https://confluence.hl7.org/display/CDS/EBMonFHIR
