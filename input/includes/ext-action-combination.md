#### Action Combination

If at least one action is defined, the combination of actions is defined using the [Action Combination Method Extension][SD:Action Combination Method].

To ease the use of the extension, the following rulesets can be used:

| Type | Description | Treshold required | RuleSet |
|------|-------------|-------------------|---------|
| [`#exactly`][CS:Action Combination Method] | Exactly `threshold` actions out of the combination must be performed | Yes | `rs-combination-exactly(threshold)` |
| [`#at-least`][CS:Action Combination Method] | At least `threshold` actions out of the combination must be performed | Yes | `rs-combination-at-least(threshold)` |
| [`#at-most`][CS:Action Combination Method] | At most `threshold` actions out of the combination must be performed | Yes | `rs-combination-at-most(threshold)` |
| [`#one-or-more`][CS:Action Combination Method] | At least one action must be performed (equivalent to `at-least` with `threshold=1`) | No | `rs-combination-one-or-more` |
| [`#all`][CS:Action Combination Method] | All actions must be performed | No | `rs-combination-all` |
| [`#any`][CS:Action Combination Method] | Any combination of actions (but at least one) must be performed (equivalent to `at-least` with `threshold=1`) | No | `rs-combination-any` |
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

