{% include variables.md %}
{% assign id = {{include.id}} %}
{% assign resource = site.data.structuredefinitions.[id] %}

### Guidance


This profile encodes a single recommendation from a clincal practice guideline. Next to metadata such as `identifier`, `version`, `title`, `date` and `description`, this resource holds the definitions of the population (via references to [Population EvidenceVariable resources][Population]), intervention (via references to [Intervention EvidenceVariable resources][Intervention]) and optionally outcome (via references to [Outcome EvidenceVariable resources][Outcome]) and net effect (via references to [Net Effect EvidenceVariable resources][Net Effect]) that the guideline recommendation adresseses.

<img alt="FHIR Guideline Recommendation" src="01-guideline-recommendation.png" style="width:100%;" />

{% capture resource_inheritance %}
This profile of a FHIR {{resource.type}} is derived from the [{{resource.base | split: '/' | last}}]({{resource.base}}) FHIR resource.
{% endcapture %}

{{ resource_inheritance | strip_newlines }}

#### Recommendation Strength
The strength of the recommendation is supplied via the [Strength of Recommendation extension](http://hl7.org/fhir/StructureDefinition/cqf-strengthOfRecommendation). Valid codes are given in the [Recommendation Strength value set][Recommendation Strength] and are as follows:

{% include ValueSet-ceosys-vs-recommendation-strength-expansion.xhtml %}
{:.grid}

#### Certainty

Certainty of the recommendation is coded using the `certainty` field. Two types of certainty of the recommendation are regularly coded:

| Code | Display | Definition |
| ---- | ------- | ---------- |
| [Overall]({{ fhir_base_url }}codesystem-certainty-type.html#certainty-type-Overall) | Overall certainty | Overall certainty of evidence (quality of evidence). |
| [RiskOfBias]({{ fhir_base_url }}codesystem-certainty-type.html#certainty-type-RiskOfBias) | Risk of bias | Methodologic concerns reducing internal validity. |
{:.grid}

#### Overall Certainty

Other types of certainties may coded using codes from the [Certainty Type value set](
{{ fhir_base_url }}valueset-certainty-type.html)


Codes used to rate the [Overall certainty]({{ fhir_base_url }}codesystem-certainty-type.html#certainty-type-Overall) are:

| Code | Display | Definition |
| ---- | ------- | ---------- |
| [high]({{ fhir_base_url }}codesystem-certainty-rating.html#certainty-rating-high) | High quality | High quality evidence. |
| [moderate]({{ fhir_base_url }}codesystem-certainty-rating.html#certainty-rating-moderate) | Moderate quality | Moderate quality evidence. |
| [low]({{ fhir_base_url }}codesystem-certainty-rating.html#certainty-rating-low) | Low quality | Low quality evidence. |
| [very-low]({{ fhir_base_url }}codesystem-certainty-rating.html#certainty-rating-very-low) | Very low quality | Very low quality evidence. |
{:.grid}

#### Risk of Bias

Codes used to rate the [Risk Of Bias]({{ fhir_base_url }}codesystem-certainty-type.html#certainty-type-RiskOfBias) are:

| Code | Display | Definition |
| ---- | ------- | ---------- |
| [no-concern]({{ fhir_base_url }}codesystem-certainty-rating.html#certainty-rating-no-concern) | no serious concern | no serious concern. |
| [serious-concern]({{ fhir_base_url }}codesystem-certainty-rating.html#certainty-rating-serious-concern) | serious concern | serious concern. |
| [very-serious-concern]({{ fhir_base_url }}codesystem-certainty-rating.html#certainty-rating-very-serious-concern) | very serious concern | very serious concern. |
| [extremely-serious-concern]({{ fhir_base_url }}codesystem-certainty-rating.html#certainty-rating-extremely-serious-concern) | extremely serious concern | extremely serious concern. |
{:.grid}

Additional codes may be found in the [Certainty Rating value set]({{ fhir_base_url }}valueset-certainty-rating.html):


#### Net Effect
The net effect (net benefit / net harm) can be used to weigh the different outcomes due to an intervention by their relative importance, to get an estimate of the total, or net, benefit or harm of the recommened intervention. To code the net effect, a slice of the `statistic` field is used with the following fields.

For more information on the net effect, see
[Alper, B. S. et al. Defining certainty of net benefit: a GRADE concept paper. BMJ Open 9, e027445 (2019)](https://bmjopen.bmj.com/content/9/6/e027445.long).


| Field | Description |
| ----- | ----------- |
| `statistic.description` | Fixed to "Net Effect" |
| `statistic.quantity` | The estimated net effect as a FHIR `Quantity` |
| `statistic.statisticType` | Fixed to `#Risk Difference` |
| `statistic.attributeEstimate[confidenceInterval].type` | Fixed to `#C53324 "Confidence interval"` |
| `statistic.attributeEstimate[confidenceInterval].range` | The low and high value of the 95% confidence interval of the net effect. |
| `statistic.attributeEstimate[confidenceInterval].level` | Fixed to 0.95 (for 95% CI) |
| `statistic.modelCharacteristic[*].code` | Fixed to `#relative-importance-weighting` to describe the relative importance weighting of the different outcomes |
| `statistic.modelCharacteristic[*].value` | Relative importance weight for the Outcome referenced in `.variableDefinition` |
| `statistic.modelCharacteristic[*].variable.variableDefinition` | Reference to the [Outcome EvidenceVariable][Outcome] for which the relative importance value is specified |
{:.grid}




{% include link-list.md %}
