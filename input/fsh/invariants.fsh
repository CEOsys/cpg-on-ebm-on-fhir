// Author: Gregor Lichtner @glichtner
Invariant: definition-or-type-value-or-combination
Description: "For each characteristic, either definition[x], defByTypeAndValue or defByCombination must be present (one and only one)."
Expression: "(definition.exists().toInteger() + defByTypeAndValue.exists().toInteger() + defByCombination.exists().toInteger()) = 1"
Severity: #error
