#!/bin/sh
fhir_path="$HOME/.fhir/packages/hl7.fhir.r5.core#4.6.0-ci"
fhir_package_name="hl7.fhir.r5.core.tgz"

mkdir -p $fhir_path
cd $fhir_path
wget https://build.fhir.org/$fhir_package_name -O $fhir_package_name
tar -zxvf $fhir_package_name
rm $fhir_package_name
