/****************/
/* Intervention */
/****************/

Instance: InterventionDexamethasoneApplication
InstanceOf: intervention-evidence-variable
Usage: #example
Title: "Intervention Dexamethasone Application"
Description: "Intervention for guideline from https://app.magicapp.org/#/guidelines / 5062 with characteristics: Dexamethasone Therapy"
* identifier.value = "Intervention_Dexamethasone_Application"
* identifier.system = $ceosys
* status = #active
* name = "Intervention_Dexamethasone_Application"
* description = "Intervention for guideline from https://app.magicapp.org/#/guidelines / 5062 with characteristics: Dexamethasone Therapy"
* characteristic[+]
  * type = $cochrane-pico#Intervention
  * definitionReference
    * extension[ReferenceActivityDefinition].valueReference = Reference(DexamethasoneApplication)
    * display = "Dexamethasone Application"

/*************************/
/* Intervention Activity */
/*************************/

Instance: DexamethasoneApplication
InstanceOf: intervention-activity
Usage: #example
Title: "Dexamethasone Application"
Description: "Application of Dexamethasone: 6 mg once per day for 10 days"
* status = #active
* code = $sct#182832007 "Procedure related to management of drug administration (procedure)"
* productCodeableConcept = $sct#372584003 "Dexamethasone (substance)"
* dosage
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
