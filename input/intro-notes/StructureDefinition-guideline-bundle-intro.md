{% include variables.md %}
{% assign id = {{include.id}} %}
{% assign resource = site.data.structuredefinitions.[id] %}

### Guidance

This bundle is used to collect all resources of a specific clinical practice guideline. It contains the following resources:

* Required
  * [Guideline][SD:Guideline]
  * [Recommendation][SD:Recommendation]
  * [Recommendation Plan][SD:Recommendation Plan]
  * [PICO Evidence Variable][SD:PICO Evidence Variable] (includes [Recommendation Eligibility Criteria][SD:Recommendation Eligibility Criteria], [Study Eligibility Criteria][SD:Study Eligibility Criteria], [Outcome Definition][SD:Outcome Definition] and [Intervention Definition][SD:Intervention Definition])
  * [Recommendation Action][SD:Recommendation Action]
  * [Recommendation Justification][SD:Recommendation Justification]
* Optional
  * [Certainty of Evidence Rating][SD:Certainty of Evidence Rating]
  * [Outcome Evidence][SD:Outcome Evidence]
  * [Study Citation][SD:Study Citation]
  * [Recommendation Citation][SD:Recommendation Citation]
  * [Guideline Citation][SD:Guideline Citation]
  * [Net Effect Estimate][SD:Net Effect Estimate]

{% capture resource_inheritance %}
This profile of a FHIR {{resource.type}} is derived from the [{{resource.base | split: '/' | last}}]({{resource.base}}) FHIR resource.
{% endcapture %}

{{ resource_inheritance | strip_newlines }}

{% include link-list.md %}
