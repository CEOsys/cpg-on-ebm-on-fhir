RuleSet: timing-restrictions
* obeys code-xor-repeat
* code 0..1 // This element can be expressed using the timing.repeat element, which is far more flexible, and we don't want to have double coding
* repeat 0..1 MS
  * bounds[x] 0..0
  * count
    * ^short = "Minimal number of times this event should be repeated"
  * countMax
    * ^short = "Maximum number of times this event should be repeated"
  * duration
    * ^short = "Minimal duration this event should last"
  * durationMax
    * ^short = "Maximal duration this event should last"  
  * frequency
    * ^short = "Indicates the minimal number of repetitions that should occur within a period. I.e. Event occurs frequency times per period"
  * frequencyMax
    * ^short = "Indicates the maximum number of repetitions that should occur within a period. I.e. Event occurs frequency times per period"
  * period
    * ^short = "The minimal duration to which the frequency applies. I.e. Event occurs frequency times per period"
  * periodMax
    * ^short = "The maximum duration to which the frequency applies. I.e. Event occurs frequency times per period"

