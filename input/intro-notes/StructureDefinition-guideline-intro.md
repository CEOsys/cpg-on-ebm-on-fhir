{% include variables.md %}
{% assign id = {{include.id}} %}
{% assign resource = site.data.structuredefinitions.[id] %}

### Guidance

This profile represents a single clinical practice guideline. It serves as a container for the guideline metadata and the individual [Recommendation resources][SD:Recommendation] that represent the recommendations of the guideline.

It thus provides a structured presentation of the whole guideline contents including the guideline metadata.


{% capture resource_inheritance %}
This profile of a FHIR {{resource.type}} is derived from the [{{resource.base | split: '/' | last}}]({{resource.base}}) FHIR resource.
{% endcapture %}

{{ resource_inheritance | strip_newlines }}

{% include link-list.md %}
