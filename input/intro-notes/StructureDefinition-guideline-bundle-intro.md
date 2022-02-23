{% include variables.md %}
{% assign id = {{include.id}} %}
{% assign resource = site.data.structuredefinitions.[id] %}

### Guidance

This bundle is used to collect all resources of a specific clinical practice guideline. It contains the following resources:

* Required
  * [Clinical Practice Guideline][Clinical Practice Guideline]
  * [Guideline Recommendation][Guideline Recommendation]
  * [Population][Population]
  * [Population Group][Population Group]
  * [Intervention][Intervention]
  * [Intervention Activity][Intervention Activity]
* Optional
  * [Net Effect][Net Effect]
  * [Outcome][Outcome]

<img src="10-bundle.png" alt="FHIR Bundle" />

{% capture resource_inheritance %}
This profile of a FHIR {{resource.type}} is derived from the [{{resource.base | split: '/' | last}}]({{resource.base}}) FHIR resource.
{% endcapture %}

{{ resource_inheritance | strip_newlines }}

{% include link-list.md %}
