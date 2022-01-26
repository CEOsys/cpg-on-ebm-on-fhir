{% assign id = {{include.id}} %}
{% assign resource = site.data.structuredefinitions.[id] %}

### Guidance
This profile describe the metadata of the outcome for a specific [Guideline Recommendation][Guideline Recommendation] and references or specifies the (expected) outcomes of the intervention on the population.

| Field | Description |
| ----- | ----------- |
| `characteristicCombination` | Fixed to `#all-of`, implying that this recommendation leads to all of the described outcomes. |
| `characteristic.type` | Type of outcome (from [Cochrane PICO Outcome value set][Cochrane PICO Outcome]). |
| `characteristic.definition` | CodeableConcept or Reference to a resource describing the (expected) outcome. |
| `characteristic.exclude` | Fixed to `false`. |
{:.grid}

<img alt="FHIR Outcome" src="04-outcome.png" style="width:100%;" />

{% capture resource_inheritance %}
This profile of a FHIR {{resource.type}} is derived from the [{{resource.base | split: '/' | last}}]({{resource.base}}) FHIR resource.
{% endcapture %}

{{ resource_inheritance | strip_newlines }}

{% include link-list.md %}
