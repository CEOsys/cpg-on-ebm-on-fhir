
# Clinical Practice Guidelines on EBMonFHIR

[![FHIR Validation](https://github.com/CEOsys/cpg-on-ebm-on-fhir/actions/workflows/fhir-validate.yml/badge.svg)](https://github.com/CEOsys/cpg-on-ebm-on-fhir/actions/workflows/fhir-validate.yml)
[![ImplementationGuide Publisher](https://github.com/CEOsys/cpg-on-ebm-on-fhir/actions/workflows/ig-publish.yml/badge.svg)](https://github.com/CEOsys/cpg-on-ebm-on-fhir/actions/workflows/ig-publish.yml)

## Quick start
This implementation guide describes an approach to using [evidence-based medicine on FHIR (EBMonFHIR)][EMBonFHIR] in combination with [FHIR Clinical Guidelines][CPGonFHIR] to represent evidence-based clinical practice guidelines including the evidence upon which the recommendations are based. The approach is based on the PICO (population, intervention, comparator, outcome) framework and the GRADE (Grading of Recommendations Assessment, Development and Evaluation) approach.

> :warning: This implementation guide is based on FHIR R5 (5.0.0).

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
| [Recommendation][SD:Recommendation] | [PlanDefinition](http://hl7.org/fhir/R5/plandefinition.html) | Representation of a single guideline recommendation. | [Recommendation Plan][SD:Recommendation Plan],  [Guideline Citation][SD:Guideline Citation], [Recommendation Citation][SD:Recommendation Citation]. |
| [Recommendation Plan][SD:Recommendation Plan] | [PlanDefinition](http://hl7.org/fhir/R5/plandefinition.html) | Description of a recommended intervention addressed in a specific guideline recommendation. | [Intervention Activities][SD:Recommendation Action] specified in the guideline recommendation; [Recommendation Eligibility Criteria][SD:Recommendation Eligibility Criteria] defining the group of patients to which the recommendation applies to; [Recommendation Justification][SD:Recommendation Justification] providing the justification of the recommendation; [Guideline Citation][SD:Guideline Citation], [Recommendation Citation][SD:Recommendation Citation]. |
| [Recommendation Action][SD:Recommendation Action] | [ActivityDefinition](http://hl7.org/fhir/R5/activitydefinition.html) | Definition of an activity that is part of an intervention in the context of a clinical practice guideline recommendation. | - |
| [Recommendation Eligibility Criteria][SD:Recommendation Eligibility Criteria] | [EvidenceVariable](http://hl7.org/fhir/R5/evidencevariable.html) | Description of the population to which a specific guideline recommendation applies. | - |


The following profiles are used to represent the evidence upon which a clinical practice guideline recommendation is based:

| Name | FHIR Base Resource | Description | References |
| ---- | ------------- | ----------- | ---------- |
| [Study Outcome Evidence][SD:Study Outcome Evidence] | [Evidence](http://hl7.org/fhir/R5/evidence.html) | Evidence statistics generated from a single study or systematic review regarding a clinical question. | [Study Eligibility Criteria][SD:Study Eligibility Criteria], [Intervention Definition][SD:Intervention Definition], [Outcome Definition][SD:Outcome Definition], [Study Citation][SD:Study Citation] |
| [Study Eligibility Criteria][SD:Study Eligibility Criteria] | [EvidenceVariable](http://hl7.org/fhir/R5/evidencevariable.html) | Intended definition of the patient group for which evidence or was generated or evidence synthesis was performed. | - |
| [Study Cohort][SD:Study Cohort] | [Group](http://hl7.org/fhir/R5/group.html) | Actual composition of the patient group for which the evidence was generated.  | - |
| [Outcome Evidence Synthesis][SD:Outcome Evidence Synthesis] | [Evidence](http://hl7.org/fhir/R5/evidence.html) | A single evidence for an outcome from an evidence synthesis (e.g., meta-analysis). | [Evidence Synthesis Cohorts][SD:Evidence Synthesis Cohorts], [Evidence Data Set][SD:Evidence Data Set] |
| [Evidence Synthesis Cohorts][SD:Evidence Synthesis Cohorts] | [Group](http://hl7.org/fhir/R5/group.html) | Actual composition of the patient group for which evidence synthesis was performed. | - |
| [Intervention Definition][SD:Intervention Definition] | [EvidenceVariable](http://hl7.org/fhir/R5/evidencevariable.html) | Definition of an intervention or comparison with respect to which evidence was generated. | - |
| [Outcome Definition][SD:Outcome Definition] | [EvidenceVariable](http://hl7.org/fhir/R5/evidencevariable.html) | Definition of the outcome for which evidence was generated. | - |
| [Evidence Data Set][SD:Evidence Data Set] | [EvidenceVariable](http://hl7.org/fhir/R5/evidencevariable.html) | Definition of the outcome used as the observed measured variable for an evidence synthesis. | - |
| [Outcome Evidence][SD:Outcome Evidence] | [Evidence](http://hl7.org/fhir/R5/evidence.html) | Evidence statistics generated from a single study or systematic review regarding a clinical question. | [Study Eligibility Criteria][SD:Study Eligibility Criteria], [Intervention Definition][Intervention Definition], [Outcome Definition][SD:Outcome Definition], [Study Citation][SD:Study Citation] |
| [Study Eligibility Criteria][SD:Study Eligibility Criteria] | [EvidenceVariable](http://hl7.org/fhir/R5/evidencevariable.html) | Definition of the patient group for which evidence was generated. | - |

The following profiles are used to represent the assessment of evidence which justify the recommendation:

| Name | FHIR Base Resource | Description | References |
| ---- | ------------- | ----------- | ---------- |
| [Recommendation Justification][SD:Recommendation Justification] | [ArtifactAssessment](http://hl7.org/fhir/R5/artifactassessment.html) | Rating of the recommendation given all evidence for all considered outcomes. | [Recommendation Plan][SD:Recommendation Plan], [Certainty of Evidence Rating][SD:Certainty of Evidence Rating], [Net Effect Estimate][SD:Net Effect Estimate] |
| [Certainty of Evidence Rating][SD:Certainty of Evidence Rating] | [ArtifactAssessment](http://hl7.org/fhir/R5/artifactassessment.html) | Rating of the evidence for individual outcomes. | [Outcome Evidence][SD:Outcome Evidence] |
| [Net Effect Estimate][SD:Net Effect Estimate] | [EvidenceVariable](http://hl7.org/fhir/R5/evidencevariable.html) | Description of the net effect of a guideline recommendation. | (Expected) [Outcomes][SD:Outcome Definition] of a guideline recommendation. |


Additionally, the following profiles are used to bundle recommendations and resources:

| Name | FHIR Base Resource | Description | References |
| ---- | ------------- | ----------- | ---------- |
| [Clinical Practice Guideline][SD:Clinical Practice Guideline] | [Composition](http://hl7.org/fhir/R5/composition.html) | Composition of several individual guideline recommendations | [Recommendation Plan][SD:Recommendation Plan], [Guideline Citation][SD:Guideline Citation] |
| [Guideline Bundle][SD:Guideline Bundle] | [Bundle](http://hl7.org/fhir/R5/bundle.html) | Bundle of all resources of a single clinical practice guideline. | All other resources in this IG. |


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


[VS:Action Combination Method]: ValueSet-vs-action-combination-method.html
[VS:Action Selection Behavior Required]: ValueSet-vs-action-selection-behavior-required.html
[VS:Allergic Disposition SCT]: ValueSet-vs-allergic-disposition-sct.html
[VS:Assessment]: ValueSet-vs-assessment.html
[VS:Assessment Scales]: ValueSet-vs-assessment-scales.html
[VS:Body Positioning SNOMED CT]: ValueSet-vs-body-positioning-snomed.html
[VS:Clinical Importance of Outcome]: ValueSet-vs-rating-clinical-importance.html
[VS:Cochrane PICO]: ValueSet-cochrane-pico.html
[VS:Cochrane PICO Intervention]: ValueSet-cochrane-pico-intervention.html
[VS:Cochrane PICO Outcome]: ValueSet-cochrane-pico-outcome.html
[VS:Cochrane PICO Population]: ValueSet-cochrane-pico-population.html
[VS:Episode Of Care Type]: ValueSet-vs-episode-of-care-type.html
[VS:Guideline Recommendation Status]: ValueSet-vs-guideline-recommendation-status.html
[VS:Guideline Stage Classification]: ValueSet-vs-guideline-stage-classification.html
[VS:Laboratory Observations]: ValueSet-vs-laboratory-observations.html
[VS:Mean Difference Type]: ValueSet-vs-mean-difference-type.html
[VS:Radiologic Finding SCT]: ValueSet-vs-radiologic-finding-sct.html
[VS:Rating Acceptability]: ValueSet-vs-rating-acceptability.html
[VS:Rating Benefit And Harms]: ValueSet-vs-rating-benefit-and-harms.html
[VS:Rating Certainty Of Evidence]: ValueSet-vs-rating-certainty-of-evidence.html
[VS:Rating Concern Degree]: ValueSet-vs-rating-concern-degree.html
[VS:Rating Consensus]: ValueSet-vs-rating-consensus.html
[VS:Rating Equity]: ValueSet-vs-rating-equity.html
[VS:Rating Feasibility]: ValueSet-vs-rating-feasibility.html
[VS:Rating Preference And Values]: ValueSet-vs-rating-preference-and-values.html
[VS:Rating Resources]: ValueSet-vs-rating-resources.html
[VS:Rating Up Rating One Level]: ValueSet-vs-rating-uprating-one-level.html
[VS:Rating Up Rating Two Levels]: ValueSet-vs-rating-uprating-two-levels.html
[VS:Recommendation Strength]: ValueSet-ceosys-vs-recommendation-strength.html
[VS:Relative Effect Type]: ValueSet-vs-relative-effect-type.html
[VS:Substances SNOMED CT]: ValueSet-vs-substances-snomed.html
[VS:Ventilation Observable SCT]: ValueSet-vs-ventilation-observable-sct.html

[CS:Action Combination Method]: CodeSystem-cs-action-combination-method.html
[CS:CEOsys Code System]: CodeSystem-ceosys-code-system.html
[CS:Clinical Importance of Outcome]: CodeSystem-cs-clinical-importance.html
[CS:Cochrane Core Ontology]: CodeSystem-cochrane-core-ontology.html
[CS:Cochrane PICO Ontology]: CodeSystem-cochrane-pico-ontology.html
[CS:Evidence Certainty Rating]: CodeSystem-certainty-rating.html
[CS:Evidence To Decision Certainty Rating]: CodeSystem-cs-evidence-to-decision-certainty-rating.html
[CS:Evidence To Decision Certainty type]: CodeSystem-cs-evidence-to-decision-certainty-type.html
[CS:Guideline Stage Classification]: CodeSystem-cs-guideline-stage-classification.html
[CS:Recommendation Strength]: CodeSystem-ceosys-cs-recommendation-strength.html
[CS:SynthesisType]: CodeSystem-synthesis-type.html

[SD:Action Combination Method]: StructureDefinition-ext-action-combination-method.html
[SD:ArtifactAssessment Publication Status]: StructureDefinition-ceosys-extension-artifact-assessment-publication-status.html
[SD:ArtifactAssessment Version]: StructureDefinition-ceosys-extension-artifact-assessment-version.html
[SD:Assessment Action]: StructureDefinition-assessment-action.html
[SD:Body Positioning Action]: StructureDefinition-body-positioning-action.html
[SD:Certainty of Evidence Rating]: StructureDefinition-certainty-of-evidence-rating.html
[SD:Clinical Practice Guideline]: StructureDefinition-guideline.html
[SD:Cohorts]: StructureDefinition-cohorts.html
[SD:CPGComputablePlanDefinition]: StructureDefinition-cpg-computableplandefinition.html
[SD:CPGRecommendationDefinition]: StructureDefinition-cpg-recommendationdefinition.html
[SD:CPGShareablePlanDefinition]: StructureDefinition-cpg-shareableplandefinition.html
[SD:CPGStrategyDefinition]: StructureDefinition-cpg-strategydefinition.html
[SD:CQFM Artifact Comment]: StructureDefinition-cqfm-artifactComment.html
[SD:Dosage Condition]: StructureDefinition-ext-dosage-condition.html
[SD:Drug Administration Action]: StructureDefinition-drug-administration-action.html
[SD:Eligibility Criteria]: StructureDefinition-eligibility-criteria.html
[SD:Evidence Data Set]: StructureDefinition-evidence-data-set.html
[SD:Evidence Synthesis Cohorts]: StructureDefinition-evidence-synthesis-cohorts.html
[SD:Guideline Bundle]: StructureDefinition-guideline-bundle.html
[SD:Guideline Citation]: StructureDefinition-guideline-citation.html
[SD:Intervention Definition]: StructureDefinition-intervention-definition.html
[SD:Net Effect Estimate]: StructureDefinition-net-effect-estimate.html
[SD:Outcome Definition]: StructureDefinition-outcome-definition.html
[SD:Outcome Evidence]: StructureDefinition-outcome-evidence.html
[SD:Outcome Evidence Synthesis]: StructureDefinition-outcome-evidence-synthesis.html
[SD:PICO Evidence Variable]: StructureDefinition-pico-evidence-variable.html
[SD:qualityOfEvidence]: StructureDefinition-cqf-qualityOfEvidence.html
[SD:Recommendation]: StructureDefinition-recommendation.html
[SD:Recommendation Action]: StructureDefinition-recommendation-action.html
[SD:Recommendation Citation]: StructureDefinition-recommendation-citation.html
[SD:Recommendation Eligibility Criteria]: StructureDefinition-recommendation-eligibility-criteria.html
[SD:Recommendation Justification]: StructureDefinition-recommendation-justification.html
[SD:Recommendation Plan]: StructureDefinition-recommendation-plan.html
[SD:Shareable PlanDefinition]: StructureDefinition-shareableplandefinition.html
[SD:strengthOfRecommendation]: StructureDefinition-cqf-strengthOfRecommendation.html
[SD:Study Citation]: StructureDefinition-study-citation.html
[SD:Study Cohort]: StructureDefinition-study-cohort.html
[SD:Study Eligibility Criteria]: StructureDefinition-study-eligibility-criteria.html
[SD:Study Outcome Evidence]: StructureDefinition-study-outcome-evidence.html

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
