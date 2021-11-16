CodeSystem: CochraneCoreOntology
Id: cochrane-core-ontology
Description: "The Cochrane Core ontology describes the entities and concepts that exist in the domain of evidence based healthcare."
* ^url = $cochrane-core
* ^version = "NA"
* ^status = #draft
* ^experimental = false
* ^publisher = "Cochrane"
* ^valueSet = "http://data.cochrane.org/ontologies/core/?vs"
* ^hierarchyMeaning = #is-a
* ^compositional = false
* ^versionNeeded = false
* ^content = #complete
* ^count = 26
* ^filter[0].code = #root
* ^filter[=].operator = #=
* ^filter[=].value = "True or false."
* ^filter[+].code = #deprecated
* ^filter[=].operator = #=
* ^filter[=].value = "True or false."
* ^filter[+].code = #imported
* ^filter[=].operator = #=
* ^filter[=].value = "True or false"
* ^property[0].code = #parent
* ^property[=].description = "Parent codes."
* ^property[=].type = #code
* ^property[+].code = #imported
* ^property[=].description = "Indicates if the concept is imported from another code system."
* ^property[=].type = #boolean
* ^property[+].code = #root
* ^property[=].description = "Indicates if this concept is a root concept (i.e. Thing is equivalent or a direct parent)"
* ^property[=].type = #boolean
* ^property[+].code = #deprecated
* ^property[=].description = "Indicates if this concept is deprecated."
* ^property[=].type = #boolean
* #Concept "Concept"
* #Concept ^property[0].code = #imported
* #Concept ^property[=].valueBoolean = false
* #Concept ^property[+].code = #parent
* #Concept ^property[=].valueCode = #Thing
* #Concept ^property[+].code = #root
* #Concept ^property[=].valueBoolean = false
* #Concept ^property[+].code = #deprecated
* #Concept ^property[=].valueBoolean = false
* #Condition "Condition"
* #Condition ^property[0].code = #imported
* #Condition ^property[=].valueBoolean = false
* #Condition ^property[+].code = #parent
* #Condition ^property[=].valueCode = #Concept
* #Condition ^property[+].code = #root
* #Condition ^property[=].valueBoolean = false
* #Condition ^property[+].code = #deprecated
* #Condition ^property[=].valueBoolean = false
* #DrugCategory "DrugCategory"
* #DrugCategory ^property[0].code = #imported
* #DrugCategory ^property[=].valueBoolean = false
* #DrugCategory ^property[+].code = #parent
* #DrugCategory ^property[=].valueCode = #InterventionCategory
* #DrugCategory ^property[+].code = #root
* #DrugCategory ^property[=].valueBoolean = false
* #DrugCategory ^property[+].code = #deprecated
* #DrugCategory ^property[=].valueBoolean = false
* #InterventionProvider "InterventionProvider"
* #InterventionProvider ^property[0].code = #imported
* #InterventionProvider ^property[=].valueBoolean = false
* #InterventionProvider ^property[+].code = #parent
* #InterventionProvider ^property[=].valueCode = #Concept
* #InterventionProvider ^property[+].code = #root
* #InterventionProvider ^property[=].valueBoolean = false
* #InterventionProvider ^property[+].code = #deprecated
* #InterventionProvider ^property[=].valueBoolean = false
* #ProcedureCategory "ProcedureCategory"
* #ProcedureCategory ^property[0].code = #imported
* #ProcedureCategory ^property[=].valueBoolean = false
* #ProcedureCategory ^property[+].code = #parent
* #ProcedureCategory ^property[=].valueCode = #InterventionCategory
* #ProcedureCategory ^property[+].code = #root
* #ProcedureCategory ^property[=].valueBoolean = false
* #ProcedureCategory ^property[+].code = #deprecated
* #ProcedureCategory ^property[=].valueBoolean = false
* #SpecificMetric "SpecificMetric"
* #SpecificMetric ^property[0].code = #imported
* #SpecificMetric ^property[=].valueBoolean = false
* #SpecificMetric ^property[+].code = #parent
* #SpecificMetric ^property[=].valueCode = #Concept
* #SpecificMetric ^property[+].code = #root
* #SpecificMetric ^property[=].valueBoolean = false
* #SpecificMetric ^property[+].code = #deprecated
* #SpecificMetric ^property[=].valueBoolean = false
* #Material "Material"
* #Material ^property[0].code = #imported
* #Material ^property[=].valueBoolean = false
* #Material ^property[+].code = #parent
* #Material ^property[=].valueCode = #AppliedIntervention
* #Material ^property[+].code = #root
* #Material ^property[=].valueBoolean = false
* #Material ^property[+].code = #deprecated
* #Material ^property[=].valueBoolean = false
* #Thing "Thing"
* #Thing ^property[0].code = #imported
* #Thing ^property[=].valueBoolean = false
* #Thing ^property[+].code = #root
* #Thing ^property[=].valueBoolean = true
* #Thing ^property[+].code = #deprecated
* #Thing ^property[=].valueBoolean = false
* #InterventionRationale "InterventionRationale"
* #InterventionRationale ^property[0].code = #imported
* #InterventionRationale ^property[=].valueBoolean = false
* #InterventionRationale ^property[+].code = #parent
* #InterventionRationale ^property[=].valueCode = #Concept
* #InterventionRationale ^property[+].code = #root
* #InterventionRationale ^property[=].valueBoolean = false
* #InterventionRationale ^property[+].code = #deprecated
* #InterventionRationale ^property[=].valueBoolean = false
// CodeSystem cochrane-core-ontology already contains code Thing.
// * #Thing "Thing"
// * #Thing ^property[0].code = #imported
// * #Thing ^property[=].valueBoolean = false
// * #Thing ^property[+].code = #parent
// * #Thing ^property[=].valueCode = #Thing
// * #Thing ^property[+].code = #root
// * #Thing ^property[=].valueBoolean = false
// * #Thing ^property[+].code = #deprecated
// * #Thing ^property[=].valueBoolean = false
* #Drug "Drug"
* #Drug ^property[0].code = #imported
* #Drug ^property[=].valueBoolean = false
* #Drug ^property[+].code = #parent
* #Drug ^property[=].valueCode = #Material
* #Drug ^property[+].code = #root
* #Drug ^property[=].valueBoolean = false
* #Drug ^property[+].code = #deprecated
* #Drug ^property[=].valueBoolean = false
* #Age "Age"
* #Age ^property[0].code = #imported
* #Age ^property[=].valueBoolean = false
* #Age ^property[+].code = #parent
* #Age ^property[=].valueCode = #Concept
* #Age ^property[+].code = #root
* #Age ^property[=].valueBoolean = false
* #Age ^property[+].code = #deprecated
* #Age ^property[=].valueBoolean = false
* #AppliedIntervention "AppliedIntervention"
* #AppliedIntervention ^property[0].code = #imported
* #AppliedIntervention ^property[=].valueBoolean = false
* #AppliedIntervention ^property[+].code = #parent
* #AppliedIntervention ^property[=].valueCode = #Concept
* #AppliedIntervention ^property[+].code = #root
* #AppliedIntervention ^property[=].valueBoolean = false
* #AppliedIntervention ^property[+].code = #deprecated
* #AppliedIntervention ^property[=].valueBoolean = false
* #ConceptScheme "ConceptScheme"
* #ConceptScheme ^property[0].code = #imported
* #ConceptScheme ^property[=].valueBoolean = false
* #ConceptScheme ^property[+].code = #parent
* #ConceptScheme ^property[=].valueCode = #Thing
* #ConceptScheme ^property[+].code = #root
* #ConceptScheme ^property[=].valueBoolean = false
* #ConceptScheme ^property[+].code = #deprecated
* #ConceptScheme ^property[=].valueBoolean = false
* #OutcomeClassification "OutcomeClassification"
* #OutcomeClassification ^property[0].code = #imported
* #OutcomeClassification ^property[=].valueBoolean = false
* #OutcomeClassification ^property[+].code = #parent
* #OutcomeClassification ^property[=].valueCode = #Concept
* #OutcomeClassification ^property[+].code = #root
* #OutcomeClassification ^property[=].valueBoolean = false
* #OutcomeClassification ^property[+].code = #deprecated
* #OutcomeClassification ^property[=].valueBoolean = false
* #AssessmentScale "AssessmentScale"
* #AssessmentScale ^property[0].code = #imported
* #AssessmentScale ^property[=].valueBoolean = false
* #AssessmentScale ^property[+].code = #parent
* #AssessmentScale ^property[=].valueCode = #Concept
* #AssessmentScale ^property[+].code = #root
* #AssessmentScale ^property[=].valueBoolean = false
* #AssessmentScale ^property[+].code = #deprecated
* #AssessmentScale ^property[=].valueBoolean = false
* #DeviceCategory "DeviceCategory"
* #DeviceCategory ^property[0].code = #imported
* #DeviceCategory ^property[=].valueBoolean = false
* #DeviceCategory ^property[+].code = #parent
* #DeviceCategory ^property[=].valueCode = #InterventionCategory
* #DeviceCategory ^property[+].code = #root
* #DeviceCategory ^property[=].valueBoolean = false
* #DeviceCategory ^property[+].code = #deprecated
* #DeviceCategory ^property[=].valueBoolean = false
* #InterventionCategory "InterventionCategory"
* #InterventionCategory ^property[0].code = #imported
* #InterventionCategory ^property[=].valueBoolean = false
* #InterventionCategory ^property[+].code = #parent
* #InterventionCategory ^property[=].valueCode = #AppliedIntervention
* #InterventionCategory ^property[+].code = #root
* #InterventionCategory ^property[=].valueBoolean = false
* #InterventionCategory ^property[+].code = #deprecated
* #InterventionCategory ^property[=].valueBoolean = false
* #ModeOfDelivery "ModeOfDelivery"
* #ModeOfDelivery ^property[0].code = #imported
* #ModeOfDelivery ^property[=].valueBoolean = false
* #ModeOfDelivery ^property[+].code = #parent
* #ModeOfDelivery ^property[=].valueCode = #Concept
* #ModeOfDelivery ^property[+].code = #root
* #ModeOfDelivery ^property[=].valueBoolean = false
* #ModeOfDelivery ^property[+].code = #deprecated
* #ModeOfDelivery ^property[=].valueBoolean = false
* #Procedure "Procedure"
* #Procedure ^property[0].code = #imported
* #Procedure ^property[=].valueBoolean = false
* #Procedure ^property[+].code = #parent
* #Procedure ^property[=].valueCode = #AppliedIntervention
* #Procedure ^property[+].code = #root
* #Procedure ^property[=].valueBoolean = false
* #Procedure ^property[+].code = #deprecated
* #Procedure ^property[=].valueBoolean = false
* #InterventionClassification "InterventionClassification"
* #InterventionClassification ^property[0].code = #imported
* #InterventionClassification ^property[=].valueBoolean = false
* #InterventionClassification ^property[+].code = #parent
* #InterventionClassification ^property[=].valueCode = #Concept
* #InterventionClassification ^property[+].code = #root
* #InterventionClassification ^property[=].valueBoolean = false
* #InterventionClassification ^property[+].code = #deprecated
* #InterventionClassification ^property[=].valueBoolean = false
* #Setting "Setting"
* #Setting ^property[0].code = #imported
* #Setting ^property[=].valueBoolean = false
* #Setting ^property[+].code = #parent
* #Setting ^property[=].valueCode = #Concept
* #Setting ^property[+].code = #root
* #Setting ^property[=].valueBoolean = false
* #Setting ^property[+].code = #deprecated
* #Setting ^property[=].valueBoolean = false
* #AggregationMethod "AggregationMethod"
* #AggregationMethod ^property[0].code = #imported
* #AggregationMethod ^property[=].valueBoolean = false
* #AggregationMethod ^property[+].code = #parent
* #AggregationMethod ^property[=].valueCode = #Concept
* #AggregationMethod ^property[+].code = #root
* #AggregationMethod ^property[=].valueBoolean = false
* #AggregationMethod ^property[+].code = #deprecated
* #AggregationMethod ^property[=].valueBoolean = false
* #Sex "Sex"
* #Sex ^property[0].code = #imported
* #Sex ^property[=].valueBoolean = false
* #Sex ^property[+].code = #parent
* #Sex ^property[=].valueCode = #Concept
* #Sex ^property[+].code = #root
* #Sex ^property[=].valueBoolean = false
* #Sex ^property[+].code = #deprecated
* #Sex ^property[=].valueBoolean = false
* #Treatment "Treatment"
* #Treatment ^property[0].code = #imported
* #Treatment ^property[=].valueBoolean = false
* #Treatment ^property[+].code = #parent
* #Treatment ^property[=].valueCode = #Concept
* #Treatment ^property[+].code = #root
* #Treatment ^property[=].valueBoolean = false
* #Treatment ^property[+].code = #deprecated
* #Treatment ^property[=].valueBoolean = false
* #Device "Device"
* #Device ^property[0].code = #imported
* #Device ^property[=].valueBoolean = false
* #Device ^property[+].code = #parent
* #Device ^property[=].valueCode = #Material
* #Device ^property[+].code = #root
* #Device ^property[=].valueBoolean = false
* #Device ^property[+].code = #deprecated
* #Device ^property[=].valueBoolean = false
