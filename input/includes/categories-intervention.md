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
| Drug Administration | drugAdministration | <center>❌ *not required* </center> | DrugAdministrationAction |
| Laboratory Observation | <center> ❌ *not required*<br>⚠️ *this might change* </center> | laboratoryValue | *n/a* |
| Ventilation Measure/Setting | ventilatorManagement | ventilatorManagement | *n/a* |
| Body position | bodyPositioning | <center>❌ *not required* </center> | BodyPositioningAction |
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

{% include link-list.md %}
