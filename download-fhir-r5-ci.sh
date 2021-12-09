#!/bin/sh
fhir_path="$HOME/.fhir/packages/hl7.fhir.r5.core#4.6.0-ci"
fhir_expansion_path="$HOME/.fhir/packages/hl7.fhir.r5.expansions#4.6.0-ci"
fhir_examples_path="$HOME/.fhir/packages/hl7.fhir.r5.examples#4.6.0-ci"

fhir_package_name="hl7.fhir.r5.core.tgz"
fhir_expansion_name="hl7.fhir.r5.expansions.tgz"
fhir_examples_name="hl7.fhir.r5.examples.tgz"

mkdir -p $fhir_path
cd $fhir_path
wget https://build.fhir.org/$fhir_package_name -O $fhir_package_name
tar -zxvf $fhir_package_name
rm $fhir_package_name

mkdir -p $fhir_expansion_path
cd $fhir_expansion_path
wget https://build.fhir.org/$fhir_expansion_name -O $fhir_expansion_name
tar -zxvf $fhir_expansion_name
rm $fhir_expansion_name

mkdir -p $fhir_examples_path
cd $fhir_examples_path
wget https://build.fhir.org/$fhir_examples_name -O $fhir_examples_name
tar -zxvf $fhir_examples_name
rm $fhir_examples_name
