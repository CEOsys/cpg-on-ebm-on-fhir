{% assign id = {{include.id}} %}
{% assign resource = site.data.structuredefinitions.[id] %}

### Guidance

This profile describe the metadata of a population for a specific [Guideline Recommendation][Guideline Recommendation] and references the [Population Group resources][Population Group] that in combination define the population that the recommendation adresses.

| Field | Description |
| ----- | ----------- |
| `characteristicCombination` | Fixed to `#any-of`, implying that this recommendation applies to any of the referenced [Population Groups][Population Group]. |
| `characteristic.type` | Type of population (from [Cochrane PICO Population value set][Cochrane PICO Population]). |
| `characteristic.definitionReference` | Reference to [Population Group][Population Group] defining a population. |
| `characteristic.exclude` | Whether to exclude the referenced [Population Group][Population Group] from the guideline recommendation. |
{:.grid}


<img alt="FHIR Population" src="02-population.png" style="width:100%;" />

{% capture resource_inheritance %}
This profile of a FHIR {{resource.type}} is derived from the [{{resource.base | split: '/' | last}}]({{resource.base}}) FHIR resource.
{% endcapture %}

{{ resource_inheritance | strip_newlines }}

{% include link-list.md %}
