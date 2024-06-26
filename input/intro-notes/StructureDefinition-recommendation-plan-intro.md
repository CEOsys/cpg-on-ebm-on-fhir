{% include variables.md %}
{% assign id = {{include.id}} %}
{% assign resource = site.data.structuredefinitions.[id] %}

### Guidance

This profile defines a specific recommended plan as part of an intervention recommended by a specific [Recommendation][SD:Recommendation].

The actions to be performed are specified using the [Recommendation Action][SD:Recommendation Action].

{% include categories-intervention.md %}

The [RelativeTime][SD:RelativeTime] datatype can be used via the [RelativeTime extension][SD:RelativeTime] on the `action` field to define the timing of the action.

{% include fhir-structure-detailed.md name='07-intervention-plan' alt='FHIR Intervention Plan' %}

{% capture resource_inheritance %}
This profile of a FHIR {{resource.type}} is derived from the [{{resource.base | split: '/' | last}}]({{resource.base}}) FHIR resource.
{% endcapture %}

{{ resource_inheritance | strip_newlines }}

{% include link-list.md %}
