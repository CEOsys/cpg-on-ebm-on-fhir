// Author: Gregor Lichtner @glichtner
Extension: CompositionPublicationStatus
Id: ceosys-extension-composition-publication-status
Title: "Composition Publication Status"
Description: "Adds publication status attribute to Composition."
* insert metadata(2022-02-08, #draft, 0.1.0)
* . ^short = "Publication status"
* . ^definition = "Extension used on Composition resources to describe the guideline publicatoin status."
* ^context.type = #element
* ^context.expression = "Composition"
* value[x] 1..
* value[x] only code
* valueCode from $vs-publication-status
