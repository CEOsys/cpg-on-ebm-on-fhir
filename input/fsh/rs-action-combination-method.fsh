RuleSet: rs-action-combination-method
* extension contains ActionCombinationMethod named combinationMethod 0..1 MS
* obeys nested-action-requires-combination-method

RuleSet: rs-combination-exactly(threshold)
* extension[combinationMethod].extension[method].valueCodeableConcept = cs-action-combination-method#exactly
* extension[combinationMethod].extension[threshold].valuePositiveInt = {threshold}

RuleSet: rs-combination-at-least(threshold)
* extension[combinationMethod].extension[method].valueCodeableConcept = cs-action-combination-method#at-least
* extension[combinationMethod].extension[threshold].valuePositiveInt = {threshold}

RuleSet: rs-combination-at-most(threshold)
* extension[combinationMethod].extension[method].valueCodeableConcept = cs-action-combination-method#at-most
* extension[combinationMethod].extension[threshold].valuePositiveInt = {threshold}

RuleSet: rs-combination-one-or-more
* extension[combinationMethod].extension[method].valueCodeableConcept = cs-action-combination-method#one-or-more

RuleSet: rs-combination-all
* extension[combinationMethod].extension[method].valueCodeableConcept = cs-action-combination-method#all

RuleSet: rs-combination-any
* extension[combinationMethod].extension[method].valueCodeableConcept = cs-action-combination-method#any
