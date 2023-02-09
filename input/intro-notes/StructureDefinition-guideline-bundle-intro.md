{% include variables.md %}
{% assign id = {{include.id}} %}
{% assign resource = site.data.structuredefinitions.[id] %}

### Guidance

This bundle is used to collect all resources of a specific clinical practice guideline. It contains the following resources:

* Required
  * [Guideline][Guideline]
  * [Recommendation][Recommendation]
  * [Recommendation Plan][Recommendation Plan]
  * [PICO Evidence Variable][PICO Evidence Variable] (includes [Recommendation Eligibility Criteria][Recommendation Eligibility Criteria], [Study Eligibility Criteria][Study Eligibility Criteria], [Outcome Definition][Outcome Definition] and [Intervention Definition][Intervention Definition])
  * [Recommendation Action][Recommendation Action]
  * [Recommendation Justification][Recommendation Justification]
* Optional
  * [Certainty of Evidence Rating][Certainty of Evidence Rating]
  * [Outcome Evidence][Outcome Evidence]
  * [Study Citation][Study Citation]
  * [Recommendation Citation][Recommendation Citation]
  * [Guideline Citation][Guideline Citation]
  * [Net Effect Estimate][Net Effect Estimate]

{% capture resource_inheritance %}
This profile of a FHIR {{resource.type}} is derived from the [{{resource.base | split: '/' | last}}]({{resource.base}}) FHIR resource.
{% endcapture %}

{{ resource_inheritance | strip_newlines }}

{% include link-list.md %}
