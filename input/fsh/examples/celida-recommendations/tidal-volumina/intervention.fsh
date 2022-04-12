/*********************/
/* Intervention Plan */
/*********************/
Instance: VentilatedCOVID19PatientsWithARDSVentilationPlan
InstanceOf: intervention-plan
Usage: #example
Title: "Ventilation Plan for COVID-19 patients with ARDS"
Description: "In ventilated patients with COVID-19 and ARDS, tidal volume should be ≤ 6 ml/kg standard body weight, end-inspiratory airway pressure ≤ 30 cm H2O."
* name = "Ventilation_Plan"
* title = "Ventilation parameters for COVID-19 patients with ARDS"
* version = "7.0"
* date = "2022-02"
* status = #active
* description = "In ventilated patients with COVID-19 and ARDS, tidal volume should be ≤ 6 ml/kg standard body weight, end-inspiratory airway pressure ≤ 30 cm H2O."
* subjectReference = Reference(PopulationGroupVentilatedCOVID19patientsWithARDS)
* goal[+]
  * description.text = "Tidal volume ≤ 6 ml/kg standard body weight"
  * target[+]
    * measure = $loinc#20117-8 "Tidal volume.spontaneous+mechanical/Body weight [Volume/mass] --on ventilator"
    * detailRange.high = 6 'ml/kg' "ml/kg"
* goal[+]
  * description.text = "End-inspiratory airway pressure ≤ 30 cm H2O"
  * target[+]
    * measure = $loinc#20060-0 "Airway pressure --at zero inspiratory flow on ventilator" // TODO: is this the correct code for end inspiratory airway pressure?
    * detailRange.high = 30 'cm[H2O]' "cm[H2O]"
* action[+]
  * definitionCanonical = Canonical(VentilatorManagement)

/*************************/
/* Intervention Activity */
/*************************/
Instance: VentilatorManagement
InstanceOf: intervention-activity
Usage: #example
Title: "Ventilator Management"
Description: "Ventilator Management."
* name = "VentilatorManagement"
* url = "https://www.netzwerk-universitaetsmedizin.de/fhir/canonical/intervention-activity/ventilator-management"
* status = #active
* code = $sct#410210009 "Ventilator care management (procedure)"
