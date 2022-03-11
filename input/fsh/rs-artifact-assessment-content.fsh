// Author: Gregor Lichtner @glichtner
RuleSet: artifact-assessment-content(slicename, type, valueset)
* content[{slicename}]
  * informationType 1..1
  * informationType = #rating
  * type 1..
  * type = {type}
  * classifier 1..1
  * classifier from {valueset} (required)
