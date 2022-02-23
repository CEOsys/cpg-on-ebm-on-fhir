{% assign id = {{include.id}} %}
{% assign resource = site.data.structuredefinitions.[id] %}

### Guidance

This extension adds the possibility to reference an [PlanDefinition resource]({{ fhir_base_url }}plandefinition.html). It is used on `[EvidenceVariable]({{ fhir_base_url }}evidencevariable.html).characteristic.definitionReference`, as this currently ([FHIR 5.0.0-snapshot1](http://hl7.org/fhir/5.0.0-snapshot1/)) only allows to references to [Group]({{ fhir_base_url }}group.html) or [EvidenceVariable]({{ fhir_base_url }}evidencevariable.html).


{% capture resource_inheritance %}
This profile of a FHIR {{resource.type}} is derived from the [{{resource.base | split: '/' | last}}]({{resource.base}}) FHIR resource.
{% endcapture %}

{{ resource_inheritance | strip_newlines }}

{% include link-list.md %}
