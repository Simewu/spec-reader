## O-RAN.WG3.Y1TD-R004-v02.00.docx

- View in [Reader Mode](https://simewu.com/spec-reader/pages/09-WG3/O-RAN.WG3.Y1TD-R004-v02.00.docx).
- Go back to [Table of Contents](../README.md).
- Download the [Original Document](https://github.com/Simewu/spec-reader/raw/refs/heads/main/documents/O-RAN.WG3.Y1TD-R004-v02.00.docx).

---

|  |
| --- |
| ![webwxgetmsgimg (7).jpeg](../assets/images/bea03973c631.jpg) |

|  |
| --- |
| Technical Specification |
|  |

|  |
| --- |
| O-RAN Work Group 3 (Near-Real-time RAN Intelligent Controller and E2 Interface)  Y1 interface: Type Definitions |

|  |
| --- |
|  |
| Copyright (C) 2024 by the O-RAN ALLIANCE e.V.  The copying or incorporation into any other work of part or all of the material available in this specification in any form without the prior written permission of O-RAN ALLIANCE e.V. is prohibited, save that you may print or download extracts of the material of this specification for your personal use, or copy the material of this specification for the purpose of sending to individual third parties for their information provided that you acknowledge O-RAN ALLIANCE as the source of the material and that you inform the third party that these conditions apply to them and that they must comply with them.  O-RAN ALLIANCE e.V., Buschkauler Weg 27, 53347 Alfter, Germany  Register of Associations, Bonn VR 11238, VAT ID DE321720189 |

Contents

Foreword 3

Modal verbs terminology 3

1 Scope 4

2 References 4

2.1 Normative references 4

2.2 Informative references 4

3 Definition of terms, symbols and abbreviations 5

3.1 Terms 5

3.2 Symbols 5

3.3 Abbreviations 5

4 General 5

4.1 Introduction 5

5 Basic data types 5

5.1 Introduction 5

5.2 Structured data types 6

5.2.1 Introduction 6

5.2.2 Type UeId 6

5.2.3 Type Distribution 6

5.3 Simple data types and enumerations 6

5.3.1 Introduction 6

5.3.2 Simple data types 7

6 RAI specific data types 7

6.1 Introduction 7

6.2 RAI type: RAN performance analytics 7

6.2.1 Introduction 7

6.2.2 Data model 7

6.2.2.1 Introduction 7

6.2.2.2 Structured data types 8

6.2.2.2.1 Introduction 8

6.2.2.2.2 Type FilterParameters 8

6.2.2.2.3 Type RaiContents 9

6.2.2.2.4 Type TargetEntity 11

6.2.2.2.5 Type NotificationTriggerEvent 12

6.2.2.2.6 Type BinRange 12

6.2.2.3 Simple data types and enumerations 12

6.2.2.3.1 Introduction 12

6.2.2.3.2 Simple data types 12

6.2.2.3.3 Enumeration: AnalyticsAttributeName 12

Annex A (normative): OpenAPI specification 13

A.1 General 13

A.2 RAN performance analytics 13

Annex (informative): Change History 17

# Foreword

This Technical Specification (TS) has been produced by WG3 of the O-RAN Alliance.

The content of the present document is subject to continuing work within O-RAN and may change following formal O-RAN approval. Should the O-RAN Alliance modify the contents of the present document, it will be re-released by O-RAN with an identifying change of version date and an increase in version number as follows:

version xx.yy.zz

where:

xx: the first digit-group is incremented for all changes of substance, i.e. technical enhancements, corrections, updates, etc. (the initial approved document will have xx=01). Always 2 digits with leading zero if needed.

yy: the second digit-group is incremented when editorial only changes have been incorporated in the document. Always 2 digits with leading zero if needed.

zz: the third digit-group included only in working versions of the document indicating incremental changes during the editing process. External versions never include the third digit-group. Always 2 digits with leading zero if needed.

# Modal verbs terminology

In the present document "**shall**", "**shall not**", "**should**", "**should not**", "**may**", "**need not**", "**will**", "**will not**", "**can**" and "**cannot**" are to be interpreted as described in clause 3.2 of the O-RAN Drafting Rules (Verbal forms for the expression of provisions).

"**must**" and "**must not**" are **NOT** allowed in O-RAN deliverables except when used in direct citation.

# 1 Scope

The present document specifies the stage 3 definition of data types that are applicable in the Y1 interface.

# 2 References

## 2.1 Normative references

References are either specific (identified by date of publication and/or edition number or version number) or non-specific. For specific references, only the cited version applies. For non-specific references, the latest version of the referenced document (including any amendments) applies.

NOTE 1: While any hyperlinks included in this clause were valid at the time of publication, O-RAN cannot guarantee their long-term validity.

NOTE 2: In the case of a reference to a 3GPP document (including a GSM document), a non-specific reference implicitly refers to the latest version of that document in 3GPP Release 17.

The following referenced documents are necessary for the application of the present document.

[1] O-RAN.WG3.Y1GAP, "Y1 interface: General Aspects and Principles".

[2] O-RAN.WG3.Y1AP, "Y1 interface: Application Protocol".

[3] 3GPP TS 38.314: "NG Application Protocol (NGAP)".

[4] 3GPP TS 29.571: "5G System; Common Data Types for Service Based Interfaces; Stage 3".

[5] 3GPP TS 28.552: "Management and orchestration; 5G performance measurements".

[6] O-RAN.WG3.E2SM, "E2 Service Model (E2SM); KPM".

[7] 3GPP TS 38.314: "NR; Layer 2 Measurements".

[8] OpenAPI, "OpenAPI 3.1.0 Specification", <https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.1.0.md>.

[9] O-RAN.WG1.OAD, "O-RAN Architecture Description".

## 2.2 Informative references

References are either specific (identified by date of publication and/or edition number or version number) or non-specific. For specific references, only the cited version applies. For non-specific references, the latest version of the referenced document (including any amendments) applies.

NOTE 1: While any hyperlinks included in this clause were valid at the time of publication, O-RAN cannot guarantee their long-term validity.

NOTE 2: In the case of a reference to a 3GPP document (including a GSM document), a non-specific reference implicitly refers to the latest version of that document in 3GPP Release 17.

The following referenced documents are not necessary for the application of the present document, but they assist the user with regard to a particular subject area.

[i.1] 3GPP TR 21.905: "Vocabulary for 3GPP Specifications".

# 3 Definition of terms, symbols and abbreviations

## 3.1 Terms

For the purposes of the present document, the terms given in 3GPP TR 21.905 [i.1], O-RAN.WG1.OAD [9], O-RAN.WG3.Y1GAP [1] and O-RAN.WG3.Y1AP [2] apply.

## 3.2 Symbols

For the purposes of the present document, the symbols given in 3GPP TR 21.905 [i.1], O-RAN.WG1.OAD [9], O-RAN.WG3.Y1GAP [1] and O-RAN.WG3.Y1AP [2] apply.

## 3.3 Abbreviations

For the purposes of the present document, the abbreviations given in 3GPP TR 21.905 [i.1], O-RAN.WG1.OAD [9], O-RAN.WG3.Y1GAP [1] and O-RAN.WG3.Y1AP [2] apply.

# 4 General

## 4.1 Introduction

The data types defined in this document are classified into the following groups:

- Basic data types for generic usage;

- Data types for RAI.

# 5 Basic data types

## 5.1 Introduction

This clause defines the basic data types for generic usage.

Table 5.1-1 summarizes the basic data types defined in this specification.

Table 5.1-1: Basic data types defined in this specification

|  |  |  |  |
| --- | --- | --- | --- |
| Type Name | Clause | Description | Applicability |
| PacketDelay | 5.3.2 | Represents the packet delay. |  |
| PacketLossRate | 5.3.2 | Represents the packet loss rate. |  |
| UeId | 5.2.2 | Identifies a single UE on the Y1 interface. |  |

Table 5.1-2 summarizes the basic data types re-used from other specifications.

Table 5.1-2: Reused basic data types

|  |  |  |  |
| --- | --- | --- | --- |
| Data type | Reference | Comments | Applicability |
| AmfUeNgapId | 3GPP TS 38.413 [3] | AMF UE NGAP ID. |  |
| BitRate | 3GPP TS 29.571 [4] | Bit rate. |  |
| Guami | 3GPP TS 29.571 [4] | Globally Unique AMF ID. |  |
| Snssai | 3GPP TS 29.571 [4] | S-NSSAI. |  |

## 5.2 Structured data types

### 5.2.1 Introduction

This clause defines the structured data types.

### 5.2.2 Type UeId

Table 5.2.2-1: Definition of type UeId

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| Attribute name | Data type | P | Cardinality | Description | Applicability |
| amfUeNgapId | AmfUeNgapId | O | 0..1 | AMF UE NGAP ID.  (NOTE 1) |  |
| guami | GuamI | C | 0..1 | Identify the AMF associated with the AMF UE NGAP ID.  Shall be present if "amfUeNgapId" attribute is present. |  |
| NOTE 1: In the present document, the "amfUeNgapId" attribute shall be present as no other UE ID has been defined. | | | | | |

### 5.2.3 Type Distribution

Table 5.2.3-1: Definition of type Distribution

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| Type Name | Data type | P | Cardinality | Description | Applicability |
| distribution | array(integer) | M | 1..N | This attribute represents the frequency distribution. The array corresponds to the bins of the distribution in ascending order, with each element containing the frequency for each bin. |  |

## 5.3 Simple data types and enumerations

### 5.3.1 Introduction

This clause defines the simple data types and the enumerations.

### 5.3.2 Simple data types

Table 5.3.2-1: Simple Data Types

|  |  |  |
| --- | --- | --- |
| Type Name | Type Definition | Description |
| PacketDelay | integer | Unsigned integer indicating the packet delay as defined in [3], in units of milliseconds. |
| PacketLossRate | integer | Unsigned integer indicating packet loss rate as defined in [3], in units of tenth of percent.  Minimum = 0. Maximum = 1000. |

# 6 RAI specific data types

## 6.1 Introduction

The data types for RAI are defined per RAI type as specified in clause 6.2 of [1]. Such data types shall be processed according to the RAI type ID and associated RAI type version in the application protocol messages [2].

The RAI types and associated RAI type versions defined in this document are summarized in Table 6.1-1.

Table 6.1-: RAI types and versions

|  |  |  |  |
| --- | --- | --- | --- |
| RAI Type ID | Clause | Version | Supported solution sets |
| RAN performance analytics | 6.2 | 1.1.0 | JSON |

Table 6.1-2 summarizes the data types defined per RAI type.

Table 6.1-2: RAI type specific data types

|  |  |  |
| --- | --- | --- |
| Data type | Description | Reference |
| RaiTypeId | Indicates the RAI type. |  |
| RaiTypeVersion | Indicates the version of the RAI type. |  |
| FilterParameters | Describes the filter(s) used for the RAI contents. |  |
| RaiContents | Contains the actual RAI. |  |
| TargetEntity | Contains information used to identify a target entity with which the RAI is associated. |  |
| NotificationTriggerEvent | Describes the event that triggers RAI notifications. |  |

## 6.2 RAI type: RAN performance analytics

### 6.2.1 Introduction

This RAI type provides analytics about RAN performance including UE throughput, packet delay, packet loss rate.

The RAI type ID is "RAN performance analytics".

In the present document, the version of the RAI type is "1.1.0".

### 6.2.2 Data model

#### 6.2.2.1 Introduction

The data types dedicated for RAI type "RAN performance analytics" are specified in the following clauses.

#### 6.2.2.2 Structured data types

##### 6.2.2.2.1 Introduction

This clause defines the structured data types for RAI type "RAN performance analytics".

##### 6.2.2.2.2 Type FilterParameters

Table 6.2.2.2.2-1: Definition of type FilterParameters

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| Attribute name | Data type | P | Cardinality | Description | Applicability |
| analyticsSubsetFilters | array(AnalyticsAttributeName) | O | 1..N | Indicates the subset of attributes in the RAI contents to be reported. |  |
| binRangeList | array(BinRange) | O | 1..N | Indicates the list of bin ranges in ascending order used to generate the distribution for RAI contents. |  |

##### 6.2.2.2.3 Type RaiContents

Table 6.2.2.2.3-1: Definition of type RaiContents

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| Attribute name | Data type | P | Cardinality | Description | Applicability |
| avgRlcThroughputDl | BitRate | O | 0..1 | The average downlink RLC throughput is defined as the DL Transmitted Data Volume (clause 7.10.1 of [6]) divided by the duration of the validity period, for a specific target entity.  (NOTE 1) |  |
| avgRlcThroughputUl | BitRate | O | 0..1 | The average uplink RLC throughput is defined as the UL Transmitted Data Volume (clause 7.10.2 of [6]) divided by the duration of the validity period, for a specific target entity.  (NOTE 1) |  |
| avgPacketDelayDl | PacketDelay | O | 0..1 | The average downlink packet delay is an overall downlink packet delay in RAN that takes into account the packet delay in the CU-CP (clause 5.1.3.3.1 of [5]), on the F1-U interface (clause 5.1.3.3.2 of [5]), in the DU (clause 5.1.3.3.3 of [5]) and on the air interface (clause 5.1.1.1.1 of [5]), for a specific target entity according to the the conversion rule in clause 7.9.0 of [6]. |  |
| avgPacketDelayUl | PacketDelay | O | 0..1 | The average uplink packet delay is an overall uplink packet delay in RAN that takes into account the packet delay in the CU-CP (clause 5.1.1.1.5 of [5]), in the DU (clause 5.1.1.1.4 of [5]) and on the air interface (clause 5.1.1.1.3 of [5]), for a specific target entity according to the the conversion rule in clause 7.9.0 of [6].  (NOTE 2) |  |
| avgPacketLossRateDl | PacketLossRate | O | 0..1 | The average downlink packet loss rate is the overall downlink packet loss rate in RAN that takes into account the packet loss in the CU-CP (clause 5.1.3.2.1 of [5]), on the F1-U interface (clause 5.1.3.1.3 of [5]), in the DU (clause 5.1.3.2.2 of [5]) and on the air interface (clause 4.2.1.5.1 of [7]) during the validity period, for a specific target entity according to the the conversion rule in clause 7.9.0 of [6]. |  |
| avgPacketLossRateUl | PacketLossRate | O | 0..1 | The average uplink packet loss rate is defined as the UL PDCP SDU Loss Rate (clause 5.1.3.1.1 of [5]) during the validity period, for a specific target entity according to the the conversion rule in clause 7.9.0 of [6]. |  |
| distPacketDelayDl | Distribution | O | 0..1 | The distribution of DL packet delay between NG-RAN and UE, which is the delay incurred in NG-RAN (including the delay at gNB-CU-UP, on F1-U and on gNB-DU) and the delay over Uu interface (clause 5.1.1.1.6 of [5]), for a specific target entity according to the conversion rule in clause 7.9.0 of [6]. The unit for the bin ranges of the distribution is milliseconds. |  |
| distPacketDelayUl | Distribution | O | 0..1 | The distribution of UL packet delay between NG-RAN and UE, which includes the delay occurred in NG-RAN (including the delay at gNB-CU-UP, on F1-U and on gNB-DU) and the delay over Uu interface (excluding the D1 UL PDCP delay occurred in the UE) (clause 5.1.1.1.7.1 of [5]), for a specific target entity according to the conversion rule in clause 7.9.0 of [6]. The unit for the bin ranges of the distribution is milliseconds. |  |
| NOTE 1: Different from the measurements in clause 5.1.1.3.1/5.1.1.3.3 of [5], the downlink/uplink average RLC throughput is calculated regardless of data bursts that require one or multiple slots.  NOTE 2: In the present document, the average uplink packet delay does not include the packet delay on the F1-U interface, which is not yet defined. | | | | | |

##### 6.2.2.2.4 Type TargetEntity

Table 6.2.2.2.4-1: Definition of type TargetEntity

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| Attribute name | Data type | P | Cardinality | Description | Applicability |
| ueId | UeId | O | 1 | Indicates a specific UE.  (NOTE 1) |  |
| snssai | Snssai | O | 1 | Indicate the S-NSSAI. |  |

In the present document, the allowed combinations of attributes are:

- ueId: the analytics are on a per-UE basis;

- ueId and snssai: the analytics are on a per-UE-per-slice basis.

##### 6.2.2.2.5 Type NotificationTriggerEvent

Table 6.2.2.2.5-1: Definition of type NotificationTriggerEvent

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| Attribute name | Data type | P | Cardinality | Description | Applicability |
| n/a |  |  |  | (NOTE 1) |  |
| NOTE 1: In the present document, no notification trigger event has been defined for this RAI type. | | | | | |

##### 6.2.2.2.6 Type BinRange

Table 6.2.2.2.6-2: Definition of type BinRange

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| Attribute name | Data type | P | Cardinality | Description | Applicability |
| startValue | integer | M | 1 | Indicates the start value of the bin, which corresponds to "Start Value" in clause 8.3.26 of [6]. |  |
| endValue | integer | M | 1 | Indicates the end value of the bin, which corresponds to "End Value" in clause 8.3.26 of [6]. |  |

#### 6.2.2.3 Simple data types and enumerations

##### 6.2.2.3.1 Introduction

This clause defines the simple data types and enumerations for RAI type "RAN performance analytics".

##### 6.2.2.3.2 Simple data types

Table 6.2.2.3.2-1: Simple Data Types

|  |  |  |
| --- | --- | --- |
| Type Name | Type Definition | Description |
| n/a |  |  |

##### 6.2.2.3.3 Enumeration: AnalyticsAttributeName

Table 6.2.2.3.3-1: Enumeration AnalyticsAttributeName

|  |  |  |
| --- | --- | --- |
| Enumeration value | Description | Applicability |
| AVG\_RLC\_THROUGHPUT\_DL | The "avgRlcThroughputDl" attribute for RAI type "RAN performance analytics". |  |
| AVG\_RLC\_THROUGHPUT\_UL | The "avgRlcThroughputUl" attribute for RAI type "RAN performance analytics". |  |
| AVG\_PACKET\_DELAY\_DL | The "avgPacketDelayDl" attribute for RAI type "RAN performance analytics". |  |
| AVG\_PACKET\_DELAY\_UL | The "avgPacketDelayUl" attribute for RAI type "RAN performance analytics". |  |
| AVG\_PACKET\_LOSS\_RATE\_DL | The "avgPacketLossRateDl" attribute for RAI type "RAN performance analytics". |  |
| AVG\_PACKET\_LOSS\_RATE\_UL | The "avgPacketLossRateUl" attribute for RAI type "RAN performance analytics". |  |
| DIST\_PACKET\_DELAY\_DL | The " distPacketDelayDl" attribute for RAI type "RAN performance analytics". |  |
| DIST\_PACKET\_DELAY\_UL | The " distPacketDelayUl" attribute for RAI type "RAN performance analytics". |  |

Annex A (normative):
OpenAPI specification

## A.1 General

This Annex specifies the formal definition of the Y1 data types in this document. It consists of OpenAPI documents in YAML format that are based on the OpenAPI Specification [8].

## A.2 RAN performance analytics

openapi: 3.1.0

info:

title: Y1 RAI Type RAN performance analytics

description: |

Y1 data types for RAI Type "RAN performance analytics".

(C) 2023, O-RAN ALLIANCE

All rights reserved.

version: "1.1.0"

externalDocs:

description: O-RAN.WG3.Y1TD-v01.00

url: https://www.o-ran.org/specifications

paths: {}

components:

schemas:

FilterParameters:

type: object

description: Describes the filter(s) used for the RAI contents.

properties:

analyticsSubsetFilters:

type: array

description: Indicates the subset of attributes in the RAI contents to be reported.

items:

$ref: '#/components/schemas/AnalyticsAttributeName'

binRangeList:

type: array

description: Indicates the list of bin ranges in ascending order used to generate the distribution for RAI contents.

items:

$ref: '#/components/schemas/BinRange'

AnalyticsAttributeName:

type: string

enum:

- AVG\_RLC\_THROUGHPUT\_DL

- AVG\_RLC\_THROUGHPUT\_UL

- AVG\_PACKET\_DELAY\_DL

- AVG\_PACKET\_DELAY\_UL

- AVG\_PACKET\_LOSS\_RATE\_DL

- AVG\_PACKET\_LOSS\_RATE\_UL

- DIST\_PACKET\_DELAY\_DL

- DIST\_PACKET\_DELAY\_UL

description: Indicates an attribute in the RAI contents.

RaiContents:

type: object

description: Contains the actual RAI contents.

properties:

avgRlcThroughputDl:

$ref: '#/components/schemas/BitRate'

description: Indicates the average downlink RLC throughput as described in clause 6.2.2.2.3 of O-RAN.WG3.Y1TD.

avgRlcThroughputUl:

$ref: '#/components/schemas/BitRate'

description: Indicates the average uplink RLC throughput as described in clause 6.2.2.2.3 of O-RAN.WG3.Y1TD.

avgPacketDelayDl:

$ref: '#/components/schemas/PacketDelay'

description: Indicates the averagedownlink packet delay as described in clause 6.2.2.2.3 of O-RAN.WG3.Y1TD.

avgPacketDelayUl:

$ref: '#/components/schemas/PacketDelay'

description: Indicates the averageuplink packet delay as described in clause 6.2.2.2.3 of O-RAN.WG3.Y1TD.

avgPacketLossRateDl:

$ref: '#/components/schemas/PacketLossRate'

description: Indicates the averagedownlink packet loss rate in the air interface as described in clause 6.2.2.2.3 of O-RAN.WG3.Y1TD.

avgPacketLossRateUl:

$ref: '#/components/schemas/PacketLossRate'

description: Indicates the average uplink packet loss rate as described in clause 6.2.2.2.3 of O-RAN.WG3.Y1TD.

distPacketDelayDl:

$ref: '#/components/schemas/Distribution'

description: Indicates the distribution of downlink packet delay as described in clause 6.2.2.2.3 of O-RAN.WG3.Y1TD.

distPacketDelayUl:

$ref: '#/components/schemas/Distribution'

description: Indicates the distribution of uplink packet delay as described in clause 6.2.2.2.3 of O-RAN.WG3.Y1TD.

NotificationTriggerEvent:

type: object

description: Contains the event that triggers RAI notifications.

BitRate:

type: string

pattern: '^\d+(\.\d+)? (bps|Kbps|Mbps|Gbps|Tbps)$'

description: >

String representing a bit rate prefixes follow the standard symbols from The International

System of Units, and represent x1000 multipliers, with the exception that prefix "K" is

used to represent the standard symbol "k".

PacketDelay:

type: integer

minimum: 1

description: Unsigned integer indicating packet delay expressed in milliseconds.

PacketLossRate:

type: integer

minimum: 0

maximum: 1000

description: Unsigned integer indicating packet loss rate expressed in tenth of percent.

TargetEntity:

type: object

description: Contains information used to identify a target entity with which the RAI is associated.

properties:

ueId:

$ref: '#/components/schemas/UeId'

snssai:

$ref: '#/components/schemas/Snssai'

UeId:

type: object

description: Indicates a specific UE.

properties:

amfUeNgapId:

$ref: '#/components/schemas/AmfUeNgapId'

guami:

$ref: '#/components/schemas/Guami'

AmfUeNgapId:

type: integer

description: The AMF UE NGAP ID.

minimum: 0

maximum: 1099511627775

Guami:

type: object

properties:

plmnId:

$ref: '#/components/schemas/PlmnIdNid'

amfId:

$ref: '#/components/schemas/AmfId'

required:

- plmnId

- amfId

description: Globally Unique AMF Identifier constructed out of PLMN, Network and AMF identity.

PlmnIdNid:

type: object

properties:

mcc:

$ref: '#/components/schemas/Mcc'

mnc:

$ref: '#/components/schemas/Mnc'

nid:

$ref: '#/components/schemas/Nid'

required:

- mcc

- mnc

description: Contains the serving core network operator PLMN ID and, for an SNPN, the NID that together with the PLMN ID identifies the SNPN.

Mcc:

type: string

pattern: '^\d{3}$'

description: Mobile Country Code part of the PLMN, comprising 3 digits, as defined in clause 9.3.3.5 of 3GPP TS 38.413.

Mnc:

type: string

pattern: '^\d{2,3}$'

description: Mobile Network Code part of the PLMN, comprising 2 or 3 digits, as defined in clause 9.3.3.5 of 3GPP TS 38.413.

Nid:

type: string

pattern: '^[A-Fa-f0-9]{11}$'

description: This represents the Network Identifier, which together with a PLMN ID is used to identify an SNPN (see 3GPP TS 23.003 and 3GPP TS 23.501 clause 5.30.2.1).

AmfId:

type: string

pattern: '^[A-Fa-f0-9]{6}$'

description: >

String identifying the AMF ID composed of AMF Region ID (8 bits), AMF Set ID (10 bits)

and AMF Pointer (6 bits) as specified in clause 2.10.1 of 3GPP TS 23.003. It is encoded

as a string of 6 hexadecimal characters (i.e., 24 bits).

Snssai:

type: object

description: When Snssai needs to be converted to string (e.g. when used in maps as key), the string shall be composed of one to three digits "sst" optionally followed by "-" and 6 hexadecimal digits "sd".

properties:

sst:

type: integer

minimum: 0

maximum: 255

description: >

Unsigned integer, within the range 0 to 255, representing the Slice/Service Type.

It indicates the expected Network Slice behaviour in terms of features and services.

Values 0 to 127 correspond to the standardized SST range. Values 128 to 255 correspond

to the Operator-specific range. See clause 28.4.2 of 3GPP TS 23.003.

Standardized values are defined in clause 5.15.2.2 of 3GPP TS 23.501.

sd:

type: string

pattern: '^[A-Fa-f0-9]{6}$'

description: >

3-octet string, representing the Slice Differentiator, in hexadecimal representation.

Each character in the string shall take a value of "0" to "9", "a" to "f" or "A" to "F"

and shall represent 4 bits. The most significant character representing the 4 most

significant bits of the SD shall appear first in the string, and the character

representing the 4 least significant bit of the SD shall appear last in the string.

This is an optional parameter that complements the Slice/Service type(s) to allow

to differentiate amongst multiple Network Slices of the same Slice/Service type.

This IE shall be absent if no SD value is associated with the SST.

required:

- sst

Distribution:

type: array

description: Indicates the frequency distribution. The array corresponds to the bins of the distribution in ascending order, with each element containing the frequency for each bin.

items:

type: integer

BinRange:

type: object

description: Indicates the value range of a bin of the distribution.

properties:

startValue:

type: integer

description: Indicates the start value of the bin, which corresponds to "Start Value" defined in clause 8.3.26 of E2SM KPM.

endValue:

type: integer

description: Indicates the end value of the bin, which corresponds to "End Value" defined in clause 8.3.26 of E2SM KPM.

Annex (informative):
Change History

|  |  |  |
| --- | --- | --- |
| Date | Revision | Description |
| 2023.09.04 | 00.00.01 | Create the skeleton. |
| 2023.10.24 | 00.00.02 | Implemented  [CMCC-2023.09.26-WG3-CR-0002-Y1TD-Basic contents for Y1TD-v02.docx](https://oranalliance.atlassian.net/wiki/download/attachments/2959573038/CMCC-2023.09.26-WG3-CR-0002-Y1TD-Basic%20contents%20for%20Y1TD-v02.docx?api=v2)  and editorial changes. |
| 2023.11.17 | 00.00.03 | Editorial changes according to the review comments during WG3 poll. |
| 2023.11.18 | 01.00 | Version incremented for publication. |
| 2024.07.08 | 01.00.01 | Implemented  [KDDI-2024.02.15-WG3-CR-0002-Y1TD-Enhancement for delay attributes-v02.docx](https://oranalliance.atlassian.net/wiki/download/attachments/3032121689/KDDI-2024.02.15-WG3-CR-0002-Y1TD-Enhancement%20for%20delay%20attributes-v02.docx?api=v2)  [KDDI-2024.02.15-WG3-CR-0004-Y1TD-Adding attributes for setting bin ranges for distribution-v02.docx](https://oranalliance.atlassian.net/wiki/download/attachments/3032121689/KDDI-2024.02.15-WG3-CR-0004-Y1TD-Adding%20attributes%20for%20setting%20bin%20ranges%20for%20distribution-v02.docx?api=v2)  [CMCC-2024.05.27-WG3-CR-0003-Y1TD-Editorial corrections for ODR alignment-v03.docx](https://oranalliance.atlassian.net/wiki/download/attachments/3032121689/CMCC-2024.05.27-WG3-CR-0003-Y1TD-Editorial%20corrections%20for%20ODR%20alignment-v03.docx?api=v2)  and editorial changes. |
| 2024.07.22 | 01.00.02 | Editorial changes according to the review comments during WG3 poll. |
| 2024.07.26 | 01.00.03 | Incremented OpenAPI code version to 1.1.0. |
| 2024.07.26 | 02.00 | Version incremented for TSC. |
---

- View in [Reader Mode](https://simewu.com/spec-reader/pages/09-WG3/O-RAN.WG3.Y1TD-R004-v02.00.docx).
- Go back to [Table of Contents](../README.md).
- Download the [Original Document](https://github.com/Simewu/spec-reader/raw/refs/heads/main/documents/O-RAN.WG3.Y1TD-R004-v02.00.docx).
