// Author: Gregor Lichtner @glichtner
Profile: StudyCitation
Parent: Citation
Id: study-citation
Title: "Study Citation"
Description: "Citation of a study from which evidence is determined."
* insert metadata(2022-03-04, #draft, 0.1.0)
* status 1..1 // inherited from Citation resource
* name 1..1
* citedArtifact 1..1 MS
  * identifier 1..*
  * title 1..1
  * classification 1..*
    * type 1..1
    * type = $cs-cited-artifact-classification-type#publication-type "Publication Type"
    * classifier 1..1
    * classifier = $cs-citation-artifact-classifier#D016428	"Journal Article"

Instance: ExampleStudyCitation
InstanceOf: study-citation
Usage: #example
Title: "Example Study Citation"
Description: "Example Study Citation"
* name = "ExampleCitation"
* status = #active
* citedArtifact
  * identifier
    * value = "ceoysy/exampleIdentifier"
  * title.text = "Example Citation"
