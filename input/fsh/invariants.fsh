// Author: Gregor Lichtner @glichtner
Invariant: definition-or-type-value
Description: "For each characteristic, either definition or value/type must be present (not both)."
Expression: "definition[x].exists() or (type[x].exists() and value[x].exists())"
Severity: #error
