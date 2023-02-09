#!/bin/bash

if [[ $# -eq 0 ]] ; then
    echo 'part is required: major, minor, patch, release'
    exit 0
fi

OUTPUT=$(bump2version --list $@)
if [ $? -ne 0 ]
then
  echo "Failed to run bump2version" >&2
  exit 1
fi

current_version=$(echo "$OUTPUT" | grep current_version | sed -r s,"^.*=",,)
new_version=$(echo "$OUTPUT" | grep new_version | sed -r s,"^.*=",,)
message="Bump version: $current_version → $new_version"
echo "$message"

# remove trailing whitespace
sed -i 's/[ \t]*$//' .bumpversion.cfg

sushi .

if [ $? -ne 0 ]
then
  echo "Failed to run sushi" >&2
  git restore sushi-config.yaml .bumpversion.cfg
  exit 1
fi

rm input/data/ig.yml
python create-intros.py
git add .
git commit -m "$message" --edit
git tag -a "v$new_version" -m "$(git log -1 --pretty=%B)"
