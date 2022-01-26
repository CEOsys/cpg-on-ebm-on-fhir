{% include variables.md %}
{% assign id = {{include.id}} %}
{% assign resource = site.data.structuredefinitions.[id] %}

### Guidance

This extension provides a version attribute for the [EvidenceReport resource]({{ fhir_base_url }}evidencereport.html), as it currently does not implement the field ([FHIR 5.0.0-snapshot1](http://hl7.org/fhir/5.0.0-snapshot1/)), although it is derived from [MetadataResource]({{ fhir_base_url }}metadataresource.html) and thus should implement the version attribute.


{% capture resource_inheritance %}
This profile of a FHIR {{resource.type}} is derived from the [{{resource.base | split: '/' | last}}]({{resource.base}}) FHIR resource.
{% endcapture %}

{{ resource_inheritance | strip_newlines }}

{% include link-list.md %}
