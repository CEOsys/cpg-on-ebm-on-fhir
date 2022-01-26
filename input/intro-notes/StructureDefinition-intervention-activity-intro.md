{% assign id = {{include.id}} %}
{% assign resource = site.data.structuredefinitions.[id] %}

### Guidance

This profile defines a specific recommended activity as part of an [Intervention][Intervention] recommended by a specific [Guideline Recommendation][Guideline Recommendation].

The characteristics of the patient group are coded using the `characteristic` field.

| Field | Description |
| ----- | ----------- |
| `subjectCodeableConcept` | Fixed to `#patient` |
{:.grid}


<img alt="FHIR Intervention Activity" src="07-intervention-activity.png" style="width:100%;" />

{% capture resource_inheritance %}
This profile of a FHIR {{resource.type}} is derived from the [{{resource.base | split: '/' | last}}]({{resource.base}}) FHIR resource.
{% endcapture %}

{{ resource_inheritance | strip_newlines }}

{% include link-list.md %}
