// Author: Gregor Lichtner @glichtner
Invariant: definition-or-type-value
Description: "For each characteristic, either definition or value/type must be present (not both)."
Expression: "definition.exists() or (type.exists() and value.exists())"
Severity: #error
