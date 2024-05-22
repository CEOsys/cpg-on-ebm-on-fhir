{% include variables.md %}
{% assign id = {{include.id}} %}
{% assign resource = site.data.structuredefinitions.[id] %}

### Guidance

This extension allows the use of the FHIR R6 [RelativeTime Datatype](https://build.fhir.org/datatypes.html#RelativeTime) in the context of the CPG-on-EBM-on-FHIR project.

The extension can be used in the following places:

- [`RecommendationEligibilityCriteria.characteristic`][SD:Recommendation Eligibility Criteria]
- [`RecommendationAction`][SD:Recommendation Action]
- [`RecommendationPlan.action`][SD:Recommendation Plan]

{% include link-list.md %}
