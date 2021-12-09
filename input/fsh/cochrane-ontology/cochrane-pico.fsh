CodeSystem: CochranePICOOntology
Id: cochrane-pico-ontology
Description: "The PICO ontology describes questions in evidence based healthcare with the intention of supporting the publishing of evidence as linked data."
* ^url = $cochrane-pico
* ^version = "4.0.1"
* ^status = #draft
* ^experimental = false
* ^publisher = "Cochrane"
* ^valueSet = "http://data.cochrane.org/ontologies/pico/?vs"
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
* #Age "Age"
* #Age ^property[0].code = #imported
* #Age ^property[=].valueBoolean = false
* #Age ^property[+].code = #parent
* #Age ^property[=].valueCode = #Thing
* #Age ^property[+].code = #root
* #Age ^property[=].valueBoolean = false
* #Age ^property[+].code = #deprecated
* #Age ^property[=].valueBoolean = false
* #InterventionProvider "InterventionProvider"
* #InterventionProvider ^property[0].code = #imported
* #InterventionProvider ^property[=].valueBoolean = false
* #InterventionProvider ^property[+].code = #parent
* #InterventionProvider ^property[=].valueCode = #Thing
* #InterventionProvider ^property[+].code = #root
* #InterventionProvider ^property[=].valueBoolean = false
* #InterventionProvider ^property[+].code = #deprecated
* #InterventionProvider ^property[=].valueBoolean = false
* #Dose "Dose"
* #Dose ^property[0].code = #imported
* #Dose ^property[=].valueBoolean = false
* #Dose ^property[+].code = #parent
* #Dose ^property[=].valueCode = #Thing
* #Dose ^property[+].code = #root
* #Dose ^property[=].valueBoolean = false
* #Dose ^property[+].code = #deprecated
* #Dose ^property[=].valueBoolean = false
* #AssessmentScale "AssessmentScale"
* #AssessmentScale ^property[0].code = #imported
* #AssessmentScale ^property[=].valueBoolean = false
* #AssessmentScale ^property[+].code = #parent
* #AssessmentScale ^property[=].valueCode = #Thing
* #AssessmentScale ^property[+].code = #root
* #AssessmentScale ^property[=].valueBoolean = false
* #AssessmentScale ^property[+].code = #deprecated
* #AssessmentScale ^property[=].valueBoolean = false
* #Treatment "Treatment"
* #Treatment ^property[0].code = #imported
* #Treatment ^property[=].valueBoolean = false
* #Treatment ^property[+].code = #parent
* #Treatment ^property[=].valueCode = #Thing
* #Treatment ^property[+].code = #root
* #Treatment ^property[=].valueBoolean = false
* #Treatment ^property[+].code = #deprecated
* #Treatment ^property[=].valueBoolean = false
* #InterventionRationale "InterventionRationale"
* #InterventionRationale ^property[0].code = #imported
* #InterventionRationale ^property[=].valueBoolean = false
* #InterventionRationale ^property[+].code = #parent
* #InterventionRationale ^property[=].valueCode = #Thing
* #InterventionRationale ^property[+].code = #root
* #InterventionRationale ^property[=].valueBoolean = false
* #InterventionRationale ^property[+].code = #deprecated
* #InterventionRationale ^property[=].valueBoolean = false
* #Setting "Setting"
* #Setting ^property[0].code = #imported
* #Setting ^property[=].valueBoolean = false
* #Setting ^property[+].code = #parent
* #Setting ^property[=].valueCode = #Thing
* #Setting ^property[+].code = #root
* #Setting ^property[=].valueBoolean = false
* #Setting ^property[+].code = #deprecated
* #Setting ^property[=].valueBoolean = false
* #Thing "Thing"
* #Thing ^property[0].code = #imported
* #Thing ^property[=].valueBoolean = false
* #Thing ^property[+].code = #root
* #Thing ^property[=].valueBoolean = true
* #Thing ^property[+].code = #deprecated
* #Thing ^property[=].valueBoolean = false
* #Outcome "Outcome"
* #Outcome ^property[0].code = #imported
* #Outcome ^property[=].valueBoolean = false
* #Outcome ^property[+].code = #parent
* #Outcome ^property[=].valueCode = #Thing
* #Outcome ^property[+].code = #root
* #Outcome ^property[=].valueBoolean = false
* #Outcome ^property[+].code = #deprecated
* #Outcome ^property[=].valueBoolean = false
* #Schedule "Schedule"
* #Schedule ^property[0].code = #imported
* #Schedule ^property[=].valueBoolean = false
* #Schedule ^property[+].code = #parent
* #Schedule ^property[=].valueCode = #Thing
* #Schedule ^property[+].code = #root
* #Schedule ^property[=].valueBoolean = false
* #Schedule ^property[+].code = #deprecated
* #Schedule ^property[=].valueBoolean = false
* #OutcomeDomain "OutcomeDomain"
* #OutcomeDomain ^property[0].code = #imported
* #OutcomeDomain ^property[=].valueBoolean = false
* #OutcomeDomain ^property[+].code = #parent
* #OutcomeDomain ^property[=].valueCode = #Thing
* #OutcomeDomain ^property[+].code = #root
* #OutcomeDomain ^property[=].valueBoolean = false
* #OutcomeDomain ^property[+].code = #deprecated
* #OutcomeDomain ^property[=].valueBoolean = false
* #InterventionClassification "Intervention Classification"
* #InterventionClassification ^property[0].code = #imported
* #InterventionClassification ^property[=].valueBoolean = false
* #InterventionClassification ^property[+].code = #parent
* #InterventionClassification ^property[=].valueCode = #Thing
* #InterventionClassification ^property[+].code = #root
* #InterventionClassification ^property[=].valueBoolean = false
* #InterventionClassification ^property[+].code = #deprecated
* #InterventionClassification ^property[=].valueBoolean = false
* #PICO "PICO"
* #PICO ^property[0].code = #imported
* #PICO ^property[=].valueBoolean = false
* #PICO ^property[+].code = #parent
* #PICO ^property[=].valueCode = #Thing
* #PICO ^property[+].code = #root
* #PICO ^property[=].valueBoolean = false
* #PICO ^property[+].code = #deprecated
* #PICO ^property[=].valueBoolean = false
* #Intervention "Intervention"
* #Intervention ^property[0].code = #imported
* #Intervention ^property[=].valueBoolean = false
* #Intervention ^property[+].code = #parent
* #Intervention ^property[=].valueCode = #Thing
* #Intervention ^property[+].code = #root
* #Intervention ^property[=].valueBoolean = false
* #Intervention ^property[+].code = #deprecated
* #Intervention ^property[=].valueBoolean = false
* #OutcomeClassification "OutcomeClassification"
* #OutcomeClassification ^property[0].code = #imported
* #OutcomeClassification ^property[=].valueBoolean = false
* #OutcomeClassification ^property[+].code = #parent
* #OutcomeClassification ^property[=].valueCode = #Thing
* #OutcomeClassification ^property[+].code = #root
* #OutcomeClassification ^property[=].valueBoolean = false
* #OutcomeClassification ^property[+].code = #deprecated
* #OutcomeClassification ^property[=].valueBoolean = false
* #Population "Population"
* #Population ^property[0].code = #imported
* #Population ^property[=].valueBoolean = false
* #Population ^property[+].code = #parent
* #Population ^property[=].valueCode = #Thing
* #Population ^property[+].code = #root
* #Population ^property[=].valueBoolean = false
* #Population ^property[+].code = #deprecated
* #Population ^property[=].valueBoolean = false
* #OutcomeGroup "OutcomeGroup"
* #OutcomeGroup ^property[0].code = #imported
* #OutcomeGroup ^property[=].valueBoolean = false
* #OutcomeGroup ^property[+].code = #parent
* #OutcomeGroup ^property[=].valueCode = #Thing
* #OutcomeGroup ^property[+].code = #root
* #OutcomeGroup ^property[=].valueBoolean = false
* #OutcomeGroup ^property[+].code = #deprecated
* #OutcomeGroup ^property[=].valueBoolean = false
* #AppliedIntervention "AppliedIntervention"
* #AppliedIntervention ^property[0].code = #imported
* #AppliedIntervention ^property[=].valueBoolean = false
* #AppliedIntervention ^property[+].code = #parent
* #AppliedIntervention ^property[=].valueCode = #Thing
* #AppliedIntervention ^property[+].code = #root
* #AppliedIntervention ^property[=].valueBoolean = false
* #AppliedIntervention ^property[+].code = #deprecated
* #AppliedIntervention ^property[=].valueBoolean = false
* #AggregationMethod "AggregationMethod"
* #AggregationMethod ^property[0].code = #imported
* #AggregationMethod ^property[=].valueBoolean = false
* #AggregationMethod ^property[+].code = #parent
* #AggregationMethod ^property[=].valueCode = #Thing
* #AggregationMethod ^property[+].code = #root
* #AggregationMethod ^property[=].valueBoolean = false
* #AggregationMethod ^property[+].code = #deprecated
* #AggregationMethod ^property[=].valueBoolean = false
* #Sex "Sex"
* #Sex ^property[0].code = #imported
* #Sex ^property[=].valueBoolean = false
* #Sex ^property[+].code = #parent
* #Sex ^property[=].valueCode = #Thing
* #Sex ^property[+].code = #root
* #Sex ^property[=].valueBoolean = false
* #Sex ^property[+].code = #deprecated
* #Sex ^property[=].valueBoolean = false
* #SocialContext "SocialContext"
* #SocialContext ^property[0].code = #imported
* #SocialContext ^property[=].valueBoolean = false
* #SocialContext ^property[+].code = #parent
* #SocialContext ^property[=].valueCode = #Thing
* #SocialContext ^property[+].code = #root
* #SocialContext ^property[=].valueBoolean = false
* #SocialContext ^property[+].code = #deprecated
* #SocialContext ^property[=].valueBoolean = false
* #InterventionGroup "InterventionGroup"
* #InterventionGroup ^property[0].code = #imported
* #InterventionGroup ^property[=].valueBoolean = false
* #InterventionGroup ^property[+].code = #parent
* #InterventionGroup ^property[=].valueCode = #Thing
* #InterventionGroup ^property[+].code = #root
* #InterventionGroup ^property[=].valueBoolean = false
* #InterventionGroup ^property[+].code = #deprecated
* #InterventionGroup ^property[=].valueBoolean = false
* #Duration "Duration"
* #Duration ^property[0].code = #imported
* #Duration ^property[=].valueBoolean = false
* #Duration ^property[+].code = #parent
* #Duration ^property[=].valueCode = #Thing
* #Duration ^property[+].code = #root
* #Duration ^property[=].valueBoolean = false
* #Duration ^property[+].code = #deprecated
* #Duration ^property[=].valueBoolean = false
* #ModeOfDelivery "ModeOfDelivery"
* #ModeOfDelivery ^property[0].code = #imported
* #ModeOfDelivery ^property[=].valueBoolean = false
* #ModeOfDelivery ^property[+].code = #parent
* #ModeOfDelivery ^property[=].valueCode = #Thing
* #ModeOfDelivery ^property[+].code = #root
* #ModeOfDelivery ^property[=].valueBoolean = false
* #ModeOfDelivery ^property[+].code = #deprecated
* #ModeOfDelivery ^property[=].valueBoolean = false
* #Condition "Condition"
* #Condition ^property[0].code = #imported
* #Condition ^property[=].valueBoolean = false
* #Condition ^property[+].code = #parent
* #Condition ^property[=].valueCode = #Thing
* #Condition ^property[+].code = #root
* #Condition ^property[=].valueBoolean = false
* #Condition ^property[+].code = #deprecated
* #Condition ^property[=].valueBoolean = false
* #SpecificMetric "SpecificMetric"
* #SpecificMetric ^property[0].code = #imported
* #SpecificMetric ^property[=].valueBoolean = false
* #SpecificMetric ^property[+].code = #parent
* #SpecificMetric ^property[=].valueCode = #Thing
* #SpecificMetric ^property[+].code = #root
* #SpecificMetric ^property[=].valueBoolean = false
* #SpecificMetric ^property[+].code = #deprecated
* #SpecificMetric ^property[=].valueBoolean = false
