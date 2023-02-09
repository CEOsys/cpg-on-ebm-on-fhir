
# Clinical Practice Guidelines on EBMonFHIR

[![FHIR Validation](https://github.com/CEOsys/cpg-on-ebm-on-fhir/actions/workflows/fhir-validate.yml/badge.svg)](https://github.com/CEOsys/cpg-on-ebm-on-fhir/actions/workflows/fhir-validate.yml)
[![ImplementationGuide Publisher](https://github.com/CEOsys/cpg-on-ebm-on-fhir/actions/workflows/ig-publish.yml/badge.svg)](https://github.com/CEOsys/cpg-on-ebm-on-fhir/actions/workflows/ig-publish.yml)

## Quick start
This implementation guide describes an approach to using [evidence-based medicine on FHIR (EBMonFHIR)][EMBonFHIR] in combination with [FHIR Clinical Guidelines][CPGonFHIR] to represent evidence-based clinical practice guidelines including the evidence upon which the recommendations are based. The approach is based on the PICO (population, intervention, comparator, outcome) framework and the GRADE (Grading of Recommendations Assessment, Development and Evaluation) approach.

> :warning: This implementation guide is based on FHIR R5 (5.0.0-snapshot3).

The following elements are required to represent a clinical practice guideline recommendation for automated clinical decision support systems:

* For detailed technical information, please visit the [Implementation Guide](https://ceosys.github.io/cpg-on-ebm-on-fhir/).
* For detailed logical information, please read our manuscript on [Representation of evidence-based clinical practice guideline recommendations on FHIR](https://doi.org/10.1101/2022.05.16.22275120).

## Summary

The following diagram provides an overview of the different profiles used in this implementation guide and their relationship:

![FHIR structure overview](https://github.com/CEOsys/cpg-on-ebm-on-fhir/raw/main/input/images/fhir-structure-overview.png)
> Reprinted from Journal of Biomedical Informatics, Lichtner, G., Alper, B. S., Jurth, C., Spies, C., Boeker, M., Meerpohl, J. J., & von Dincklage, F. (2023). _"Representation of evidence-based clinical practice guideline recommendations on FHIR"_. 2023., with permission from Elsevier. DOI: [https://doi.org/10.1016/j.jbi.2023.104305](https://doi.org/10.1016/j.jbi.2023.104305).
> Journal homepage: [https://www.sciencedirect.com/journal/journal-of-biomedical-informatics](https://www.sciencedirect.com/journal/journal-of-biomedical-informatics).

## Description
The following elements are required to represent a clinical practice guideline recommendation for automated clinical decision support systems:

| Name | FHIR Base Resource | Description | References |
| ---- | ------------- | ----------- | ---------- |
| [Recommendation][Recommendation] | [PlanDefinition](http://hl7.org/fhir/5.0.0-snapshot3/plandefinition.html) | Representation of a single guideline recommendation. | [Recommendation Plan][Recommendation Plan],  [Guideline Citation][Guideline Citation], [Recommendation Citation][Recommendation Citation]. |
| [Recommendation Plan][Recommendation Plan] | [PlanDefinition](http://hl7.org/fhir/5.0.0-snapshot3/plandefinition.html) | Description of a recommended intervention addressed in a specific guideline recommendation. | [Intervention Activities][Recommendation Action] specified in the guideline recommendation; [Recommendation Eligibility Criteria][Recommendation Eligibility Criteria] defining the group of patients to which the recommendation applies to; [Recommendation Justification][Recommendation Justification] providing the justification of the recommendation; [Guideline Citation][Guideline Citation], [Recommendation Citation][Recommendation Citation]. |
| [Recommendation Action][Recommendation Action] | [ActivityDefinition](http://hl7.org/fhir/5.0.0-snapshot3/activitydefinition.html) | Definition of an activity that is part of an intervention in the context of a clinical practice guideline recommendation. | - |
| [Recommendation Eligibility Criteria][Recommendation Eligibility Criteria] | [EvidenceVariable](http://hl7.org/fhir/5.0.0-snapshot3/evidencevariable.html) | Description of the population to which a specific guideline recommendation applies. | - |


The following profiles are used to represent the evidence upon which a clinical practice guideline recommendation is based:

| Name | FHIR Base Resource | Description | References |
| ---- | ------------- | ----------- | ---------- |
| [Study Outcome Evidence][Study Outcome Evidence] | [Evidence](http://hl7.org/fhir/5.0.0-snapshot3/evidence.html) | Evidence statistics generated from a single study or systematic review regarding a clinical question. | [Study Eligibility Criteria][Study Eligibility Criteria], [Intervention Definition][Intervention Definition], [Outcome Definition][Outcome Definition], [Study Citation][Study Citation] |
| [Study Eligibility Criteria][Study Eligibility Criteria] | [EvidenceVariable](http://hl7.org/fhir/5.0.0-snapshot3/evidencevariable.html) | Intended definition of the patient group for which evidence or was generated or evidence synthesis was performed. | - |
| [Study Cohort][Study Cohort] | [Group](http://hl7.org/fhir/5.0.0-snapshot3/group.html) | Actual composition of the patient group for which the evidence was generated.  | - |
| [Outcome Evidence Synthesis][Outcome Evidence Synthesis] | [Evidence](http://hl7.org/fhir/5.0.0-snapshot3/evidence.html) | A single evidence for an outcome from an evidence synthesis (e.g., meta-analysis). | [Evidence Synthesis Cohorts][Evidence Synthesis Cohorts], [Evidence Data Set][Evidence Data Set] |
| [Evidence Synthesis Cohorts][Evidence Synthesis Cohorts] | [Group](http://hl7.org/fhir/5.0.0-snapshot3/group.html) | Actual composition of the patient group for which evidence synthesis was performed. | - |
| [Intervention Definition][Intervention Definition] | [EvidenceVariable](http://hl7.org/fhir/5.0.0-snapshot3/evidencevariable.html) | Definition of an intervention or comparison with respect to which evidence was generated. | - |
| [Outcome Definition][Outcome Definition] | [EvidenceVariable](http://hl7.org/fhir/5.0.0-snapshot3/evidencevariable.html) | Definition of the outcome for which evidence was generated. | - |
| [Evidence Data Set][Evidence Data Set] | [EvidenceVariable](http://hl7.org/fhir/5.0.0-snapshot3/evidencevariable.html) | Definition of the outcome used as the observed measured variable for an evidence synthesis. | - |
| [Outcome Evidence][Outcome Evidence] | [Evidence](http://hl7.org/fhir/5.0.0-snapshot3/evidence.html) | Evidence statistics generated from a single study or systematic review regarding a clinical question. | [Study Eligibility Criteria][Study Eligibility Criteria], [Intervention Definition][Intervention Definition], [Outcome Definition][Outcome Definition], [Study Citation][Study Citation] |
| [Study Eligibility Criteria][Study Eligibility Criteria] | [EvidenceVariable](http://hl7.org/fhir/5.0.0-snapshot3/evidencevariable.html) | Definition of the patient group for which evidence was generated. | - |

The following profiles are used to represent the assessment of evidence which justify the recommendation:

| Name | FHIR Base Resource | Description | References |
| ---- | ------------- | ----------- | ---------- |
| [Recommendation Justification][Recommendation Justification] | [ArtifactAssessment](http://hl7.org/fhir/5.0.0-snapshot3/artifactassessment.html) | Rating of the recommendation given all evidence for all considered outcomes. | [Recommendation Plan][Recommendation Plan], [Certainty of Evidence Rating][Certainty of Evidence Rating], [Net Effect Estimate][Net Effect Estimate] |
| [Certainty of Evidence Rating][Certainty of Evidence Rating] | [ArtifactAssessment](http://hl7.org/fhir/5.0.0-snapshot3/artifactassessment.html) | Rating of the evidence for individual outcomes. | [Outcome Evidence][Outcome Evidence] |
| [Net Effect Estimate][Net Effect Estimate] | [EvidenceVariable](http://hl7.org/fhir/5.0.0-snapshot3/evidencevariable.html) | Description of the net effect of a guideline recommendation. | (Expected) [Outcomes][Outcome Definition] of a guideline recommendation. |


Additionally, the following profiles are used to bundle recommendations and resources:

| Name | FHIR Base Resource | Description | References |
| ---- | ------------- | ----------- | ---------- |
| [Clinical Practice Guideline][Clinical Practice Guideline] | [Composition](http://hl7.org/fhir/5.0.0-snapshot3/composition.html) | Composition of several individual guideline recommendations | [Recommendation Plan][Recommendation Plan], [Guideline Citation][Guideline Citation] |
| [Guideline Bundle][Guideline Bundle] | [Bundle](http://hl7.org/fhir/5.0.0-snapshot3/bundle.html) | Bundle of all resources of a single clinical practice guideline. | All other resources in this IG. |


## Examples

Multiple recommendations represented in the here shown format can be found at the [CODEX+ CELIDA Recommendations repository][CELIDA_Recommendations].


## Related projects
* The EBMonFHIR project is currently developing an [EBM Implementation Guide](https://github.com/hl7/ebm) aimed at representing computable knowledge for guideline recommendations (and others).
* The [CODEX+ CELIDA][CELIDA] project has developed an [execution engine][CELIDA_ExecutionEngine] for applying the recommendations to patient data in OMOP Common Data Model format..


## Authors (alphabetic order)
* Brian S. Alper (Computable Publishing LLC)
* Martin Boeker (Medical Center rechts der Isar, Technical University of Munich)
* Falk von Dincklage (University Medicine Greifswald)
* Carlo Jurth (Charité -- Universitätsmedizin Berlin)
* [Gregor Lichtner](https://github.com/glichtner) (University Medicine Greifswald)
* Joerg J. Meerpohl (Medical Center & Faculty of Medicine, University of Freiburg; Cochrane Germany)
* Claudia Spies (Charité -- Universitätsmedizin Berlin)

## Publication
Lichtner, G., Alper, B. S., Jurth, C., Spies, C., Boeker, M., Meerpohl, J. J., & von Dincklage, F. (2023). _"Representation of evidence-based clinical practice guideline recommendations on FHIR"_. Journal of Biomedical Informatics (2023). [https://doi.org/10.1016/j.jbi.2023.104305](https://doi.org/10.1016/j.jbi.2023.104305).

Preprint: [Representation of evidence-based clinical practice guideline recommendations on FHIR](https://doi.org/10.1101/2022.05.16.22275120).


## Links
* [Netzwerk Universitätsmedizin (NUM)][NUM]
* [COVID-19 Evidence Ecosystem (CEOsys)][CEOSYS]
* [GitHub project](https://github.com/CEOsys/cpg-on-ebm-on-fhir)


[Body Positioning Action]: StructureDefinition-body-positioning-action.html
[CPGComputablePlanDefinition]: StructureDefinition-cpg-computableplandefinition.html
[CPGRecommendationDefinition]: StructureDefinition-cpg-recommendationdefinition.html
[CPGShareablePlanDefinition]: StructureDefinition-cpg-shareableplandefinition.html
[CPGStrategyDefinition]: StructureDefinition-cpg-strategydefinition.html
[Certainty of Evidence Rating]: StructureDefinition-certainty-of-evidence-rating.html
[Cohorts]: StructureDefinition-cohorts.html
[Drug Administration Action]: StructureDefinition-drug-administration-action.html
[Eligibility Criteria]: StructureDefinition-eligibility-criteria.html
[Evidence Data Set]: StructureDefinition-evidence-data-set.html
[Evidence Synthesis Cohorts]: StructureDefinition-evidence-synthesis-cohorts.html
[Clinical Practice Guideline]: StructureDefinition-guideline.html
[Guideline Bundle]: StructureDefinition-guideline-bundle.html
[Guideline Citation]: StructureDefinition-guideline-citation.html
[Intervention Definition]: StructureDefinition-intervention-definition.html
[Net Effect Estimate]: StructureDefinition-net-effect-estimate.html
[Outcome Definition]: StructureDefinition-outcome-definition.html
[Outcome Evidence]: StructureDefinition-outcome-evidence.html
[Outcome Evidence Synthesis]: StructureDefinition-outcome-evidence-synthesis.html
[PICO Evidence Variable]: StructureDefinition-pico-evidence-variable.html
[Recommendation]: StructureDefinition-recommendation.html
[Recommendation Action]: StructureDefinition-recommendation-action.html
[Recommendation Citation]: StructureDefinition-recommendation-citation.html
[Recommendation Eligibility Criteria]: StructureDefinition-recommendation-eligibility-criteria.html
[Recommendation Justification]: StructureDefinition-recommendation-justification.html
[Recommendation Plan]: StructureDefinition-recommendation-plan.html
[Study Citation]: StructureDefinition-study-citation.html
[Study Cohort]: StructureDefinition-study-cohort.html
[Study Eligibility Criteria]: StructureDefinition-study-eligibility-criteria.html
[Study Outcome Evidence]: StructureDefinition-study-outcome-evidence.html
[ArtifactAssessment Publication Status]: StructureDefinition-ceosys-extension-artifact-assessment-publication-status.html
[ArtifactAssessment Version]: StructureDefinition-ceosys-extension-artifact-assessment-version.html
[Dosage Condition]: StructureDefinition-ext-dosage-condition.html
[CEOsys Code System]: CodeSystem-ceosys-code-system.html
[Clinical Importance of Outcome]: CodeSystem-cs-clinical-importance.html
[Cochrane Core Ontology]: CodeSystem-cochrane-core-ontology.html
[Cochrane PICO Ontology]: CodeSystem-cochrane-pico-ontology.html
[Evidence To Decision Certainty Rating]: CodeSystem-cs-evidence-to-decision-certainty-rating.html
[Evidence To Decision Certainty type]: CodeSystem-cs-evidence-to-decision-certainty-type.html
[Guideline Stage Classification]: CodeSystem-cs-guideline-stage-classification.html
[Recommendation Strength]: CodeSystem-ceosys-cs-recommendation-strength.html

[VS Action Selection Behavior Required]: ValueSet-vs-action-selection-behavior-required.html
[VS Allergic Disposition SCT]: ValueSet-vs-allergic-disposition-sct.html
[VS Body Positioning SNOMED CT]: ValueSet-vs-body-positioning-snomed.html
[VS Cochrane PICO]: ValueSet-cochrane-pico.html
[VS Cochrane PICO Intervention]: ValueSet-cochrane-pico-intervention.html
[VS Cochrane PICO Outcome]: ValueSet-cochrane-pico-outcome.html
[VS Cochrane PICO Population]: ValueSet-cochrane-pico-population.html
[VS Episode Of Care Type]: ValueSet-vs-episode-of-care-type.html
[VS Guideline Recommendation Status]: ValueSet-vs-guideline-recommendation-status.html
[VS Guideline Stage Classification]: ValueSet-vs-guideline-stage-classification.html
[VS Laboratory Observations]: ValueSet-vs-laboratory-observations.html
[VS Mean Difference Type]: ValueSet-vs-mean-difference-type.html
[VS Radiologic Finding SCT]: ValueSet-vs-radiologic-finding-sct.html
[VS Rating Acceptability]: ValueSet-vs-rating-acceptability.html
[VS Rating Benefit And Harms]: ValueSet-vs-rating-benefit-and-harms.html
[VS Rating Certainty Of Evidence]: ValueSet-vs-rating-certainty-of-evidence.html
[VS Clinical Importance of Outcome]: ValueSet-vs-rating-clinical-importance.html
[VS Rating Concern Degree]: ValueSet-vs-rating-concern-degree.html
[VS Rating Consensus]: ValueSet-vs-rating-consensus.html
[VS Rating Equity]: ValueSet-vs-rating-equity.html
[VS Rating Feasibility]: ValueSet-vs-rating-feasibility.html
[VS Rating Preference And Values]: ValueSet-vs-rating-preference-and-values.html
[VS Rating Resources]: ValueSet-vs-rating-resources.html
[VS Rating Up Rating One Level]: ValueSet-vs-rating-uprating-one-level.html
[VS Rating Up Rating Two Levels]: ValueSet-vs-rating-uprating-two-levels.html
[VS Recommendation Strength]: ValueSet-ceosys-vs-recommendation-strength.html
[VS Relative Effect Type]: ValueSet-vs-relative-effect-type.html
[VS Substances SNOMED CT]: ValueSet-vs-substances-snomed.html
[VS Ventilation Observable SCT]: ValueSet-vs-ventilation-observable-sct.html

[SNOMEDCT]: http://snomed.info/sct
[LOINC]: http://loinc.org/
[UCUM]: http://unitsofmeasure.org
[VSdataAbsentReason]: http://hl7.org/fhir/R4/valueset-data-absent-reason.html
[CEOSYS]: https://covid-evidenz.de/
[NUM]: https://www.netzwerk-universitaetsmedizin.de/
[EMBonFHIR]: https://confluence.hl7.org/display/CDS/EBMonFHIR
[COCHRANELD]: https://data.cochrane.org/concepts/
[CPGonFHIR]: https://hl7.org/fhir/uv/cpg/
[CELIDA]: https://www.github.com/CODEX-CELIDA/
[CELIDA_Recommendations]: https://www.github.com/CODEX-CELIDA/celida-recommendations/
[CELIDA_ExecutionEngine]: https://www.github.com/CODEX-CELIDA/execution-engine/
