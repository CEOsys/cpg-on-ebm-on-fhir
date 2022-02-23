{% include variables.md %}
{% assign id = {{include.id}} %}
{% assign resource = site.data.structuredefinitions.[id] %}

### Guidance

This extension adds the possibility to specify temporal relationships between individual characteristics (e.g. of a Group]({{ fhir_base_url }}group.html) resource. It is used in conjunction with the [Group Characteristic Link Id extension][Group Characteristic Link Id], which provides an identifier to each characteristic that can be used to reference individual characteristics.

The following fields are used to specify the temporal relationship between different entries of characteristic:

| Name | Description | Required |
| ---- | ----------- | -------- |
| `* extension[linkId].valueId` | The [linkId][Group Characteristic Link Id] of the current characteristic | no (only if it should be referenced) |
| `* extension[relatedCharacteristic].extension[targetId].valueId` | The [linkId][Group Characteristic Link Id] to which a temporal relationship is specified | yes |
| `* extension[relatedCharacteristic].extension[relationship].valueCode` | Type of relationship from [Characteristic Relationship Type value set][VS Characteristic Relationship Type] | yes |
| `* extension[relatedCharacteristic].extension[offset].valueDuration` or `.valueRange` | Duration or Range describing the temporal relationship | no |
{:.grid}

{% capture resource_inheritance %}
This profile of a FHIR {{resource.type}} is derived from the [{{resource.base | split: '/' | last}}]({{resource.base}}) FHIR resource.
{% endcapture %}

{{ resource_inheritance | strip_newlines }}

{% include link-list.md %}
