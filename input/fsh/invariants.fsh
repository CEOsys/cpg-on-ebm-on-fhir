// Author: Gregor Lichtner @glichtner
Invariant: evidence-variable-unique-definition
Description: "For each characteristic, one and only one type of definition must exist"
Expression: "(
  definitionReference.exists().toInteger()
  + definitionCanonical.exists().toInteger()
  + definitionCodeableConcept.exists().toInteger()
  + definitionExpression.exists().toInteger()
  + definitionId.exists().toInteger()
  + definitionByTypeAndValue.exists().toInteger()
  + definitionByCombination.exists().toInteger()
  ) = 1"
Severity: #error

Invariant: selection-behavior-unique-or-no-value
Description: "If selectionBehavior is present, it must be the same for all actions in the group"
Expression: "action.selectionBehavior.distinct().count() <= 1"
Severity: #error

Invariant: no-timing-if-dosage-specified
Description: "If a dosage is specified, there SHALL be no timing element at the same level (instead the timing element of dosage should be used)"
Expression: "dosage.exists() implies timing.exists().not()"
Severity: #error

Invariant: dosage-if-administration-should-be-performed
Description: "Dosage should be defined if the drug administration should be performed"
Expression: "(doNotPerform = false) implies dosage.exists()"
Severity: #error

Invariant: code-xor-repeat
Description: "Either a code or a repeat structure should be defined, but not both"
Expression: "code.empty() or repeat.empty()"
Severity: #error

Invariant: bounds-or-count
Description: "Either a bounds or a count/countMax should be defined, but not both"
Expression: "bounds.empty() or (count.empty() and countMax.empty())"
Severity: #error
