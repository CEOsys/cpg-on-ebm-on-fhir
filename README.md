
# Clinical Practice Guidelines on EBMonFHIR

[![FHIR Validation](https://github.com/CEOsys/cpg-on-ebm-on-fhir/actions/workflows/fhir-validate.yml/badge.svg)](https://github.com/CEOsys/cpg-on-ebm-on-fhir/actions/workflows/fhir-validate.yml)
[![ImplementationGuide Publisher](https://github.com/CEOsys/cpg-on-ebm-on-fhir/actions/workflows/ig-publish.yml/badge.svg)](https://github.com/CEOsys/cpg-on-ebm-on-fhir/actions/workflows/ig-publish.yml)

## Quick start
This implementation guide describes an [evidence-based medicine on FHIR (EBMonFHIR)][EMBonFHIR] approach to represent clinical practice guidelines using FHIR resources.

Apart from representing the actual treatment recommendations provided by the guidelines, a large set of metadata regarding the guideline creation process (risk of bias, certainty, authorships etc.) is also encoded.
The representation of clinical practice guidelines is oriented to the PICO (population, intervention/exposure, comparator, outcome) framework.

* For detailed technical information, please visit the [Implementation Guide](https://ceosys.github.io/cpg-on-ebm-on-fhir/).
* For detailed logical information, please read our manuscript on [Representation of evidence-based clinical practice guideline recommendations on FHIR](https://doi.org/10.1101/2022.05.16.22275120).

## Summary

The following diagram provides an overview of the different profiles used in this implementation guide and their relationship:

![FHIR structure overview](https://github.com/CEOsys/cpg-on-ebm-on-fhir/raw/main/input/images/fhir-structure-overview.png)

## Description
The following elements are required to represent a clinical practice guideline recommendation for automated clinical decision support systems:

| Name | FHIR Base Resource | Description | References |
| ---- | ------------- | ----------- | ---------- |
| [Recommendation Plan][Recommendation Plan] | [PlanDefinition](https://build.fhir.org/plandefinition.html) | Description of a recommended intervention addressed in a specific guideline recommendation. | [Intervention Activities][Recommendation Action] specified in the guideline recommendation; [Recommendation Eligibility Criteria][Recommendation Eligibility Criteria] defining the group of patients to which the recommendation applies to; [Recommendation Justification][Recommendation Justification] providing the justification of the recommendation; [Guideline Citation][Guideline Citation], [Recommendation Citation][Recommendation Citation]. |
| [Recommendation Action][Recommendation Action] | [ActivityDefinition](https://build.fhir.org/activitydefinition.html) | Definition of an activity that is part of an intervention in the context of a clinical practice guideline recommendation. | - |
| [Recommendation Eligibility Criteria][Recommendation Eligibility Criteria] | [EvidenceVariable](https://build.fhir.org/evidencevariable.html) | Description of the population to which a specific guideline recommendation applies. | - |

The following profiles are used to represent the evidence upon which a clinical practice guideline recommendation is based:

| Name | FHIR Base Resource | Description | References |
| ---- | ------------- | ----------- | ---------- |
| [Outcome Evidence][Outcome Evidence] | [Evidence](https://build.fhir.org/evidence.html) | Evidence statistics generated from a single study or systematic review regarding a clinical question. | [Study Eligibility Criteria][Study Eligibility Criteria], [Intervention Definition][Intervention Definition], [Outcome Definition][Outcome Definition], [Study Citation][Study Citation] |
| [Study Eligibility Criteria][Study Eligibility Criteria] | [EvidenceVariable](https://build.fhir.org/evidencevariable.html) | Definition of the patient group for which evidence was generated. | - |
| [Intervention Definition][Intervention Definition] | [EvidenceVariable](https://build.fhir.org/evidencevariable.html) | Definition of an intervention or comparison with respect to which evidence was generated. | - |
| [Outcome Definition][Outcome Definition] | [EvidenceVariable](https://build.fhir.org/evidencevariable.html) | Definition of the outcome for which evidence was generated. | - |
| [Study Citation][Study Citation] | [Citation](https://build.fhir.org/citation.html) | Citation of the study or systematic review. | - |

The following profiles are used to represent the assessment of evidence which justify the recommendation:

| Name | FHIR Base Resource | Description | References |
| ---- | ------------- | ----------- | ---------- |
| [Recommendation Justification][Recommendation Justification] | [ArtifactAssessment](https://build.fhir.org/artifactassessment.html) | Rating of the recommendation given all evidence for all considered outcomes. | [Recommendation Plan][Recommendation Plan], [Certainty of Evidence Rating][Certainty of Evidence Rating], [Net Effect Estimate][Net Effect Estimate] |
| [Certainty of Evidence Rating][Certainty of Evidence Rating] | [ArtifactAssessment](https://build.fhir.org/artifactassessment.html) | Rating of the evidence for individual outcomes. | [Outcome Evidence][Outcome Evidence] |
| [Net Effect Estimate][Net Effect Estimate] | [EvidenceVariable](https://build.fhir.org/evidencevariable.html) | Description of the net effect of a guideline recommendation. | (Expected) [Outcomes][Outcome Definition] of a guideline recommendation. |

Additionally, the following profiles are used to bundle recommendations and resources:

| Name | FHIR Base Resource | Description | References |
| ---- | ------------- | ----------- | ---------- |
| [Clinical Practice Guideline][Clinical Practice Guideline] | [Composition](https://build.fhir.org/composition.html) | Composition of several individual guideline recommendations | [Recommendation Plan][Recommendation Plan], [Guideline Citation][Guideline Citation] |
| [Guideline Bundle][Guideline Bundle] | [Bundle](https://build.fhir.org/bundle.html) | Bundle of all resources of a single clinical practice guideline. | All other resources in this IG. |

## Authors (alphabetic order)
* Brian S. Alper (Computable Publishing LLC)
* Martin Boeker (Medical Center rechts der Isar, Technical University of Munich)
* Falk von Dincklage (University Medicine Greifswald; Charité -- Universitätsmedizin Berlin)
* Carlo Jurth (Charité -- Universitätsmedizin Berlin)
* [Gregor Lichtner](https://github.com/glichtner) (University Medicine Greifswald; Charité -- Universitätsmedizin Berlin)
* Joerg J. Meerpohl (Medical Center & Faculty of Medicine, University of Freiburg; Cochrane Germany)
* Claudia Spies (Charité -- Universitätsmedizin Berlin)

## Links
* [Netzwerk Universitätsmedizin (NUM)][NUM]
* [COVID-19 Evidence Ecosystem (CEOsys)][CEOSYS]
* [GitHub project](https://github.com/CEOsys/cpg-on-ebm-on-fhir)



[Certainty of Evidence Rating]: https://ceosys.github.io/cpg-on-ebm-on-fhir/StructureDefinition-certainty-of-evidence-rating.html
[Eligibility Criteria]: https://ceosys.github.io/cpg-on-ebm-on-fhir/StructureDefinition-eligibility-criteria.html
[Clinical Practice Guideline]: https://ceosys.github.io/cpg-on-ebm-on-fhir/StructureDefinition-guideline.html
[Guideline Bundle]: https://ceosys.github.io/cpg-on-ebm-on-fhir/StructureDefinition-guideline-bundle.html
[Guideline Citation]: https://ceosys.github.io/cpg-on-ebm-on-fhir/StructureDefinition-guideline-citation.html
[Intervention Definition]: https://ceosys.github.io/cpg-on-ebm-on-fhir/StructureDefinition-intervention-definition.html
[Net Effect Estimate]: https://ceosys.github.io/cpg-on-ebm-on-fhir/StructureDefinition-net-effect-estimate.html
[Outcome Definition]: https://ceosys.github.io/cpg-on-ebm-on-fhir/StructureDefinition-outcome-definition.html
[Outcome Evidence]: https://ceosys.github.io/cpg-on-ebm-on-fhir/StructureDefinition-outcome-evidence.html
[PICO Evidence Variable]: https://ceosys.github.io/cpg-on-ebm-on-fhir/StructureDefinition-pico-evidence-variable.html
[Recommendation Action]: https://ceosys.github.io/cpg-on-ebm-on-fhir/StructureDefinition-recommendation-action.html
[Recommendation Citation]: https://ceosys.github.io/cpg-on-ebm-on-fhir/StructureDefinition-recommendation-citation.html
[Recommendation Eligibility Criteria]: https://ceosys.github.io/cpg-on-ebm-on-fhir/StructureDefinition-recommendation-eligibility-criteria.html
[Recommendation Justification]: https://ceosys.github.io/cpg-on-ebm-on-fhir/StructureDefinition-recommendation-justification.html
[Recommendation Plan]: https://ceosys.github.io/cpg-on-ebm-on-fhir/StructureDefinition-recommendation-plan.html
[Study Citation]: https://ceosys.github.io/cpg-on-ebm-on-fhir/StructureDefinition-study-citation.html
[Study Eligibility Criteria]: https://ceosys.github.io/cpg-on-ebm-on-fhir/StructureDefinition-study-eligibility-criteria.html
[ArtifactAssessment Publication Status]: https://ceosys.github.io/cpg-on-ebm-on-fhir/StructureDefinition-ceosys-extension-artifact-assessment-publication-status.html
[ArtifactAssessment Version]: https://ceosys.github.io/cpg-on-ebm-on-fhir/StructureDefinition-ceosys-extension-artifact-assessment-version.html
[Composition Publication Status]: https://ceosys.github.io/cpg-on-ebm-on-fhir/StructureDefinition-ceosys-extension-composition-publication-status.html
[Composition Version]: https://ceosys.github.io/cpg-on-ebm-on-fhir/StructureDefinition-ceosys-extension-composition-version.html
[CEOsys Code System]: https://ceosys.github.io/cpg-on-ebm-on-fhir/CodeSystem-ceosys-code-system.html
[Characteristic Relationship Type]: https://ceosys.github.io/cpg-on-ebm-on-fhir/CodeSystem-characteristic-relationship-type.html
[Clinical Importance of Outcome]: https://ceosys.github.io/cpg-on-ebm-on-fhir/CodeSystem-cs-clinical-importance.html
[Cochrane Core Ontology]: https://ceosys.github.io/cpg-on-ebm-on-fhir/CodeSystem-cochrane-core-ontology.html
[Cochrane PICO Ontology]: https://ceosys.github.io/cpg-on-ebm-on-fhir/CodeSystem-cochrane-pico-ontology.html
[Evidence To Decision Certainty Rating]: https://ceosys.github.io/cpg-on-ebm-on-fhir/CodeSystem-cs-evidence-to-decision-certainty-rating.html
[Evidence To Decision Certainty type]: https://ceosys.github.io/cpg-on-ebm-on-fhir/CodeSystem-cs-evidence-to-decision-certainty-type.html
[Guideline Stage Classification]: https://ceosys.github.io/cpg-on-ebm-on-fhir/CodeSystem-cs-guideline-stage-classification.html
[Recommendation Strength]: https://ceosys.github.io/cpg-on-ebm-on-fhir/CodeSystem-ceosys-cs-recommendation-strength.html

[VS Characteristic Relationship Type]: https://ceosys.github.io/cpg-on-ebm-on-fhir/ValueSet-characteristic-relationship-type.html
[VS Cochrane PICO]: https://ceosys.github.io/cpg-on-ebm-on-fhir/ValueSet-cochrane-pico.html
[VS Cochrane PICO Intervention]: https://ceosys.github.io/cpg-on-ebm-on-fhir/ValueSet-cochrane-pico-intervention.html
[VS Cochrane PICO Outcome]: https://ceosys.github.io/cpg-on-ebm-on-fhir/ValueSet-cochrane-pico-outcome.html
[VS Cochrane PICO Population]: https://ceosys.github.io/cpg-on-ebm-on-fhir/ValueSet-cochrane-pico-population.html
[VS Guideline Recommendation Status]: https://ceosys.github.io/cpg-on-ebm-on-fhir/ValueSet-vs-guideline-recommendation-status.html
[VS Guideline Stage Classification]: https://ceosys.github.io/cpg-on-ebm-on-fhir/ValueSet-vs-guideline-stage-classification.html
[VS Mean Difference Type]: https://ceosys.github.io/cpg-on-ebm-on-fhir/ValueSet-vs-mean-difference-type.html
[VS Rating Acceptability]: https://ceosys.github.io/cpg-on-ebm-on-fhir/ValueSet-vs-rating-acceptability.html
[VS Rating Benefit And Harms]: https://ceosys.github.io/cpg-on-ebm-on-fhir/ValueSet-vs-rating-benefit-and-harms.html
[VS Rating Certainty Of Evidence]: https://ceosys.github.io/cpg-on-ebm-on-fhir/ValueSet-vs-rating-certainty-of-evidence.html
[VS Clinical Importance of Outcome]: https://ceosys.github.io/cpg-on-ebm-on-fhir/ValueSet-vs-rating-clinical-importance.html
[VS Rating Concern Degree]: https://ceosys.github.io/cpg-on-ebm-on-fhir/ValueSet-vs-rating-concern-degree.html
[VS Rating Consensus]: https://ceosys.github.io/cpg-on-ebm-on-fhir/ValueSet-vs-rating-consensus.html
[VS Rating Equity]: https://ceosys.github.io/cpg-on-ebm-on-fhir/ValueSet-vs-rating-equity.html
[VS Rating Feasibility]: https://ceosys.github.io/cpg-on-ebm-on-fhir/ValueSet-vs-rating-feasibility.html
[VS Rating Preference And Values]: https://ceosys.github.io/cpg-on-ebm-on-fhir/ValueSet-vs-rating-preference-and-values.html
[VS Rating Resources]: https://ceosys.github.io/cpg-on-ebm-on-fhir/ValueSet-vs-rating-resources.html
[VS Rating Up Rating One Level]: https://ceosys.github.io/cpg-on-ebm-on-fhir/ValueSet-vs-rating-uprating-one-level.html
[VS Rating Up Rating Two Levels]: https://ceosys.github.io/cpg-on-ebm-on-fhir/ValueSet-vs-rating-uprating-two-levels.html
[VS Recommendation Strength]: https://ceosys.github.io/cpg-on-ebm-on-fhir/ValueSet-ceosys-vs-recommendation-strength.html
[VS Relative Effect Type]: https://ceosys.github.io/cpg-on-ebm-on-fhir/ValueSet-vs-relative-effect-type.html

[SNOMEDCT]: http://snomed.info/sct
[LOINC]: http://loinc.org/
[UCUM]: http://unitsofmeasure.org
[VSdataAbsentReason]: http://hl7.org/fhir/R4/valueset-data-absent-reason.html
[CEOSYS]: https://covid-evidenz.de/
[NUM]: https://www.netzwerk-universitaetsmedizin.de/
[EMBonFHIR]: https://confluence.hl7.org/display/CDS/EBMonFHIR
[COCHRANELD]: https://data.cochrane.org/concepts/
