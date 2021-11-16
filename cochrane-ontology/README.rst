Cochrane Ontology to FSH
========================

How to generate FHIR CodeSystems in FHIR Shorthand (FSH) from Cochrane Ontologies:

1. Download latest OWL to FHIR transformer from https://github.com/aehrc/fhir-owl (e.g. `fhir-owl-v1.1.jar`)::

    $ wget https://github.com/aehrc/fhir-owl/releases/download/v1.1/fhir-owl-v1.1.jar

2. Download `Cochrance Core <https://data.cochrane.org/ontologies/core/index-en.html>`_ and `Cochrane PICO <https://data.cochrane.org/ontologies/pico/index-en.html>`_ ontologies in TTL format::

    $ wget -P core/ https://data.cochrane.org/ontologies/core/ontology.ttl
    $ wget -P pico/ https://data.cochrane.org/ontologies/pico/ontology.ttl

3. Install `GoFSH <https://github.com/FHIR/GoFSH>`_::

    $ npm install -g gofsh

4. To generate FHIR JSON from JSON-lD, run::

    $ java -jar fhir-owl-v1.1.jar -i ontology.json -o ontology.fhir.json

5. To generate FSH from the FHIR JSON, run::

    $ gofsh ontology.fhir.json
