#### Timing Datatype Interpretation Modifications

This Implementation guide has a modified interpretation of the `Timing` datatype. Specifically, fields that have corresponding "Max" fields (`count`, `duration`, `frequency`, `period`) are now interpreted as minimum values. To specify an exact value, the base field and its corresponding `Max` field must be set to the same value.

These changes pertain to the following profiles / elements:

- [RecommendationEligibilityCriteria.characteristic][SD:Recommendation Eligibility Criteria]
- [RecommendationAction][SD:Recommendation Action]
- [RecommendationPlan.action][SD:Recommendation Plan]


**Changes to Timing Datatype**

| Field        | Description                                                                                                 | Example                                                                 |
|--------------|-------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------------|
| count        | **Minimal number of times this event should be repeated.**                                                  | `count: 2` means the event should occur at least 2 times.               |
| countMax     | **Maximum number of times this event should be repeated.**                                                  | `countMax: 5` means the event should occur no more than 5 times.        |
| duration     | **Minimal duration this event should last.**                                                                | `duration: 1` (assuming units are hours) means the event should last at least 1 hour. |
| durationMax  | **Maximal duration this event should last.**                                                                | `durationMax: 3` (assuming units are hours) means the event should last no more than 3 hours. |
| frequency    | **Indicates the minimal number of repetitions that should occur within a period.**                          | `frequency: 1` means the event should occur at least once per period.   |
| frequencyMax | **Indicates the maximum number of repetitions that should occur within a period.**                          | `frequencyMax: 4` means the event should occur no more than four times per period. |
| period       | **The minimal duration to which the frequency applies.**                                                    | `period: 1` (assuming units are days) means the frequency applies to at least 1 day. |
| periodMax    | **The maximum duration to which the frequency applies.**                                                    | `periodMax: 7` (assuming units are days) means the frequency applies to no more than 7 days. |
{:.grid}

**Examples**

* Example 1: Exact number of Occurrences
  ```json
  {
    "repeat": {
      "count": 2,
      "countMax": 2
    }
  }
  ```
    - This indicates the event should occur exactly 2 times.

* Example 2: Occurrences Range
  ```json
  {
    "repeat": {
      "count": 2,
      "countMax": 5
    }
  }
  ```
  - This indicates the event should occur at least 2 times but no more than 5 times.

* Example 3: Minimal Duration
  ```json
  {
    "repeat": {
      "duration": 1,
      "durationUnit": "h"
    }
  }
  ```
  - This indicates the event should last one **or more** hours.

* Example 4: Maximal duration
  ```json
  {
    "repeat": {
      "durationMax": 2,
      "durationUnit": "h"
    }
  }
  ```
  - This indicates the event should last no more than two hours.

**Implementation Notes**

- Ensure that when setting the exact value, both the base field and its corresponding "Max" field are set to the same value.
- These changes aim to provide more flexibility and clarity in specifying the timing and frequency of events, ensuring that minimal and maximal constraints are clear to implementers.

{% include link-list.md %}
