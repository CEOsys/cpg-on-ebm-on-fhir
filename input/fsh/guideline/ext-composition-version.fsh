// Author: Gregor Lichtner @glichtner
Extension: CompositionVersion
Id: ceosys-extension-composition-version
Title: "Composition Version"
Description: "Adds version attribute to Composition."
* insert metadata(2021-11-16, #draft, 0.1.0)
* . ^short = "Version"
* . ^definition = "Extension used on Composition resources to describe the guideline version."
* ^context.type = #element
* ^context.expression = "Composition"
* value[x] 1..
* value[x] only string
