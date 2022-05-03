{% include variables.md %}

This implementation guide is currently being updated and may not represent the current development status of the CPG-on-EBMonFHIR project.
{:.stu-note}

### Summary

This implementation guide describes an [evidence-based medicine on FHIR (EBMonFHIR)][EMBonFHIR] approach to represent clinical practice guidelines using FHIR resources.

Apart from representing the actual treatment recommendations provided by the guidelines, the evidence generation and evidence assessment components of evidence-based guideline development is also represented. The representation of clinical practice guidelines is oriented to the PICO (population, intervention, comparator, outcome) framework.

The following elements are required to represent a clinical practice guideline recommendation for automated clinical decision support systems:

| Name | FHIR Base Resource | Description | References |
| ---- | ------------- | ----------- | ---------- |
| [Recommendation Plan][Recommendation Plan] | [PlanDefinition]({{ fhir_base_url }}plandefinition.html) | Description of a recommended intervention addressed in a specific guideline recommendation. | [Intervention Activities][Recommendation Action] specified in the guideline recommendation; [Recommendation Eligibility Criteria][Recommendation Eligibility Criteria] defining the group of patients to which the recommendation applies to; [Recommendation Justification][Recommendation Justification] providing the justification of the recommendation; [Guideline Citation][Guideline Citation], [Recommendation Citation][Recommendation Citation]. |
| [Recommendation Action][Recommendation Action] | [ActivityDefinition]({{ fhir_base_url }}activitydefinition.html) | Definition of an activity that is part of an intervention in the context of a clinical practice guideline recommendation. | - |
| [Recommendation Eligibility Criteria][Recommendation Eligibility Criteria] | [EvidenceVariable]({{ fhir_base_url }}evidencevariable.html) | Description of the population to which a specific guideline recommendation applies. | - |
{:.grid}

The following profiles are used to represent the evidence upon which a clinical practice guideline recommendation is based:

| Name | FHIR Base Resource | Description | References |
| ---- | ------------- | ----------- | ---------- |
| [Outcome Evidence][Outcome Evidence] | [Evidence]({{ fhir_base_url }}evidence.html) | Evidence statistics generated from a single study or systematic review regarding a clinical question. | [Study Eligibility Criteria][Study Eligibility Criteria], [Intervention Definition][Intervention Definition], [Outcome Definition][Outcome Definition], [Study Citation][Study Citation] |
| [Study Eligibility Criteria][Study Eligibility Criteria] | [EvidenceVariable]({{ fhir_base_url }}evidencevariable.html) | Definition of the patient group for which evidence was generated. | - |
| [Intervention Definition][Intervention Definition] | [EvidenceVariable]({{ fhir_base_url }}evidencevariable.html) | Definition of an intervention or comparison with respect to which evidence was generated. | - |
| [Outcome Definition][Outcome Definition] | [EvidenceVariable]({{ fhir_base_url }}evidencevariable.html) | Definition of the outcome for which evidence was generated. | - |
| [Study Citation][Study Citation] | [Citation]({{ fhir_base_url }}citation.html) | Citation of the study or systematic review. | - |
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


### Authors
* [Gregor Lichtner](https://github.com/glichtner) (University Medicine Greifswald, Charité -- Universitätsmedizin Berlin)
* Falk von Dincklage (University Medicine Greifswald, Charité -- Universitätsmedizin Berlin)
* Carlo Jurth (Charité -- Universitätsmedizin Berlin)

### Involved organizations
* [Charité -- Universitätsmedizin Berlin](https://www.charite.de)
* [University Medicine Greifswald](https://www.medizin.uni-greifswald.de/de/home/)

### Links
* [Netzwerk Universitätsmedizin (NUM)][NUM]
* [COVID-19 Evidence Ecosystem (CEOsys)][CEOSYS]
* [GitHub project](https://github.com/CEOsys/cpg-on-ebm-on-fhir)

{% include link-list.md %}
