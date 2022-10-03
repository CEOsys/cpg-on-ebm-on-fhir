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
Description: "If action.selectionBehavior is present, it must be the same for all actions in the group"
Expression: "action.selectionBehaviour.distinct().count() <= 1"
Severity: #error
