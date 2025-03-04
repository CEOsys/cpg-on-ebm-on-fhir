// Author: Gregor Lichtner @glichtner

Alias: $cs-action-combination-method = https://www.netzwerk-universitaetsmedizin.de/fhir/cpg-on-ebm-on-fhir/CodeSystem/cs-action-combination-method

CodeSystem: ActionCombinationMethodCS
Id: cs-action-combination-method
Title: "Action Combination Method"
Description: "Code system for the combination of actions in a PlanDefinition."
* ^url = $cs-action-combination-method
* insert metadata(2024-02-16, #draft, 0.1.0)
* insert cpg-computable-codesystem
* #all "All" "All actions must be performed."
* #any "Any" "Any action must be performed."
* #at-least "At Least" "At least the specified number of actions must be performed."
* #exactly "Exactly" "Exactly the specified number of actions must be performed."
* #at-most "At Most" "At most the specified number of actions must be performed."
* #one-or-more "One or More" "One or more actions must be performed."