### Action Combination

If at least one action is defined, the combination of actions is defined using the [Action Combination Method Extension][SD:Action Combination Method].

To ease the use of the extension, the following rulesets can be used:

| Type | Description | Treshold required | RuleSet |
|------|-------------|-------------------|---------|
| exactly | All actions must be performed exactly the number of times specified | Yes | `rs-combination-exactly(threshold)` |
| at-least | At least the number of times specified | Yes | `rs-combination-at-least(threshold)` |
| at-most | At most the number of times specified | Yes | `rs-combination-at-most(threshold)` |
| one-or-more | At least one action must be performed | No | `rs-combination-one-or-more` |
| all | All actions must be performed | No | `rs-combination-all` |
| any | Any combination of actions | No | `rs-combination-any` |
{:.grid}

#### Aliases

```C
Alias: $combinationMethod = https://www.netzwerk-universitaetsmedizin.de/fhir/cpg-on-ebm-on-fhir/StructureDefinition/ext-action-combination-method
Alias: $cs-action-combination-method = https://www.netzwerk-universitaetsmedizin.de/fhir/cpg-on-ebm-on-fhir/CodeSystem/cs-action-combination-method
```

#### Exactly

```C
// in RecommendationPlan instance
* insert rs-combination-exactly(2)
```

results in

```C
* extension[$combinationMethod].extension[method].valueCodeableConcept = $cs-action-combination-method#exactly
* extension[$combinationMethod].extension[threshold].valuePositiveInt = 2
```

#### At-Least

```C
// in RecommendationPlan instance
* insert rs-combination-at-least(2)
```

results in

```C
* extension[$combinationMethod].extension[method].valueCodeableConcept = $cs-action-combination-method#at-least
* extension[$combinationMethod].extension[threshold].valuePositiveInt = 2
```

#### At-Most

```C
// in RecommendationPlan instance
* insert rs-combination-at-most(2)
```

results in

```C
* extension[$combinationMethod].extension[method].valueCodeableConcept = $cs-action-combination-method#at-most
* extension[$combinationMethod].extension[threshold].valuePositiveInt = 2
```

#### One-Or-More

```C
// in RecommendationPlan instance
* insert rs-combination-one-or-more
```

results in

```C
* extension[$combinationMethod].extension[method].valueCodeableConcept = $cs-action-combination-method#one-or-more
```

#### All

```C
// in RecommendationPlan instance
* insert rs-combination-all
```

results in

```C
* extension[$combinationMethod].extension[method].valueCodeableConcept = $cs-action-combination-method#all
```

#### Any

```C
// in RecommendationPlan instance
* insert rs-combination-any
```

results in

```C
* extension[$combinationMethod].extension[method].valueCodeableConcept = $cs-action-combination-method#any
```

