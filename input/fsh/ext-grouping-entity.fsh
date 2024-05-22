Extension: GroupingEntity
Id: ext-grouping-entity
Description: "Entity by which a characteristic is groued."
* ^context[0].type = #element
* ^context[0].expression = "EvidenceVariable"
* ^context[1].type = #element
* ^context[1].expression = "PlanDefinition"
* value[x] 0..0
* . ^short = "Timing in which the characteristic is determined"
* . ^definition = "Timing in which the characteristic is determined."
* extension contains entity 1..1 and aggregationType 1..1
* extension[entity]
  * value[x] only code
    * ^short = "Entity by which a characteristic is grouped"
  * valueCode from $vs-subject-type (required)
* extension[aggregationType]
  * value[x] only code
    * ^short = "Type of aggregation"
  * valueCode from $vs-characteristic-combination (required)
