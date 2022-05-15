// Author: Gregor Lichtner @glichtner
RuleSet: evidence-variable-only-type-value-or-combination
* obeys evidence-variable-unique-definition
* definitionReference 0..0
* definitionCanonical 0..0
* definitionCodeableConcept 0..0
* definitionExpression 0..0
* definitionId 0..0

RuleSet: evidence-variable-only-type-value-or-combination-or-codeable-concept
* obeys evidence-variable-unique-definition
* definitionReference 0..0
* definitionCanonical 0..0
* definitionExpression 0..0
* definitionId 0..0


RuleSet: evidence-variable-only-combination
* obeys evidence-variable-unique-definition
* definitionReference 0..0
* definitionCanonical 0..0
* definitionCodeableConcept 0..0
* definitionExpression 0..0
* definitionId 0..0
* definitionByTypeAndValue 0..0
* definitionByCombination 1..1 MS

RuleSet: evidence-variable-only-codeable-concept
* obeys evidence-variable-unique-definition
* definitionReference 0..0
* definitionCanonical 0..0
* definitionCodeableConcept 1..1 MS
* definitionExpression 0..0
* definitionId 0..0
* definitionByTypeAndValue 0..0
* definitionByCombination 0..0

RuleSet: evidence-variable-only-reference
* obeys evidence-variable-unique-definition
* definitionReference 1..1 MS
* definitionCanonical 0..0
* definitionCodeableConcept 0..0
* definitionExpression 0..0
* definitionId 0..0
* definitionByTypeAndValue 0..0
* definitionByCombination 0..0
