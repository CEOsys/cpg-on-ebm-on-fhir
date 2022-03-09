#!/bin/bash

# this script downloads the continuous build of the FHIR specification

declare -a packages=(
  "hl7.fhir.r5.core.tgz"
  "hl7.fhir.r5.expansions.tgz"
#  "hl7.fhir.r5.examples.tgz"
)

fhir_base_version="5.0.0"
fhir_version="5.0.0-cibuild" # used only for local FHIR path

echo $HOME
mkdir -p $HOME/.fhir
mkdir -p $HOME/.fhir/packages

for fhir_package_name in "${packages[@]}"
do
  basename="$(basename $fhir_package_name .tgz)"
  fhir_path="$HOME/.fhir/packages/$basename#$fhir_version"
  fhir_path_current="$HOME/.fhir/packages/$basename#current"
  fhir_path_base="$HOME/.fhir/packages/$basename#$fhir_base_version"
  echo "$fhir_path"
  mkdir -p $fhir_path
  cd $fhir_path
  wget -q https://build.fhir.org/$fhir_package_name -O $fhir_package_name
  tar -zxf $fhir_package_name
  rm $fhir_package_name

  ln -s $fhir_path $fhir_path_current
  ln -s $fhir_path $fhir_path_base

  find $fhir_path -type f -exec sed -i 's/4.6.0[|]4.6.0/'"$fhir_version"'/g' {} ';'
  find $fhir_path -type f -exec sed -i 's/4.6.0/'"$fhir_version"'/g' {} ';'
  sed -i 's/"type": "Core"/"type": "fhir.core"/g' $fhir_path/package/package.json
done

ls -al $HOME/.fhir/packages
