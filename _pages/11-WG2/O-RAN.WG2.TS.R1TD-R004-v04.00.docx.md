---
title: O-RAN.WG2.TS.R1TD-R004-v04.00.docx.md
author: O-RAN Alliance
layout: post
---

- View in [GitHub Mode]({{site.github_page_url}}/O-RAN.WG2.TS.R1TD-R004-v04.00.docx.md).
- Go back to [Table of Contents]({{site.baseurl}}/).
- Download the [Original Document]({{site.download_url}}/O-RAN.WG2.TS.R1TD-R004-v04.00.docx).

---

* toc
{:toc}

---

<div class="table-wrapper" markdown="block">

|  |
| --- |
| ![webwxgetmsgimg (7).jpeg]({{site.baseurl}}/assets/images/bea03973c631.jpg)O-RAN.WG2.TS.R1TD-R004-v04.00 |

</div>

<div class="table-wrapper" markdown="block">

|  |
| --- |
| Technical Specification |
|  |

</div>

<div class="table-wrapper" markdown="block">

|  |
| --- |
| Type Definitions for R1 Services |

</div>

<div class="table-wrapper" markdown="block">

|  |
| --- |
|  |
| Copyright (C) 2025 by the O-RAN ALLIANCE e.V.  The copying or incorporation into any other work of part or all of the material available in this specification in any form without the prior written permission of O-RAN ALLIANCE e.V. is prohibited, save that you may print or download extracts of the material of this specification for your personal use, or copy the material of this specification for the purpose of sending to individual third parties for their information provided that you acknowledge O-RAN ALLIANCE as the source of the material and that you inform the third party that these conditions apply to them and that they must comply with them.  O-RAN ALLIANCE e.V., Buschkauler Weg 27, 53347 Alfter, Germany  Register of Associations, Bonn VR 11238, VAT ID DE321720189 |

</div>

Contents

List of figures 3

List of tables 3

Foreword 4

Modal verbs terminology 4

1 Scope 5

2 References 5

2.1 Normative references 5

2.2 Informative references 6

3 Definition of terms, symbols and abbreviations 6

3.1 Terms 6

3.2 Symbols 6

3.3 Abbreviations 6

4. R1 Application data model 6

4.1 Introduction 6

4.2 Version conventions for the present document 7

5. Data type definitions for Data Management and Exposure services 7

5.1 Common definitions 7

5.1.1 Introduction 7

5.1.2 Identifiers and Metadata 7

5.1.3 Versioning of DME types 7

5.1.4 Schemas for DME types 8

5.1.5 Common data type definitions 8

5.2 Definition of individual DME types 9

5.2.1 Introduction 9

5.2.2 DME type: RAN OAM PM data 9

5.2.3 DME type: RAN OAM Trace Metrics 16

Annex (informative): Change history/Change request (history) 18

# Foreword

This Technical Specification (TS) has been produced by WG2 of the O-RAN Alliance.

The content of the present document is subject to continuing work within O-RAN and may change following formal O-RAN approval. Should the O-RAN Alliance modify the contents of the present document, it will be re-released by O-RAN with an identifying change of version date and an increase in version number as follows:

version xx.yy.zz

where:

xx: the first digit-group is incremented for all changes of substance, i.e., technical enhancements, corrections, updates, etc. (the initial approved document will have xx=01). Always 2 digits with leading zero if needed.

yy: the second digit-group is incremented when editorial only changes have been incorporated in the document. Always 2 digits with leading zero if needed.

zz: the third digit-group included only in working versions of the document indicating incremental changes during the editing process. External versions never include the third digit-group. Always 2 digits with leading zero if needed.

# Modal verbs terminology

In the present document "**shall**", "**shall not**", "**should**", "**should not**", "**may**", "**need not**", "**will**", "**will not**", "**can**" and "**cannot**" are to be interpreted as described in clause 3.2 of the O-RAN Drafting Rules (Verbal forms for the expression of provisions).

"**must**" and "**must not**" are **NOT** allowed in O-RAN deliverables except when used in direct citation.

# 1 Scope

The present document specifies the Type Definitions for R1Services. It is part of a TS-family covering the R1 interface specifications.

# 2 References

## 2.1 Normative references

References are either specific (identified by date of publication and/or edition number or version number) or non-specific. For specific references, only the cited version applies. For non-specific references, the latest version of the referenced document (including any amendments) applies. In the case of a reference to a 3GPP document (including a GSM document), a non-specific reference implicitly refers to the latest version of that document in 3GPP Release 18

NOTE: While any hyperlinks included in this clause were valid at the time of publication, O-RAN cannot guarantee their long term validity.

The following referenced documents are necessary for the application of the present document.

[1] O-RAN TS: "Application Protocols for R1 Services " ("R1AP").

[2] O-RAN TS: "R1 interface: General Aspects and Principles" ("R1GAP").

[3] O-RAN TS: "R1 Use Cases and Requirements" ("R1UCR").

[4] Semantic Versioning 2.0.0, "[https://semver.org](https://semver.org/)" ("Semver").

[5] IETF RFC 8259: "The JavaScript Object Notation (JSON) Data Interchange Format" ("JSON").

[6] json-schema 2020-12, "<https://json-schema.org/specification-links.html#2020-12>" ("JSON schema).

[7] W3C REC-xmlschema-1-20010502: "XML Schema Part 1: Structures", <https://www.w3.org/TR/2001/REC-xmlschema-1-20010502/>.

[8] W3C REC-xmlschema-2-20010502: "XML Schema Part 2: Datatypes", <https://www.w3.org/TR/2001/REC-xmlschema-2-20010502/>.

[9] W3C REC-xml-names-19990114: "Namespaces in XML", <http://www.w3.org/TR/1999/REC-xml-names-19990114>.

[10] 3GPP TS 28.622: "Telecommunication management; Generic Network Resource Model (NRM) Integration Reference Point (IRP); Information Service (IS) ".

[11] Void.

[12] IETF RFC 3339: " Data and Time on the Internet: Timestamps".

[13] 3GPP TS 32.401: "Telecommunication management; Performance Management (PM); Concept and requirements".

[14] Void.

[15] 3GPP TS 32.300: "Telecommunication management; Configuration Management (CM); Name convention for managed objects".

[16] Void.

[17] O-RAN TS: "O1 Interface Specification for O-CU-UP and O-CU-CP".

[18] O-RAN TS: "O1 Interface Specification for O-DU".

[19] 3GPP TS 32.422: "Telecommunication management; Subscriber and equipment trace; Trace control and configuration management".

[20] 3GPP TS 32.423: "Telecommunication management; Subscriber and equipment trace; Trace data definition and management".

## 2.2 Informative references

References are either specific (identified by date of publication and/or edition number or version number) or non-specific. For specific references, only the cited version applies. For non-specific references, the latest version of the referenced document (including any amendments) applies.

NOTE: While any hyperlinks included in this clause were valid at the time of publication, O-RAN cannot guarantee their long term validity.

The following referenced documents are not necessary for the application of the present document, but they assist the user with regard to a particular subject area.

[i.1] W3C REC-xmlschema-0-20010502: "XML Schema Part 0: Primer", <https://www.w3.org/TR/2001/REC-xmlschema-0-20010502/>.

# 3 Definition of terms, symbols and abbreviations

## 3.1 Terms

For the purposes of the present document, the terms given in R1GAP [2], R1AP [1], and the following apply:

**DME type**: data type managed and exposed by the DME services and identified by a DME type identifier.

NOTE: The present document defines O-RAN specific DME types and O-RAN re-uses 3GPP data types where applicable.

## 3.2 Symbols

Void

## 3.3 Abbreviations

For the purposes of the present document, the following abbreviations apply:

RAT Radio Access Technology

# 4. R1 Application data model

## 4.1 Introduction

The present document together with R1AP[1] defines the realization of the R1 procedures defined in R1GAP [2] and R1UCR [3].

R1AP [1] contains the service description, service operations, resource definition and the API definition (including the Open API document) for the R1 services. The present document contains the data model and the definitions of the schema-based objects transported in the procedures defined for the R1 services.

The data types defined in the present document are API-independent and are lifecycle independently from the APIs defined in R1AP [1].

## 4.2 Version conventions for the present document

The version number of the present document follows the "xx.yy" versioning scheme. There could be implications for the compatibility between implementations that uses DME types defined in different versions of this specification.

An incremented "xx" version field of the present document could indicate that a new major feature (e.g., a new DME type) has been added, removed or that an incompatible change has been made to one or more DME types. An incremented "yy" version field could indicate that an optional feature has been added, a technical issue has been fixed, or that clarifications or editorial corrections have been made.

The compatibility of rApps and R1 service API implementations in SMO/Non-RT RIC framework depends on the R1 service APIs and data types that are implemented. The present document handles the versions for protocol-agnostic data types used by the R1 services while the R1 service API versioning aspects are handled in R1AP [1].

# 5. Data type definitions for Data Management and Exposure services

## 5.1 Common definitions

### 5.1.1 Introduction

This clause provides common definitions applicable to multiple DME types.

### 5.1.2 Identifiers and Metadata

#### 5.1.2.1 DME type identifier

A DME type is identified by an identifier defined as dmeTypeId in R1AP [1], clause B.4.2. The DME type identifier consists of a namespace, name and a version.

#### 5.1.2.2 Data category

A DME type shall be assigned to at least one data category. Assigned data category values can be used as query parameter when searching for available DME types as specified in R1AP [1] .

### 5.1.3 Versioning of DME types

When updating a DME type, the version in the DME type identifier (see clause 5.1.2.1) is updated according to SemVer [4] to reflect its compatibility with other DME types that have the same namespace and name.

Two DME types with the same namespace and name are incompatible if the major version digit in the version is different.

Two DME types are only considered to be identical if all three of their attribute's namespace, name and version are identical.

The version in the DME type identifier includes a pre-release version (e.g., "-alpha.1") if the definition of a DME type is under development.

### 5.1.4 Schemas for DME types

#### 5.1.4.1 General

The definition of a DME type is based on two schemas, a data production schema and a data delivery schema.

#### 5.1.4.2 Data production schema

The data production schema defines the structure for how to formulate parameters for the production of data instances of a DME type by a data job or a data offer. A data production schema can be based on data types defined in other specifications.

Table 5.1.4.2-1 defines the attributes of the data production schema.

Table 5.1.4.2-1: Definition of attributes for the data production schema

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| Attribute Name | Data Type Name | P | Cardinality | Description |
| dataSelector | DataSelector | M | 1 | Selects the data to be included in the data instance to be produced. See NOTE1. |
| targetSelector | TargetSelector | M | 1 | This property selects the geographical area, or the entities, for which the data instance is to be produced. See NOTE1. |
| timing | Timing | M | 1 | This property defines the time-related parameters for the production of the data instances. See NOTE1. |
| NOTE 1: Every DME type shall define these types as part of defining the data production schema.  NOTE 2: Additional attributes may be included in a data production schema. | | | | |

</div>

#### 5.1.4.3 Data delivery schema

The data delivery schema defines the structure of the delivered content resulting from the related data job or data offer. A data delivery schema can be based on data types defined in other specifications The data delivery schema type is defined in R1AP [1].

A DME type can be defined with one or more data delivery schemas each based on different schema technologies such as for example JSON schema [6] and XSD [7], [8], [9] and [i.1].

### 5.1.5 Common data type definitions

#### 5.1.5.1 Structured Data Types

##### 5.1.5.1.1 Data type: CollectionWindow

This data type allows selecting the window for data collection and contains the attributes defined in table: 5.1.5.1.1-1.

Table 5.1.5.1.1-1: Definition of data type CollectionWindow

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| Attribute Name | Data Type | P | Cardinality | Description |
| startTime | TimeOfDay | M | 1 | This attribute specifies the start of the collection period. See clause 5.1.2.2. |
| stopTime | TimeOfDay | O | 0..1 | This attribute specifies the end of the collection period. If not provided, the time period is indefinite. See clause 5.1.2.2. |

</div>

#### 5.1.5.2 Simple data types

Table 5.1.5.2-1: Definition of simple data types

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| Type Name | Type Definition | Description | Applicability |
| GranularityPeriod | integer | Granularity period simple data type is defined in 3GPP 32.401 [13], clause 5.4.1.4. |  |
| TimeOfDay | string | String with format as defined in IETF RFC 3339 [12], clause 5.6. |  |

</div>

#### 5.1.5.3 Enumerations

##### 5.1.5.3.1 Enumeration: DataCategory

Table 5.1.5.3.1-1: Enumeration DataCategory

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| Enumeration Value | Description |
| PERFORMANCE\_MANAGEMENT\_DATA | Category for DME type definitions for performance management data. |

</div>

## 5.2 Definition of individual DME types

### 5.2.1 Introduction

This clause defines DME types.

A DME type can be registered and discovered using the DME services. Data instances of a DME type can be produced by means of a data job or data offer.

The definition of a DME type follows a template that includes but is not limited to:

1. the declaration of a DME type identifier,
2. the assignment of a data category,
3. the definition of the data types needed for the data production schema (in terms of data selector, target selector, timing and optionally further types) and the data delivery schema or schemas,
4. the definition of the data production schema and data delivery schema or schemas.

### 5.2.2 DME type: RAN OAM PM data

#### 5.2.2.1 DME type identifier

The definition of the DME type identifier is provided in clause 5.1.2.2. The DME type for RAN OAM PM data is identified as:

DmeTypeId: ORAN:RanOamPmData:1.0.0.

#### 5.2.2.2 Data category

The definition of the data category is provided in clause 5.1.2.1. The DME type for RAN OAM PM data is categorized as:

DataCategory: PERFORMANCE\_MANAGEMENT\_DATA.

#### 5.2.2.3 Data type definitions

##### 5.2.2.3.1 Structured data types

###### 5.2.2.3.1.1 Data type: DataSelector

This data type allows selecting the attributes of the data instance to be produced and contains the attributes defined in table: 5.2.2.3.1.1-1.

Table 5.2.2.3.1.1-1: Definition of data type DataSelector

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| Attribute Name | Data Type | P | Cardinality | Description |
| managementData | ManagementData | M | 1 | The definition of the managementData attribute is aligned with the definition of the ManagementData class specified in 3GPP TS 28.622 [10], clause 4.3.50 with the restriction that metrics defined in 3GPP TS 32.422 [19] are not allowed.  The managementData attribute can be used to address performance measurements, KPIs defined by 3GPP and O-RAN, as well as vendor-specific performance measurements and KPIs. Example of O-RAN defined performance measurement for RAN OAM is defined in O1 Interface Specification for O-CU-UP and O-CU-CP [17] and O1 Interface Specification for O-DU [18]. |

</div>

###### 5.2.2.3.1.2 Data type: TargetSelector

This data type allows selecting the target for which data are to be produced and contains the following attributes defined in table 5.2.2.3.1.2-1:

Table 5.2.2.3.1.2-1: Definition of data type TargetSelector

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| Attribute Name | Data Type | P | Cardinality | Description |
| nodeFilter | NodeFilter | C | 0..1 | The NodeFilter type is defined in 3GPP TS 28.622 [10], clause 4.3.49. |
| objectInstances | DnList | C | 0..1 | See clause 5.2.2.3.1.4 |
| NOTE: Presence condition "C" means one and only one of these attributes shall be present when this data type is used. | | | | |

</div>

###### 5.2.2.3.1.3 Data type: Timing

This data type allows selecting the timing for production of the data instance and contains the attributes defined in table: 5.2.2.3.1.3-1.

Table 5.2.2.3.1.3-1: Definition of data type Timing

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| Attribute Name | Data Type | P | Cardinality | Description |
| collectionWindow | CollectionWindow | M | 1 | see clause 5.2.1.3.1.4 |
| granularityPeriod | GranularityPeriod | M | 1 | see clause 5.1.4.2 |
| reportingPeriod | integer | C | 0..1 | Reporting period as defined in 3GPP TS 32.401 [13], clause 5.4.1.5. (See NOTE) |
| NOTE: For subscribe data procedure as defined in R1AP[1], clause 7.3.4.1.2.2, this attribute shall be present if the data is delivered in the form of files and shall be absent if the data is streamed. For data request procedure as defined in R1AP [1], clause 7.3.4.1.2.1 this attribute shall be absent. | | | | |

</div>

###### 5.2.2.3.1.4 Data type: DnList

This data type allows selecting list of DNs and contains the attributes defined in table: 5.2.2.3.1.4-1.

Table 5.2.2.3.1.4-1: Definition of data type DnList

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| Attribute Name | Data Type | P | Cardinality | Description |
| DnList | array(Dn) | M | 1..N | The Dn data type is defined in 3GPP TS 32.300 [15], clause 7. Example of DN in a string representation is defined in 3GPP TS 32.300 [15], clause 8. |

</div>

##### 5.2.2.3.2 Simple data types

None.

##### 5.2.2.3.3 Enumerations

None.

#### 5.2.2.4 Schemas

##### 5.2.2.4.1 Data production schema

The data production schema is based on the JSON schema.

{

"$schema": "https://json-schema.org/draft/2020-12/schema",

"description": "dataJobSchema for data subscription/data request",

"version": "v1",

"type": "object",

"properties": {

"dataSelector": {

"managementData": {"$ref": "#/definitions/ManagementData"}

},

"targetSelector": {

"oneOf": [

{

"type": "object",

"properties": {

"nodeFilter": {

"$ref": "#/definitions/NodeFilter"

}

},

"additionalProperties": false

},

{

"type": "object",

"properties": {

"objectInstances": {

"$ref": "#/definitions/DnList"

}

},

"additionalProperties": false

}

]

},

"timing": {

"type": "object",

"properties": {

"collectionWindow": {

"type": "object",

"properties": {

"startTime": {

"$ref": "#/definitions/TimeOfDay"

},

"stopTime": {

"$ref": "#/definitions/TimeOfDay"

}

},

"additionalProperties": false,

"required": [

"startTime",

"stopTime"

]

},

"granularityPeriod": {

"$ref": "#/definitions/GranularityPeriod"

},

"reportingPeriod": {

"$ref": "#/definitions/ReportingPeriod"

}

},

"additionalProperties": false,

"required": [

"collectionWindow",

"granularityPeriod"

]

}

},

"required": [

"dataSelector",

"targetSelector"

],

"definitions": {

"ManagementData": {

"oneOf": [

{

"type": "object",

"properties": {

"mgtDataCategory": {

"type": "string"

}

},

"additionalProperties": false,

"required": [

"mgtDataCategory"

]

},

{

"type": "object",

"properties": {

"mgtDataName": {

"type": "array"

}

},

"additionalProperties": false,

"required": [

"mgtDataName"

]

}

]

},

"NodeFilter": {

"type": "array",

"properties": {

"areaOfInterest": {

"$ref": "#/definitions/AreaOfInterest"

},

"networkDomain": {

"$ref": "#/definitions/NetworkDomain"

},

"cPuPType": {

"$ref": "#/definitions/CPuPType"

},

"sst": {

"$ref": "#/definitions/Sst"

}

},

"additionalProperties": false

},

"DnList": {

"type": "array",

"minItems": 1,

"items": {

"$ref": "#/definitions/Dn"

}

},

"Dn": {

"type": "string"

},

"AreaOfInterest": {

"oneOf": [

{

"type": "object",

"properties": {

"geoAreaToCellMapping": {

"$ref": "#/definitions/GeoAreaToCellMapping"

}

},

"addtionalProperties": false,

"required": [

"geoAreaToCellMapping"

]

},

{

"type": "object",

"properties": {

"taiList": {

"type": "array",

"item": {

"$ref": "#/definitions/Tai"

},

"minItems": 1,

"maxItems": 8

}

},

"addtionalProperties": false,

"required": [

"taiList"

]

},

{

"type": "object",

"properties": {

"nrCellIdList": {

"type": "array",

"items": {

"$ref": "#/definitions/NrCellIdList"

},

"minItems": 1,

"maxItems": 32

}

},

"addtionalProperties": false,

"required": [

"nrCellIdList"

]

},

{

"type": "object",

"properties": {

"eutraCellIdList": {

"type": "array",

"items": {

"$ref": "#/definitions/E-UTRACGI"

},

"minItems": 1,

"maxItems": 32

}

},

"addtionalProperties": false,

"required": [

"eutraCellIdList"

]

}

]

},

"NetworkDomain": {

"type": "string",

"enum": [

"RAN",

"CN"

]

},

"CPuPType": {

"type": "string",

"enum": [

"CU",

"UP"

]

},

"Sst": {

"type": "integer"

},

"GranularityPeriod": {

"type": "integer"

},

"ReportingPeriod": {

"type": "integer"

},

"GeoAreaToCellMapping": {

"type": "object",

"properties": {

"convexGeoPolygon": {

"type": "array",

"items": {

"$ref": "#/definitions/GeoCoordinate"

},

"minItems": 3

},

"associationThreshold": {

"type": "integer"

}

},

"additionalProperties": false,

"required": [

"convexGeoPolygon"

]

},

"GeoCoordinate": {

"type": "object",

"properties": {

"latitude": {

"type": "number"

},

"longitude": {

"type": "number"

}

},

"addtionalProperties": false,

"required": [

"latitude",

"longitude"

]

},

"Tai": {

"type": "object",

"properties": {

"mcc": {

"type": "integer"

},

"mnc": {

"type": "integer"

},

"tac": {

"type": "integer"

}

},

"additionalProperties": false,

"required": [

"mcc",

"mnc",

"tac"

]

},

"NrCellIdList": {

"oneOf": [

{

"type": "object",

"properties": {

"nrCGI": {

"$ref": "#/definitions/NRCGI"

}

},

"additionalProperties": false,

"required": [

"nrCGI"

]

},

{

"type": "object",

"properties": {

"e-utraCGI": {

"$ref": "#/definitions/E-UTRACGI"

}

},

"additionalProperties": false,

"required": [

"e-utraCGI"

]

}

]

},

"NRCGI": {

"type": "object",

"properties": {

"plmnIdentity": {

"type": "string",

"format": "base64"

},

"nrCellIdentity": {

"type": "string",

"format": "base32"

}

},

"addtionalProperties": false,

"required": [

"plmnIdentity",

"nrCellIdentity"

]

},

"E-UTRACGI": {

"type": "object",

"properties": {

"plmnIdentity": {

"type": "string",

"format": "base64"

},

"e-utraCellIdentity": {

"type": "string",

"format": "base32"

}

},

"addtionalProperties": false,

"required": [

"plmnIdentity",

"e-utraCellIdentity"

]

},

"TimeOfDay": {

"type": "string",

"Description": "String with format as defined in clause 5.6 of IETF RFC 3339. Examples, 20:15:00, 20:15:00-08:00 (for 8 hours behind UTC)."

}

}

}

##### 5.2.2.4.2 Data delivery schemas

###### 5.2.2.4.2.1 Data delivery schema# 1

This data delivery schema is based on the XML schema and is defined in 3GPP TS 28.532 [11], clause 12.3.2.4.

### 5.2.3 DME type: RAN OAM Trace Metrics

#### 5.2.3.1 DME type identifier

The definition of the DME type identifier is provided in clause 5.1.2.2. The DME type for RAN OAM TraceMetrics is identified as:

DmeTypeId: ORAN:RanOamTraceMetrics:1.0.0.

#### 5.2.3.2 Data category

The definition of the data category is provided in clause 5.1.2.1. The DME type for RAN OAM TraceMetrics is categorized as:

DataCategory: RAN\_OAM\_TRACE\_METRICS \_DATA.

#### 5.2.3.3 Data type definitions

##### 5.2.3.3.1 Structured data types

###### 5.2.3.3.1.1 Data type: DataSelector

This data type allows selecting the attributes of the data instance to be produced and contains the attributes defined in table: 5.2.3.3.1.1-1.

Table 5.2.3.3.1.1-1: Definition of data type DataSelector

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| Attribute Name | Data Type | P | Cardinality | Description |
| supportedTraceMetrics | String | M | 1 | The list of trace metrics as specified in clause 4.4.1 3GPP TS 28.622 [10] |

</div>

###### 5.2.3.3.1.2 Data type: TargetSelector

This data type allows selecting the target for which data are to be produced and contains the following attributes defined in table 5.2.3.3.1.2-1:

Table 5.2.3.3.1.2-1: Definition of data type TargetSelector

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| Attribute Name | Data Type | P | Cardinality | Description |
| nodeFilter | NodeFilter | C | 0..1 | The NodeFilter type is defined in 3GPP TS 28.622 [10], clause 4.3.49. |
| objectInstances | DnList | C | 0..1 | See clause 5.2. 3.3.1.4 |
| NOTE: Presence condition "C" means one and only one of these attributes shall be present when this data type is used. | | | | |

</div>

###### 5.2.3.3.1.3 Data type: Timing

This data type allows selecting the timing for production of the data instance and contains the attributes defined in table: 5.2.3.3.1.3-1.

Table 5.2.3.3.1.3-1: Definition of data type Timing

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| Attribute Name | Data Type | P | Cardinality | Description |
| collectionWindow | CollectionWindow | M | 1 | see clause 5.2.1.3.1.4 |
| granularityPeriod | GranularityPeriod | M | 1 | see clause 5.1.4.2 |
| reportingPeriod | integer | C | 0..1 | Reporting period as defined in 3GPP TS 32.401 [13], clause 5.4.1.5. (See NOTE) |
| NOTE: For subscribe data procedure as defined in R1AP[1], clause 7.3.4.1.2.2, this attribute shall be present if the data is delivered in the form of files and shall be absent if the data is streamed. For data request procedure as defined in R1AP [1], clause 7.3.4.1.2.1 this attribute shall be absent. | | | | |

</div>

###### 5.2.3.3.1.4 Data type: DnList

This data type allows selecting list of DNs and contains the attributes defined in table: 5.2.3.3.1.4-1.

Table 5.2.3.3.1.4-1: Definition of data type DnList

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| Attribute Name | Data Type | P | Cardinality | Description |
| DnList | array(Dn) | M | 1..N | The Dn data type is defined in 3GPP TS 32.300 [15], clause 7. Example of DN in a string representation is defined in 3GPP TS 32.300 [15], clause 8. |

</div>

##### 5.2.3.3.2 Simple data types

None.

##### 5.2.3.3.3 Enumerations

None.

#### 5.2.3.4 Schemas

##### 5.2.3.4.1 Data production schema

NOTE: The Data production schema is not specified in present specification

##### 5.2.3.4.2 Data delivery schemas

###### 5.2.3.4.2.1 Data delivery schema# 1

This data delivery schema for streaming trace is based on the Trace record schema and is defined in 3GPP TS 32.423 [20], clause 5.2.

Annex (informative):
Change history/Change request (history)

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| Date | Revision | Description |
| 2024-11-21 | 04.00 | Published the final version by adding a new DME type for RAN OAM Trace Metrics |
| 2024-07-11 | 03.00 | Published the final version by refactoring the DME type definitions. |
| 2024-03-18 | 02.00 | Published the final version by removing the alpha for RanOamPmData and adding the Data Production schema table |
| 2023-11-20 | 01.00 | Published the final version with a DME data type |

</div>
---

- View in [GitHub Mode]({{site.github_page_url}}/O-RAN.WG2.TS.R1TD-R004-v04.00.docx.md).
- Go back to [Table of Contents]({{site.baseurl}}/).
- Download the [Original Document]({{site.download_url}}/O-RAN.WG2.TS.R1TD-R004-v04.00.docx).

---

* toc
{:toc}
