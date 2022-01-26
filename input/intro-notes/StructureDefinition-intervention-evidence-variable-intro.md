{% assign id = {{include.id}} %}
{% assign resource = site.data.structuredefinitions.[id] %}

### Guidance


This profile describe the metadata of a recommended intervention for a specific [Guideline Recommendation][Guideline Recommendation] and references the [Intervention ActivityDefinition resources][Intervention Activity] that in combination define the intervention that are part of the recommendation.

| Field | Description |
| ----- | ----------- |
| `characteristicCombination` | Fixed to `#all-of`, implying that all referenced [Intervention Activities][Intervention Activity] are recommended together. |
| `characteristic.type` | Type of intervention (from [Cochrane PICO Intervention value set][Cochrane PICO Intervention]). |
| `characteristic.definitionReference` | Reference to [Intervention ActivityDefinition resources][Intervention Activity] defining the intervention. |
| `characteristic.exclude` | Whether to exclude the referenced [Intervention ActivityDefinition resources][Intervention Activity] from the guideline recommendation. |
{:.grid}

<img alt="FHIR Intervention" src="03-intervention.png" style="width:100%;" />

{% capture resource_inheritance %}
This profile of a FHIR {{resource.type}} is derived from the [{{resource.base | split: '/' | last}}]({{resource.base}}) FHIR resource.
{% endcapture %}

{{ resource_inheritance | strip_newlines }}

{% include link-list.md %}
