{% assign id = {{include.id}} %}
{% assign resource = site.data.structuredefinitions.[id] %}

### Guidance

This profile represents a single clinical practice guideline. It summarizes the guideline metadata (such as identifier, publisher, author, editor, status) and links the [Population EvidenceVariable][Population] and [Intervention EvidenceVariable][Intervention] resources in the `subject` field, to indicate the focus of the report, as well as the individual [Guideline Recommendation Evidence resources][Guideline Recommendation] via the `section` field.

It thus provides a structured presentation of the whole guideline contents including the guideline metadata.

{% include fhir-structure-detailed.md name='08-guideline' alt='FHIR Guideline' %}


{% capture resource_inheritance %}
This profile of a FHIR {{resource.type}} is derived from the [{{resource.base | split: '/' | last}}]({{resource.base}}) FHIR resource.
{% endcapture %}

{{ resource_inheritance | strip_newlines }}

{% include link-list.md %}
