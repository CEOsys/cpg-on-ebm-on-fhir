{% assign id = {{include.id}} %}
{% assign resource = site.data.structuredefinitions.[id] %}

### Guidance

This extension adds a `linkId` field to a [Group]({{ fhir_base_url }}/group.html) resource `.characteristic` field. It is used in conjunction with the [Related Characteristic extension][Related Characteristic] to represent temporal relationships between characteristics of a [Group]({{ fhir_base_url }}/group.html) resource.


{% capture resource_inheritance %}
This profile of a FHIR {{resource.type}} is derived from the [{{resource.base | split: '/' | last}}]({{resource.base}}) FHIR resource.
{% endcapture %}

{{ resource_inheritance | strip_newlines }}

{% include link-list.md %}
