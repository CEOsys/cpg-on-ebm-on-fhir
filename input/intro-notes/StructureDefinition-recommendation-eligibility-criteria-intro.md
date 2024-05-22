{% include variables.md %}
{% assign id = {{include.id}} %}
{% assign resource = site.data.structuredefinitions.[id] %}

### Guidance

This resource is used to define the eligibility criteria for a specific [Recommendation Plan][SD:Recommendation Plan].

{% include categories-population.md %}

The [RelativeTime][SD:RelativeTime] datatype can be used via the [RelativeTime extension][SD:RelativeTime] on the `characteristic` field to define the timing of the action.

{% capture resource_inheritance %}
This profile of a FHIR {{resource.type}} is derived from the [{{resource.base | split: '/' | last}}]({{resource.base}}) FHIR resource.
{% endcapture %}

{{ resource_inheritance | strip_newlines }}

{% include link-list.md %}
