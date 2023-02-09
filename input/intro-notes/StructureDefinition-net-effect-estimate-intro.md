{% include variables.md %}
{% assign id = {{include.id}} %}
{% assign resource = site.data.structuredefinitions.[id] %}

### Guidance

This profile describe the metadata of the net effect for a specific [Recommendation][Recommendation] and references the [Outcome Definition][Outcome Definition] that are aggregated to yield the net effect.

For more information on the net effect, see
[Alper, B. S. et al. Defining certainty of net benefit: a GRADE concept paper. BMJ Open 9, e027445 (2019)](https://bmjopen.bmj.com/content/9/6/e027445.long).

| Field | Description |
| ----- | ----------- |
| `characteristicCombination` | Fixed to `#net-effect`. |
| `characteristic.type` | Type of outcome . |
| `characteristic.definition` | Reference to a [Outcome Definition EvidenceVariable resource][Outcome Definition] describing the (expected) outcome. |
| `characteristic.exclude` | Fixed to `false`. |
{:.grid}

{% include fhir-structure-detailed.md name='05-net-effect' alt='FHIR Net Effect' %}

{% capture resource_inheritance %}
This profile of a FHIR {{resource.type}} is derived from the [{{resource.base | split: '/' | last}}]({{resource.base}}) FHIR resource.
{% endcapture %}

{{ resource_inheritance | strip_newlines }}

{% include link-list.md %}
