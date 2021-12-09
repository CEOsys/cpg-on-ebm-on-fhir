// Author: Gregor Lichtner @glichtner
RuleSet: recommendation-strength(strength)
* extension[strengthOfRecommendation].valueCodeableConcept.coding
  * system = Canonical(ceosys-cs-recommendation-strength)
  * code = {strength}
