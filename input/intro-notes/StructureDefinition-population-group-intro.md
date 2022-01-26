{% assign id = {{include.id}} %}
{% assign resource = site.data.structuredefinitions.[id] %}

### Guidance

This profile defines a specific (but not actual) group of patients as part of a [Population][Population] addressed by a single [Guideline Recommendation][Guideline Recommendation].

The characteristics of the patient group are coded using the `characteristic` field.

| Field | Description |
| ----- | ----------- |
| `type` | Fixed to `#person` |
| `actual` | Fixed to `false` |
| `characteristic.code` | Code defining a property of the group ([SNOMED CT][SNOMEDCT] (required) or [Cochrane Linked Data][COCHRANELD] (optional)) |
| `characteristic.value[x]` | Value of the `code` defining the population. |
{:.grid}

<img alt="FHIR Population Group" src="06-population-group.png" style="width:100%;" />

{% capture resource_inheritance %}
This profile of a FHIR {{resource.type}} is derived from the [{{resource.base | split: '/' | last}}]({{resource.base}}) FHIR resource.
{% endcapture %}

{{ resource_inheritance | strip_newlines }}

{% include link-list.md %}
