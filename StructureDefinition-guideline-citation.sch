<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile Citation
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:Citation</sch:title>
    <sch:rule context="f:Citation">
      <sch:assert test="count(f:name) &gt;= 1">name: minimum cardinality of 'name' is 1</sch:assert>
      <sch:assert test="count(f:citedArtifact) &gt;= 1">citedArtifact: minimum cardinality of 'citedArtifact' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Citation</sch:title>
    <sch:rule context="f:Citation">
      <sch:assert test="not(exists(f:name/@value)) or matches(f:name/@value, '[A-Z]([A-Za-z0-9_]){0,254}')">Name should be usable as an identifier for the module by machine processing applications such as code generation (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Citation.meta</sch:title>
    <sch:rule context="f:Citation/f:meta">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Citation.implicitRules</sch:title>
    <sch:rule context="f:Citation/f:implicitRules">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Citation.language</sch:title>
    <sch:rule context="f:Citation/f:language">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Citation.text</sch:title>
    <sch:rule context="f:Citation/f:text">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Citation.extension</sch:title>
    <sch:rule context="f:Citation/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Citation.modifierExtension</sch:title>
    <sch:rule context="f:Citation/f:modifierExtension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Citation.url</sch:title>
    <sch:rule context="f:Citation/f:url">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Citation.identifier</sch:title>
    <sch:rule context="f:Citation/f:identifier">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Citation.version</sch:title>
    <sch:rule context="f:Citation/f:version">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Citation.name</sch:title>
    <sch:rule context="f:Citation/f:name">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Citation.title</sch:title>
    <sch:rule context="f:Citation/f:title">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Citation.status</sch:title>
    <sch:rule context="f:Citation/f:status">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Citation.experimental</sch:title>
    <sch:rule context="f:Citation/f:experimental">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Citation.date</sch:title>
    <sch:rule context="f:Citation/f:date">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Citation.publisher</sch:title>
    <sch:rule context="f:Citation/f:publisher">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Citation.contact</sch:title>
    <sch:rule context="f:Citation/f:contact">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Citation.description</sch:title>
    <sch:rule context="f:Citation/f:description">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Citation.useContext</sch:title>
    <sch:rule context="f:Citation/f:useContext">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Citation.jurisdiction</sch:title>
    <sch:rule context="f:Citation/f:jurisdiction">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Citation.purpose</sch:title>
    <sch:rule context="f:Citation/f:purpose">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Citation.copyright</sch:title>
    <sch:rule context="f:Citation/f:copyright">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Citation.approvalDate</sch:title>
    <sch:rule context="f:Citation/f:approvalDate">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Citation.lastReviewDate</sch:title>
    <sch:rule context="f:Citation/f:lastReviewDate">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Citation.effectivePeriod</sch:title>
    <sch:rule context="f:Citation/f:effectivePeriod">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Citation.author</sch:title>
    <sch:rule context="f:Citation/f:author">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Citation.editor</sch:title>
    <sch:rule context="f:Citation/f:editor">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Citation.reviewer</sch:title>
    <sch:rule context="f:Citation/f:reviewer">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Citation.endorser</sch:title>
    <sch:rule context="f:Citation/f:endorser">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Citation.summary</sch:title>
    <sch:rule context="f:Citation/f:summary">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Citation.summary.extension</sch:title>
    <sch:rule context="f:Citation/f:summary/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Citation.summary.modifierExtension</sch:title>
    <sch:rule context="f:Citation/f:summary/f:modifierExtension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Citation.summary.style</sch:title>
    <sch:rule context="f:Citation/f:summary/f:style">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Citation.summary.text</sch:title>
    <sch:rule context="f:Citation/f:summary/f:text">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Citation.classification</sch:title>
    <sch:rule context="f:Citation/f:classification">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Citation.classification.extension</sch:title>
    <sch:rule context="f:Citation/f:classification/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Citation.classification.modifierExtension</sch:title>
    <sch:rule context="f:Citation/f:classification/f:modifierExtension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Citation.classification.type</sch:title>
    <sch:rule context="f:Citation/f:classification/f:type">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Citation.classification.classifier</sch:title>
    <sch:rule context="f:Citation/f:classification/f:classifier">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Citation.note</sch:title>
    <sch:rule context="f:Citation/f:note">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Citation.currentState</sch:title>
    <sch:rule context="f:Citation/f:currentState">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Citation.statusDate</sch:title>
    <sch:rule context="f:Citation/f:statusDate">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Citation.statusDate.extension</sch:title>
    <sch:rule context="f:Citation/f:statusDate/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Citation.statusDate.modifierExtension</sch:title>
    <sch:rule context="f:Citation/f:statusDate/f:modifierExtension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Citation.statusDate.activity</sch:title>
    <sch:rule context="f:Citation/f:statusDate/f:activity">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Citation.statusDate.actual</sch:title>
    <sch:rule context="f:Citation/f:statusDate/f:actual">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Citation.statusDate.period</sch:title>
    <sch:rule context="f:Citation/f:statusDate/f:period">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Citation.relatedArtifact</sch:title>
    <sch:rule context="f:Citation/f:relatedArtifact">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Citation/f:citedArtifact</sch:title>
    <sch:rule context="f:Citation/f:citedArtifact">
      <sch:assert test="count(f:identifier) &gt;= 1">identifier: minimum cardinality of 'identifier' is 1</sch:assert>
      <sch:assert test="count(f:version) &gt;= 1">version: minimum cardinality of 'version' is 1</sch:assert>
      <sch:assert test="count(f:currentState) &gt;= 1">currentState: minimum cardinality of 'currentState' is 1</sch:assert>
      <sch:assert test="count(f:currentState) &lt;= 1">currentState: maximum cardinality of 'currentState' is 1</sch:assert>
      <sch:assert test="count(f:title) &gt;= 1">title: minimum cardinality of 'title' is 1</sch:assert>
      <sch:assert test="count(f:title) &lt;= 1">title: maximum cardinality of 'title' is 1</sch:assert>
      <sch:assert test="count(f:webLocation) &gt;= 1">webLocation: minimum cardinality of 'webLocation' is 1</sch:assert>
      <sch:assert test="count(f:classification) &gt;= 1">classification: minimum cardinality of 'classification' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Citation.citedArtifact</sch:title>
    <sch:rule context="f:Citation/f:citedArtifact">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Citation.citedArtifact.extension</sch:title>
    <sch:rule context="f:Citation/f:citedArtifact/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Citation.citedArtifact.modifierExtension</sch:title>
    <sch:rule context="f:Citation/f:citedArtifact/f:modifierExtension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Citation.citedArtifact.identifier</sch:title>
    <sch:rule context="f:Citation/f:citedArtifact/f:identifier">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Citation.citedArtifact.relatedIdentifier</sch:title>
    <sch:rule context="f:Citation/f:citedArtifact/f:relatedIdentifier">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Citation.citedArtifact.dateAccessed</sch:title>
    <sch:rule context="f:Citation/f:citedArtifact/f:dateAccessed">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Citation.citedArtifact.version</sch:title>
    <sch:rule context="f:Citation/f:citedArtifact/f:version">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Citation.citedArtifact.version.extension</sch:title>
    <sch:rule context="f:Citation/f:citedArtifact/f:version/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Citation.citedArtifact.version.modifierExtension</sch:title>
    <sch:rule context="f:Citation/f:citedArtifact/f:version/f:modifierExtension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Citation.citedArtifact.version.value</sch:title>
    <sch:rule context="f:Citation/f:citedArtifact/f:version/f:value">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Citation.citedArtifact.version.baseCitation</sch:title>
    <sch:rule context="f:Citation/f:citedArtifact/f:version/f:baseCitation">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Citation.citedArtifact.currentState</sch:title>
    <sch:rule context="f:Citation/f:citedArtifact/f:currentState">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Citation.citedArtifact.statusDate</sch:title>
    <sch:rule context="f:Citation/f:citedArtifact/f:statusDate">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Citation.citedArtifact.statusDate.extension</sch:title>
    <sch:rule context="f:Citation/f:citedArtifact/f:statusDate/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Citation.citedArtifact.statusDate.modifierExtension</sch:title>
    <sch:rule context="f:Citation/f:citedArtifact/f:statusDate/f:modifierExtension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Citation.citedArtifact.statusDate.activity</sch:title>
    <sch:rule context="f:Citation/f:citedArtifact/f:statusDate/f:activity">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Citation.citedArtifact.statusDate.actual</sch:title>
    <sch:rule context="f:Citation/f:citedArtifact/f:statusDate/f:actual">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Citation.citedArtifact.statusDate.period</sch:title>
    <sch:rule context="f:Citation/f:citedArtifact/f:statusDate/f:period">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Citation.citedArtifact.title</sch:title>
    <sch:rule context="f:Citation/f:citedArtifact/f:title">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Citation.citedArtifact.title.extension</sch:title>
    <sch:rule context="f:Citation/f:citedArtifact/f:title/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Citation.citedArtifact.title.modifierExtension</sch:title>
    <sch:rule context="f:Citation/f:citedArtifact/f:title/f:modifierExtension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Citation.citedArtifact.title.type</sch:title>
    <sch:rule context="f:Citation/f:citedArtifact/f:title/f:type">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Citation.citedArtifact.title.language</sch:title>
    <sch:rule context="f:Citation/f:citedArtifact/f:title/f:language">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Citation.citedArtifact.title.text</sch:title>
    <sch:rule context="f:Citation/f:citedArtifact/f:title/f:text">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Citation.citedArtifact.abstract</sch:title>
    <sch:rule context="f:Citation/f:citedArtifact/f:abstract">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Citation.citedArtifact.abstract.extension</sch:title>
    <sch:rule context="f:Citation/f:citedArtifact/f:abstract/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Citation.citedArtifact.abstract.modifierExtension</sch:title>
    <sch:rule context="f:Citation/f:citedArtifact/f:abstract/f:modifierExtension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Citation.citedArtifact.abstract.type</sch:title>
    <sch:rule context="f:Citation/f:citedArtifact/f:abstract/f:type">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Citation.citedArtifact.abstract.language</sch:title>
    <sch:rule context="f:Citation/f:citedArtifact/f:abstract/f:language">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Citation.citedArtifact.abstract.text</sch:title>
    <sch:rule context="f:Citation/f:citedArtifact/f:abstract/f:text">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Citation.citedArtifact.abstract.copyright</sch:title>
    <sch:rule context="f:Citation/f:citedArtifact/f:abstract/f:copyright">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Citation.citedArtifact.part</sch:title>
    <sch:rule context="f:Citation/f:citedArtifact/f:part">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Citation.citedArtifact.part.extension</sch:title>
    <sch:rule context="f:Citation/f:citedArtifact/f:part/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Citation.citedArtifact.part.modifierExtension</sch:title>
    <sch:rule context="f:Citation/f:citedArtifact/f:part/f:modifierExtension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Citation.citedArtifact.part.type</sch:title>
    <sch:rule context="f:Citation/f:citedArtifact/f:part/f:type">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Citation.citedArtifact.part.value</sch:title>
    <sch:rule context="f:Citation/f:citedArtifact/f:part/f:value">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Citation.citedArtifact.part.baseCitation</sch:title>
    <sch:rule context="f:Citation/f:citedArtifact/f:part/f:baseCitation">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Citation.citedArtifact.relatesTo</sch:title>
    <sch:rule context="f:Citation/f:citedArtifact/f:relatesTo">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Citation.citedArtifact.relatesTo.extension</sch:title>
    <sch:rule context="f:Citation/f:citedArtifact/f:relatesTo/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Citation.citedArtifact.relatesTo.modifierExtension</sch:title>
    <sch:rule context="f:Citation/f:citedArtifact/f:relatesTo/f:modifierExtension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Citation.citedArtifact.relatesTo.type</sch:title>
    <sch:rule context="f:Citation/f:citedArtifact/f:relatesTo/f:type">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Citation.citedArtifact.relatesTo.classifier</sch:title>
    <sch:rule context="f:Citation/f:citedArtifact/f:relatesTo/f:classifier">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Citation.citedArtifact.relatesTo.label</sch:title>
    <sch:rule context="f:Citation/f:citedArtifact/f:relatesTo/f:label">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Citation.citedArtifact.relatesTo.display</sch:title>
    <sch:rule context="f:Citation/f:citedArtifact/f:relatesTo/f:display">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Citation.citedArtifact.relatesTo.citation</sch:title>
    <sch:rule context="f:Citation/f:citedArtifact/f:relatesTo/f:citation">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Citation.citedArtifact.relatesTo.document</sch:title>
    <sch:rule context="f:Citation/f:citedArtifact/f:relatesTo/f:document">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Citation.citedArtifact.relatesTo.resource</sch:title>
    <sch:rule context="f:Citation/f:citedArtifact/f:relatesTo/f:resource">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Citation.citedArtifact.relatesTo.resourceReference</sch:title>
    <sch:rule context="f:Citation/f:citedArtifact/f:relatesTo/f:resourceReference">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Citation.citedArtifact.publicationForm</sch:title>
    <sch:rule context="f:Citation/f:citedArtifact/f:publicationForm">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Citation.citedArtifact.publicationForm.extension</sch:title>
    <sch:rule context="f:Citation/f:citedArtifact/f:publicationForm/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Citation.citedArtifact.publicationForm.modifierExtension</sch:title>
    <sch:rule context="f:Citation/f:citedArtifact/f:publicationForm/f:modifierExtension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Citation.citedArtifact.publicationForm.publishedIn</sch:title>
    <sch:rule context="f:Citation/f:citedArtifact/f:publicationForm/f:publishedIn">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Citation.citedArtifact.publicationForm.publishedIn.extension</sch:title>
    <sch:rule context="f:Citation/f:citedArtifact/f:publicationForm/f:publishedIn/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Citation.citedArtifact.publicationForm.publishedIn.modifierExtension</sch:title>
    <sch:rule context="f:Citation/f:citedArtifact/f:publicationForm/f:publishedIn/f:modifierExtension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Citation.citedArtifact.publicationForm.publishedIn.type</sch:title>
    <sch:rule context="f:Citation/f:citedArtifact/f:publicationForm/f:publishedIn/f:type">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Citation.citedArtifact.publicationForm.publishedIn.identifier</sch:title>
    <sch:rule context="f:Citation/f:citedArtifact/f:publicationForm/f:publishedIn/f:identifier">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Citation.citedArtifact.publicationForm.publishedIn.title</sch:title>
    <sch:rule context="f:Citation/f:citedArtifact/f:publicationForm/f:publishedIn/f:title">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Citation.citedArtifact.publicationForm.publishedIn.publisher</sch:title>
    <sch:rule context="f:Citation/f:citedArtifact/f:publicationForm/f:publishedIn/f:publisher">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Citation.citedArtifact.publicationForm.publishedIn.publisherLocation</sch:title>
    <sch:rule context="f:Citation/f:citedArtifact/f:publicationForm/f:publishedIn/f:publisherLocation">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Citation.citedArtifact.publicationForm.periodicRelease</sch:title>
    <sch:rule context="f:Citation/f:citedArtifact/f:publicationForm/f:periodicRelease">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Citation.citedArtifact.publicationForm.periodicRelease.extension</sch:title>
    <sch:rule context="f:Citation/f:citedArtifact/f:publicationForm/f:periodicRelease/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Citation.citedArtifact.publicationForm.periodicRelease.modifierExtension</sch:title>
    <sch:rule context="f:Citation/f:citedArtifact/f:publicationForm/f:periodicRelease/f:modifierExtension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Citation.citedArtifact.publicationForm.periodicRelease.citedMedium</sch:title>
    <sch:rule context="f:Citation/f:citedArtifact/f:publicationForm/f:periodicRelease/f:citedMedium">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Citation.citedArtifact.publicationForm.periodicRelease.volume</sch:title>
    <sch:rule context="f:Citation/f:citedArtifact/f:publicationForm/f:periodicRelease/f:volume">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Citation.citedArtifact.publicationForm.periodicRelease.issue</sch:title>
    <sch:rule context="f:Citation/f:citedArtifact/f:publicationForm/f:periodicRelease/f:issue">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Citation.citedArtifact.publicationForm.periodicRelease.dateOfPublication</sch:title>
    <sch:rule context="f:Citation/f:citedArtifact/f:publicationForm/f:periodicRelease/f:dateOfPublication">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Citation.citedArtifact.publicationForm.periodicRelease.dateOfPublication.extension</sch:title>
    <sch:rule context="f:Citation/f:citedArtifact/f:publicationForm/f:periodicRelease/f:dateOfPublication/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Citation.citedArtifact.publicationForm.periodicRelease.dateOfPublication.modifierExtension</sch:title>
    <sch:rule context="f:Citation/f:citedArtifact/f:publicationForm/f:periodicRelease/f:dateOfPublication/f:modifierExtension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Citation.citedArtifact.publicationForm.periodicRelease.dateOfPublication.date</sch:title>
    <sch:rule context="f:Citation/f:citedArtifact/f:publicationForm/f:periodicRelease/f:dateOfPublication/f:date">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Citation.citedArtifact.publicationForm.periodicRelease.dateOfPublication.year</sch:title>
    <sch:rule context="f:Citation/f:citedArtifact/f:publicationForm/f:periodicRelease/f:dateOfPublication/f:year">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Citation.citedArtifact.publicationForm.periodicRelease.dateOfPublication.month</sch:title>
    <sch:rule context="f:Citation/f:citedArtifact/f:publicationForm/f:periodicRelease/f:dateOfPublication/f:month">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Citation.citedArtifact.publicationForm.periodicRelease.dateOfPublication.day</sch:title>
    <sch:rule context="f:Citation/f:citedArtifact/f:publicationForm/f:periodicRelease/f:dateOfPublication/f:day">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Citation.citedArtifact.publicationForm.periodicRelease.dateOfPublication.season</sch:title>
    <sch:rule context="f:Citation/f:citedArtifact/f:publicationForm/f:periodicRelease/f:dateOfPublication/f:season">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Citation.citedArtifact.publicationForm.periodicRelease.dateOfPublication.text</sch:title>
    <sch:rule context="f:Citation/f:citedArtifact/f:publicationForm/f:periodicRelease/f:dateOfPublication/f:text">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Citation.citedArtifact.publicationForm.articleDate</sch:title>
    <sch:rule context="f:Citation/f:citedArtifact/f:publicationForm/f:articleDate">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Citation.citedArtifact.publicationForm.lastRevisionDate</sch:title>
    <sch:rule context="f:Citation/f:citedArtifact/f:publicationForm/f:lastRevisionDate">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Citation.citedArtifact.publicationForm.language</sch:title>
    <sch:rule context="f:Citation/f:citedArtifact/f:publicationForm/f:language">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Citation.citedArtifact.publicationForm.accessionNumber</sch:title>
    <sch:rule context="f:Citation/f:citedArtifact/f:publicationForm/f:accessionNumber">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Citation.citedArtifact.publicationForm.pageString</sch:title>
    <sch:rule context="f:Citation/f:citedArtifact/f:publicationForm/f:pageString">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Citation.citedArtifact.publicationForm.firstPage</sch:title>
    <sch:rule context="f:Citation/f:citedArtifact/f:publicationForm/f:firstPage">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Citation.citedArtifact.publicationForm.lastPage</sch:title>
    <sch:rule context="f:Citation/f:citedArtifact/f:publicationForm/f:lastPage">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Citation.citedArtifact.publicationForm.pageCount</sch:title>
    <sch:rule context="f:Citation/f:citedArtifact/f:publicationForm/f:pageCount">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Citation.citedArtifact.publicationForm.copyright</sch:title>
    <sch:rule context="f:Citation/f:citedArtifact/f:publicationForm/f:copyright">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Citation/f:citedArtifact/f:webLocation</sch:title>
    <sch:rule context="f:Citation/f:citedArtifact/f:webLocation">
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Citation.citedArtifact.webLocation</sch:title>
    <sch:rule context="f:Citation/f:citedArtifact/f:webLocation">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Citation.citedArtifact.webLocation.extension</sch:title>
    <sch:rule context="f:Citation/f:citedArtifact/f:webLocation/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Citation.citedArtifact.webLocation.modifierExtension</sch:title>
    <sch:rule context="f:Citation/f:citedArtifact/f:webLocation/f:modifierExtension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Citation.citedArtifact.webLocation.classifier</sch:title>
    <sch:rule context="f:Citation/f:citedArtifact/f:webLocation/f:classifier">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Citation.citedArtifact.webLocation.url</sch:title>
    <sch:rule context="f:Citation/f:citedArtifact/f:webLocation/f:url">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Citation/f:citedArtifact/f:classification</sch:title>
    <sch:rule context="f:Citation/f:citedArtifact/f:classification">
      <sch:assert test="count(f:type) &gt;= 1">type: minimum cardinality of 'type' is 1</sch:assert>
      <sch:assert test="count(f:classifier) &gt;= 1">classifier: minimum cardinality of 'classifier' is 1</sch:assert>
      <sch:assert test="count(f:classifier) &lt;= 1">classifier: maximum cardinality of 'classifier' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Citation.citedArtifact.classification</sch:title>
    <sch:rule context="f:Citation/f:citedArtifact/f:classification">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Citation.citedArtifact.classification.extension</sch:title>
    <sch:rule context="f:Citation/f:citedArtifact/f:classification/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Citation.citedArtifact.classification.modifierExtension</sch:title>
    <sch:rule context="f:Citation/f:citedArtifact/f:classification/f:modifierExtension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Citation.citedArtifact.classification.type</sch:title>
    <sch:rule context="f:Citation/f:citedArtifact/f:classification/f:type">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Citation.citedArtifact.classification.classifier</sch:title>
    <sch:rule context="f:Citation/f:citedArtifact/f:classification/f:classifier">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Citation.citedArtifact.classification.artifactAssessment</sch:title>
    <sch:rule context="f:Citation/f:citedArtifact/f:classification/f:artifactAssessment">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Citation.citedArtifact.contributorship</sch:title>
    <sch:rule context="f:Citation/f:citedArtifact/f:contributorship">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Citation.citedArtifact.contributorship.extension</sch:title>
    <sch:rule context="f:Citation/f:citedArtifact/f:contributorship/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Citation.citedArtifact.contributorship.modifierExtension</sch:title>
    <sch:rule context="f:Citation/f:citedArtifact/f:contributorship/f:modifierExtension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Citation.citedArtifact.contributorship.complete</sch:title>
    <sch:rule context="f:Citation/f:citedArtifact/f:contributorship/f:complete">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Citation.citedArtifact.contributorship.entry</sch:title>
    <sch:rule context="f:Citation/f:citedArtifact/f:contributorship/f:entry">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Citation.citedArtifact.contributorship.entry.extension</sch:title>
    <sch:rule context="f:Citation/f:citedArtifact/f:contributorship/f:entry/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Citation.citedArtifact.contributorship.entry.modifierExtension</sch:title>
    <sch:rule context="f:Citation/f:citedArtifact/f:contributorship/f:entry/f:modifierExtension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Citation.citedArtifact.contributorship.entry.contributor</sch:title>
    <sch:rule context="f:Citation/f:citedArtifact/f:contributorship/f:entry/f:contributor">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Citation.citedArtifact.contributorship.entry.forenameInitials</sch:title>
    <sch:rule context="f:Citation/f:citedArtifact/f:contributorship/f:entry/f:forenameInitials">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Citation.citedArtifact.contributorship.entry.affiliation</sch:title>
    <sch:rule context="f:Citation/f:citedArtifact/f:contributorship/f:entry/f:affiliation">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Citation.citedArtifact.contributorship.entry.contributionType</sch:title>
    <sch:rule context="f:Citation/f:citedArtifact/f:contributorship/f:entry/f:contributionType">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Citation.citedArtifact.contributorship.entry.role</sch:title>
    <sch:rule context="f:Citation/f:citedArtifact/f:contributorship/f:entry/f:role">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Citation.citedArtifact.contributorship.entry.contributionInstance</sch:title>
    <sch:rule context="f:Citation/f:citedArtifact/f:contributorship/f:entry/f:contributionInstance">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Citation.citedArtifact.contributorship.entry.contributionInstance.extension</sch:title>
    <sch:rule context="f:Citation/f:citedArtifact/f:contributorship/f:entry/f:contributionInstance/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Citation.citedArtifact.contributorship.entry.contributionInstance.modifierExtension</sch:title>
    <sch:rule context="f:Citation/f:citedArtifact/f:contributorship/f:entry/f:contributionInstance/f:modifierExtension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Citation.citedArtifact.contributorship.entry.contributionInstance.type</sch:title>
    <sch:rule context="f:Citation/f:citedArtifact/f:contributorship/f:entry/f:contributionInstance/f:type">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Citation.citedArtifact.contributorship.entry.contributionInstance.time</sch:title>
    <sch:rule context="f:Citation/f:citedArtifact/f:contributorship/f:entry/f:contributionInstance/f:time">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Citation.citedArtifact.contributorship.entry.correspondingContact</sch:title>
    <sch:rule context="f:Citation/f:citedArtifact/f:contributorship/f:entry/f:correspondingContact">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Citation.citedArtifact.contributorship.entry.rankingOrder</sch:title>
    <sch:rule context="f:Citation/f:citedArtifact/f:contributorship/f:entry/f:rankingOrder">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Citation.citedArtifact.contributorship.summary</sch:title>
    <sch:rule context="f:Citation/f:citedArtifact/f:contributorship/f:summary">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Citation.citedArtifact.contributorship.summary.extension</sch:title>
    <sch:rule context="f:Citation/f:citedArtifact/f:contributorship/f:summary/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Citation.citedArtifact.contributorship.summary.modifierExtension</sch:title>
    <sch:rule context="f:Citation/f:citedArtifact/f:contributorship/f:summary/f:modifierExtension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Citation.citedArtifact.contributorship.summary.type</sch:title>
    <sch:rule context="f:Citation/f:citedArtifact/f:contributorship/f:summary/f:type">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Citation.citedArtifact.contributorship.summary.style</sch:title>
    <sch:rule context="f:Citation/f:citedArtifact/f:contributorship/f:summary/f:style">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Citation.citedArtifact.contributorship.summary.source</sch:title>
    <sch:rule context="f:Citation/f:citedArtifact/f:contributorship/f:summary/f:source">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Citation.citedArtifact.contributorship.summary.value</sch:title>
    <sch:rule context="f:Citation/f:citedArtifact/f:contributorship/f:summary/f:value">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Citation.citedArtifact.note</sch:title>
    <sch:rule context="f:Citation/f:citedArtifact/f:note">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
