
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
| [Outcome Evidence Synthesis][SD:utcome Evidence Synthesis] | [Evidence](http://hl7.org/fhir/R5/evidence.html) | A single evidence for an outcome from an evidence synthesis (e.g., meta-analysis). | [Evidence Synthesis Cohorts][SD:Evidence Synthesis Cohorts], [Evidence Data Set][SD:Evidence Data Set] |
| [Evidence Synthesis Cohorts][SD:Evidence Synthesis Cohorts] | [Group](http://hl7.org/fhir/R5/group.html) | Actual composition of the patient group for which evidence synthesis was performed. | - |
| [Intervention Definition][SD:Intervention Definition] | [EvidenceVariable](http://hl7.org/fhir/R5/evidencevariable.html) | Definition of an intervention or comparison with respect to which evidence was generated. | - |
| [Outcome Definition][SD:Outcome Definition] | [EvidenceVariable](http://hl7.org/fhir/R5/evidencevariable.html) | Definition of the outcome for which evidence was generated. | - |
| [Evidence Data Set][SD:Evidence Data Set] | [EvidenceVariable](http://hl7.org/fhir/R5/evidencevariable.html) | Definition of the outcome used as the observed measured variable for an evidence synthesis. | - |
| [Outcome Evidence][OSD:utcome Evidence] | [Evidence](http://hl7.org/fhir/R5/evidence.html) | Evidence statistics generated from a single study or systematic review regarding a clinical question. | [Study Eligibility Criteria][SD:Study Eligibility Criteria], [Intervention Definition][Intervention Definition], [Outcome Definition][SD:Outcome Definition], [Study Citation][SD:Study Citation] |
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


{% include link-list.md %}
