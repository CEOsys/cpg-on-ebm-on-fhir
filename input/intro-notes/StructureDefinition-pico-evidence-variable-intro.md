{% include variables.md %}
{% assign id = {{include.id}} %}
{% assign resource = site.data.structuredefinitions.[id] %}

### Guidance

Abstract profile used as parent to describe the [Recommendation Eligibility Criteria][SD:Recommendation Eligibility Criteria], [Study Eligibility Criteria][SD:Study Eligibility Criteria], [Outcome Definition][SD:Outcome Definition] and [Intervention Definition][SD:Intervention Definition]) of a specific [Recommendation][SD:Recommendation]. This profile is not used directly, but serves as a collection of constraints common to said EvidenceVariable resources. See the specific EvidenceVariable definitions for more information.


{% capture resource_inheritance %}
This profile of a FHIR {{resource.type}} is derived from the [{{resource.base | split: '/' | last}}]({{resource.base}}) FHIR resource.
{% endcapture %}

{{ resource_inheritance | strip_newlines }}

{% include link-list.md %}
