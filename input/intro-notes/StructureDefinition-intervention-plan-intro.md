{% assign id = {{include.id}} %}
{% assign resource = site.data.structuredefinitions.[id] %}

### Guidance

This profile defines a specific recommended plan as part of an [Intervention][Intervention] recommended by a specific [Guideline Recommendation][Guideline Recommendation].

The actions to be performed are specified using the [Intervention Activity profile][Intervention Activity].


{% include fhir-structure-detailed.md name='07-intervention-plan' alt='FHIR Intervention Plan' %}

{% capture resource_inheritance %}
This profile of a FHIR {{resource.type}} is derived from the [{{resource.base | split: '/' | last}}]({{resource.base}}) FHIR resource.
{% endcapture %}

{{ resource_inheritance | strip_newlines }}

{% include link-list.md %}
