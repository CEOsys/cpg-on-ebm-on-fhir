<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile PICOEvidenceVariable
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>EvidenceVariable</sch:title>
    <sch:rule context="f:EvidenceVariable">
      <sch:assert test="not(exists(f:name/@value)) or matches(f:name/@value, '[A-Z]([A-Za-z0-9_]){0,254}')">Name should be usable as an identifier for the module by machine processing applications such as code generation (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>EvidenceVariable.meta</sch:title>
    <sch:rule context="f:EvidenceVariable/f:meta">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>EvidenceVariable.implicitRules</sch:title>
    <sch:rule context="f:EvidenceVariable/f:implicitRules">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>EvidenceVariable.language</sch:title>
    <sch:rule context="f:EvidenceVariable/f:language">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>EvidenceVariable.text</sch:title>
    <sch:rule context="f:EvidenceVariable/f:text">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>EvidenceVariable.extension</sch:title>
    <sch:rule context="f:EvidenceVariable/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>EvidenceVariable.modifierExtension</sch:title>
    <sch:rule context="f:EvidenceVariable/f:modifierExtension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>EvidenceVariable.url</sch:title>
    <sch:rule context="f:EvidenceVariable/f:url">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>EvidenceVariable.identifier</sch:title>
    <sch:rule context="f:EvidenceVariable/f:identifier">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>EvidenceVariable.version</sch:title>
    <sch:rule context="f:EvidenceVariable/f:version">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>EvidenceVariable.name</sch:title>
    <sch:rule context="f:EvidenceVariable/f:name">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>EvidenceVariable.title</sch:title>
    <sch:rule context="f:EvidenceVariable/f:title">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>EvidenceVariable.shortTitle</sch:title>
    <sch:rule context="f:EvidenceVariable/f:shortTitle">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>EvidenceVariable.subtitle</sch:title>
    <sch:rule context="f:EvidenceVariable/f:subtitle">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>EvidenceVariable.status</sch:title>
    <sch:rule context="f:EvidenceVariable/f:status">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>EvidenceVariable.experimental</sch:title>
    <sch:rule context="f:EvidenceVariable/f:experimental">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>EvidenceVariable.date</sch:title>
    <sch:rule context="f:EvidenceVariable/f:date">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>EvidenceVariable.publisher</sch:title>
    <sch:rule context="f:EvidenceVariable/f:publisher">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>EvidenceVariable.contact</sch:title>
    <sch:rule context="f:EvidenceVariable/f:contact">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>EvidenceVariable.description</sch:title>
    <sch:rule context="f:EvidenceVariable/f:description">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>EvidenceVariable.note</sch:title>
    <sch:rule context="f:EvidenceVariable/f:note">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>EvidenceVariable.useContext</sch:title>
    <sch:rule context="f:EvidenceVariable/f:useContext">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>EvidenceVariable.copyright</sch:title>
    <sch:rule context="f:EvidenceVariable/f:copyright">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>EvidenceVariable.approvalDate</sch:title>
    <sch:rule context="f:EvidenceVariable/f:approvalDate">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>EvidenceVariable.lastReviewDate</sch:title>
    <sch:rule context="f:EvidenceVariable/f:lastReviewDate">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>EvidenceVariable.effectivePeriod</sch:title>
    <sch:rule context="f:EvidenceVariable/f:effectivePeriod">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>EvidenceVariable.author</sch:title>
    <sch:rule context="f:EvidenceVariable/f:author">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>EvidenceVariable.editor</sch:title>
    <sch:rule context="f:EvidenceVariable/f:editor">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>EvidenceVariable.reviewer</sch:title>
    <sch:rule context="f:EvidenceVariable/f:reviewer">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>EvidenceVariable.endorser</sch:title>
    <sch:rule context="f:EvidenceVariable/f:endorser">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>EvidenceVariable.relatedArtifact</sch:title>
    <sch:rule context="f:EvidenceVariable/f:relatedArtifact">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>EvidenceVariable.actual</sch:title>
    <sch:rule context="f:EvidenceVariable/f:actual">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:EvidenceVariable/f:characteristic</sch:title>
    <sch:rule context="f:EvidenceVariable/f:characteristic">
      <sch:assert test="count(f:definitionReference) &lt;= 0">definitionReference: maximum cardinality of 'definitionReference' is 0</sch:assert>
      <sch:assert test="count(f:definitionCanonical) &lt;= 0">definitionCanonical: maximum cardinality of 'definitionCanonical' is 0</sch:assert>
      <sch:assert test="count(f:definitionCodeableConcept) &lt;= 0">definitionCodeableConcept: maximum cardinality of 'definitionCodeableConcept' is 0</sch:assert>
      <sch:assert test="count(f:definitionExpression) &lt;= 0">definitionExpression: maximum cardinality of 'definitionExpression' is 0</sch:assert>
      <sch:assert test="count(f:definitionId) &lt;= 0">definitionId: maximum cardinality of 'definitionId' is 0</sch:assert>
      <sch:assert test="count(f:definitionByTypeAndValue) &lt;= 0">definitionByTypeAndValue: maximum cardinality of 'definitionByTypeAndValue' is 0</sch:assert>
      <sch:assert test="count(f:definitionByCombination) &gt;= 1">definitionByCombination: minimum cardinality of 'definitionByCombination' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>EvidenceVariable.characteristic</sch:title>
    <sch:rule context="f:EvidenceVariable/f:characteristic">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="count(f:definitionReference)+count(f:definitionCanonical)+count(f:definitionCodeableConcept)+count(f:definitionExpression)+count(f:definitionId)+count(f:definitionByTypeAndValue)+count(f:definitionByCombination)  &lt; 2">In a characteristic, at most one of these seven elements shall be used: definitionReference or definitionCanonical or definitionCodeableConcept or definitionExpression or definitionId or definitionByTypeAndValue or definitionByCombination (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>EvidenceVariable.characteristic.extension</sch:title>
    <sch:rule context="f:EvidenceVariable/f:characteristic/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>EvidenceVariable.characteristic.modifierExtension</sch:title>
    <sch:rule context="f:EvidenceVariable/f:characteristic/f:modifierExtension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>EvidenceVariable.characteristic.linkId</sch:title>
    <sch:rule context="f:EvidenceVariable/f:characteristic/f:linkId">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>EvidenceVariable.characteristic.description</sch:title>
    <sch:rule context="f:EvidenceVariable/f:characteristic/f:description">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>EvidenceVariable.characteristic.note</sch:title>
    <sch:rule context="f:EvidenceVariable/f:characteristic/f:note">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>EvidenceVariable.characteristic.exclude</sch:title>
    <sch:rule context="f:EvidenceVariable/f:characteristic/f:exclude">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>EvidenceVariable.characteristic.definitionReference</sch:title>
    <sch:rule context="f:EvidenceVariable/f:characteristic/f:definitionReference">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>EvidenceVariable.characteristic.definitionCanonical</sch:title>
    <sch:rule context="f:EvidenceVariable/f:characteristic/f:definitionCanonical">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>EvidenceVariable.characteristic.definitionCodeableConcept</sch:title>
    <sch:rule context="f:EvidenceVariable/f:characteristic/f:definitionCodeableConcept">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>EvidenceVariable.characteristic.definitionExpression</sch:title>
    <sch:rule context="f:EvidenceVariable/f:characteristic/f:definitionExpression">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>EvidenceVariable.characteristic.definitionId</sch:title>
    <sch:rule context="f:EvidenceVariable/f:characteristic/f:definitionId">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>EvidenceVariable.characteristic.definitionByTypeAndValue</sch:title>
    <sch:rule context="f:EvidenceVariable/f:characteristic/f:definitionByTypeAndValue">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>EvidenceVariable.characteristic.definitionByTypeAndValue.extension</sch:title>
    <sch:rule context="f:EvidenceVariable/f:characteristic/f:definitionByTypeAndValue/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>EvidenceVariable.characteristic.definitionByTypeAndValue.modifierExtension</sch:title>
    <sch:rule context="f:EvidenceVariable/f:characteristic/f:definitionByTypeAndValue/f:modifierExtension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>EvidenceVariable.characteristic.definitionByTypeAndValue.type[x] 1</sch:title>
    <sch:rule context="f:EvidenceVariable/f:characteristic/f:definitionByTypeAndValue/f:type[x]">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>EvidenceVariable.characteristic.definitionByTypeAndValue.value[x] 1</sch:title>
    <sch:rule context="f:EvidenceVariable/f:characteristic/f:definitionByTypeAndValue/f:value[x]">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>EvidenceVariable.characteristic.definitionByCombination</sch:title>
    <sch:rule context="f:EvidenceVariable/f:characteristic/f:definitionByCombination">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>EvidenceVariable.characteristic.definitionByCombination.extension</sch:title>
    <sch:rule context="f:EvidenceVariable/f:characteristic/f:definitionByCombination/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>EvidenceVariable.characteristic.definitionByCombination.modifierExtension</sch:title>
    <sch:rule context="f:EvidenceVariable/f:characteristic/f:definitionByCombination/f:modifierExtension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>EvidenceVariable.characteristic.definitionByCombination.code</sch:title>
    <sch:rule context="f:EvidenceVariable/f:characteristic/f:definitionByCombination/f:code">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>EvidenceVariable.characteristic.definitionByCombination.threshold</sch:title>
    <sch:rule context="f:EvidenceVariable/f:characteristic/f:definitionByCombination/f:threshold">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:EvidenceVariable/f:characteristic/f:definitionByCombination/f:characteristic</sch:title>
    <sch:rule context="f:EvidenceVariable/f:characteristic/f:definitionByCombination/f:characteristic">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:linkId) &lt;= 1">linkId: maximum cardinality of 'linkId' is 1</sch:assert>
      <sch:assert test="count(f:description) &lt;= 1">description: maximum cardinality of 'description' is 1</sch:assert>
      <sch:assert test="count(f:exclude) &lt;= 1">exclude: maximum cardinality of 'exclude' is 1</sch:assert>
      <sch:assert test="count(f:definitionReference) &gt;= 1">definitionReference: minimum cardinality of 'definitionReference' is 1</sch:assert>
      <sch:assert test="count(f:definitionReference) &lt;= 1">definitionReference: maximum cardinality of 'definitionReference' is 1</sch:assert>
      <sch:assert test="count(f:definitionCanonical) &lt;= 0">definitionCanonical: maximum cardinality of 'definitionCanonical' is 0</sch:assert>
      <sch:assert test="count(f:definitionCodeableConcept) &lt;= 0">definitionCodeableConcept: maximum cardinality of 'definitionCodeableConcept' is 0</sch:assert>
      <sch:assert test="count(f:definitionExpression) &lt;= 0">definitionExpression: maximum cardinality of 'definitionExpression' is 0</sch:assert>
      <sch:assert test="count(f:definitionId) &lt;= 0">definitionId: maximum cardinality of 'definitionId' is 0</sch:assert>
      <sch:assert test="count(f:definitionByTypeAndValue) &lt;= 0">definitionByTypeAndValue: maximum cardinality of 'definitionByTypeAndValue' is 0</sch:assert>
      <sch:assert test="count(f:definitionByCombination) &lt;= 0">definitionByCombination: maximum cardinality of 'definitionByCombination' is 0</sch:assert>
      <sch:assert test="count(f:method) &lt;= 1">method: maximum cardinality of 'method' is 1</sch:assert>
      <sch:assert test="count(f:device) &lt;= 1">device: maximum cardinality of 'device' is 1</sch:assert>
      <sch:assert test="count(f:offset) &lt;= 1">offset: maximum cardinality of 'offset' is 1</sch:assert>
      <sch:assert test="count(f:groupMeasure) &lt;= 1">groupMeasure: maximum cardinality of 'groupMeasure' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>EvidenceVariable.characteristic.definitionByCombination.characteristic</sch:title>
    <sch:rule context="f:EvidenceVariable/f:characteristic/f:definitionByCombination/f:characteristic">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>EvidenceVariable.characteristic.definitionByCombination.characteristic.extension</sch:title>
    <sch:rule context="f:EvidenceVariable/f:characteristic/f:definitionByCombination/f:characteristic/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>EvidenceVariable.characteristic.definitionByCombination.characteristic.modifierExtension</sch:title>
    <sch:rule context="f:EvidenceVariable/f:characteristic/f:definitionByCombination/f:characteristic/f:modifierExtension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>EvidenceVariable.characteristic.definitionByCombination.characteristic.linkId</sch:title>
    <sch:rule context="f:EvidenceVariable/f:characteristic/f:definitionByCombination/f:characteristic/f:linkId">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>EvidenceVariable.characteristic.definitionByCombination.characteristic.description</sch:title>
    <sch:rule context="f:EvidenceVariable/f:characteristic/f:definitionByCombination/f:characteristic/f:description">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>EvidenceVariable.characteristic.definitionByCombination.characteristic.note</sch:title>
    <sch:rule context="f:EvidenceVariable/f:characteristic/f:definitionByCombination/f:characteristic/f:note">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>EvidenceVariable.characteristic.definitionByCombination.characteristic.exclude</sch:title>
    <sch:rule context="f:EvidenceVariable/f:characteristic/f:definitionByCombination/f:characteristic/f:exclude">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>EvidenceVariable.characteristic.definitionByCombination.characteristic.definitionReference</sch:title>
    <sch:rule context="f:EvidenceVariable/f:characteristic/f:definitionByCombination/f:characteristic/f:definitionReference">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>EvidenceVariable.characteristic.definitionByCombination.characteristic.definitionCanonical</sch:title>
    <sch:rule context="f:EvidenceVariable/f:characteristic/f:definitionByCombination/f:characteristic/f:definitionCanonical">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>EvidenceVariable.characteristic.definitionByCombination.characteristic.definitionCodeableConcept</sch:title>
    <sch:rule context="f:EvidenceVariable/f:characteristic/f:definitionByCombination/f:characteristic/f:definitionCodeableConcept">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>EvidenceVariable.characteristic.definitionByCombination.characteristic.definitionExpression</sch:title>
    <sch:rule context="f:EvidenceVariable/f:characteristic/f:definitionByCombination/f:characteristic/f:definitionExpression">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>EvidenceVariable.characteristic.definitionByCombination.characteristic.definitionId</sch:title>
    <sch:rule context="f:EvidenceVariable/f:characteristic/f:definitionByCombination/f:characteristic/f:definitionId">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:EvidenceVariable/f:characteristic/f:definitionByCombination/f:characteristic/f:definitionByTypeAndValue</sch:title>
    <sch:rule context="f:EvidenceVariable/f:characteristic/f:definitionByCombination/f:characteristic/f:definitionByTypeAndValue">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:type[x]) &gt;= 1">type[x]: minimum cardinality of 'type[x]' is 1</sch:assert>
      <sch:assert test="count(f:type[x]) &lt;= 1">type[x]: maximum cardinality of 'type[x]' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &gt;= 1">value[x]: minimum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 1">value[x]: maximum cardinality of 'value[x]' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>EvidenceVariable.characteristic.definitionByCombination.characteristic.definitionByTypeAndValue</sch:title>
    <sch:rule context="f:EvidenceVariable/f:characteristic/f:definitionByCombination/f:characteristic/f:definitionByTypeAndValue">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>EvidenceVariable.characteristic.definitionByCombination.characteristic.definitionByTypeAndValue.extension</sch:title>
    <sch:rule context="f:EvidenceVariable/f:characteristic/f:definitionByCombination/f:characteristic/f:definitionByTypeAndValue/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>EvidenceVariable.characteristic.definitionByCombination.characteristic.definitionByTypeAndValue.modifierExtension</sch:title>
    <sch:rule context="f:EvidenceVariable/f:characteristic/f:definitionByCombination/f:characteristic/f:definitionByTypeAndValue/f:modifierExtension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>EvidenceVariable.characteristic.definitionByCombination.characteristic.definitionByTypeAndValue.type[x] 1</sch:title>
    <sch:rule context="f:EvidenceVariable/f:characteristic/f:definitionByCombination/f:characteristic/f:definitionByTypeAndValue/f:type[x]">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>EvidenceVariable.characteristic.definitionByCombination.characteristic.definitionByTypeAndValue.value[x] 1</sch:title>
    <sch:rule context="f:EvidenceVariable/f:characteristic/f:definitionByCombination/f:characteristic/f:definitionByTypeAndValue/f:value[x]">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:EvidenceVariable/f:characteristic/f:definitionByCombination/f:characteristic/f:definitionByCombination</sch:title>
    <sch:rule context="f:EvidenceVariable/f:characteristic/f:definitionByCombination/f:characteristic/f:definitionByCombination">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:code) &gt;= 1">code: minimum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:code) &lt;= 1">code: maximum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:threshold) &lt;= 1">threshold: maximum cardinality of 'threshold' is 1</sch:assert>
      <sch:assert test="count(f:characteristic) &gt;= 1">characteristic: minimum cardinality of 'characteristic' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>EvidenceVariable.characteristic.definitionByCombination.characteristic.definitionByCombination</sch:title>
    <sch:rule context="f:EvidenceVariable/f:characteristic/f:definitionByCombination/f:characteristic/f:definitionByCombination">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>EvidenceVariable.characteristic.definitionByCombination.characteristic.definitionByCombination.extension</sch:title>
    <sch:rule context="f:EvidenceVariable/f:characteristic/f:definitionByCombination/f:characteristic/f:definitionByCombination/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>EvidenceVariable.characteristic.definitionByCombination.characteristic.definitionByCombination.modifierExtension</sch:title>
    <sch:rule context="f:EvidenceVariable/f:characteristic/f:definitionByCombination/f:characteristic/f:definitionByCombination/f:modifierExtension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>EvidenceVariable.characteristic.definitionByCombination.characteristic.definitionByCombination.code</sch:title>
    <sch:rule context="f:EvidenceVariable/f:characteristic/f:definitionByCombination/f:characteristic/f:definitionByCombination/f:code">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>EvidenceVariable.characteristic.definitionByCombination.characteristic.definitionByCombination.threshold</sch:title>
    <sch:rule context="f:EvidenceVariable/f:characteristic/f:definitionByCombination/f:characteristic/f:definitionByCombination/f:threshold">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>EvidenceVariable.characteristic.definitionByCombination.characteristic.definitionByCombination.characteristic</sch:title>
    <sch:rule context="f:EvidenceVariable/f:characteristic/f:definitionByCombination/f:characteristic/f:definitionByCombination/f:characteristic">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>EvidenceVariable.characteristic.definitionByCombination.characteristic.method</sch:title>
    <sch:rule context="f:EvidenceVariable/f:characteristic/f:definitionByCombination/f:characteristic/f:method">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>EvidenceVariable.characteristic.definitionByCombination.characteristic.device</sch:title>
    <sch:rule context="f:EvidenceVariable/f:characteristic/f:definitionByCombination/f:characteristic/f:device">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>EvidenceVariable.characteristic.definitionByCombination.characteristic.offset</sch:title>
    <sch:rule context="f:EvidenceVariable/f:characteristic/f:definitionByCombination/f:characteristic/f:offset">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:EvidenceVariable/f:characteristic/f:definitionByCombination/f:characteristic/f:timeFromEvent</sch:title>
    <sch:rule context="f:EvidenceVariable/f:characteristic/f:definitionByCombination/f:characteristic/f:timeFromEvent">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:description) &lt;= 1">description: maximum cardinality of 'description' is 1</sch:assert>
      <sch:assert test="count(f:event[x]) &lt;= 1">event[x]: maximum cardinality of 'event[x]' is 1</sch:assert>
      <sch:assert test="count(f:quantity) &lt;= 1">quantity: maximum cardinality of 'quantity' is 1</sch:assert>
      <sch:assert test="count(f:range) &lt;= 1">range: maximum cardinality of 'range' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>EvidenceVariable.characteristic.definitionByCombination.characteristic.timeFromEvent</sch:title>
    <sch:rule context="f:EvidenceVariable/f:characteristic/f:definitionByCombination/f:characteristic/f:timeFromEvent">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>EvidenceVariable.characteristic.definitionByCombination.characteristic.timeFromEvent.extension</sch:title>
    <sch:rule context="f:EvidenceVariable/f:characteristic/f:definitionByCombination/f:characteristic/f:timeFromEvent/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>EvidenceVariable.characteristic.definitionByCombination.characteristic.timeFromEvent.modifierExtension</sch:title>
    <sch:rule context="f:EvidenceVariable/f:characteristic/f:definitionByCombination/f:characteristic/f:timeFromEvent/f:modifierExtension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>EvidenceVariable.characteristic.definitionByCombination.characteristic.timeFromEvent.description</sch:title>
    <sch:rule context="f:EvidenceVariable/f:characteristic/f:definitionByCombination/f:characteristic/f:timeFromEvent/f:description">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>EvidenceVariable.characteristic.definitionByCombination.characteristic.timeFromEvent.note</sch:title>
    <sch:rule context="f:EvidenceVariable/f:characteristic/f:definitionByCombination/f:characteristic/f:timeFromEvent/f:note">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>EvidenceVariable.characteristic.definitionByCombination.characteristic.timeFromEvent.event[x] 1</sch:title>
    <sch:rule context="f:EvidenceVariable/f:characteristic/f:definitionByCombination/f:characteristic/f:timeFromEvent/f:event[x]">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>EvidenceVariable.characteristic.definitionByCombination.characteristic.timeFromEvent.quantity</sch:title>
    <sch:rule context="f:EvidenceVariable/f:characteristic/f:definitionByCombination/f:characteristic/f:timeFromEvent/f:quantity">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>EvidenceVariable.characteristic.definitionByCombination.characteristic.timeFromEvent.range</sch:title>
    <sch:rule context="f:EvidenceVariable/f:characteristic/f:definitionByCombination/f:characteristic/f:timeFromEvent/f:range">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>EvidenceVariable.characteristic.definitionByCombination.characteristic.groupMeasure</sch:title>
    <sch:rule context="f:EvidenceVariable/f:characteristic/f:definitionByCombination/f:characteristic/f:groupMeasure">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>EvidenceVariable.characteristic.method</sch:title>
    <sch:rule context="f:EvidenceVariable/f:characteristic/f:method">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>EvidenceVariable.characteristic.device</sch:title>
    <sch:rule context="f:EvidenceVariable/f:characteristic/f:device">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>EvidenceVariable.characteristic.offset</sch:title>
    <sch:rule context="f:EvidenceVariable/f:characteristic/f:offset">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>EvidenceVariable.characteristic.timeFromEvent</sch:title>
    <sch:rule context="f:EvidenceVariable/f:characteristic/f:timeFromEvent">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>EvidenceVariable.characteristic.timeFromEvent.extension</sch:title>
    <sch:rule context="f:EvidenceVariable/f:characteristic/f:timeFromEvent/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>EvidenceVariable.characteristic.timeFromEvent.modifierExtension</sch:title>
    <sch:rule context="f:EvidenceVariable/f:characteristic/f:timeFromEvent/f:modifierExtension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>EvidenceVariable.characteristic.timeFromEvent.description</sch:title>
    <sch:rule context="f:EvidenceVariable/f:characteristic/f:timeFromEvent/f:description">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>EvidenceVariable.characteristic.timeFromEvent.note</sch:title>
    <sch:rule context="f:EvidenceVariable/f:characteristic/f:timeFromEvent/f:note">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>EvidenceVariable.characteristic.timeFromEvent.event[x] 1</sch:title>
    <sch:rule context="f:EvidenceVariable/f:characteristic/f:timeFromEvent/f:event[x]">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>EvidenceVariable.characteristic.timeFromEvent.quantity</sch:title>
    <sch:rule context="f:EvidenceVariable/f:characteristic/f:timeFromEvent/f:quantity">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>EvidenceVariable.characteristic.timeFromEvent.range</sch:title>
    <sch:rule context="f:EvidenceVariable/f:characteristic/f:timeFromEvent/f:range">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>EvidenceVariable.characteristic.groupMeasure</sch:title>
    <sch:rule context="f:EvidenceVariable/f:characteristic/f:groupMeasure">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>EvidenceVariable.handling</sch:title>
    <sch:rule context="f:EvidenceVariable/f:handling">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>EvidenceVariable.category</sch:title>
    <sch:rule context="f:EvidenceVariable/f:category">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>EvidenceVariable.category.extension</sch:title>
    <sch:rule context="f:EvidenceVariable/f:category/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>EvidenceVariable.category.modifierExtension</sch:title>
    <sch:rule context="f:EvidenceVariable/f:category/f:modifierExtension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>EvidenceVariable.category.name</sch:title>
    <sch:rule context="f:EvidenceVariable/f:category/f:name">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>EvidenceVariable.category.value[x] 1</sch:title>
    <sch:rule context="f:EvidenceVariable/f:category/f:value[x]">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
