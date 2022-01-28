{% assign id = {{include.id}} %}
{% assign resource = site.data.structuredefinitions.[id] %}

### Guidance

This profile defines a specific recommended activity as part of an [Intervention][Intervention] recommended by a specific [Guideline Recommendation][Guideline Recommendation].

The characteristics of the patient group are coded using the `characteristic` field.

| Field | Description |
| ----- | ----------- |
| `subjectCodeableConcept` | Fixed to `#patient` |
{:.grid}


{% include fhir-structure-detailed.md name='07-intervention-activity' alt='FHIR Intervention Activity' %}

{% capture resource_inheritance %}
This profile of a FHIR {{resource.type}} is derived from the [{{resource.base | split: '/' | last}}]({{resource.base}}) FHIR resource.
{% endcapture %}

{{ resource_inheritance | strip_newlines }}

{% include link-list.md %}
