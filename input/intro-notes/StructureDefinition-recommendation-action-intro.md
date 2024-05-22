{% include variables.md %}
{% assign id = {{include.id}} %}
{% assign resource = site.data.structuredefinitions.[id] %}

### Guidance

This profile defines a specific recommended activity as part of an intervention recommended by a specific [Recommendation][SD:Recommendation].

The actions defined using this profile are combined to a plan using the [Recommendation Plan profile][SD:Recommendation Plan].

The following profiles are used to define specific actions:
* [Body Positioning Action][SD:Body Positioning Action] - for describing the action of positioning a patient
* [Drug Administration Action][SD:Drug Administration Action] - for describing the action of administering a drug

The [RelativeTime][SD:RelativeTime] datatype can be used via the [RelativeTime extension][SD:RelativeTime] to define the timing of the action.

{% include datatype-timing.md %}

{% include fhir-structure-detailed.md name='08-intervention-activity' alt='FHIR Intervention Activity' %}

{% capture resource_inheritance %}
This profile of a FHIR {{resource.type}} is derived from the [{{resource.base | split: '/' | last}}]({{resource.base}}) FHIR resource.
{% endcapture %}

{{ resource_inheritance | strip_newlines }}

{% include link-list.md %}
