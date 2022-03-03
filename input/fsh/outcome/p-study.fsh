Profile: StudyCitation
Parent: Citation
Id: study-citation
Title: "Study Citation"
Description: "Citation of a study from which evidence is determined."
* status 1..1 // inherited from Citation resource
* name 1..1
* citedArtifact 1..1 MS
  * identifier 1..*
  * title 1..1

Instance: ExampleCitation
InstanceOf: study-citation
Usage: #example
Title: "Example Citation"
Description: "Example Citation"
* name = "ExampleCitation"
* status = #active
* citedArtifact
  * identifier
    * value = "ceoysy/exampleIdentifier"
  * title.text = "Example Citation"
