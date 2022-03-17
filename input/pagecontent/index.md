{% include variables.md %}

### Summary

This implementation guide describes an [evidence-based medicine on FHIR (EBMonFHIR)][EMBonFHIR] approach to represent clinical practice guidelines using FHIR resources.

Apart from representing the actual treatment recommendations provided by the guidelines, a large set of metadata regarding the guideline creation process (risk of bias, certainty, authorships etc.) is also encoded.
The representation of clinical practice guidelines is oriented to the PICO (population, intervention/exposure, comparator, outcome) framework.

The main elements of a clinical practice guideline in the context of this FHIR implementation guide is represented in the following table:

| Name | FHIR Base Resource | Description | References |
| ---- | ------------- | ----------- | ---------- |
| [Clinical Practice Guideline][Clinical Practice Guideline] | [Composition]({{ fhir_base_url }}composition.html) | Composition of several individual guideline recommendations | [Guideline Recommendations][Guideline Recommendation] |
| [Guideline Recommendation][Guideline Recommendation] | [Evidence]({{ fhir_base_url }}evidence.html) | Representation of a single recommendation from a guideline | [Population][Population], [Intervention][Intervention], [Outcome][Outcome] and [Net Effect][Net Effect] pertinent to the guideline recommendation. |
| [Population][Population] | [EvidenceVariable]({{ fhir_base_url }}evidencevariable.html) | Description of the population to which a specific guideline recommendation applies. | [Population Groups][Population Group] making up the population addressed in the recommendation. |
| [Intervention][Intervention] | [EvidenceVariable]({{ fhir_base_url }}evidencevariable.html) | Description of recommmended intervention addressed in a specific guideline recommendation. | [Intervention Plans][Intervention Plan] specified in the guideline recommendation. |
| [Outcome][Outcome] | [EvidenceVariable]({{ fhir_base_url }}evidencevariable.html) | Description of the (expected) outcome of a specific guideline recommendation | - |
{:.grid}

Additionally, the following profiles are used to specify a guideline:

| Name | FHIR Base Resource | Description | References |
| ---- | ------------- | ----------- | ---------- |
| [Population Group][Population Group]| [Group]({{ fhir_base_url }}group.html) | Characterization of a group of patients or subjects for which a clinical guideline recommends a treatment or intervention. | - |
| [Intervention Plan][Intervention Plan] | [PlanDefinition]({{ fhir_base_url }}plandefinition.html) | Definition of plan that is part of an intervention in the context of a clinical practice guideline recommendation. | - |
| [Intervention Activity][Intervention Activity] | [ActivityDefinition]({{ fhir_base_url }}activitydefinition.html) | Definition of an activity that is part of an intervention in the context of a clinical practice guideline recommendation. | - |
| [Net Effect][Net Effect] | [EvidenceVariable]({{ fhir_base_url }}evidencevariable.html) | Description of the net effect of a guideline recommendation. | (Expected) [Outcomes][Outcome] of a guideline recommendation. |
| [Guideline Bundle] | [Bundle]({{ fhir_base_url }}bundle.html) | Bundle of all resources of a single clinical practice guideline. | All other resources in this IG. |
{:.grid}

The following diagram provides an overview of the different profiles used in this implementation guide and their relationship:

{% include fhir-structure-overview.md %}

### Detailed

The following diagram provides a more detailed view on the important fields of the profiles and their relationships. For a consistent detailed view, please visit the pages of the individual [profiles](profiles.html).

In short, a [single guideline recommendation][Guideline Recommendation] describes a specific group of patients (the "population"), for which a certain treatment (or the absence from treatment) is recommened (the "intervention"). As the guideline recommendations are based on meta-analyses of clinical studies, the expected outcome of the recommended intervention on the patients may also be encoded. This additionally allows to specify the net effect of the recommendation by weighting the individual outcomes by their relative importance. For more information on the net effect, see [Alper, B. S. et al. Defining certainty of net benefit: a GRADE concept paper. BMJ Open 9, e027445 (2019)](https://bmjopen.bmj.com/content/9/6/e027445.long).

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
