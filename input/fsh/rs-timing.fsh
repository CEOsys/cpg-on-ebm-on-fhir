RuleSet: timing-restrictions
* obeys code-xor-repeat
* code 0..1 // This element can be expressed using the timing.repeat element, which is far more flexible, and we don't want to have double coding
* repeat 0..1 MS
  * obeys bounds-or-count
  * bounds[x] only Range
