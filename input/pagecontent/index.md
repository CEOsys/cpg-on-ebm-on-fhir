{% include variables.md %}

### Summary

This implementation guide describes an approach to using [evidence-based medicine on FHIR (EBMonFHIR)][EMBonFHIR] in combination with [FHIR Clinical Guidelines][CPGonFHIR] to represent evidence-based clinical practice guidelines including the evidence upon which the recommendations are based. The approach is based on the PICO (population, intervention, comparator, outcome) framework and the GRADE (Grading of Recommendations Assessment, Development and Evaluation) approach.

This implementation guide is based on FHIR R5 (5.0.0-snapshot3).
{.stu-note}

Apart from representing the actual treatment recommendations provided by the guidelines according to [FHIR Clinical Guidelines][CPGonFHIR], the evidence generation and evidence assessment components of evidence-based guideline development is also represented.

The following elements are required to represent a clinical practice guideline recommendation for automated clinical decision support systems:

| Name | FHIR Base Resource | Description | References |
| ---- | ------------- | ----------- | ---------- |
| [Recommendation][Recommendation] | [PlanDefinition]({{ fhir_base_url }}plandefinition.html) | Representation of a single guideline recommendation. | [Recommendation Plan][Recommendation Plan],  [Guideline Citation][Guideline Citation], [Recommendation Citation][Recommendation Citation]. |
| [Recommendation Plan][Recommendation Plan] | [PlanDefinition]({{ fhir_base_url }}plandefinition.html) | Description of a recommended intervention addressed in a specific guideline recommendation. | [Intervention Activities][Recommendation Action] specified in the guideline recommendation; [Recommendation Eligibility Criteria][Recommendation Eligibility Criteria] defining the group of patients to which the recommendation applies to; [Recommendation Justification][Recommendation Justification] providing the justification of the recommendation; [Guideline Citation][Guideline Citation], [Recommendation Citation][Recommendation Citation]. |
| [Recommendation Action][Recommendation Action] | [ActivityDefinition]({{ fhir_base_url }}activitydefinition.html) | Definition of an activity that is part of an intervention in the context of a clinical practice guideline recommendation. | - |
| [Recommendation Eligibility Criteria][Recommendation Eligibility Criteria] | [EvidenceVariable]({{ fhir_base_url }}evidencevariable.html) | Description of the population to which a specific guideline recommendation applies. | - |
{:.grid}

The following profiles are used to represent the evidence upon which a clinical practice guideline recommendation is based:

| Name | FHIR Base Resource | Description | References |
| ---- | ------------- | ----------- | ---------- |
| [Study Outcome Evidence][Study Outcome Evidence] | [Evidence]({{ fhir_base_url }}evidence.html) | Evidence statistics generated from a single study or systematic review regarding a clinical question. | [Study Eligibility Criteria][Study Eligibility Criteria], [Intervention Definition][Intervention Definition], [Outcome Definition][Outcome Definition], [Study Citation][Study Citation] |
| [Study Eligibility Criteria][Study Eligibility Criteria] | [EvidenceVariable]({{ fhir_base_url }}evidencevariable.html) | Intended definition of the patient group for which evidence or was generated or evidence synthesis was performed. | - |
| [Study Cohort][Study Cohort] | [Group]({{ fhir_base_url }}group.html) | Actual composition of the patient group for which the evidence was generated.  | - |
| [Outcome Evidence Synthesis][Outcome Evidence Synthesis] | [Evidence]({{ fhir_base_url }}evidence.html) | A single evidence for an outcome from an evidence synthesis (e.g., meta-analysis). | [Evidence Synthesis Cohorts][Evidence Synthesis Cohorts], [Evidence Data Set][Evidence Data Set] |
| [Evidence Synthesis Cohorts][Evidence Synthesis Cohorts] | [Group]({{ fhir_base_url }}group.html) | Actual composition of the patient group for which evidence synthesis was performed. | - |
| [Intervention Definition][Intervention Definition] | [EvidenceVariable]({{ fhir_base_url }}evidencevariable.html) | Definition of an intervention or comparison with respect to which evidence was generated. | - |
| [Outcome Definition][Outcome Definition] | [EvidenceVariable]({{ fhir_base_url }}evidencevariable.html) | Definition of the outcome for which evidence was generated. | - |
| [Evidence Data Set][Evidence Data Set] | [EvidenceVariable]({{ fhir_base_url }}evidencevariable.html) | Definition of the outcome used as the observed measured variable for an evidence synthesis. | - |
| [Outcome Evidence][Outcome Evidence] | [Evidence]({{ fhir_base_url }}evidence.html) | Evidence statistics generated from a single study or systematic review regarding a clinical question. | [Study Eligibility Criteria][Study Eligibility Criteria], [Intervention Definition][Intervention Definition], [Outcome Definition][Outcome Definition], [Study Citation][Study Citation] |
| [Study Eligibility Criteria][Study Eligibility Criteria] | [EvidenceVariable]({{ fhir_base_url }}evidencevariable.html) | Definition of the patient group for which evidence was generated. | - |
{:.grid}

The following profiles are used to represent the assessment of evidence which justify the recommendation:

| Name | FHIR Base Resource | Description | References |
| ---- | ------------- | ----------- | ---------- |
| [Recommendation Justification][Recommendation Justification] | [ArtifactAssessment]({{ fhir_base_url }}artifactassessment.html) | Rating of the recommendation given all evidence for all considered outcomes. | [Recommendation Plan][Recommendation Plan], [Certainty of Evidence Rating][Certainty of Evidence Rating], [Net Effect Estimate][Net Effect Estimate] |
| [Certainty of Evidence Rating][Certainty of Evidence Rating] | [ArtifactAssessment]({{ fhir_base_url }}artifactassessment.html) | Rating of the evidence for individual outcomes. | [Outcome Evidence][Outcome Evidence] |
| [Net Effect Estimate][Net Effect Estimate] | [EvidenceVariable]({{ fhir_base_url }}evidencevariable.html) | Description of the net effect of a guideline recommendation. | (Expected) [Outcomes][Outcome Definition] of a guideline recommendation. |
{:.grid}


Additionally, the following profiles are used to bundle recommendations and resources:

| Name | FHIR Base Resource | Description | References |
| ---- | ------------- | ----------- | ---------- |
| [Clinical Practice Guideline][Clinical Practice Guideline] | [Composition]({{ fhir_base_url }}composition.html) | Composition of several individual guideline recommendations | [Recommendation Plan][Recommendation Plan], [Guideline Citation][Guideline Citation] |
| [Guideline Bundle][Guideline Bundle] | [Bundle]({{ fhir_base_url }}bundle.html) | Bundle of all resources of a single clinical practice guideline. | All other resources in this IG. |
{:.grid}

The following diagram provides an overview of the different profiles used in this implementation guide and their relationship:

{% include fhir-structure-overview.md %}

### Detailed

The following diagram provides a more detailed view on the important fields of the profiles and their relationships. For a consistent detailed view, please visit the pages of the individual [profiles](profiles.html).

In short, a single guideline recommendation describes a specific group of patients (the "population"), for which a certain treatment (or the absence from treatment) is recommended (the "intervention"). As the guideline recommendations are based on meta-analyses of clinical studies, the expected outcome of the recommended intervention on the patients may also be encoded. This additionally allows to specify the net effect of the recommendation by weighting the individual outcomes by their relative importance. For more information on the net effect, see [Alper, B. S. et al. Defining certainty of net benefit: a GRADE concept paper. BMJ Open 9, e027445 (2019)](https://bmjopen.bmj.com/content/9/6/e027445.long).

{% include fhir-structure-detailed.md name='fhir-structure-detailed' alt='FHIR Structure Detailed' %}
{% include fhir-structure-bundle.md %}

<br/>

### Examples

Multiple recommendations represented in the here shown format can be found at the [CODEX+ CELIDA Recommendations repository][CELIDA_Recommendations].


### Related projects
* The EBMonFHIR project is currently developing an [EBM Implementation Guide](https://github.com/hl7/ebm) aimed at representing computable knowledge for guideline recommendations (and others).
* The [CODEX+ CELIDA][CELIDA] project has developed an [execution engine][CELIDA_ExecutionEngine] for applying the recommendations to patient data in OMOP Common Data Model format..

### Publication
Lichtner, G., Alper, B. S., Jurth, C., Spies, C., Boeker, M., Meerpohl, J. J., & von Dincklage, F. (2023). _"Representation of evidence-based clinical practice guideline recommendations on FHIR"_. Journal of Biomedical Informatics (2023). [https://doi.org/10.1016/j.jbi.2023.104305](https://doi.org/10.1016/j.jbi.2023.104305).

### Authors
* [Gregor Lichtner](https://github.com/glichtner) (University Medicine Greifswald)
* [Brian Alper](https://github.com/brianalperMD) (Computable Publishing LLC,
Scientific Knowledge Accelerator Foundation)
* Falk von Dincklage (University Medicine Greifswald)
* Carlo Jurth (Charité -- Universitätsmedizin Berlin)
* Claudia Spies (Charité -- Universitätsmedizin Berlin)
* Martin Boeker (Medical Center rechts der Isar, Technical University of Munich)
* Joerg Meerpohl (Medical Center & Faculty of Medicine, University of Freiburg; Cochrane Germany)


### Links
* [Netzwerk Universitätsmedizin (NUM)][NUM]
* [COVID-19 Evidence Ecosystem (CEOsys)][CEOSYS]
* [GitHub project](https://github.com/CEOsys/cpg-on-ebm-on-fhir)

{% include link-list.md %}
