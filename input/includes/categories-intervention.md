### Categories

The following categories are used to describe the intervention action in the [Recommendation Plan resource][Recommendation Plan].

The categories are defined as slices of the `action` element in the [Recommendation Plan resource][Recommendation Plan].

> Fixed Codes:
>
> In RecommendationPlan:
> * `action.code`  **must** be exactly as defined in the example
> * `goal.category`  **must** be exactly as defined in the example


| Type | .action Slice Name | .goal Slice Name | Action ProfileName |
| --- | --- | --- | --- |
| Drug Administration | drugAdministration | <center>❌ *not required* </center> | [Drug Administration Action][Drug Administration Action] |
| Laboratory Observation | <center> ❌ *not required*<br>⚠️ *this might change* </center> | laboratoryValue | *n/a* |
| Ventilation Measure/Setting | ventilatorManagement | ventilatorManagement | *n/a* |
| Body position | bodyPositioning | <center>❌ *not required* </center> | [Body Positioning Action][Body Positioning Action] |
| Sedation Management | sedationManagement | assessmentScale | n/a |
| Pain Management | painManagement | assessmentScale | n/a |
| Assessment | assessment | any | [Assessment Action][Assessment Action] |
{:.grid}

#### Examples

##### Drug Administration
```C
// in RecommendationPlan instance
* action[drugAdministration][+]
  // code *must* use the code below
  * code = $sct#432102000 "Administration of substance (procedure)"
  * definitionCanonical = Canonical(ExampleDrugAdministrationAction)

// in ExampleDrugAdministrationAction
Instance: ExampleDrugAdministrationAction
InstanceOf: drug-administration-action
Usage: #example
Title: "Example DrugAdministration Action"
Description: "An active DrugAdministration action."
* name = "DrugAdministrationAction"
* status = #active
* url = "https://www.ceosys.de/fhir/canonical/recommendation-action/drug-administration-example"
* productCodeableConcept = $sct#372584003 "Dexamethasone (substance)"
* dosage
  * route = $sct#26643006 "Oral route"
  * timing
    * repeat
      * count = 10
      * duration = 10
      * durationUnit = $ucum#d "d"
      * frequency = 1
      * period = 1
      * periodUnit = $ucum#d "d"
  * doseAndRate
    * doseQuantity = 6 'mg' "mg"
    * rateQuantity = 1 '/d' "/d"
```

##### Laboratory Observation
```C
// in RecommendationPlan instance
* goal[laboratoryValue][+]
  // category *must* use the code below
  * category = $sct#410394004 "Lab findings surveillance (regime/therapy)"
  * id = "lab-ddimer-concentration-goal"
  * description.text = "D-Dimer concentration shall be below 250 ng/mL"
  * target
    * measure = $loinc#48066-5 "Fibrin D-dimer DDU [Mass/volume] in Platelet poor plasma"
    * detailRange
      * high = 250 'ng/mL'
```

##### Ventilation Measure/Setting
```C
// in RecommendationPlan instance
* action[ventilatorManagement][+]
  // code *must* use the code below
  * code = $sct#410210009 "Ventilator care management (procedure)"
  * goalId[+] = "ventilator-management-goal" // note that goalId must match the id of the goal

* goal[ventilatorManagement][+]
  // category *must* use the code below
  * category = $sct#385857005 "Ventilator care and adjustment (regime/therapy)"
  * id = "ventilator-management-goal"
  * description.text = "The ventilator should be set up to provide a breath reate of at least 20 and at most per minute."
  * target
    * measure = $loinc#33438-3 "Breath rate mechanical --on ventilator"
    * detailRange
      * low = 20 '/min'
      * high = 24 '/min'
```

##### Body Position
```C
// in RecommendationPlan instance
* action[bodyPositioning][+]
  // code *must* use the code below
  * code = $sct#229824005 "Positioning patient (procedure)"
  * definitionCanonical = Canonical(ExampleBodyPositioningAction)

// in ExampleBodyPositioningAction
Instance: ExampleBodyPositioningAction
InstanceOf: body-positioning-action
Usage: #example
Title: "Example Body Positioning Action"
Description: "Example of a body positioning action."
* name = "DrugAdministrationAction"
* status = #active
* url = "https://www.ceosys.de/fhir/canonical/recommendation-action/body-positioning-example"
* code = $sct#431182000 "Placing subject in prone position (procedure)"
```


##### Sedation Management
```C
// in RecommendationPlan instance
* action[sedationManagement][+]
  * code = $sct#406187008 "Sedation management (procedure)"
  * goalId[+] = "sedation-management-RASS-0-goal"

* goal[assessmentScale][+]
  * id = "sedation-management-RASS-0-goal"
  * description.text = "RASS should be 0 or 1"
  * category = $sct#273249006 "Assessment scales (assessment scale)"
  * target
    * measure = $sct-us#457441000124102 "Richmond agitation-sedation scale"
    * detailRange
      * low = -1 'score'
      * high = 0 'score'
```

##### Pain Management
```C
// in RecommendationPlan instance
* action[painManagement][+]
  * code = $sct#278414003 "Pain management (procedure)"
  * goalId[+] = "pain-management-goal"

* goal[assessmentScale][+]
  * id = "pain-management-goal"
  * description.text = "NRS should not be >4"
  * target
    * measure = $loinc#72514-3 "Pain severity - 0-10 verbal numeric rating [Score] - Reported"
    * detailRange
      * high = 3 'score'
```

##### Assessment
```C
// in RecommendationPlan instance
* action[assessment][+]
  * definitionCanonical = Canonical (PainMonitoringNRS)
  * selectionBehavior = #one-or-more
  * code = $sct#386053000 "Evaluation procedure (procedure)"


// in PainMonitoringNRS
Instance: PainMonitoringNRS
InstanceOf: assessment-action
Usage: #definition
Title: "Pain Monitoring with NRS"
Description: "Pain Monitoring in ICU Patients with NRS"
* insert canonical-url(patients-icu-pain-monitoring, recommended-action/pain-monitoring-NRS)
* insert publisher-experimental-version(0.1)
* name = "PainMonitoringWithNRSPlan"
* status = #active
* description = "Pain monitoring in ICU Patients with NRS"
* code = $loinc#72514-3 "Pain severity - 0-10 verbal numeric rating [Score] - Reported"
* timingTiming.code = #Q8H
``````

{% include link-list.md %}
