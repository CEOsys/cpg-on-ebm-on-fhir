#!/usr/bin/env python3
"""
Create an intro file for each profile from input/data/ig.yml
"""
import json
import yaml
import os
from pathlib import Path

base_path = Path(os.path.dirname(os.path.realpath(__file__)))
output_path = base_path / 'input' / 'intro-notes'
ig_fname = base_path / 'input' / 'data' / 'ig.yml'
linklist_fname = base_path / 'input' / 'includes' / 'link-list-generated.md'
profiles_fname = base_path / 'input' / 'pagecontent' / 'profiles-generated.md'
valuesets_fname = base_path / 'input' / 'pagecontent' / 'valuesets-generated.md'

template_md = """{% include variables.md %}
{% assign id = {{include.id}} %}
{% assign resource = site.data.structuredefinitions.[id] %}

### Guidance



{% capture resource_inheritance %}
This profile of a FHIR {{resource.type}} is derived from the [{{resource.base | split: '/' | last}}]({{resource.base}}) FHIR resource.
{% endcapture %}

{{ resource_inheritance | strip_newlines }}

{% include link-list.md %}
"""

linklist_general = {
    "SNOMEDCT": "http://snomed.info/sct",
    "LOINC": "http://loinc.org/",
    "UCUM": "http://unitsofmeasure.org",
    "VSdataAbsentReason": "http://hl7.org/fhir/R4/valueset-data-absent-reason.html",
    "CEOSYS": "https://covid-evidenz.de/",
    "NUM": "https://www.netzwerk-universitaetsmedizin.de/",
    "EMBonFHIR": "https://confluence.hl7.org/display/CDS/EBMonFHIR",
    "COCHRANELD": "https://data.cochrane.org/concepts/",
}

if not ig_fname.exists():
    print('No ig.yml file found, trying to create')

    fsh_generated_path = base_path /'fsh-generated' / 'resources'
    ig_files = list(fsh_generated_path.glob('ImplementationGuide-*.json'))

    if len(ig_files) == 0:
        print('No ImplementationGuide files found in fsh-generated/resources')
        exit(1)
    elif len(ig_files) > 1:
        print('More than one ImplementationGuide file found in fsh-generated/resources')
        exit(1)
    else:
        json_ig_fname = ig_files[0]

    if not ig_fname.parent.exists():
        ig_fname.parent.mkdir()

    print(f"Converting {json_ig_fname} to {ig_fname}")
    content = json.loads(open(json_ig_fname).read())
    yaml.dump(content, open(ig_fname, "w"))


if not output_path.exists():
    output_path.mkdir(parents=True)

with open(ig_fname, 'r') as f:
    ig = yaml.safe_load(f)

linklist = {}

for resource in ig["definition"]["resource"]:
    ref = resource["reference"]["reference"]
    
    type_ = ref.split('/')[0]

    link_name = ''.join(filter(str.isupper, type_)) + ':' + resource["name"]

    if ref.startswith('ValueSet/'):
        linklist[link_name] = ref.replace('/', '-') + '.html'

    if ref.startswith('CodeSystem/'):
        linklist[link_name] = ref.replace('/', '-') + '.html'

    if not ref.startswith('StructureDefinition/') and not ref.startswith('Questionnaire/'):
      continue

    fname = output_path / (ref.replace('/', '-') + '-intro.md')

    if not fname.exists():
        print(link_name)
        with open(fname, 'w') as f:
            f.write(template_md)

    linklist[link_name] = ref.replace('/', '-') + '.html'


if not linklist_fname.parent.exists():
    linklist_fname.parent.mkdir()

print(linklist_fname.name)
with open(linklist_fname, 'w') as f:
    def write_links(ll, prefix="", newline=True):
        for k, v in ll.items():
            f.write(f'[{prefix}{k}]: {v}\n')
        if newline:
            f.write("\n")

    for prefix in ['VS:', 'CS:', 'SD:', 'QU:']:
        write_links({k: v for k, v in linklist.items() if k.startswith(prefix)}, newline=True)
    write_links(linklist_general, newline=False)

print(profiles_fname.name)
with open(profiles_fname, 'w') as f:
    f.write('### Profiles\n\n')
    for name in linklist:
        if linklist[name].split('-')[0] == 'Questionnaire':
            resource_type = 'questionnaire'
        else:
            resource_type = 'profile'

        f.write(f"{{% include {resource_type}-reference.md name='{name}' %}}\n")

print(valuesets_fname.name)
with open(valuesets_fname, "w") as f:
    f.write('### Value Sets\n\n')
    for name in linklist:
        if not name.startswith('VS:'):
            continue
        f.write(f"{{% include valueset-reference.md name='{name}' %}}\n")

print("Done")
