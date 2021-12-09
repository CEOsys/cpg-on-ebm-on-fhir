#!/bin/bash

declare -a packages=(
  "hl7.fhir.r5.core.tgz"
  "hl7.fhir.r5.expansions.tgz"
#  "hl7.fhir.r5.examples.tgz"
)

fhir_version="4.6.0"

echo $HOME
mkdir -p $HOME/.fhir
mkdir -p $HOME/.fhir/packages

for fhir_package_name in "${packages[@]}"
do
  basename="$(basename $fhir_package_name .tgz)"
  fhir_path="$HOME/.fhir/packages/$basename#$fhir_version"
  fhir_path_current="$HOME/.fhir/packages/$basename#current"
  echo "$fhir_path"
  mkdir -p $fhir_path
  cd $fhir_path
  wget -q https://build.fhir.org/$fhir_package_name -O $fhir_package_name
  tar -zxf $fhir_package_name
  rm $fhir_package_name
done

ls -al $HOME/.fhir/packages
