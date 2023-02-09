<div markdown="1" class="bg-info">

The {{site.data.fhir.ig.title}} Implementation Guide is currently under development.

</div>

### History

#### Version v0.5.0

- Update to FHIR 5.0.0-snapshot3
- Updated IG fhir.base.template version to 0.4.0
- Changed IG id to ebm-cpg.netzwerk-universitaetsmedizin.de
- made RecommendationPlan.extension[cpg-partOf] mandatory
- fixed cpg extensions slice names
- updated readme
- removed terminology dependency from sushi-config.yaml

#### Version v0.4.0

- use of "Recommendation" as the base profile for a recommendation is now
  obligatory (as opposed to using only RecommendationPlan profile
  instances). Recommendation is a collection of individual
  RecommendationPlan resources, which in turn define the different
  pieces of a single recommendation.
- made slicing of RecommendationPlan.goal closed
- PlanDefinition.action.selectionBehavior: now disallowing codes that do
    not required at least one action to be taken, i.e. the following codes
    from ActionSelectionBehavior are now disallowed:
    - any ("from zero to all")
    - all-or-none
- changed drug vocabluary to SNOMED CT, added ATC and RxNorm
- added laboratory observation ValueSet
- disallowing RecommendationAction.timing.code because it can be expressed
    using the timing.repeat field, which is far more flexible

#### Version v0.3.5

Fix/selection-behavior-invariant (#5)

* fixed action.selectionBehavior invariant
* Bump version: 0.3.5-snapshot → 0.3.5
* fixed validator version to 5.6.75

#### Version v0.3.4

- added Recommendation profile
- updated namespace (to www.netzwerk-universitaetsmedizin.de)

#### Version v0.3.3

- update FHIR to 5.0.0-ballot
- reduced drug-administration invariant error level to warning
- corrected invariant description (evidence-variable-unique-definition)
- added terminology dependency to sushi-config.yaml (to fix ig publisher behavior)
- allowed timing field for BodyPositioningAction
- added kind to action profiles
- added explicit inheritance from FHIR Clinical Guidelines IG profiles

#### Version v0.3.0

- Guideline: removed publicationStatus extension
- replaced Composition version extension by field usage
- RecommendationPlan: added goal-must-be-linked invariant
- added dosage condition extension
- added requiring code in recommendation plan
- fixed LOINC ventilation observation ValueSet
- added intervention categories
- updated readme

#### Version v0.1.1

- adapted to new EvidenceVariable of R5
- renamed profiles
- updated examples
- added valuesets


#### Version v0.1.0

- Initial release

---
