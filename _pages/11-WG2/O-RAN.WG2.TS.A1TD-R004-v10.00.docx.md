---
title: O-RAN.WG2.TS.A1TD-R004-v10.00.docx.md
author: O-RAN Alliance
layout: post
---

- View in [GitHub Mode]({{site.github_page_url}}/O-RAN.WG2.TS.A1TD-R004-v10.00.docx.md).
- Go back to [Table of Contents]({{site.baseurl}}/).
- Download the [Original Document]({{site.download_url}}/O-RAN.WG2.TS.A1TD-R004-v10.00.docx).

---

* toc
{:toc}

---

<div class="table-wrapper" markdown="block">

|  |
| --- |
| ![webwxgetmsgimg (7).jpeg]({{site.baseurl}}/assets/images/bea03973c631.jpg) |

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
| A1 interface: Type Definitions |

</div>

<div class="table-wrapper" markdown="block">

|  |
| --- |
|  |
| Copyright (C) 2025 by the O-RAN ALLIANCE e.V.  The copying or incorporation into any other work of part or all of the material available in this specification in any form without the prior written permission of O-RAN ALLIANCE e.V. is prohibited, save that you may print or download extracts of the material of this specification for your personal use, or copy the material of this specification for the purpose of sending to individual third parties for their information provided that you acknowledge O-RAN ALLIANCE as the source of the material and that you inform the third party that these conditions apply to them and that they must comply with them.  O-RAN ALLIANCE e.V., Buschkauler Weg 27, 53347 Alfter, Germany  Register of Associations, Bonn VR 11238, VAT ID DE321720189 |

</div>

Contents

Foreword 5

Modal verbs terminology 5

1 Scope 6

2 References 6

2.1 Normative references 6

2.2 Informative references 7

3 Definition of terms, symbols and abbreviations 7

3.1 Terms 7

3.2 Symbols 8

3.3 Abbreviations 8

4 A1 Application data model 8

4.1 Introduction 8

4.2 Compatibility of A1 type definitions 8

5 Generic aspects and common data types 9

5.1 Encoding of attributes in A1 data types 9

5.2 Current type definitions 9

6 A1-P data model 10

6.1 Introduction 10

6.2 Simple data types and enumerations 10

6.2.1 Simple data types 10

6.2.2 Enumerations 12

6.3 Structured data types 13

6.3.1 ScopeIdentifier 13

6.3.2 Structured data types for statements 18

6.3.3 Statements for policy objectives 19

6.3.4 Statements for policy resources 29

6.4 Policy representations objects 32

6.4.1 Policy object 32

6.4.2 Policy status object 33

6.4.3 Policy type object 33

6.5 Binary data 33

7 A1-P data types (A1 policy types) 34

7.1 Introduction 34

7.1.1 Identification and compatibility of policy types 34

7.1.2 Common definitions 34

7.1.3 Schema identification 41

7.2 Policy type definitions 41

7.2.1 QoS target 41

7.2.2 QoE target 43

7.2.3 Traffic steering preferences 45

7.2.4 QoS optimization with resource directive 47

7.2.5 QoE optimization with resource directive 48

7.2.6 UE level target 50

7.2.7 Slice SLA target 52

7.2.8 Load balancing 54

7.2.9 Energy Savings 56

8 A1-EI data model 58

8.1 Introduction 58

8.2 Simple data types and enumerations 59

8.2.1 Simple data types 59

8.2.2 Enumerations 59

8.3 Structured data types 60

8.3.1 ScopeIdentifier 60

8.3.2 Statements for EI job definition 60

8.3.3 Statements for EI job result 61

8.3.4 Statements for EI job constraints 63

8.4 EI representations objects 63

8.4.1 EI type object 63

8.4.2 EI job object 64

8.4.3 EI job status object 65

8.4.4 EI job result object 65

8.4.5 EI job constraints object 65

8.5 Binary data 65

9 A1-EI data types (EI types) 66

9.1 Introduction 66

9.1.1 Identification and compatibility of EI types 66

9.1.2 Common definitions 66

9.2 EI type definitions 67

9.2.1 UE location and velocity information 67

Annex A (Informative): Policy examples 75

A.1 Generic scope identifier 75

A.1.1 RAN UE ID based generic scope identifier 75

A.1.2 AMF UE NGAP ID based generic scope identifier 75

A.1.3 MME UE S1AP ID based generic scope identifier 76

A.1.4 gNB-CU UE F1AP ID based generic scope identifier 76

A.1.5 gNB-CU-CP UE E1AP ID based generic scope identifier 76

A.1.6 eNB UE X2AP ID based scope identifier 77

A.2 QoS (Quality of Service) 77

A.2.1 QoS based resource optimization per-UE 77

A.2.2 QoS based resource optimization per-slice 78

A.3 QoE (Quality of Experience) 78

A.3.1 QoE based resource optimization per-UE 78

A.3.2 QoE based resource optimization per-slice 78

A.4 TSP (Traffic Steering Preferences) 79

A.4.1 Traffic steering per-UE 79

A.4.2 Traffic steering per-slice 79

A.5 QoS optimization with resource directive 80

A.6 QoE optimization with resource directive 80

A.7 Status object for notification 81

A.8 UE level 81

A.8.1 UE level per-QoS 81

A.8.2 UE level per-slice 81

A.9 RAN Slice SLA assurance 81

A.9.1 Support of maximum slice throughput SLA 81

A.9.2 Support of maximum number of UEs and PDU sessions per slice SLA 82

A.9.3 Support of UE-level performance targets for slice users 82

A.9.4 Support of slice priority 82

A.10 Load balancing 83

A.10.1 Load balancing per-cell 83

A.10.2 Load balancing per-cell per-slice 83

A.11 Energy saving 83

A.11.1 Comprehensive energy saving 83

A.11.1.1 Energy saving over tracking area 83

A.11.1.2 Energy saving over cell list 84

A.11.2 Energy saving with exclusion cell list 84

A.11.2.1 Energy saving over cells that must remain operational but can have some coverage impact 84

A.11.2.2 Energy saving over cells that must remain operational and maintain full coverage 84

Annex B (Informative): EI examples 86

B.1 Generic examples 86

B.1.1 EI job status 86

B.2 UE geo-location and velocity 86

B.2.1 Statement for EI job constraints 86

B.2.2 Statement for EI job definition 86

B.2.3 Statement for EI job result 86

Annex C (Informative): JSON schema identification and versioning 88

C.1 General 88

C.2 Embedding a subschema 88

C.3 Versioning of policy type schemas and common data types schema 89

C.3.1 General 89

C.3.2 Versioning of policy types 89

Annex (informative): Change History 90

# Foreword

This Technical Specification (TS) has been produced by O-RAN Alliance Working Group 2. It is part of a TS-family covering the A1 interface as identified below:

* "A1 interface: General Aspects and Principles";
* "A1 interface: Use Cases and Requirements";
* "A1 interface: Transport Protocol";
* "A1 interface: Application Protocol";
* "A1 interface: Type Definitions"; and
* "A1 interface: Test Specification".

This Technical Specification (TS) has been produced by WG2 of the O-RAN Alliance.

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

The present document specifies the data model and the data types that are used in the body of the procedures in the A1 interface.

# 2 References

## 2.1 Normative references

References are either specific (identified by date of publication and/or edition number or version number) or non-specific. For specific references, only the cited version applies. For non-specific references, the latest version of the referenced document (including any amendments) applies. In the case of a reference to a 3GPP document (including a GSM document), a non-specific reference implicitly refers to the latest version of that document in 3GPP Release 18.

NOTE: While any hyperlinks included in this clause were valid at the time of publication, O-RAN cannot guarantee their long-term validity.

The following referenced documents are necessary for the application of the present document.

[1] O-RAN TS: "Non-RT RIC and A1/R1 interface: Use Cases and Requirements".

[2] O-RAN TS: "A1 interface: General Aspects and Principles" ("A1GAP").

[3] O-RAN TS: "A1 interface: Application Protocol" ("A1AP").

[4] 3GPP TS 29.501: "3rd Generation Partnership Project; Technical Specification Group Core Network and Terminals; 5G System; Principles and Guidelines for Services Definition; Stage 3".

[5] 3GPP TS 29.571: "3rd Generation Partnership Project; Technical Specification Group Core Network and Terminals; 5G System; Common Data Types for Service Based Interfaces; Stage 3".

[6] IETF RFC8259: "The JavaScript Object Notation (JSON) Data Interchange Format".

[7] json-schema Draft 2020-12, <https://json-schema.org/specification-links#2020-12> ("JSON Schema").

[8] Void

[9] 3GPP TS [38.473](https://www.3gpp.org/DynaReport/38473.htm): "3rd Generation Partnership Project; Technical Specification Group Radio Access Network; NG-RAN; F1 application protocol (F1AP)".

[10] 3GPP TS 23.003: "3rd Generation Partnership Project; Technical Specification Group Core Network and Terminals; Numbering, addressing and identification".

[11] 3GPP TS 23.501: "3rd Generation Partnership Project; Technical Specification Group Services and System Aspects; System Architecture for the 5G System; Stage 2".

[12] Recommendation ITU-T P.1203.3: "Parametric bitstream-based quality assessment of progressive download and adaptive audiovisual streaming services over reliable transport - Quality integration module".

[13] 3GPP TS 28.552: "3rd Generation Partnership Project; Technical Specification Group Services and System Aspects; Management and orchestration; 5G performance measurements".

[14] Void

[15] 3GPP TS 36.300: "3rd Generation Partnership Project; Technical Specification Group Radio Access Network; Evolved Universal Terrestrial Radio Access (E-UTRA) and Evolved Universal Terrestrial Radio Access Network (E-UTRAN); Overall description".

[16] 3GPP TS 23.203: "3rd Generation Partnership Project; Technical Specification Group Services and System Aspects; Policy and charging control architecture".

[17] GSMA NG.116 (23 November 2020): "Generic Network Slice Template Version 4.0".

[18] Void.

[19] SemVer: "Semantic Versioning 2.0.0", [https://semver.org](https://semver.org/).

[20] 3GPP TS 29.572: "3rd Generation Partnership Project; Technical Specification Group Core Network and Terminals; 5G System; Location Management Services; Stage 3".

[21] 3GPP TS 38.413: "3rd Generation Partnership Project; Technical Specification Group Radio Access Network; NG-RAN; NG Application Protocol (NGAP)".

[22] 3GPP TS 36.413: "3rd Generation Partnership Project; Technical Specification Group Radio Access Network; Evolved Universal Terrestrial Radio Access Network (E-UTRAN); S1 Application Protocol (S1AP)".

[23] 3GPP TS 32.425: "3rd Generation Partnership Project; Technical Specification Group Services and System Aspects; Performance Management (PM); Performance measurements Evolved Universal Terrestrial Radio Access Network (E-UTRAN)".

[24] 3GPP TS 37.483: "3rd Generation Partnership Project; Technical Specification Group Radio Access Network; E1 Application Protocol (E1AP)".

[25] 3GPP TS 38.401: "3rd Generation Partnership Project; Technical Specification Group Radio Access Network; NG-RAN; Architecture description"

[26] 3GPP TS 36.423: "Evolved Universal Terrestrial Radio Access Network (E-UTRAN); X2 Application Protocol (X2AP)".

## 2.2 Informative references

References are either specific (identified by date of publication and/or edition number or version number) or non-specific. For specific references, only the cited version applies. For non-specific references, the latest version of the referenced document (including any amendments) applies. In the case of a reference to a 3GPP document (including a GSM document), a non-specific reference implicitly refers to the latest version of that document in 3GPP Release 18.

NOTE: While any hyperlinks included in this clause were valid at the time of publication, O-RAN cannot guarantee their long-term validity.

The following referenced documents are not necessary for the application of the present document, but they assist the user with regard to a particular subject area.

Not applicable.

# 3 Definition of terms, symbols and abbreviations

## 3.1 Terms

For the purposes of the present document, the terms given in A1GAP [2], clause 3.1, A1AP [3], clause 3.1, and the following apply:

**ScopeIdentifier:** structured data type representing the scope identifier

NOTE: see A1AP [3].

**Statement:** structured data type representing a policy statement that is policy type specific.

NOTE: see A1AP [3].

## 3.2 Symbols

Void.

## 3.3 Abbreviations

For the purposes of the present document, the abbreviations given in A1GAP [2], clause 3.3, A1AP [3], clause 3.3, and the following apply:

AMF Access and Mobility Management Function

E1AP E1 Application Protocol

F1AP F1 Application Protocol

gNB-CU-CP gNB Central Unit Control Plane

GUAMI Globally Unique AMF Identifier

GUMMEI Globally Unique MME Identifier

MME Mobility Management Entity

MOS Mean Opinion Score

NGAP Next Generation Application Protocol

PEE Power, Energy and Environment

SDU Service Data Unit

TaI Tracking Area Identity

TSP Traffic Steering Preference

# 4 A1 Application data model

## 4.1 Introduction

The present document together with A1AP [3] contains a REST method realization of the A1 interface architecture and the A1 procedures identified in A1GAP [2].

A1AP [3] contains the service description, service operations, resource indicators and the API definition (including the OpenAPI document) for the A1 services. The present document contains the data model and the definitions of the objects transported in the procedures defined for the A1 services.

The data types defined in the present document have a lifecycle that is independent from the A1 services defined in A1AP [3]. The A1 data models are based on the documentation guidelines for data models in API definitions specified in 3GPP TS 29.501 [4], clause 5.2.4 and data types specified in 3GPP TS 29.571 [5]. It is based on structured data types and objects as specified in IETF RFC 8259 [6] and JSON Schema [7].

## 4.2 Compatibility of A1 type definitions

The version number of the present document indicates that there may be implications for the compatibility between implementations of policy types and/or EI types defined in different versions of the present document.

The first two-digit value of the present document is incremented when

* at least one policy type and/or one EI type has been added or removed; and/or
* at least one policy type and/or one EI type has been updated in a non-backward compatible way.

The second two-digit value of the present document is incremented when at least one policy type and/or one EI type has been updated in a backward compatible way.

Policy type compatibility is described in clause 7.1.1 and EI type compatibility is described in clause 9.1.1.

The compatibility of A1 implementations in Non/Near-RT RICs depends on the policy types and/or EI types that are implemented. The present document handles the compatibility for data types used by the A1 services while A1AP [3] handles the A1 service compatibility aspects.

# 5 Generic aspects and common data types

## 5.1 Encoding of attributes in A1 data types

The encoding of 3GPP attributes into JSON is based on their original definitions, and their value ranges, rather than on encodings used in other protocols or solutions sets. The definitions are referred to in the data type definitions (see clauses 6.2 and 6.3) and the corresponding encodings are seen in the type definitions (see clause 7.1.2.1 and 7.2).

## 5.2 Current type definitions

The present document defines the policy types, EI types and common data types listed in table 5.2-1.

Table 5.2-1: Type definitions in the present document

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| Type | Type name | Type version | Definition |
| Common data types | common | 2.0.0 | See clause 7.1.2.1 |
| Policy types | | | |
| QoS target | QoSTarget | 4.0.2 | See clause 7.2.1 |
| QoE target | QoETarget | 4.0.2 | See clause 7.2.2 |
| Traffic steering preferences | TrafficSteeringPreference | 5.0.0 | See clause 7.2.3 |
| QoS optimization with resource directive | QoSandTSP | 5.0.0 | See clause 7.2.4 |
| QoE optimization with resource directive | QoEandTSP | 5.0.0 | See clause 7.2.5 |
| UE level target | UELevelTarget | 3.0.2 | See clause 7.2.6 |
| Slice SLA target | SliceSLATarget | 4.0.0 | See clause 7.2.7 |
| Load balancing | LoadBalancing | 2.0.0 | See clause 7.2.8 |
| Energy saving | EnergySaving | 3.0.0 | See clause 7.2.9 |
| EI types | | | |
| UE location and velocity information | UEGeoandVel | 4.0.0 | See clause 9.2.1 |

</div>

# 6 A1-P data model

## 6.1 Introduction

This clause specifies the application data model and data types supported by the A1-P API specified in A1AP [3], clause 6.2. The data model is based on policy statements that include attributes and are combined with a scope identifier into policy objects.

Simple data types and enumerations can be referenced from structured data type and policy types. Clause 6.3 defines attributes to be used for scope information and attributes that are not defined as part of the statements (structured data types as defined in coming clauses).

For policy objectives, policy statements for the following characteristics are defined:

* QoS targets;
* QoE targets;
* UE level targets;
* Slice SLA targets;
* Load balancing targets; and
* Energy saving targets.

For policy resources, policy statements for the following characteristics are defined:

* Traffic steering optimization;
* Slice SLA assurance;
* Load balancing; and
* Energy saving.

Clause 6.4 contains the formal representation definitions of the policy representation object types defined in the A1-P service description in A1AP [3], clause 5.2.

## 6.2 Simple data types and enumerations

### 6.2.1 Simple data types

The simple data types are defined in table 6.2.1-1.

Table 6.2.1-1: Definition of simple data types for scope and statements

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| Type Name | Type Definition | Description | Applicability |
| RanUeId | string | UE identifier, based on RAN UE Id (see 3GPP TS 38.401 [25], clause 6.2.5, and 3GPP TS [38.473](https://www.3gpp.org/DynaReport/38463.htm) [9], clause 9.2.2.1).  Encoded as 16 hexadecimal characters. | 5G RAN |
| AmfUeNgapId | integer | AMF UE NGAP ID (see 3GPP TS 38.413 [21], clause 9.3.3.1).  Integer with value range 0 to 240 -1. | 4G RAN/5G RAN |
| AmfRegionId | string | AMF Region ID (see 3GPP TS 38.413 [21], clause 9.3.3.3).  Encoded as two hexadecimal characters. | 4G RAN/5G RAN |
| AmfSetId | string | AMF Set ID uniquely identifies an AMF Set within the AMF Region (see 3GPP TS 38.413 [21], clause 9.3.3.12).  Encoded as three hexadecimal characters where the first character is limited to values 0 to 3. | 4G RAN/5G RAN |
| AmfPointer | string | AMF Pointer identifies one or more AMF(s) within the AMF Set (see 3GPP TS 38.413 [21], clause 9.3.3.19).  Encoded as two hexadecimal characters where the first character is limited to values 0 to 3. | 4G RAN/5G RAN |
| MmeUeS1apId | integer | MME UE S1AP ID (see 3GPP TS 36.413 [22], clause 9.2.3.3).  Integer with value range 0 to 232 -1. | 4G RAN |
| MmeGroupId | string | MME Group ID (see 3GPP TS 36.413 [22], clause 9.2.3.9).  Encoded as four hexadecimal characters. | 4G RAN |
| MmeCode | string | MMEC (see 3GPP TS 36.413 [22], clause 9.2.3.12).  Encoded as two hexadecimal characters. | 4G RAN |
| GnbCuUeF1apId | integer | gNB-CU UE F1AP ID (see 3GPP TS 38.401 [24], clause 6.2.1 and 3GPP TS 38.473 [9], clause 9.3.1.4).  Integer with value range 0 to 232 -1. | 5G RAN |
| GnbCuCpUeE1apId | integer | gNB-CU-CP UE E1AP ID (see 3GPP TS 38.401 [24], clause 6.2.1, and 3GPP TS 37.483 [24], clause 9.3.1.4).  Integer with value range 0 to 232 -1. | 5G RAN |
| EnbUeX2apId | integer | eNB UE X2AP ID (see 3GPP TS 36.423 [26], clause 9.2.24).  Integer with value range 0 to 212 -1. | 4G RAN/5G RAN |

</div>

The simple data type for JSON schemas is defined in table 6.2.1-2.

Table 6.2.1-2: Definition of JsonSchema

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| Type Name | Type Definition | Description | Applicability |
| JsonSchema | <https://json-schema.org/draft/2020-12/schema> | A JSON schema meta-schema following JSON Schema [7] |  |

</div>

### 6.2.2 Enumerations

#### 6.2.2.1 PreferenceType

The enumeration PreferenceType represents the preference of a specific network resource (e.g. cell usage). It shall comply with the provisions defined in table 6.2.2.1-1.

Table 6.2.2.1-1: Definition of PreferenceType

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| Enumeration value | Description | Applicability |
| SHALL | equals to select the resource | select the cell regardless of if connection retainability might be at risk |
| PREFER | equals to favour the selection of the resource | favour the selection of the cell even if it is not with the best radio quality if the connection retainability is not at risk. |
| AVOID | equals to avoid selecting the resource | avoid selecting the cell unless the connection retainability is at risk |
| FORBID | equals to not select the resource | do not select the cell under any conditions |

</div>

#### 6.2.2.2 EnforcementStatusType

The enumeration EnforcementStatusType represents if a policy is enforced or not. It shall comply with the provisions defined in table 6.2.2.2-1.

Table 6.2.2.2-1: Definition of EnforcementStatusType

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| Enumeration value | Description | Applicability |
| ENFORCED | equals that the policy is enforced |  |
| NOT\_ENFORCED | equals that the policy is not enforced |  |

</div>

#### 6.2.2.3 EnforcementReasonType

The enumeration EnforcementReasonType represents the reason why notification is sent (e.g. why enforcement status has changed). It also represents the latest reason for change of enforcement status to NON\_ENFORCED in case policy status is queried. It shall comply with the provisions defined in table 6.2.2.3-1.

Table 6.2.2.3-1: Definition of EnforcementReasonType

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| Enumeration value | Description | Applicability |
| SCOPE\_NOT\_APPLICABLE | One or more attributes of the ScopeIdentifier cannot be applied | The scope provided can no longer be applied for enforcing the policy |
| STATEMENT\_NOT\_APPLICABLE | Policy statement(s) cannot be applied | The statement(s) can no longer be applied due to other changes |
| OTHER\_REASON | Any other reason | Policy can no longer be enforced for other reasons than scope or statement becoming inapplicable. |

</div>

#### 6.2.2.4 AvoidanceType

The enumeration AvoidanceType represents the avoidance of a specific network resource (e.g. cell usage). It shall comply with the provisions defined in table 6.2.2.4-1.

Table 6.2.2.4-1: Definition of AvoidanceType

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| Enumeration value | Description | Applicability |
| AVOID | equals to avoid selecting the network resource | avoid selecting the cell as network resource |
| FORBID | equals to forbid selecting the network resource | do not select the cell as network resource under any conditions |

</div>

## 6.3 Structured data types

### 6.3.1 ScopeIdentifier

#### 6.3.1.1 Introduction

A1 policies are defined in A1GAP [2], clause 5.1.4.0 as containing a scope identifier and one or more policy statements where policy statements contain policy objectives and/or policy resources. This clause defines the structured data type ScopeIdentifier.

The ScopeIdentifier contains the attributes defined in table 6.3.1.1-1:

Table 6.3.1.1-1: Definition of data type ScopeIdentifier

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| Attribute Name | Data Type | P | Cardinality | Description | Applicability |
| ueId | UeId | C | 0..1 | identifies the UE that policy statement(s) are applied to, see clause 6.3.1.7 |  |
| groupId | GroupId | C | 0..1 | identifies multiple UEs that policy statement(s) are applied to, see clause 6.3.1.2 |  |
| sliceId | SliceId | C | 0..1 | identifies the network slice that policy statement(s) are applied to, see clause 6.3.1.3 |  |
| qosId | QosId | C | 0..1 | identifies the QoS flow that policy statement(s) are applied to, see clause 6.3.1.4 |  |
| cellId | CellId | C | 0..1 | identifies the cell that the policy statement(s) are applied to, see clause 6.3.1.5 |  |
| cellIdList | CellIdList | C | 0..1 | identifies the list of cells that the policy statement(s) are applied to, see Table 6.3.2-1 |  |
| talList | TalList | C | 0..1 | identifies the list of TaIs that the policy statement(s) are applied to, see Table 6.3.2-3 |  |
| NOTE 1: Presence condition "C" means that least one attribute shall be included when the scope is defined. The allowed combinations of attributes depend on the policy statement that is combined with the ScopeIdentifier and is policy type specific, see clause 7.2.  NOTE 2: Encoding of 3GPP attributes into number and string is described in clause 5.1 and applied to the JSON encodings in clause 7.1.2.1.  NOTE 3: cellId and cellIdList shall not be present at the same time in a ScopeIdentifier for defining A1 policies.  NOTE 4: CellIdList shall include only those cells that are associated with unique Near-RT RIC.  NOTE 5: TaIList shall include only those tracking area codes that cover cells associated with a unique Near-RT RIC. | | | | | |

</div>

#### 6.3.1.2 GroupId

GroupId is defined based on different RF selection priority parameters for 4G and 5G networks. GroupId does not explicitly define a UE group, and does not enable any group management operations, but is a property that several UE can share and thereby enables implicit identification of a dynamic set of UEs for which the same policy can be applied.

The GroupId contains the attributes defined in table 6.3.1.2-1:

Table 6.3.1.2-1: Definition of type GroupId

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| Attribute name | Data type | P | Cardinality | Description | Applicability |
| spId | integer | C | 0..1 | identifier of a subscriber profile that can be shared by several UEs (see 3GPP TS 36.300) [15].  Value range is between 1 and 256. | 4G RAN |
| rfspIndex | integer | C | 0..1 | identifier of a RF selection priority that can be shared by several UEs (see 3GPP TS 23.501) [11].  Value range is between 1 and 256. | 5G RAN |
| NOTE: Presence condition "C" means that one and only attribute shall be included when this data type is used. | | | | | |

</div>

#### 6.3.1.3 SliceId

SliceId is based on the definition of S-NSSAI (see 3GPP TS 23.003 [10]) and includes a PLMN identifier.

The SliceId contains the attributes defined in table 6.3.1.3-1:

Table 6.3.1.3-1: Definition of type SliceId

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| Attribute name | Data type | P | Cardinality | Description | Applicability |
| sst | integer | M | 1 | Slice/Service type part of S-NSSAI (see 3GPP TS 23.003 [10]).  Integer with value range 0 to 255. | 5G RAN |
| sd | string | O | 0..1 | Slice Differentiator of S-NSSAI Encoded as 6 hexadecimal characters | 5G RAN |
| plmnId | PlmnId | M | 1 | PLMN Identifier (see 3GPP TS 23.003 [10]), see table 6.3.1.6-1 | 4G RAN and 5G RAN |

</div>

#### 6.3.1.4 QosId

QosId is defined based on different QoS identifiers for 4G and 5G networks.

The QosId contains the attributes defined in table 6.3.1.4-1:

Table 6.3.1.4-1: Definition of type QosId

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| Attribute name | Data type | P | Cardinality | Description | Applicability |
| qcI | integer | C | 0..1 | QoS Class Identifier (see 3GPP TS 23.203 [16]).  Value range is between 1 and 256. | 4G RAN |
| 5qI | integer | C | 0..1 | 5G QoS Identifier (see 3GPP TS 23.501 [11]).  Value range is between 1 and 256. | 5G RAN |
| NOTE: Presence condition "C" means that one and only attribute shall be included when this data type is used. | | | | | |

</div>

#### 6.3.1.5 CellId

CellId is based on the definition of the global cell identifiers ECGI and NCGI (see 3GPP TS 23.003 [10]) for 4G and 5G RANs.

The CellId contains the attributes defined in table 6.3.1.5-1 and 6.3.1.5-2:

Table 6.3.1.5-1: Definition of type CId

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| Attribute name | Data type | P | Cardinality | Description | Applicability |
| ecI | integer | C | 0..1 | E-UTRAN Cell identifier (see 3GPP TS 23.003 [10])  28 bits encoded as integer. | 4G RAN |
| ncI | integer | C | 0..1 | NR Cell identifier (see 3GPP TS 23.003 [10])  36 bits encoded as integer. | 5G RAN |
| NOTE: Presence condition "C" means that one and only attribute shall be included when this data type is used. | | | | | |

</div>

Table 6.3.1.5-2: Definition of type CellId

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| Attribute name | Data type | P | Cardinality | Description | Applicability |
| plmnId | PlmnId | M | 1 | PLMN Identifier (see 3GPP TS 23.003 [10]), see table 6.3.1.6-1 |  |
| cId | CId | M | 1 | Cell Identifier, see table 6.3.1.5-1 |  |

</div>

#### 6.3.1.6 PlmnId

This clause contains the definition of the structured data type PlmnId. PlmnId is based on the definition in 3GPP TS 23.003 [10].

The PlmnId contains the attributes defined in table 6.3.1.6-1:

Table 6.3.1.6-1: Definition of type PlmnId

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| Attribute name | Data type | P | Cardinality | Description | Applicability |
| mcc | string | M | 1 | Mobile Country Code (see 3GPP TS 23.003 [10])  Contains 3 digits. |  |
| mnc | string | M | 1 | Mobile Network Code (see 3GPP TS 23.003 [10])  Contains 2 or 3 digits. |  |

</div>

#### 6.3.1.7 UeId

This clause contains the definition of the structured data type UeId.

Table 6.3.1.7-1: Definition of type GuRanUeId

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| Attribute name | Data type | P | Cardinality | Description | Applicability |
| globalGnbId | GlobalGnbId | M | 1 | Global GNB ID, see clause 6.3.1.8 | 5G RAN |
| ranUeId | RanUeId | M | 1 | RAN UE ID, see clause 6.2.1 | 5G RAN |

</div>

Table 6.3.1.7-2: Definition of type GuAmfUeNgapId

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| Attribute name | Data type | P | Cardinality | Description | Applicability |
| guAmI | GuAmI | M | 1 | Globally unique AMF Identifier, see clause 6.3.1.9 | 4G RAN/5G RAN |
| amfUeNgapId | AmfUeNgapId | M | 1 | AMF UE NGAP ID, see clause 6.2.1 | 4G RAN/5G RAN |

</div>

Table 6.3.1.7-3: Definition of type GuMmeUeS1apId

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| Attribute name | Data type | P | Cardinality | Description | Applicability |
| guMmeI | GuMmeI | M | 1 | Globally unique MME Identifier, see clause 6.3.1.10 | 4G RAN |
| mmeUeS1apId | MmeUeS1apId | M | 1 | MME UE S1AP ID, see clause 6.2.1 | 4G RAN |

</div>

Table 6.3.1.7-4: Definition of type UeId

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| Attribute name | Data type | P | Cardinality | Description | Applicability |
| guRanUeId | GuRanUeId | C | 0..1 | Globally unique RAN UE ID, see table 6.3.1.7-1 | 5G RAN |
| guAmfUeNgapId | GuAmfUeNgapId | C | 0..1 | Globally unique AMF UE NGAP ID, see table 6.3.1.7-2 | 4G RAN/5G RAN |
| guMmeUeS1apId | GuMmeUeS1apId | C | 0..1 | Globally unique MME UE S1AP ID, see table 6.3.1.7-3 | 4G RAN |
| guGnbCuUeF1apId | GuGnbCuUeF1apId | C | 0..1 | Globally unique gNB-CU UE F1AP ID, see table 6.3.1.7-5 | 5G RAN |
| guGnbCuCpUeE1apId | GuGnbCuCpUeE1apId | C | 0..1 | Globally unique gNB-CU-CP UE E1AP ID, see table 6.3.1.7-6 | 5G RAN |
| guEnbUeX2apId | GuEnbUeX2apId | C | 0..1 | Globally unique eNB UE X2AP ID, see table 6.3.1.7-7 | 4G RAN/5G RAN |
| NOTE: Presence condition "C" means that one and only attribute shall be included when this data type is used. | | | | | |

</div>

Table 6.3.1.7-5: Definition of type GuGnbCuUeF1apId

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| Attribute name | Data type | P | Cardinality | Description | Applicability |
| globalGnbId | GlobalGnbId | M | 1 | Global GNB ID, see clause 6.3.1.8 | 5G RAN |
| gnbCuUeF1apId | GnbCuUeF1apId | M | 1 | gNB-CU UE F1AP ID, see clause 6.2.1 | 5G RAN |

</div>

Table 6.3.1.7-6: Definition of type GuGnbCuCpUeE1apId

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| Attribute name | Data type | P | Cardinality | Description | Applicability |
| globalGnbId | GlobalGnbId | M | 1 | Global GNB ID, see clause 6.3.1.8 | 5G RAN |
| gnbCuCpUeE1apId | GnbCuCpUeE1apId | M | 1 | gNB-CU-CP UE E1AP ID, see clause 6.2.1 | 5G RAN |

</div>

Table 6.3.1.7-7: Definition of type GuEnbUeX2apId

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| Attribute name | Data type | P | Cardinality | Description | Applicability |
| globalEnbId | GlobalEnbId | M | 1 | GlobalEnbId, see clause 6.3.1.11 | 4G RAN/5G RAN |
| enbUeX2apId | EnbUeX2apId | M | 1 | EnbUeX2apId, see clause 6.2.1 | 4G RAN/5G RAN |

</div>

#### 6.3.1.8 GlobalGnbId

This clause contains the definition of the structured data type GlobalGnbId. This is based on Global gNB ID defined in 3GPP TS 38.413 [21], clause 9.3.1.6.

The GlobalGnbId contains the attributes defined in table 6.3.1.8-1 and 6.3.1.8-2:

Table 6.3.1.8-1: Definition of type GnbId

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| Attribute name | Data type | P | Cardinality | Description | Applicability |
| gnbIdLength | integer | M | 1 | This indicates the number of bits for encoding the gNB ID (see 3GPP TS 38.413 [21], clause 9.3.1.6).  Integer with value range 22 to 32. | 5G RAN |
| gnbIdValue | integer | M | 1 | gNB ID (see 3GPP TS 38.413 [21], clause 9.3.1.6).  Encoded as integer with value range 0 to 232 -1. | 5G RAN |

</div>

Table 6.3.1.8-2: Definition of type GlobalGnbId

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| Attribute name | Data type | P | Cardinality | Description | Applicability |
| plmnId | PlmnId | M | 1 | PLMN Identifier, see clause 6.3.1.6 | 5G RAN |
| gnbId | GnbId | M | 1 | GNB Identifier, see table 6.3.1.8-1 | 5G RAN |

</div>

#### 6.3.1.9 GuAmI

This clause contains the definition of the structured data type GuAmI. This is based on GUAMI defined in 3GPP TS 38.413 [21], clause 9.3.3.3.

The GuAmI contains the attributes defined in table 6.3.1.9-1:

Table 6.3.1.9-1: Definition of type GuAmI

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| Attribute name | Data type | P | Cardinality | Description | Applicability |
| plmnId | PlmnId | M | 1 | PLMN Identifier, see clause 6.3.1.6 | 4G RAN/5G RAN |
| amfRegionId | AmfRegionId | M | 1 | AMF Region Identifier, see clause 6.2.1 | 4G RAN/5G RAN |
| amfSetId | AmfSetId | M | 1 | AMF Set Identifier, see clause 6.2.1 | 4G RAN/5G RAN |
| amfPointer | AmfPointer | M | 1 | AMF Pointer, see clause 6.2.1 | 4G RAN/5G RAN |

</div>

#### 6.3.1.10 GuMmeI

This clause contains the definition of the structured data type GuMmeI. This is based on GUMMEI defined in 3GPP TS 36.413 [22], clause 9.2.3.9.

The GuMmeI contains the attributes defined in table 6.3.1.10-1:

Table 6.3.1.10-1: Definition of type GuMmeI

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| Attribute name | Data type | P | Cardinality | Description | Applicability |
| plmnId | PlmnId | M | 1 | PLMN Identifier, see clause 6.3.1.6 | 4G RAN |
| mmeGroupId | MmeGroupId | M | 1 | MME Group Identifier, see clause 6.2.1 | 4G RAN |
| mmeCode | MmeCode | M | 1 | MME Code, see clause 6.2.1 | 4G RAN |

</div>

#### 6.3.1.11 GlobalEnbId

This clause contains the definition of the structured data type GlobalEnbId. This is based on Global eNB ID defined in 3GPP TS 36.413 [22], clause 9.2.1.37.

The GlobalEnbId contains the attributes defined in table 6.3.1.11-1 and 6.3.1.11-2:

Table 6.3.1.11-1: Definition of type EnbId

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| Attribute name | Data type | P | Cardinality | Description | Applicability |
| macroEnbId | string | C | 0..1 | Macro eNB ID (see 3GPP TS 36.413 [22], clause 9.2.1.37).  Encoded as five hexadecimal characters. | 4G RAN/5G RAN |
| homeEnbId | string | C | 0..1 | Home eNB ID (see 3GPP TS 36.413 [22], clause 9.2.1.37).  Encoded as seven hexadecimal characters. | 4G RAN/5G RAN |
| shortMacroEnbId | string | C | 0..1 | Short Macro eNB ID (see 3GPP TS 36.413 [22], clause 9.2.1.37).  Encoded as five hexadecimal characters where the first character is limited to values 0 to 3. | 4G RAN/5G RAN |
| longMacroEnbId | string | C | 0..1 | Long Macro eNB ID (see 3GPP TS 36.413 [22], clause 9.2.1.37).  Encoded as six hexadecimal characters where the first character is limited to values 0 to 1. | 4G RAN/5G RAN |
| NOTE: Presence condition "C" means that one and only attribute shall be included when this data type is used. | | | | | |

</div>

Table 6.3.1.11-2: Definition of type GlobalEnbId

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| Attribute name | Data type | P | Cardinality | Description | Applicability |
| plmnId | PlmnId | M | 1 | PLMN Identifier, see clause 6.3.1.6 | 4G RAN/5G RAN |
| enbId | EnbId | M | 1 | ENB Identifier, see table 6.3.1.11-1 | 4G RAN/5G RAN |

</div>

### 6.3.2 Structured data types for statements

This clause contains definitions of structured data types that are used in statements for policy objectives and/or statements for policy resources.

The CellIdList contains the attributes defined in table 6.3.2-1:

Table 6.3.2-1: Definition of type CellIdList

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **Attribute name** | **Data type** | **P** | **Cardinality** | **Description** | **Applicability** |
| cellIdList | array(CellId) | M | 1..N | list of CellIds, see clause 6.3.1 |  |

</div>

The TaIList contains the attributes defined in table 6.3.2-2 and 6.3.2-3:

Table 6.3.2-2: Definition of type TaI

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **Attribute name** | **Data type** | **P** | **Cardinality** | **Description** | **Applicability** |
| plmnId | PlmnId | M | 1 | PLMN Identifier (see 3GPP TS 23.003 [10]), see table 6.3.1.6-1 | 4G RAN and 5G RAN |
| tac | string | M | 1 | Tracking Area Code (see 3GPP TS 23.003 [10]).  Encoded as 6 hexadecimal characters. | 5G RAN |

</div>

**Table 6.3.2-3: Definition of type TaIList**

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **Attribute name** | **Data type** | **P** | **Cardinality** | **Description** | **Applicability** |
| taIList | array(TaI) | M | 1..N | list of TaIs, see table 6.3.2-2 | 4G RAN and 5G RAN |

</div>

### 6.3.3 Statements for policy objectives

#### 6.3.3.1 Introduction

A1 policies are defined in A1GAP [2], clause 5.1.4.0 as containing a scope identifier and one or more policy statements where policy statements contain policy objectives and/or policy resources. This clause defines the structured data types and attributes to be used for policy objectives.

Table 6.3.3.1-1 specifies the data types defined for policy objectives in the A1-P interface protocol. The possible combinations of these are defined in clause 7.

Table 6.3.3.1-1: Statements for policy objectives

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| Data type | Clause defined | Description | Applicability |
| QosObjectives | 6.3.3.2 | Attributes related to QoS targets |  |
| QoeObjectives | 6.3.3.3 | Attributes related to QoE targets |  |
| UeLevelObjectives | 6.3.3.4 | Attributes related to UE level targets |  |
| SliceSlaObjectives | 6.3.3.5 | Attributes related to slice SLA targets |  |
| LbObjectives | 6.3.3.6 | Attributes related to load balancing |  |
| EsObjectives | 6.3.3.7 | Attributes related to energy saving |  |

</div>

#### 6.3.3.2 QoS target

The QosObjectives statement contains the attributes defined in table 6.3.3.2-1:

Table 6.3.3.2-1: Definition of statement type QosObjectives

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| Attribute name | Data type | P | Cardinality | Description | Applicability |
| gfbr | number | C | 0..1 | Guaranteed Flow Bit Rate, see 3GPP TS 23.501 [11] | 5G RAN |
| mfbr | number | C | 0..1 | Maximum Flow Bit Rate, see 3GPP TS 23.501 [11] | 5G RAN |
| priorityLevel | number | C | 0..1 | Priority Level, see 3GPP TS 23.501 [11] | 5G RAN |
| pdb | number | C | 0..1 | Packet Delay Budget, see 3GPP TS 23.501 [11] | 5G RAN |
| NOTE: Presence condition "C" means that least one attribute shall be included when this statement is used. | | | | | |

</div>

#### 6.3.3.3 QoE target

The QoeObjectives statement contains the attributes defined in table 6.3.3.3-1:

Table 6.3.3.3-1: Definition of statement type QoeObjectives

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| Attribute name | Data type | P | Cardinality | Description | Applicability |
| qoeScore | number | C | 0..1 | mean opinion score (MOS) value between 1 and 5,  it can be either e.g. video MOS as specified in ITU-T P.1203.3 [12] or a customized MOS |  |
| initialBuffering | number | C | 0..1 | refers to the time in seconds between the initiation of video playback by the user and the actual start of the playback as specified in ITU-T P.1203.3 [12] |  |
| reBuffFreq | number | C | 0..1 | it can be calculated by taking the number of stalling events (excluding the initial buffering) and dividing by the length of media as specified in ITU-T P.1203.3 [12] or by a customized time window |  |
| stallRatio | number | C | 0..1 | ratio of the sum of duration of the stalling events to the total media length as specified in ITU-T P.1203.3 [12] or by a customized time window. |  |
| NOTE 1: Presence condition "C" means that least one attribute shall be included when this statement is used.  NOTE 2: In the present document, the QoE target is applicable to video streaming services. | | | | | |

</div>

Application server will measure the QoE related attributes (e.g. MOS, initial buffering, reBuffFreq, stallRatio) for a specific service based on application info. However, it's too late for the network to optimize the radio resource when the application server finds the QoE is too bad. The Near-RT RIC could predict the QoE related attributes based on the network side info (e.g. QoS parameters, radio conditions, Packet measure report etc.) e.g. by performing model inference for a specific ML model received from the Non-RT RIC. The predicted value is approximately the QoE related attribute which will be measured at application server later, but it's estimated at the Near-RT RIC in real time. So, the Near-RT RIC could decide to optimize the radio resource based on the predicted value and the QoE target contained in the A1 policy.

#### 6.3.3.4 UE level targets

The UeLevelObjectives statement contains the attributes defined in table 6.3.3.4-1:

Table 6.3.3.4-1: Definition of statement type UeLevelObjectives

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| Attribute name | Data type | P | Cardinality | Description | Applicability |
| ulThroughput | number | C | 0..1 | the average UL RAN UE throughput as the UE performance targets or RAN optimization constraints. See 3GPP TS 28.552 [13], clause 5.1.1.3.3. |  |
| dlThroughtput | number | C | 0..1 | the average DL RAN UE throughput as the UE performance targets or RAN optimization constraints. See 3GPP TS 28.552 [13], clause 5.1.1.3.1. |  |
| ulPacketDelay | number | C | 0..1 | Uplink Packet delay with precision of 0.1 millisecond as the UE performance targets or RAN optimization constraints. See 3GPP TS 28.552 [13], clause 5.1.1.1.4. |  |
| dlPacketDelay | number | C | 0..1 | Downlink Packet delay with precision of 0.1 millisecond as the UE performance targets or RAN optimization constraints. See 3GPP TS 28.552 [13], clause 5.1.3.3.3. |  |
| ulPdcpSduPacketLossRate | number | C | 0..1 | UL reliability as the UE performance targets or RAN optimization constraints. See 3GPP TS 28.552 [13], clause 5.1.3.1.1. |  |
| dlRlcSduPacketLossRate | number | C | 0..1 | DL reliability as the UE performance targets or RAN optimization constraints. See 3GPP TS 28.552 [13], clause 5.1.1.35. |  |
| dlReliability | ReliabilityType | C | 0..1 | DL reliability as the UE performance targets or RAN optimization constraints. |  |
| ulReliability | ReliabilityType | C | 0..1 | UL reliability as the UE performance targets or RAN optimization constraints. |  |
| NOTE: Presence condition "C" means that least one attribute shall be included when this statement is used. | | | | | |

</div>

The ReliabilityType represents the success probability of transmitting a data packet of X bytes within a certain delay. It shall comply with the provisions defined in table 6.3.3.4-2.

Table 6.3.3.4-2: Definition of type ReliabilityType

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| Attribute name | Data type | P | Cardinality | Description | Applicability |
| packetSize | number | M | 1 | data package size in unit of bytes |  |
| userPlaneLatency | number | M | 1 | the time it takes to deliver a data packet from the radio protocol layer 2/3 SDU ingress point to the radio protocol layer 2/3 SDU egress point of the radio interface in unit of ms |  |
| successProbability | number | M | 1 | the success probability of transmitting a data packet in packet size within the user plane latency, a number between 0 and 1 |  |

</div>

#### 6.3.3.5 Slice SLA target

The SliceSlaObjectives statement contains the attributes defined in table 6.3.3.5-1:

Table 6.3.3.5-1: Definition of statement type SliceSlaObjectives

<div class="table-wrapper" markdown="block">

| Attribute name | Data type | P | Cardinality | Description | Applicability |
| --- | --- | --- | --- | --- | --- |
| maxNumberOfUes | number | C | 0..1 | This attribute describes the partial SLA target for providing maximum number of RRC connected UEs to be served by the network slice concurrently. Scope identifier designates the respective network slice and optionally slice SLA resources can further designate targeted cells. See NG.116 [17], clause 3.4.17 ("Maximum Number of UEs"). |  |
| maxNumberOfPduSessions | number | C | 0..1 | This attribute describes the partial SLA target for providing maximum number of PDU sessions to be supported by the network slice concurrently. Scope identifier designates the respective network slice and optionally slice SLA resources can further designate targeted cells. See NG.116 [17], clause 3.4.16 ("Maximum number of PDU sessions"). |  |
| guaDlThptPerSlice | number | C | 0..1 | This attribute describes the partial SLA target for providing guaranteed data rate as kbps in downlink to be served by the network slice for the aggregate of all GBR QoS flows in downlink belonging to the set of all UEs using the network slice. Scope identifier designates the respective network slice and optionally slice SLA resources can further designate targeted cells. If there are designed targeted cells, the downlink data rate is aggregated over the designated targeted cells within the respective network slice under the control of the near-RT RIC. If no cell is designated, the downlink data rate is aggregated over all the cells within the respective network slice under the control of the near-RT RIC. See NG.116 [17], clause 3.4.5 ("Guaranteed downlink throughput quota"). |  |
| maxDlThptPerSlice | number | C | 0..1 | This attribute describes the partial SLA target for providing maximum data rate supported by the network slice for all UEs together in downlink in kbps. Scope identifier designates the respective network slice and optionally slice SLA resources can further designate targeted cells. See NG.116 [17], clause 3.4.5 ("Max downlink throughput"). |  |
| maxDlThptPerUe | number | C | 0..1 | This attribute describes the maximum data rate supported by the network slice per UE in downlink in kbps. Scope identifier designates the respective network slice and optionally slice SLA resources can further designate targeted cells. See NG.116 [17], clause 3.4.6 ("Downlink maximum throughput per UE"). This attribute applies to all UEs that are a member of that slice in the designated target cells. |  |
| guaUlThptPerSlice | number | C | 0..1 | This attribute describes the partial SLA target for providing guaranteed data rate as kbps in uplink to be served by the network slice for the aggregate of all GBR QoS flows in uplink belonging to the set of all UEs using the network slice. Scope identifier designates the respective network slice and optionally slice SLA resources can further designate targeted cells. If there are designed targeted cells, the uplink data rate is aggregated over the designated targeted cells within the respective network slice under the control of the near-RT RIC. If no cell is designated, the uplink data rate is aggregated over all the cells within the respective network slice under the control of the near-RT RIC. See NG.116 [17], clause 3.4.31 ("Guaranteed uplink throughput quota"). |  |
| maxUlThptPerSlice | number | C | 0..1 | This attribute describes the partial SLA target for providing maximum data rate supported by the network slice for all UEs together in uplink in kbps. Scope identifier designates the respective network slice and optionally slice SLA resources can further designate targeted cells. See NG.116 [17], clause 3.4.31 ("Max uplink throughput"). |  |
| maxUlThptPerUe | number | C | 0..1 | This attribute describes the maximum data rate supported by the network slice per UE in uplink in kbps. Scope identifier designates the respective network slice and optionally slice SLA resources can further designate targeted cells. See NG.116 [17], clause 3.4.32 ("Uplink maximum throughput per UE"). This attribute applies to all UEs that are a member of that slice in the designated target cells. |  |
| maxDlPacketDelayPerUe | number | C | 0..1 | This attribute describes the maximum delay for DL packets in ms as the performance target that is communicated to the Near-RT RIC. This attribute applies to all UEs that are a member of the designated slice in the designated target cells.  This attribute is based on *Packet Delay Budget* (see GSMA NG.116 [17], clause *3.4.26 ("Slice quality of service parameters: Packet Delay Budget*")). The *Packet Delay Budget* parameter in GSMA NG.116 [17] is for both uplink & downlink while *maxDlPacketDelayPerUe* is only for downlink. *Packet Delay Budget* parameter in GSMA NG.116 [17] is defined per 5QI per slice while *maxDlPacketDelayPerUe* is defined per slice. |  |
| maxUlPacketDelayPerUe | number | C | 0..1 | This attribute describes the maximum delay for UL packets in ms as the performance target that is communicated to the Near-RT RIC. This attribute applies to all UEs that are a member of the designated slice in the designated target cells.  This attribute is based on *Packet Delay Budget* (see GSMA NG.116 [17], clause *3.4.26 ("Slice quality of service parameters: Packet Delay Budget*")). The *Packet Delay Budget* parameter in GSMA NG.116 [17] is for both uplink & downlink while *maxUlPacketDelayPerUe* is only for uplink. *Packet Delay Budget* parameter in GSMA NG.116 [17] is defined per 5QI per slice while *maxUlPacketDelayPerUe* is defined per slice. |  |
| maxDlPdcpSduPacketLossRatePerUe | number | C | 0..1 | This attribute describes the maximum DL PDCP SDU level packet loss rate, a number between 0 and 1, as the performance target that is communicated to the Near-RT RIC. This attribute applies to all UEs that are a member of the designated slice in the designated target cells.  This attribute is based on *Maximum Packet Loss Rate* (see GSMA NG.116 [17], clause 3.4.26 ("*Slice quality of service parameters: Maximum Packet Loss Rate*")). The *Maximum Packet Loss Rate* parameter in GSMA NG.116 [17] is for both uplink & downlink while *maxDlPdcpSduPacketLossRatePerUe* is only for downlink. |  |
| maxUlRlcSduPacketLossRatePerUe | number | C | 0..1 | This attribute describes the maximum UL RLC SDU level packet loss rate, a number between 0 and 1, as the performance target that is communicated to the Near-RT RIC. This attribute applies to all UEs that are a member of the designated slice in the designated target cells.  This attribute is based on *Maximum Packet Loss Rate* (see GSMA NG.116 [17], clause 3.4.26 ("*Slice quality of service parameters: Maximum Packet Loss Rate*")). The *Maximum Packet Loss Rate* parameter in GSMA NG.116 [17] is for both uplink & downlink while *maxUlPdcpSduPacketLossRatePerUe* is only for uplink. |  |
| minDlReliabilityPerUe | ReliabilityType | C | 0..1 | This attribute describes the minimum DL reliability as the performance target that is communicated to the Near-RT RIC. The definition of minDlReliabilityPerUe corresponds to that of dlReliability in table 6.3.3.4-1. This attribute applies to all UEs that are a member of the designated slice in the designated target cells. |  |
| minUlReliabilityPerUe | ReliabilityType | C | 0..1 | This attribute describes the minimum UL reliability as the performance target that is communicated to the Near-RT RIC. The definition of minUlReliabilityPerUe corresponds to that of ulReliability in table 6.3.3.4-1. This attribute applies to all UEs that are a member of the designated slice in the designated target cells. |  |
| maxDlJitterPerUe | number | C | 0..1 | This attribute describes the maximum DL jitter in ms, which is the deviation from the desired packet arrival time to the actual packet arrival time, as the performance target that is communicated to the Near-RT RIC. This attribute applies to all UEs that are a member of the designated slice in the designated target cells. |  |
| maxUlJitterPerUe | number | C | 0..1 | This attribute describes the maximum UL jitter in ms, which is the deviation from the desired packet arrival time to the actual packet arrival time, as the performance target that is communicated to the Near-RT RIC. This attribute applies to all UEs that are a member of the designated slice in the designated target cells. |  |
| dlSlicePriority | number | C | 0..1 | This attribute describes the priority of the slice in DL, that is communicated to the Near-RT RIC, for providing prioritization for using RAN resources. According to this attribute, QoS flows under a slice are prioritized. The lower the value, the higher the priority. The value shall be greater than or equal to 1. |  |
| ulSlicePriority | number | C | 0..1 | This attribute describes the priority of the slice in UL, that is communicated to the Near-RT RIC, for providing prioritization for using RAN resources. According to this attribute, QoS flows under a slice are prioritized. The lower the value, the higher the priority. The value shall be greater than or equal to 1. |  |
| maxDlPktSize | number | C | 0..1 | This attribute describes the maximum packet size to be supported by the network slice in the downlink in Bytes, that is communicated to the Near-RT RIC, for optimizing the RAN performance, especially for URLLC case and very small packets. Scope identifier designates the respective network slice and optionally slice SLA resources can further designate targeted cells. This attribute applies to all UEs that are a member of that slice in the designated target cells. This attribute is based on Maximum supported packet size (see GSMA NG.116 [17], clause 3.4.11 ("Maximum supported packet size")). The Maximum supported packet size in GSMA NG.116 [17] is for both uplink & downlink while maxDlPktSize is only for downlink. |  |
| maxUlPktSize | number | C | 0..1 | This attribute describes the maximum packet size to be supported by the network slice in the uplink in Bytes, that is communicated to the Near-RT RIC, for optimizing the RAN performance, especially for URLLC case and very small packets. Scope identifier designates the respective network slice and optionally slice SLA resources can further designate targeted cells. This attribute applies to all UEs that are a member of that slice in the designated target cells. This attribute is based on Maximum supported packet size (see GSMA NG.116 [17], clause 3.4.11 ("Maximum supported packet size")). The Maximum supported packet size in GSMA NG.116 [17] is for both uplink & downlink while maxUlPktSize is only for uplink. |  |
| NOTE 1: Presence condition "C" means that at least one attribute shall be included when this statement is used.  NOTE 2: Void  NOTE 3: Void | | | | | |

</div>

#### 6.3.3.6 Load balancing targets

The LbObjectives statement contains the attributes defined in table 6.3.3.6-1:

Table 6.3.3.6-1: Definition of statement type LbObjectives

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| Attribute name | Data type | P | Cardinality | Description | Applicability |
| targetPrbUsg | number | M | 1 | The target PRB usage in percent. The denominator is the total number of PRBs in the cell, and the numerator is the number of PRBs specified by prbUsgType. Value range: 0-100 [%] |  |
| prbUsgType | number | M | 1 | This attribute specifies the PRB usage type used in the calculation of targetPrbUsg.  1: Mean DL PRB used for data traffic (see 3GPP TS 28.552 [13], clause 5.1.1.2.5)  2: Mean UL PRB used for data traffic (see 3GPP TS 28.552 [13], clause 5.1.1.2.7)  3: Peak DL PRB used for data traffic (see 3GPP TS 28.552 [13], clause 5.1.1.2.9)  4: Peak UL PRB used for data traffic (see 3GPP TS 28.552 [13], clause 5.1.1.2.10)  5: Mean DL PRB used for data traffic per S-NSSAI (see 3GPP TS 28.552 [13], clause 5.1.1.2.5)  6: Mean UL PRB used for data traffic per S-NSSAI (see 3GPP TS 28.552 [13], clause 5.1.1.2.7)  7: Peak DL PRB used for data traffic per S-NSSAI (see 3GPP TS 28.552 [13], clause 5.1.1.2.9)  8: Peak UL PRB used for data traffic per S-NSSAI (see 3GPP TS 28.552 [13], clause 5.1.1.2.10) | If only cellId is included in the scope, applicable values are 1-4. If cellId and sliceId are included in the scope, applicable values are 5-8. |

</div>

#### 6.3.3.7 Energy saving targets

The EsObjectives statement contains the attributes defined in table 6.3.3.7-1:

Table 6.3.3.7-1: Definition of statement type EsObjectives

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| Attribute name | Data type | P | Cardinality | Description | Applicability |
| targetPeeEnergy | number | C | 0..1 | Target average value of energy consumption PEE.Energy of PNF such as O-RU in kWh over targeted list of cells  For "PEE.Energy" see 3GPP TS 28.552 [13], clause 5.1.1.19.3, for 5G NR and 3GPP TS 32.425 [25], clause 4.12.2, for 4G LTE. | 4G, 5G |
| esPercentage | number | C | 0..1 | Energy consumption reduction of O-RU in percentage. The energy consumption i.e. PEE.Energy is measured based on method defined in 3GPP TS 28.552[13], clause 5.1.1.19.3, for 5G NR and 3GPP TS 32.425 [23], clause 4.12.2, for 4G LTE.  Value range is between 0 and 100. | 4G, 5G |
| NOTE: Presence condition "C" means that one and only attribute shall be included when this data type is used. | | | | | |

</div>

### 6.3.4 Statements for policy resources

#### 6.3.4.1 Introduction

A1 policies are defined in A1GAP [2], clause 5.1.4.0 as containing a scope identifier and one or more policy statements where policy statements contain policy objectives and/or policy resources. This clause defines the structured data types and attributes to be used for policy resources.

Table 6.3.4.1-1 specifies the data types defined for policy resources in the A1-P interface protocol. The usage of these is policy type specific and defined in clause 7.2.

Table 6.3.4.1-1: Statements for policy resources

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| Data type | Clause defined | Description | Applicability |
| TspResources | 6.3.4.2 | Attributes used to schedule traffic on available cells in a different way than what would be through default behavior |  |
| SliceSlaResources | 6.3.4.3 | Attributes used to indicate the RAN resources (such as cells or tracking areas) targeted for the respective slice SLA objective |  |
| LbResources | 6.3.4.4 | Attributes used for load balancing between a congested cell and indicated candidate cells |  |
| EsResources | 6.3.4.5 | Attributes used to express conditions for cells to apply network energy savings |  |

</div>

#### 6.3.4.2 Traffic steering preference

The TspResources statement is defined in table 6.3.4.2-2 as an array of the type TspResource defined in table 6.3.4.2-1.

Table 6.3.4.2-1: Definition of type TspResource

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **Attribute name** | **Data type** | **P** | **Cardinality** | **Description** | **Applicability** |
| cellIdList | CellIdList | M | 1 | list of CellIds, see clause 6.3.2 |  |
| preference | PreferenceType | M | 1 | the preference of cell usage [SHALL/PREFER/AVOID/FORBID]. |  |
| primary | boolean | O | 0..1 | indicates applicability to the selection of primary cell |  |

</div>

Table 6.3.4.2-2: Definition of statement type TspResources

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| Attribute Name | Data Type | P | Cardinality | Description | Applicability |
| tspResources | array(TspResource) | M | 1..N | list of TspResource |  |

</div>

When the value of the preference attribute is set to PREFER or AVOID, the cellIdList contains cells in descending order of importance for how they should be preferred or avoided, e.g. the first entry is *most preferred* or *most avoided*.  When the preference value is set to SHALL or FORBID, the cellIdList contains cells that are of equal importance.

When the value of the primary attribute is set to *true*, and the value of the preference attribute is set to SHALL, then only a cell in the cellIdList is to be used as primary cell. When the value of the primary attribute is set to *true*, and the value of the preference attribute is set to PREFER, then a cell in the cellIdList may be used as primary cell. When the value of the primary attribute is set to *true*, and the preference value is set to AVOID or FORBID, then no cell in the cellIdList is to be used as primary cell.

When the value of the primary attribute is set to *false*, and the value of the preference attribute is set to SHALL, then only one or more cells in the cellIdList are to be used as secondary cell. When the value of the primary attribute is set to *false*, and the value of the preference attribute is set to PREFER, then one or more cells in the cellIdList may be used as secondary cell. When the value of the primary attribute is set to *false*, and the preference value is set to AVOID or FORBID, then no cell in the cellIdList is to be used as secondary cell.

When the primary attribute is not included, the statement shall be handled in the same way as when the primary attribute is set to *false*.

#### 6.3.4.3 Slice SLA Policy Resources

The SliceSlaResources statement is defined in table 6.3.4.3-1.

**Table 6.3.4.3-1: Definition of type SliceSlaResources**

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **Attribute name** | **Data type** | **P** | **Cardinality** | **Description** | **Applicability** |
| cellIdList | CellIdList | C | 0..1 | list of CellIds, see clause 6.3.2 |  |
| taIList | TaIList | C | 0..1 | list of TaIs, see clause 6.3.2 |  |
| NOTE: Presence condition "C" means that one and only one attribute shall be included when this statement is used. | | | | | |

</div>

#### 6.3.4.4 Load Balancing Policy Resources

The LbResources statement is defined in table 6.3.4.4-1.

**Table 6.3.4.4-1: Definition of type LbResources**

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **Attribute name** | **Data type** | **P** | **Cardinality** | **Description** | **Applicability** |
| cellIdList | CellIdList | M | 1 | list of CellIds used to designate candidate cells to which cell load is to be transferred |  |

</div>

#### 6.3.4.5 Energy Savings resources

The EsResources statement is defined in Table 6.3.4.5-2 as an array of the type EsResource defined in Table 6.3.4.5-1.

Table 6.3.4.5-1: Definition of type EsResource

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| Attribute name | Data type | P | Cardinality | Description | Applicability |
| operationalCells | CellIdList | C | 0..1 | list of Cells preferred to keep operational, see clause 6.3.2 table 6.3.2-1 for the definition of the data type CellIdList, see NOTE 1 | 4G, 5G |
| operationalPreference | AvoidanceType | C | 0..1 | the operational preference of the cells while performing network energy saving [AVOID/FORBID], see clause 6.2.2.4 for the definition of the data type AvoidanceType, see NOTE 2 | 4G, 5G |
| coverageCells | CellIdList | C | 0..1 | list of cells with coverage preferences, see clause 6.3.2 table 6.3.2-1  for the definition of the data type CellIdList, see NOTE 1 | 4G, 5G |
| coveragePreference | AvoidanceType | C | 0..1 | the coverage preference of the cells while performing network energy saving [AVOID/FORBID], see clause 6.2.2.4 for the definition of the data type AvoidanceType, see NOTE 3 | 4G, 5G |
| dlPrbUsage | integer | O | 0..1 | The DL PRB usage (in percentage). The value range of this attribute is from 0 to 100. For "RRU.PrbDl", see 3GPP TS 28.552 [13], clause 5.1.1.2.1. A cell shall not perform network energy saving when its DL PRB usage is higher than the specified value. This attribute applies to all cells within the policy scope. | 5G |
| ulPrbUsage | integer | O | 0..1 | The UL PRB usage (in percentage). The value range of this attribute is from 0 to 100. For "RRU.PrbUl" see 3GPP TS 28.552 [13], clause 5.1.1.2.2. A cell shall not perform network energy saving when its UL PRB usage is higher than the specified value. This attribute applies to all cells within the policy scope. | 5G |
| NOTE 1: Presence condition "C" means that least operationalCells or coverageCells shall be included when this statement is used.  NOTE 2: Presence condition "C" means that the operationalPreference shall only be included in case operationalCells is included.  NOTE 3: Presence condition "C" means that the coveragePreference shall only be included in case coverageCells is included. | | | | | |

</div>

Table 6.3.4.5-2: Definition of statement type EsResources

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| Attribute Name | Data Type | P | Cardinality | Description | Applicability |
| esResources | array(EsResource) | M | 1..N | list of EsResource | 4G, 5G |

</div>

When the value of the operationalPreference attribute is set to FORBID, the operationalCells contains cells that are forbidden from being non-operational while performing the network energy savings. The operationalCells contains cells that are of equal importance.

When the value of the operationalPreference attribute is set to AVOID, the operationalCells contains cells that should be avoided from being non-operational while performing the network energy savings. The operationalCells contains cells in descending order of importance for how they should be avoided, e.g. the first entry is most avoided from being non-operational while performing the network energy savings.

When the value of the coveragePreference attribute is set to FORBID, the coverageCells contains cells that are forbidden from having any coverage impact while performing the network energy savings. The coverageCells contains cells that are of equal importance.

When the value of the coveragePreference attribute is set to AVOID, the coverageCells contains cells that should be avoided from having any coverage impact while performing the network energy savings. The coverageCells contains cells in descending order of importance for how they should be avoided, e.g. the first entry is most avoided from having any coverage impact while performing the network energy savings.

If dlPrbUsage is present in EsResource, then a cell may perform network energy saving methods only when its DL PRB usage is not higher than the specified dlPrbUsage value. If ulPrbUsage is present in EsResource, then a cell may perform network energy saving methods only when its UL PRB usage is not higher than the specified ulPrbUsage value. If both dlPrbUsage and ulPrbUsage are present in EsResource, then a cell may perform network energy saving methods only when its DL PRB usage is not higher than the specified dlPrbUsage value and its UL PRB usage is not higher than the specified ulPrbUsage value. The conditions should be checked when the corresponding performance measurements are available at the Near-RT RIC.

## 6.4 Policy representations objects

### 6.4.1 Policy object

#### 6.4.1.1 General

A PolicyObject is based on IETF RFC 8259 [6] and it always contains one set of:

* one ScopeIdentifier; and
* one or more Statements.

The PolicyObject can contain objective and/or resource statements as defined in table 6.4.1.1-1.

Table 6.4.1.1-1: General definition of PolicyObject

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| Attribute name | Data type | P | Cardinality | Description | Applicability |
| scope | ScopeIdentifier | M | 1 | See clause 6.3.1 |  |
| qosObjectives | QosObjectives | C | 0..1 | See clause 6.3.3.2 |  |
| qoeObjectives | QoeObjectives | C | 0..1 | See clause 6.3.3.3 |  |
| ueLevelObjectives | UeLevelObjectives | C | 0..1 | See clause 6.3.3.4 |  |
| sliceSlaObjectives | SliceSlaObjectives | C | 0..1 | See clause 6.3.3.5 |  |
| lbObjectives | LbObjectives | C | 0..1 | See clause 6.3.3.6 |  |
| tspResources | TspResources | C | 0..1 | See clause 6.3.4.2 |  |
| sliceSlaResources | SliceSlaResources | O | 0..1 | See clause 6.3.4.3 |  |
| lbResources | LbResources | C | 0..1 | See clause 6.3.4.4 |  |
| esObjectives | EsObjectives | C | 0..1 | See clause 6.3.3.7 |  |
| esResources | EsResources | C | 0..1 | See clause 6.3.4.5 |  |
| NOTE: Presence condition "M" means that the data type shall be included in a PolicyObject. Allowed combinations are listed in clause 7. Presence condition "C" means that at least one Statement (for policy objectives and/or policy resources) shall be included. Presence condition "O" means that the data type can be optionally included in a PolicyObject. | | | | | |

</div>

This definition is general and indicates how to formally construct a PolicyObject. The policy types in clause 7.2 define PolicyObjects for usage in the A1 service operations defined in A1AP [3], clause 5.3.

#### 6.4.1.2 Allowed combinations

A Statement can be applied together with a ScopeIdentifier containing different combinations of identifiers attributes. Not all combinations are relevant and different combinations are relevant for different policy types (see clause 7).

### 6.4.2 Policy status object

A PolicyStatusObject is based on IETF RFC 8259 [6] and contains:

* one enforceStatus attribute; and conditionally
* one enforceReason attribute.

The PolicyStatusObject contains status related attributes as defined in table 6.4.2.1-1:

Table 6.4.2.1: General definition of PolicyStatusObject

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| Attribute name | Data type | P | Cardinality | Description | Applicability |
| enforceStatus | EnforcementStatusType | M | 1 | See clause 6.2.2 | statement indicating enforcement status of policy |
| enforceReason | EnforcementReasonType | C | 0..1 | See clause 6.2.2 | statement indicating reason for change of enforcement status |
| NOTE: Presence condition "M" means that the data type shall be included in a PolicyStatusObject used with the PolicyObjects defined in the present document. A PolicyObject and a PolicyStatusObject for a future policy type may be defined based on other attributes. Presence condition "C" means that the enforceReason shall only be included in case enforceStatus is NON\_ENFORCED. | | | | | |

</div>

### 6.4.3 Policy type object

A PolicyTypeObject is based on IETF RFC 8259 [6] and contains:

* one JSON schema for PolicyObject; and optionally
* one JSON schema for PolicyStatusObject.

The type PolicyTypeObject is defined in table 6.4.3-1.

Table 6.4.3-1: General definition of PolicyTypeObject

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| Attribute name | Data type | P | Cardinality | Description | Applicability |
| policySchema | JsonSchema | M | 1 | The schemas are policy type specific |  |
| statusSchema | JsonSchema | O | 0..1 |  |
| NOTE 1: Clause 7.2 contains definitions and policy type specific schemas for O-RAN defined A1 policy types.  NOTE 2: The policySchema attribute shall contain the compound policy schema as described in clause 7.1.3.1. | | | | | |

</div>

The JSON schema for a PolicyObject is used by the A1-P Producer to validate a PolicyObject during Create policy and Update policy procedures. The JSON schema for a PolicyStatusObject is used by the A1-P Consumer to validate a PolicyStatusObject during Query policy status and Feedback policy procedures. The PolicyTypeObject can be retrieved using the Query policy type procedure.

## 6.5 Binary data

Binary data is not applicable in the present document.

# 7 A1-P data types (A1 policy types)

## 7.1 Introduction

### 7.1.1 Identification and compatibility of policy types

A policy type is identified by a PolicyTypeId as defined in A1AP [3], clause 6.2.3.1.3. The PolicyTypeId is a string that consists of two parts: a typename and a version.

When updating a policy type, the version in the PolicyTypeId is updated according to SemVer [19] to reflect its compatibility with other policy types that has the same typename.

Two policy types are considered as different if the PolicyTypeId is different, i.e. even if the typename is the same and the version only differs in the patch version digit.

Two policy types are compatible in case the typename is the same and the major version digit in the version is the same. In general, two policy types X and Y are compatible when all objects that can be created based on policy type X can be validated by the schemas for policy type Y and all objects that can be created based on policy type Y can be validated by the schemas for policy type X.

### 7.1.2 Common definitions

#### 7.1.2.1 Scope and resource identifiers

An A1 policy type always contains a ScopeIdentifier with data types defined in clause 6.3.1. It may also contain attributes for a resource statement that includes identifiers defined in clauses 6.3.2 and 6.3.4. To enable multiple policy types to be created based on the same identifiers, the policy schemas can link to the same JSON subschema for common data types.

Each policy type definition links to a specific version of the common data types schema and the compatibility relations are described in Annex C. The policy types defined in the present document link to the version of the common data types schema defined in the present document.

When updating the common data types schema, the version is updated according to SemVer [19]. The $id keyword in the common data types schema contains the version as part of the URI.

{

"$schema": "https://json-schema.org/draft/2020-12/schema",

"$id": "https://schemas.o-ran.org/jsonschemas/a1td/common\_2.0.0",

"description": "scope identifier definitions",

"$defs": {

"RanUeId": {

"type": "string",

"pattern": "^[A-Fa-f0-9]{16}$"

},

"GroupId": {

"oneOf": [

{

"type":"object",

"properties": {

"spId": {

"type": "integer",

"minimum": 1,

"maximum": 256

}

},

"additionalProperties": false,

"required": ["spId"]

},

{

"type": "object",

"properties": {

"rfspIndex": {

"type": "integer",

"minimum": 1,

"maximum": 256

}

},

"additionalProperties": false,

"required": ["rfspIndex"]

}

]

},

"SliceId": {

"type": "object",

"properties": {

"sst": {

"type": "integer",

"minimum": 0,

"maximum": 255

},

"sd": {

"type": "string",

"pattern": "^[A-Fa-f0-9]{6}$"

},

"plmnId": {"$ref": "#/$defs/PlmnId"}

},

"additionalProperties": false,

"required": ["sst","plmnId"]

},

"QosId": {

"oneOf": [

{

"type":"object",

"properties": {

"5qI": {

"type": "integer",

"minimum": 1,

"maximum": 256

}

},

"additionalProperties": false,

"required": ["5qI"]

},

{

"type": "object",

"properties": {

"qcI": {

"type": "integer",

"minimum": 1,

"maximum": 256

}

},

"additionalProperties": false,

"required": ["qcI"]

}

]

},

"TaIList": {

"type":"array",

"items": {

"$ref": "#/$defs/TaI"

},

"minItems": 1

},

"TaI": {

"type": "object",

"properties": {

"plmnId": {"$ref": "#/$defs/PlmnId"},

"tac": {

"type": "string",

"pattern": "^[A-Fa-f0-9]{6}$"

}

},

"additionalProperties": false,

"required": ["plmnId","tac"]

},

"CellIdList": {

"type":"array",

"items": {

"$ref": "#/$defs/CellId"

},

"minItems": 1

},

"CellId": {

"type": "object",

"properties": {

"plmnId": {"$ref": "#/$defs/PlmnId"},

"cId": {"$ref": "#/$defs/CId"}

},

"additionalProperties": false,

"required": ["plmnId", "cId"]

},

"CId": {

"oneOf": [

{

"type":"object",

"properties": {

"ncI": {"$ref": "#/$defs/NcI"}

},

"additionalProperties": false,

"required": ["ncI"]

},

{

"type": "object",

"properties": {

"ecI": {"$ref": "#/$defs/EcI"}

},

"additionalProperties": false,

"required": ["ecI"]

}

]

},

"NcI": {

"type": "integer",

"minimum": 0,

"maximum": 68719476735

},

"EcI": {

"type": "integer",

"minimum": 0,

"maximum": 268435455

},

"PlmnId": {

"type": "object",

"properties": {

"mcc": {

"type": "string",

"pattern": "^[0-9]{3}$"

},

"mnc": {

"type": "string",

"pattern": "^[0-9]{2,3}$"

}

},

"additionalProperties": false,

"required": ["mcc", "mnc"]

},

"MmeGroupId": {

"type": "string",

"pattern": "^[A-Fa-f0-9]{4}$"

},

"MmeCode": {

"type": "string",

"pattern": "^[A-Fa-f0-9]{2}$"

},

"GuMmeI": {

"type": "object",

"properties": {

"plmnId": {"$ref": "#/$defs/PlmnId"},

"mmeGroupId": {"$ref": "#/$defs/MmeGroupId"},

"mmeCode": {"$ref": "#/$defs/MmeCode"}

},

"additionalProperties": false,

"required": ["plmnId", "mmeGroupId", "mmeCode"]

},

"MmeUeS1apId": {

"type": "integer",

"minimum": 0,

"maximum": 4294967295

},

"GuMmeUeS1apId": {

"type": "object",

"properties": {

"guMmeI": {"$ref": "#/$defs/GuMmeI"},

"mmeUeS1apId": {"$ref": "#/$defs/MmeUeS1apId"}

},

"additionalProperties": false,

"required": ["guMmeI", "mmeUeS1apId"]

},

"AmfRegionId": {

"type": "string",

"pattern": "^[A-Fa-f0-9]{2}$"

},

"AmfSetId": {

"type": "string",

"pattern": "^[0-3][A-Fa-f0-9]{2}$"

},

"AmfPointer": {

"type": "string",

"pattern": "^[0-3][A-Fa-f0-9]{1}$"

},

"GuAmI": {

"type": "object",

"properties": {

"plmnId": {"$ref": "#/$defs/PlmnId"},

"amfRegionId": {"$ref": "#/$defs/AmfRegionId"},

"amfSetId": {"$ref": "#/$defs/AmfSetId"},

"amfPointer": {"$ref": "#/$defs/AmfPointer"}

},

"additionalProperties": false,

"required": ["plmnId", "amfRegionId", "amfSetId", "amfPointer"]

},

"AmfUeNgapId": {

"type": "integer",

"minimum": 0,

"maximum": 1099511627775

},

"GuAmfUeNgapId": {

"type": "object",

"properties": {

"guAmI": {"$ref": "#/$defs/GuAmI"},

"amfUeNgapId": {"$ref": "#/$defs/AmfUeNgapId"}

},

"additionalProperties": false,

"required": ["guAmI", "amfUeNgapId"]

},

"GnbId": {

"type": "object",

"properties": {

"gnbIdLength": {

"type": "integer",

"minimum": 22,

"maximum": 32

},

"gnbIdValue": {

"type": "integer",

"minimum": 0,

"maximum": 4294967295

}

},

"additionalProperties": false,

"required": ["gnbIdLength","gnbIdValue"]

},

"GlobalGnbId": {

"type": "object",

"properties": {

"plmnId": {"$ref": "#/$defs/PlmnId"},

"gnbId": {"$ref": "#/$defs/GnbId"}

},

"additionalProperties": false,

"required": ["plmnId", "gnbId"]

},

"GuRanUeId": {

"type": "object",

"properties": {

"globalGnbId": {"$ref": "#/$defs/GlobalGnbId"},

"ranUeId": {"$ref": "#/$defs/RanUeId"}

},

"additionalProperties": false,

"required": ["globalGnbId", "ranUeId"]

},

"GnbCuUeF1apId": {

"type": "integer",

"minimum": 0,

"maximum": 4294967295

},

"GuGnbCuUeF1apId": {

"type": "object",

"properties": {

"globalGnbId": {"$ref": "#/$defs/GlobalGnbId"},

"gnbCuUeF1apId": {"$ref": "#/$defs/GnbCuUeF1apId"}

},

"additionalProperties": false,

"required": ["globalGnbId", "gnbCuUeF1apId"]

},

"GnbCuCpUeE1apId": {

"type": "integer",

"minimum": 0,

"maximum": 4294967295

},

"GuGnbCuCpUeE1apId": {

"type": "object",

"properties": {

"globalGnbId": {"$ref": "#/$defs/GlobalGnbId"},

"gnbCuCpUeE1apId": {"$ref": "#/$defs/GnbCuCpUeE1apId"}

},

"additionalProperties": false,

"required": ["globalGnbId", "gnbCuCpUeE1apId"]

},

"EnbUeX2apId": {

"type": "integer",

"minimum": 0,

"maximum": 4095

},

"EnbId": {

"oneOf": [

{

"type":"object",

"properties": {

"macroEnbId": {

"type": "string",

"pattern": "^[A-Fa-f0-9]{5}$"

}

},

"additionalProperties": false,

"required": ["macroEnbId"]

},

{

"type":"object",

"properties": {

"homeEnbId": {

"type": "string",

"pattern": "^[A-Fa-f0-9]{7}$"

}

},

"additionalProperties": false,

"required": ["homeEnbId"]

},

{

"type":"object",

"properties": {

"shortMacroEnbId": {

"type": "string",

"pattern": "^[0-3][A-Fa-f0-9]{4}$"

}

},

"additionalProperties": false,

"required": ["shortMacroEnbId"]

},

{

"type":"object",

"properties": {

"longMacroEnbId": {

"type": "string",

"pattern": "^[0-1][A-Fa-f0-9]{5}$"

}

},

"additionalProperties": false,

"required": ["longMacroEnbId"]

}

]

},

"GlobalEnbId": {

"type": "object",

"properties": {

"plmnId": {"$ref": "#/$defs/PlmnId"},

"enbId": {"$ref": "#/$defs/EnbId"}

},

"additionalProperties": false,

"required": ["plmnId", "enbId"]

},

"GuEnbUeX2apId": {

"type": "object",

"properties": {

"globalEnbId": {"$ref": "#/$defs/GlobalEnbId"},

"enbUeX2apId": {"$ref": "#/$defs/EnbUeX2apId"}

},

"additionalProperties": false,

"required": ["globalEnbId", "enbUeX2apId"]

},

"UeId": {

"oneOf": [

{

"type":"object",

"properties": {

"guRanUeId": {"$ref": "#/$defs/GuRanUeId"}

},

"additionalProperties": false,

"required": ["guRanUeId"]

},

{

"type":"object",

"properties": {

"guAmfUeNgapId": {"$ref": "#/$defs/GuAmfUeNgapId"}

},

"additionalProperties": false,

"required": ["guAmfUeNgapId"]

},

{

"type":"object",

"properties": {

"guMmeUeS1apId": {"$ref": "#/$defs/GuMmeUeS1apId"}

},

"additionalProperties": false,

"required": ["guMmeUeS1apId"]

},

{

"type":"object",

"properties": {

"guGnbCuUeF1apId": {"$ref": "#/$defs/GuGnbCuUeF1apId"}

},

"additionalProperties": false,

"required": ["guGnbCuUeF1apId"]

},

{

"type":"object",

"properties": {

"guGnbCuCpUeE1apId": {"$ref": "#/$defs/GuGnbCuCpUeE1apId"}

},

"additionalProperties": false,

"required": ["guGnbCuCpUeE1apId"]

},

{

"type":"object",

"properties": {

"guEnbUeX2apId": {"$ref": "#/$defs/GuEnbUeX2apId"}

},

"additionalProperties": false,

"required": ["guEnbUeX2apId"]

}

]

}

}

}

#### 7.1.2.2 Policy status

This is a generic policy status schema, it may be adjusted and used together with a policy schema in a PolicyTypeObject and will then be identified by the same policy type identifier as the policy schema.

{

"$schema": "https://json-schema.org/draft/2020-12/schema",

"description": "O-RAN standard policy status",

"type": "object",

"properties": {

"enforceStatus": {

"type": "string",

"enum": [

"ENFORCED",

"NOT\_ENFORCED"

]

},

"enforceReason": {

"type": "string",

"enum": [

"SCOPE\_NOT\_APPLICABLE",

"STATEMENT\_NOT\_APPLICABLE",

"OTHER\_REASON"

]

}

},

"additionalProperties": false,

"required": ["enforceStatus"]

}

### 7.1.3 Schema identification

#### 7.1.3.1 General

The policy schemas defined in clause 7.2 (e.g. policy schema for QoS target in clause 7.2.1.3.1) are base schemas that embed a subschema with common data types definitions. The base schemas can be used for creating or validating A1 policies after embedding the content of the linked common data types schema. A schema resulting from embedding the content of a linked subschema into a base schema is referred to as a compound schema document, see JSON Schema Draft 2020-12 [7]. It is the compound policy schemas that are identified by the policy type identifier and included in the PolicyTypeObject specified in clause 6.4.3.

The base schema and the linked subschema together represent the same JSON schema as the compound schema created by embedding the linked subschema into the base schema at the place where it is linked. Hence, the versions of a compound policy schema and its base policy schema are the same, and is indicated in the policy type identifier. The policy type identifier is part of the $id keyword included in the policy schema. The $id keyword of the embedded subschemas are included in the subschema.

#### 7.1.3.2 Schema URI structure

The base URI for A1 policy types and embedded schemas is:

**{uriRoot}/a1td**

where uriRoot follows an absolute URI syntax, but excludes the "query" component. The URI root contains the "scheme" component and may contain an "authority" component and may also contain a prefix subcomponent.

The $id keyword for the policy schemas are constructed from the base URI and the policy type identifier:

**{uriRoot}/a1td/<policyTypeId>**

The $id keyword for the subschema with common data types is constructed from the base URI, the name "common", and the version (x.y.z):

**{uriRoot}/a1td/common\_<x.y.z>.**

In the JSON schemas defined in the present document, the default uriRoot is:

**https://schemas.o-ran.org/jsonschemas**

## 7.2 Policy type definitions

### 7.2.1 QoS target

#### 7.2.1.1 Policy type identifier

PolicyTypeId: **ORAN\_QoSTarget\_5.0.0**

#### 7.2.1.2 Rationale

##### 7.2.1.2.1 Use case

See Non-RT RIC & A1/R1 interface: Use Cases and Requirements [1], clause 4.3.

##### 7.2.1.2.2 Statements, restrictions and extensions

A QoS statement can be applied together with ScopeIdentifier containing different combinations of identifiers. Not all combinations are relevant. Table 7.2.1.2.2-1 indicates the combinations that are allowed.

Table 7.2.1.2.2-1: Allowed combinations of qosObjectives statement with ScopeIdentifier

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| ScopeIdentifier  Policy statement | ueId | groupId | sliceId | qosId | cellId |
| qosObjectives | 1 | 0..1 | 0 | 1 | 0..1 |
| qosObjectives | 1 | 0 | 0..1 | 1 | 0..1 |
| qosObjectives | 0 | 1 | 0 | 1 | 0..1 |
| qosObjectives | 0 | 0 | 1 | 1 | 0..1 |
| qosObjectives | 0 | 0 | 0 | 1 | 0..1 |
| NOTE: on each row is listed a combination of identifiers that is allowed for the indicated statement. Notation is the same as for cardinality: "0" means the identifier shall not occur, "0..1" means the identifier may occur and "1" means the identifier shall occur. Only at most one occurrence of an identifier is allowed in the present version. | | | | | |

</div>

#### 7.2.1.3 JSON schemas

##### 7.2.1.3.1 Policy schema

{

"$schema": "https://json-schema.org/draft/2020-12/schema",

"$id": "https://schemas.o-ran.org/jsonschemas/a1td/oran\_qostarget\_5.0.0",

"description": "O-RAN standard QoS Target policy",

"type": "object",

"properties": {

"scope": {

"anyOf": [

{

"type": "object",

"properties": {

"ueId": {"$ref": "/jsonschemas/a1td/common\_2.0.0#/$defs/UeId"},

"groupId": {"$ref": "/jsonschemas/a1td/common\_2.0.0#/$defs/GroupId"},

"qosId": {"$ref": "/jsonschemas/a1td/common\_2.0.0#/$defs/QosId"},

"cellId": {"$ref": "/jsonschemas/a1td/common\_2.0.0#/$defs/CellId"}

},

"additionalProperties": false,

"required": ["ueId", "qosId"]

},

{

"type": "object",

"properties": {

"ueId": {"$ref": "/jsonschemas/a1td/common\_2.0.0#/$defs/UeId"},

"sliceId": {"$ref": "/jsonschemas/a1td/common\_2.0.0#/$defs/SliceId"},

"qosId": {"$ref": "/jsonschemas/a1td/common\_2.0.0#/$defs/QosId"},

"cellId": {"$ref": "/jsonschemas/a1td/common\_2.0.0#/$defs/CellId"}

},

"additionalProperties": false,

"required": ["ueId", "qosId"]

},

{

"type": "object",

"properties": {

"groupId": {"$ref": "/jsonschemas/a1td/common\_2.0.0#/$defs/GroupId"},

"qosId": {"$ref": "/jsonschemas/a1td/common\_2.0.0#/$defs/QosId"},

"cellId": {"$ref": "/jsonschemas/a1td/common\_2.0.0#/$defs/CellId"}

},

"additionalProperties": false,

"required": ["groupId", "qosId"]

},

{

"type": "object",

"properties": {

"sliceId": {"$ref": "/jsonschemas/a1td/common\_2.0.0#/$defs/SliceId"},

"qosId": {"$ref": "/jsonschemas/a1td/common\_2.0.0#/$defs/QosId"},

"cellId": {"$ref": "/jsonschemas/a1td/common\_2.0.0#/$defs/CellId"}

},

"additionalProperties": false,

"required": ["sliceId", "qosId"]

},

{

"type": "object",

"properties": {

"qosId": {"$ref": "/jsonschemas/a1td/common\_2.0.0#/$defs/QosId"},

"cellId": {"$ref": "/jsonschemas/a1td/common\_2.0.0#/$defs/CellId"}

},

"additionalProperties": false,

"required": ["qosId"]

}

]

},

"qosObjectives": {

"type": "object",

"properties": {

"gfbr": {"type": "number"},

"mfbr": {"type": "number"},

"priorityLevel": {"type": "number"},

"pdb": {"type": "number"}

},

"minProperties": 1,

"additionalProperties": false

}

},

"additionalProperties": false,

"required": ["scope", "qosObjectives"],

"$defs": {

"https://schemas.o-ran.org/jsonschemas/a1td/common\_2.0.0":

}

}

##### 7.2.1.3.2 Policy status schema

The generic policy status schema in clause 7.1.2.2 is used.

### 7.2.2 QoE target

#### 7.2.2.1 Policy type identifier

**PolicyTypeId: ORAN\_QoETarget\_5.0.0**

#### 7.2.2.2 Rationale

##### 7.2.2.2.1 Use case

See Non-RT RIC & A1/R1 interface: Use Cases and Requirements [1], clause 4.2.

##### 7.2.2.2.2 Statements, restrictions and extensions

A QoE statement can be applied together with ScopeIdentifier containing different combinations of identifiers. Not all combinations are relevant. Table 7.2.2.2.2-1 indicates the combinations that are allowed.

Table 7.2.2.2.2-1: Allowed combinations of qoeObjectives statement with ScopeIdentifier

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| ScopeIdentifier  Policy statement | ueId | groupId | sliceId | qosId | cellId |
| qoeObjectives | 1 | 0 | 1 | 0..1 | 0..1 |
| qoeObjectives | 1 | 0 | 0 | 1 | 0..1 |
| qoeObjectives | 0 | 0 | 1 | 0..1 | 0..1 |
| qoeObjectives | 0 | 0 | 0 | 1 | 0..1 |
| NOTE: on each row is listed a combination of identifiers that is allowed for the indicated statement. Notation is the same as for caridinality: "0" means the identifier shall not occur, "0..1" means the identifier may occur and "1" means the identifier shall occur. Only at most one occurrence of an identifier is allowed in the present version. | | | | | |

</div>

#### 7.2.2.3 JSON schemas

##### 7.2.2.3.1 Policy schema

{

"$schema": "https://json-schema.org/draft/2020-12/schema",

"$id": "https://schemas.o-ran.org/jsonschemas/a1td/oran\_qoetarget\_5.0.0",

"description": "O-RAN standard QoE Target policy",

"type": "object",

"properties": {

"scope": {

"anyOf": [

{

"type": "object",

"properties": {

"ueId": {"$ref": "/jsonschemas/a1td/common\_2.0.0#/$defs/UeId"},

"sliceId": {"$ref": "/jsonschemas/a1td/common\_2.0.0#/$defs/SliceId"},

"qosId": {"$ref": "/jsonschemas/a1td/common\_2.0.0#/$defs/QosId"},

"cellId": {"$ref": "/jsonschemas/a1td/common\_2.0.0#/$defs/CellId"}

},

"additionalProperties": false,

"required": ["ueId", "sliceId"]

},

{

"type": "object",

"properties": {

"ueId": {"$ref": "/jsonschemas/a1td/common\_2.0.0#/$defs/UeId"},

"qosId": {"$ref": "/jsonschemas/a1td/common\_2.0.0#/$defs/QosId"},

"cellId": {"$ref": "/jsonschemas/a1td/common\_2.0.0#/$defs/CellId"}

},

"additionalProperties": false,

"required": ["ueId", "qosId"]

},

{

"type": "object",

"properties": {

"sliceId": {"$ref": "/jsonschemas/a1td/common\_2.0.0#/$defs/SliceId"},

"qosId": {"$ref": "/jsonschemas/a1td/common\_2.0.0#/$defs/QosId"},

"cellId": {"$ref": "/jsonschemas/a1td/common\_2.0.0#/$defs/CellId"}

},

"additionalProperties": false,

"required": ["sliceId"]

},

{

"type": "object",

"properties": {

"qosId": {"$ref": "/jsonschemas/a1td/common\_2.0.0#/$defs/QosId"},

"cellId": {"$ref": "/jsonschemas/a1td/common\_2.0.0#/$defs/CellId"}

},

"additionalProperties": false,

"required": ["qosId"]

}

]

},

"qoeObjectives": {

"type": "object",

"properties": {

"qoeScore": {"type": "number"},

"initialBuffering": {"type": "number"},

"reBuffFreq": {"type": "number"},

"stallRatio": {"type": "number"}

},

"minProperties": 1,

"additionalProperties": false

}

},

"additionalProperties": false,

"required": ["scope", "qoeObjectives"],

"$defs": {

"https://schemas.o-ran.org/jsonschemas/a1td/common\_2.0.0":

}

}

##### 7.2.2.3.2 Policy status schema

The generic policy status schema in clause 7.1.2.2 is used.

### 7.2.3 Traffic steering preferences

#### 7.2.3.1 Policy type identifier

PolicyTypeId: **ORAN\_TrafficSteeringPreference\_5.0.0**

#### 7.2.3.2 Rationale

##### 7.2.3.2.1 Use case

See in Non-RT RIC & A1/R1 interface: Use Cases and Requirements [1], clause 4.1.

##### 7.2.3.2.2 Statements, restrictions and extensions

A TSP statement can be applied together with ScopeIdentifier containing different combinations of identifiers. Not all combinations are relevant. Table 7.2.3.2.2-1 indicates combinations that are allowed.

Table 7.2.3.2.2-1: Allowed combinations of tspResources statement with ScopeIdentifier

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| ScopeIdentifier  Policy statement | ueId | groupId | sliceId | qosId | cellId |
| tspResources | 1 | 0 | 0..1 | 0..1 | 0..1 |
| tspResources | 0 | 0 | 1 | 0..1 | 0..1 |
| NOTE: on each row is listed a combination of identifiers that is allowed for the indicated statement. Notation is the same as for caridinality: "0" means the identifier shall not occur, "0..1" means the identifier may occur and "1" means the identifier shall occur. Only at most one occurrence of an identifier is allowed in the present version. | | | | | |

</div>

#### 7.2.3.3 JSON schemas

##### 7.2.3.3.1 Policy schema

{

"$schema": "https://json-schema.org/draft/2020-12/schema",

"$id": "[https://schemas.o-ran.org/jsonschemas/a1td/oran\_ trafficsteeringpreference\_5.0.0](https://schemas.o-ran.org/jsonschemas/a1td/oran_%20trafficsteeringpreference_5.0.0)"

"description": "O-RAN standard Traffic Steering Preference policy",

"type": "object",

"properties": {

"scope": {

"anyOf": [

{

"type": "object",

"properties": {

"ueId": {"$ref": "/jsonschemas/a1td/common\_2.0.0#/$defs/UeId"},

"sliceId": {"$ref": "/jsonschemas/a1td/common\_2.0.0#/$defs/SliceId"},

"qosId": {"$ref": "/jsonschemas/a1td/common\_2.0.0#/$defs/QosId"},

"cellId": {"$ref": "/jsonschemas/a1td/common\_2.0.0#/$defs/CellId"}

},

"additionalProperties": false,

"required": ["ueId"]

},

{

"type": "object",

"properties": {

"sliceId": {"$ref": "/jsonschemas/a1td/common\_2.0.0#/$defs/SliceId"},

"qosId": {"$ref": "/jsonschemas/a1td/common\_2.0.0#/$defs/QosId"},

"cellId": {"$ref": "/jsonschemas/a1td/common\_2.0.0#/$defs/CellId"}

},

"additionalProperties": false,

"required": ["sliceId"]

}

]

},

"tspResources": {

"type": "array",

"items": {

"$ref": "#/$defs/TspResource"

},

"minItems": 1

}

},

"additionalProperties": false,

"required": ["scope", "tspResources"],

"$defs": {

"PreferenceType": {

"type": "string",

"enum": [

"SHALL",

"PREFER",

"AVOID",

"FORBID"

]

},

"TspResource": {

"type": "object",

"properties": {

"cellIdList": {"$ref": "/jsonschemas/a1td/common\_2.0.0#/$defs/CellIdList"},

"preference": {"$ref": "#/$defs/PreferenceType"},

"primary": {"type": "boolean"}

},

"required": ["cellIdList", "preference"],

"additionalProperties": false

},

"https://schemas.o-ran.org/jsonschemas/a1td/common\_2.0.0":

}

}

##### 7.2.3.3.2 Policy status schema

The generic policy status schema in clause 7.1.2.2 is used.

### 7.2.4 QoS optimization with resource directive

#### 7.2.4.1 Policy type identifier

PolicyTypeId: **ORAN\_QoSandTSP\_5.0.0**

#### 7.2.4.2 Rationale

##### 7.2.4.2.1 Use case

Addresses both the use cases specified in Non-RT RIC & A1/R1 interface: Use Cases and Requirements [1], clauses 4.3 and 4.1.

##### 7.2.4.2.2 Statements, restrictions and extensions

The allowed combinations of ScopeIdentifier and statements is the common subset of those defined for the policy type QoS Target and the policy type Traffic Steering Preferences.

#### 7.2.4.3 JSON schemas

##### 7.2.4.3.1 Policy schema

{

"$schema": "https://json-schema.org/draft/2020-12/schema",

"$id": "https://schemas.o-ran.org/jsonschemas/a1td/oran\_qosandtsp\_5.0.0",

"description": "O-RAN standard QoS Target and Traffic Steering Preference policy",

"type": "object",

"properties": {

"scope": {

"anyOf": [

{

"type": "object",

"properties": {

"ueId": {"$ref": "/jsonschemas/a1td/common\_2.0.0#/$defs/UeId"},

"sliceId": {"$ref": "/jsonschemas/a1td/common\_2.0.0#/$defs/SliceId"},

"qosId": {"$ref": "/jsonschemas/a1td/common\_2.0.0#/$defs/QosId"},

"cellId": {"$ref": "/jsonschemas/a1td/common\_2.0.0#/$defs/CellId"}

},

"additionalProperties": false,

"required": ["ueId", "qosId"]

},

{

"type": "object",

"properties": {

"sliceId": {"$ref": "/jsonschemas/a1td/common\_2.0.0#/$defs/SliceId"},

"qosId": {"$ref": "/jsonschemas/a1td/common\_2.0.0#/$defs/QosId"},

"cellId": {"$ref": "/jsonschemas/a1td/common\_2.0.0#/$defs/CellId"}

},

"additionalProperties": false,

"required": ["sliceId", "qosId"]

}

]

},

"qosObjectives": {

"type": "object",

"properties": {

"gfbr": {"type": "number"},

"mfbr": {"type": "number"},

"priorityLevel": {"type": "number"},

"pdb": {"type": "number"}

},

"minProperties": 1,

"additionalProperties": false

},

"tspResources": {

"type": "array",

"items": {

"$ref": "#/$defs/TspResource"

},

"minItems": 1

}

},

"additionalProperties": false,

"required": ["scope", "qosObjectives", "tspResources"],

"$defs": {

"PreferenceType": {

"type": "string",

"enum": [

"SHALL",

"PREFER",

"AVOID",

"FORBID"

]

},

"TspResource": {

"type": "object",

"properties": {

"cellIdList": {"$ref": "#/jsonschemas/a1td/common\_2.0.0/$defs/CellIdList"},

"preference": {"$ref": "#/$defs/PreferenceType"},

"primary": {"type": "boolean"}

},

"required": ["cellIdList", "preference"],

"additionalProperties": false

},

"https://schemas.o-ran.org/jsonschemas/a1td/common\_2.0.0":

}

}

##### 7.2.4.3.2 Policy status schema

The generic policy status schema in clause 7.1.2.2 is used.

### 7.2.5 QoE optimization with resource directive

#### 7.2.5.1 Policy type identifier

PolicyTypeId: **ORAN\_QoEandTSP\_5.0.0**

#### 7.2.5.2 Rationale

##### 7.2.5.2.1 Use case

Addresses both the use cases specified in Non-RT RIC & A1/R1 interface: Use Cases and Requirements [1], clauses 4.2 and 4.1.

##### 7.2.5.2.2 Statements, restrictions and extensions

The allowed combinations of ScopeIdentifier and statements is the common subset of those defined for the policy type QoE Target and the policy type Traffic Steering Preferences.

#### 7.2.5.3 JSON schemas

##### 7.2.5.3.1 Policy schema

{

"$schema": "https://json-schema.org/draft/2020-12/schema",

"$id": "https://schemas.o-ran.org/jsonschemas/a1td/oran\_qoeandtsp\_5.0.0",

"description": "O-RAN standard QoE Target and Traffic Steering Preference policy",

"type": "object",

"properties": {

"scope": {

"anyOf": [

{

"type": "object",

"properties": {

"ueId": {"$ref": "/jsonschemas/a1td/common\_2.0.0#/$defs/UeId"},

"sliceId": {"$ref": "/jsonschemas/a1td/common\_2.0.0#/$defs/SliceId"},

"qosId": {"$ref": "/jsonschemas/a1td/common\_2.0.0#/$defs/QosId"},

"cellId": {"$ref": "/jsonschemas/a1td/common\_2.0.0#/$defs/CellId"}

},

"additionalProperties": false,

"required": ["ueId", "sliceId"]

},

{

"type": "object",

"properties": {

"ueId": {"$ref": "/jsonschemas/a1td/common\_2.0.0#/$defs/UeId"},

"qosId": {"$ref": "/jsonschemas/a1td/common\_2.0.0#/$defs/QosId"},

"cellId": {"$ref": "/jsonschemas/a1td/common\_2.0.0#/$defs/CellId"}

},

"additionalProperties": false,

"required": ["ueId", "qosId"]

},

{

"type": "object",

"properties": {

"sliceId": {"$ref": "/jsonschemas/a1td/common\_2.0.0#/$defs/SliceId"},

"qosId": {"$ref": "/jsonschemas/a1td/common\_2.0.0#/$defs/QosId"},

"cellId": {"$ref": "/jsonschemas/a1td/common\_2.0.0#/$defs/CellId"}

},

"additionalProperties": false,

"required": ["sliceId"]

}

]

},

"qoeObjectives": {

"type": "object",

"properties": {

"qoeScore": {"type": "number"},

"initialBuffering": {"type": "number"},

"reBuffFreq": {"type": "number"},

"stallRatio": {"type": "number"}

},

"minProperties": 1,

"additionalProperties": false

},

"tspResources": {

"type": "array",

"items": {

"$ref": "#/$defs/TspResource"

},

"minItems": 1

}

},

"additionalProperties": false,

"required": ["scope", "qoeObjectives", "tspResources"],

"$defs": {

"PreferenceType": {

"type": "string",

"enum": [

"SHALL",

"PREFER",

"AVOID",

"FORBID"

]

},

"TspResource": {

"type": "object",

"properties": {

"cellIdList": {"$ref": "/jsonschemas/a1td/common\_2.0.0#/$defs/CellIdList"},

"preference": {"$ref": "#/$defs/PreferenceType"},

"primary": {"type": "boolean"}

},

"required": ["cellIdList", "preference"],

"additionalProperties": false

},

"https://schemas.o-ran.org/jsonschemas/a1td/common\_2.0.0":

}

}

##### 7.2.5.3.2 Policy status schema

The generic policy status schema in clause 7.1.2.2 is used.

### 7.2.6 UE level target

#### 7.2.6.1 Policy type identifier

PolicyTypeId: **ORAN\_UELevelTarget\_4.0.0**

#### 7.2.6.2 Rationale

##### 7.2.6.2.1 Use case

Addresses the use case specified in Non-RT RIC & A1/R1 interface: Use Cases and Requirements [1], clause 4.3.

##### 7.2.6.2.2 Statements, restrictions and extensions

A UE level statement can be applied together with scope identifiers containing different combinations of identifiers. Not all combinations are relevant. Table 7.2.6.2.2-1 indicates the combinations that are allowed.

Table 7.2.6.2.2-1: Allowed combinations of ueLevelObjectives statement with ScopeIdentifier

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| Scope identifier  Policy statement | ueId | groupId | sliceId | qosId | cellId |
| ueLevelObjectives | 1 | 0..1 | 0..1 | 0 | 0..1 |
| ueLevelObjectives | 1 | 0..1 | 0..1 | 1 | 0..1 |
| ueLevelObjectives | 1 | 0 | 1 | 0..1 | 0..1 |
| NOTE: on each row is listed a combination of identifiers that is allowed for the indicated statement. Notation is the same as for caridinality: "0" means the identifier shall not occur, "0..1" means the identifier may occur and "1" means the identifier shall occur. Only at most one occurrence of an identifier is allowed in the present version. | | | | | |

</div>

#### 7.2.6.3 JSON schemas

##### 7.2.6.3.1 Policy schema

{

"$schema": "https://json-schema.org/draft/2020-12/schema",

"$id": "https://schemas.o-ran.org/jsonschemas/a1td/oran\_ueleveltarget\_4.0.0",

"description": "O-RAN standard UE Level Target policy",

"type": "object",

"properties": {

"scope": {

"anyOf": [

{

"type": "object",

"properties": {

"ueId": {"$ref": "/jsonschemas/a1td/common\_2.0.0#/$defs/UeId"},

"groupId": {"$ref": "/jsonschemas/a1td/common\_2.0.0#/$defs/GroupId"},

"sliceId": {"$ref": "/jsonschemas/a1td/common\_2.0.0#/$defs/SliceId"},

"cellId": {"$ref": "/jsonschemas/a1td/common\_2.0.0#/$defs/CellId"}

},

"additionalProperties": false,

"required": ["ueId"]

},

{

"type": "object",

"properties": {

"ueId": {"$ref": "/jsonschemas/a1td/common\_2.0.0#/$defs/UeId"},

"groupId": {"$ref": "/jsonschemas/a1td/common\_2.0.0#/$defs/GroupId"},

"sliceId": {"$ref": "/jsonschemas/a1td/common\_2.0.0#/$defs/SliceId"},

"qosId": {"$ref": "/jsonschemas/a1td/common\_2.0.0#/$defs/QosId"},

"cellId": {"$ref": "/jsonschemas/a1td/common\_2.0.0#/$defs/CellId"}

},

"additionalProperties": false,

"required": ["ueId", "qosId"]

},

{

"type": "object",

"properties": {

"ueId": {"$ref": "/jsonschemas/a1td/common\_2.0.0#/$defs/UeId"},

"sliceId": {"$ref": "/jsonschemas/a1td/common\_2.0.0#/$defs/SliceId"},

"qosId": {"$ref": "/jsonschemas/a1td/common\_2.0.0#/$defs/QosId"},

"cellId": {"$ref": "/jsonschemas/a1td/common\_2.0.0#/$defs/CellId"}

},

"additionalProperties": false,

"required": ["ueId", "sliceId"]

}

]

},

"ueLevelObjectives": {

"type": "object",

"properties": {

"ulThroughput": {"type": "number"},

"dlThroughput": {"type": "number"},

"ulPacketDelay": {"type": "number"},

"dlPacketDelay": {"type": "number"},

"ulPdcpSduPacketLossRate": {"type": "number"},

"dlRlcSduPacketLossRate ": {"type": "number"},

"dlReliability": {"$ref": "#/$defs/ReliabilityType"},

"ulReliability": {"$ref": "#/$defs/ReliabilityType"}

},

"minProperties": 1,

"additionalProperties": false

}

},

"additionalProperties": false,

"required": ["scope", "ueLevelObjectives"],

"$defs": {

"ReliabilityType": {

"type": "object",

"properties": {

"packetSize": {"type": "number"},

"userPlaneLatency": {"type": "number"},

"successProbility": {"type": "number"}

},

"required": ["packetSize","userPlaneLatency","successProbility"]

},

"https://schemas.o-ran.org/jsonschemas/a1td/common\_2.0.0":

}

}

##### 7.2.6.3.2 Policy status schema

The generic policy status schema in clause 7.1.2.2 is used.

### 7.2.7 Slice SLA target

#### 7.2.7.1 Policy type identifier

PolicyTypeId: **ORAN\_SliceSLATarget\_4.0.0**

#### 7.2.7.2 Rationale

##### 7.2.7.2.1 Use case

See Non-RT RIC and A1/R1 interface: Use Cases and Requirements [1], clause 4.5.

##### 7.2.7.2.2 Statements, restrictions and extensions

The sliceSlaObjectives statement can be applied together with ScopeIdentifier containing sliceId identifier. Table 7.2.7.2.2-1 indicates the combination that is allowed.

Table 7.2.7.2.2-1: Allowed combinations of sliceSlaObjectives statement with ScopeIdentifier

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| ScopeIdentifier  Policy statement | ueId | groupId | sliceId | qosId | cellId |
| sliceSlaObjectives | 0 | 0 | 1 | 0 | 0 |
| NOTE: "0" means the identifier shall not occur, "1" means the identifier shall occur. | | | | | |

</div>

The sliceSlaResources statement can optionally be applied together with sliceSlaObjectives statement.

#### 7.2.7.3 JSON schemas

##### 7.2.7.3.1 Policy schema

{

"$schema": "https://json-schema.org/draft/2020-12/schema",

"$id": "https://schemas.o-ran.org/jsonschemas/a1td/oran\_sliceslatarget\_4.0.0",

"description": "O-RAN standard slice SLA policy",

"type": "object",

"properties": {

"scope": {

"type": "object",

"properties": {

"sliceId": {"$ref": "/jsonschemas/a1td/common\_2.0.0#/$defs/SliceId"}

},

"additionalProperties": false,

"required": ["sliceId"]

},

"sliceSlaObjectives": {

"type": "object",

"properties": {

"maxNumberOfUes": {"type": "number"},

"maxNumberOfPduSessions": {"type": "number"},

"guaDlThptPerSlice": {"type": "number"},

"maxDlThptPerSlice": {"type": "number"},

"maxDlThptPerUe": {"type": "number"},

"guaUlThptPerSlice": {"type": "number"},

"maxUlThptPerSlice": {"type": "number"},

"maxUlThptPerUe": {"type": "number"},

"maxDlPacketDelayPerUe": {"type": "number"},

"maxUlPacketDelayPerUe": {"type": "number"},

"maxDlPdcpSduPacketLossRatePerUe": {

"type": "number",

"minimum": 0,

"maximum": 1

},

"maxUlRlcSduPacketLossRatePerUe": {

"type": "number",

"minimum": 0,

"maximum": 1

},

"minDlReliabilityPerUe": {"$ref": "#/$defs/ReliabilityType"},

"minUlReliabilityPerUe": {"$ref": "#/$defs/ReliabilityType"},

"maxDlJitterPerUe": {"type": "number"},

"maxUlJitterPerUe": {"type": "number"},

"dlSlicePriority": {

"type": "number",

"minimum": 1

},

"ulSlicePriority": {

"type": "number",

"minimum": 1

},

"maxDlPktSize": {"$type": "number"},

"maxUlPktSize": {"$type": "number"}

},

"minProperties": 1,

"additionalProperties": false

},

"sliceSlaResources": {

"type": "object",

"properties": {

"cellIdList": {"$ref": "/jsonschemas/a1td/common\_2.0.0#/$defs/CellIdList"},

"taIList": {"$ref": "/jsonschemas/a1td/common\_2.0.0#/$defs/TaIList"}

},

"additionalProperties": false,

"oneOf": [

{"required": ["cellIdList"]},

{"required": ["taIList"]}

]

}

},

"additionalProperties": false,

"required": ["scope", "sliceSlaObjectives"],

"$defs": {

"ReliabilityType": {

"type": "object",

"properties": {

"packetSize": {"type": "number"},

"userPlaneLatency": {"type": "number"},

" successProbability": {

"type": "number",

"minimum": 0,

"maximum": 1

}

},

"required": ["packetSize","userPlaneLatency"," successProbability"]

},

"https://schemas.o-ran.org/jsonschemas/a1td/common\_2.0.0":

}

}

##### 7.2.7.3.2 Policy status schema

The generic policy status schema in clause 7.1.2.2 is used.

### 7.2.8 Load balancing

#### 7.2.8.1 Policy type identifier

PolicyTypeId: **ORAN\_LoadBalancing\_2.0.0**

#### 7.2.8.2 Rationale

##### 7.2.8.2.1 Use case

See Non-RT RIC & A1/R1 interface: Use Cases and Requirements [1], clause 4.5.

##### 7.2.8.2.2 Statements, restrictions and extensions

A lbObjectives statement can be applied together with ScopeIdentifier containing different combinations of identifiers. Not all combinations are relevant. Table 7.2.8.2.2-1 indicates the combinations that are allowed.

ScopeIdentifier is used to designate a cell from which load needs to be transferred to other cells. If sliceId is applied together with cellId, only a part of the load associated with a designated slice among the cell load is transferred to other cells.

ScopeIdentifier also indicates the measurement range for calculating the load specified by prbUsgType in lbObjectives statement. If only cellId is applied, applicable values for prbUsgType are 1-4. If sliceId is applied together with cellId, applicable values for prbUsgType are 5-8.

Regardless of the combination of ScopeIdentifier and lbObjectives statement, lbResources statement indicates the target cells to which the load is transferred.

Table 7.2.8.2.2-1: Allowed combinations of lbObjectives statement with ScopeIdentifier

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| ScopeIdentifier  Policy statement | ueId | groupId | sliceId | qosId | cellId |
| lbObjectives | 0 | 0 | 0..1 | 0 | 1 |
| NOTE: on each row is listed a combination of identifiers that is allowed for the indicated statement. Notation is the same as for caridinality: "0" means the identifier shall not occur, "0..1" means the identifier may occur and "1" means the identifier shall occur. Only at most one occurrence of an identifier is allowed in the present version. | | | | | |

</div>

The lbObjectives statement is applied together with lbResources statement.

#### 7.2.8.3 JSON schemas

##### 7.2.8.3.1 Policy schema

{

"$schema": "https://json-schema.org/draft/2020-12/schema",

"$id": "https://schemas.o-ran.org/jsonschemas/a1td/oran\_loadbalancing\_2.0.0",

"description": "O-RAN standard Load Balancing policy",

"type": "object",

"properties": {

"scope": {

"anyOf": [

{

"type": "object",

"properties": {

"sliceId": {"$ref": "/jsonschemas/a1td/common\_2.0.0#/$defs/SliceId"},

"cellId": {"$ref": "/jsonschemas/a1td/common\_2.0.0#/$defs/CellId"}

},

"additionalProperties": false,

"required": ["cellId"]

}

]

},

"lbObjectives": {

"type": "object",

"properties": {

"targetPrbUsg": {"type": "number"},

"prbUsgType": {"type": "number"}

},

"additionalProperties": false,

"required": ["targetPrbUsg", "prbUsgType"]

},

"lbResources": {

"type": "object",

"properties": {

"cellIdList": {"$ref": "/jsonschemas/a1td/common\_2.0.0#/$defs/CellIdList"}

},

"required": ["cellIdList"],

"additionalProperties": false

}

},

"additionalProperties": false,

"required": ["scope", "lbResources", "lbObjectives"],

"$defs": {

"https://schemas.o-ran.org/jsonschemas/a1td/common\_2.0.0":

}

}

### 7.2.9 Energy Savings

#### 7.2.9.1 Policy type identifier

PolicyTypeId: **ORAN\_EnergySaving\_3.0.0**

#### 7.2.9.2 Rationale

##### 7.2.9.2.1 Use case

See Non-RT RIC & A1 interface: Use Cases and Requirements [1], clause 4.8..

##### 7.2.9.2.2 Statements, restrictions and extensions

An energy saving statement (i.e. esObjectives and/or esResources) can be applied together with ScopeIdentifier containing different combinations of identifiers. Not all combinations are relevant. The following table indicates combinations that are allowed.

Table 7.2.9.2.2-1: Allowed combinations of esObjectives / esResources statement with ScopeIdentifier

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- |
| ScopeIdentifier  Policy statement | ueId | groupId | qosId | taList | cellId | cellIdList |
| esObjectives / esResources | 0 | 0 | 0 | 0 | 1 | 0 |
| esObjectives / esResources | 0 | 0 | 0 | 0 | 0 | 1 |
| esObjectives / esResources | 0 | 0 | 0 | 1 | 0 | 0 |
| NOTE 1: On each row is listed a combination of identifiers that is allowed for the indicated statement. Notation is the same as for cardinality: "0" means the identifier shall not occur, "0..1" means the identifier may occur and "1" means the identifier shall occur. Only at most one occurrence of an identifier is allowed in the present version.  NOTE 2 : When ScopeIdentifier contains taiList or cellIdList, and esResources is present, the cells indicated in esResources should be a subset of the cells implied by the ScopeIdentifier. | | | | | | |

</div>

#### 7.2.9.3 JSON schemas

##### 7.2.9.3.1 Policy schema

{

"$schema": "https://json-schema.org/draft/2020-12/schema",

"$id": "https://schemas.o-ran.org/jsonschemas/a1td/oran\_energysaving\_3.0.0",

"description": "O-RAN standard Energy saving policy",

"type": "object",

"properties": {

"scope": {

"anyOf": [

{

"type": "object",

"properties": {

"cellId": {"$ref": "/jsonschemas/a1td/common\_2.0.0#/$defs/CellId"}

},

"additionalProperties": false,

"required": ["cellId"]

},

{

"type": "object",

"properties": {

"cellIdList": {"$ref": "/jsonschemas/a1td/common\_2.0.0#/$defs/CellIdList"}

},

"additionalProperties": false,

"required": ["cellIdList"]

},

{

"type": "object",

"properties": {

"taIList": {"$ref": "/jsonschemas/a1td/common\_2.0.0#/$defs/TaIList"}

},

"additionalProperties": false,

"required": ["taIList"]

}

]

},

"esObjectives": {

"oneOf": [

{

"type": "object",

"properties": {

"targetPeeEnergy": {"type": "integer"}

},

"additionalProperties": false,

"required": ["targetPeeEnergy"]

},

{

"type": "object",

"properties": {

"esPercentage": {

"type": "integer",

"minimum": 0,

"maximum": 100

}

},

"additionalProperties": false,

"required": ["esPercentage"]

}

]

},

"esResources": {

"type": "array",

"items": {"$ref": "#/$defs/EsResource"},

"minItems": 1

}

},

"additionalProperties": false,

"anyOf": [

{"required": ["scope","esObjectives"]},

{"required": ["scope","esResources"]}

],

"$defs": {

"AvoidanceType": {

"type": "string",

"enum": [

"AVOID",

"FORBID"

]

},

"EsResource": {

"oneOf": [

{

"type": "object",

"properties": {

"operationalCells": {"$ref": "/jsonschemas/a1td/common\_2.0.0#/$defs/CellIdList"},

"operationalPreference": {"$ref": "#/$defs/AvoidanceType"},

"dlPrbUsage": {"type": "integer", "minimum": 0, "maximum": 100},

"ulPrbUsage": {"type": "integer", "minimum": 0, "maximum": 100}

},

"additionalProperties": false,

"required": ["operationalCells","operationalPreference"]

},

{

"type": "object",

"properties": {

"coverageCells": {"$ref": "/jsonschemas/a1td/common\_2.0.0#/$defs/CellIdList"},

"coveragePreference": {"$ref": "#/$defs/AvoidanceType"},

"dlPrbUsage": {"type": "integer", "minimum": 0, "maximum": 100},

"ulPrbUsage": {"type": "integer", "minimum": 0, "maximum": 100}

},

"additionalProperties": false,

"required": ["coverageCells","coveragePreference"]

},

{

"type": "object",

"properties": {

"operationalCells": {"$ref": "/jsonschemas/a1td/common\_2.0.0#/$defs/CellIdList"},

"operationalPreference": {"$ref": "#/$defs/AvoidanceType"},

"coverageCells": {"$ref": "/jsonschemas/a1td/common\_2.0.0#/$defs/CellIdList"},

"coveragePreference": {"$ref": "#/$defs/AvoidanceType"},

"dlPrbUsage": {"type": "integer", "minimum": 0, "maximum": 100},

"ulPrbUsage": {"type": "integer", "minimum": 0, "maximum": 100}

},

"additionalProperties": false,

"required": ["operationalCells", "operationalPreference", "coverageCells", "coveragePreference"]

}

]

},

"https://schemas.o-ran.org/jsonschemas/a1td/common\_2.0.0":

}

}

##### 7.2.9.3.2 Policy status schema

The generic policy status schema in clause 7.1.2.2 is used.

# 8 A1-EI data model

## 8.1 Introduction

This clause specifies the application data model supported by the A1-EI API specified in A1AP [3], clause 6.3. The purpose of the data model is to be the basis for

* Definition of EI types; and
* The EI representation objects that are transported in the body of the A1-EI procedures.

There are two kinds of EI types: those defined by O-RAN and those defined by another entity. EI types need to define:

* An EiTypeIdentifier for usage in the A1-EI procedures and URI structure; and
* The content to be transported in the body of the A1-EI procedures.

The content is referred to as EI representation objects for the O-RAN defined EI types and is defined by using the A1-EI data model specified in this clause. An EI type defined outside of O-RAN may use the A1-EI data model or another model that covers the content corresponding to the schemas and objects.

The present document covers the data model for O-RAN defined EI types. The O-RAN defined EI types are based on the statements and attributes defined in the data model and may extend it with EI type specific rules and attributes.

The O-RAN defined EI types are defined based on JSON Schema [7]. An EI type is defined by four schemas for EI job definition, EI job constraints, EI job status and EI job result. The schemas are used to validate the EI representation objects transferred in the body of the A1-EI procedures.

## 8.2 Simple data types and enumerations

### 8.2.1 Simple data types

The EI job contains URIs for EI job status notifications and EI job results. The simple data types for callback URIs are defined in table 8.2.1-1.

Table 8.2.1-1: General definition of simple data types for callback URIs

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| Type Name | Type Definition | Description | Applicability |
| JobStatusNotificationUri | string | target URI for EI job status notifcations | provided in EI Job object and used in the Notify EI job notification procedure |
| JobResultUri | string | target URI for EI job results | provided in EI Job object and used in the Deliver EI job result procedure |

</div>

The simple data type for JSON schemas is defined in table 8.2.1-2.

Table 8.2.1-2: Definition of JsonSchema

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| Type Name | Type Definition | Description | Applicability |
| JsonSchema | <https://json-schema.org/draft/2020-12/schema> | A JSON schema meta-schema following JSON Schema [7] |  |

</div>

### 8.2.2 Enumerations

#### 8.2.2.1 JobStatusType

The enumeration JobStatusType represents if an EI job is confirmed to deliver EI results. It shall comply with the provisions defined in table 8.2.2.1-1.

Table 8.2.2.1-1: Enumeration JobStatusType

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| Enumeration value | Description | Applicability |
| ENABLED | the EI Job is enabled | the A1-EI producer is able to deliver EI result for the EI Job |
| DISABLED | the EI Job is disabled | the A1-EI producer is not able to deliver EI result for the EI Job |

</div>

#### 8.2.2.2 GadShapeType

The enumeration GadShapeType represents the different types or shapes of geographic areas. It shall comply with the provisions defined in table 8.2.2.2-1.

Table 8.2.2.2-1: Enumeration GadShapeType

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| Enumeration value | Description | Applicability |
| POINT | Ellipsoid point |  |
| POINT\_UNCERTAINTY\_CIRCLE | Ellipsoid point with uncertainty circle |  |
| POINT\_UNCERTAINTY\_ELLIPSE | Ellipsoid point with uncertainty ellipse |  |
| POLYGON | Polygon |  |
| POINT\_ALTITUDE | Ellipsoid point with altitude |  |
| POINT\_ALTITUDE\_UNCERTAINTY | Ellipsoid point with altitude and uncertainty ellipsoid |  |
| ELLIPSOID\_ARC | Ellipsoid arc |  |

</div>

#### 8.2.2.3 VelocityDescType

The enumeration VelocityDescType represents the different types of UE velocity descriptions. It shall comply with the provisions defined in table 8.2.2.3-1.

Table 8.2.2.3-1: Enumeration VelocityDescType

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| Enumeration value | Description | Applicability |
| H\_VELOCITY | Horizontal velocity |  |
| HV\_VELOCITY | Horizontal and vertical velocity |  |
| H\_VELOCITY\_UNCERTAINTY | Horizontal velocity with uncertainty |  |
| HV\_VELOCITY\_UNCERTAINTY | Horizontal and vertical velocity with uncertainty |  |

</div>

## 8.3 Structured data types

### 8.3.1 ScopeIdentifier

The ScopeIdentifier is EI type specific.

If the ScopeIdentifier contains attributes corresponding to the A1 policy ScopeIdentifier, they are the same as defined for A1-P, see clause 6.3.1.

### 8.3.2 Statements for EI job definition

#### 8.3.2.1 Introduction

This clause defines the structured data type and attributes to be used for EI job definition, which are summarized in table 8.3.2.1-1.

Table 8.3.2.1-1: Statements for EI job definition

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| Data type | Clause defined | Description | Applicability |
| UeGeoandVelEIDescription | 8.3.2.2 | EI job definition for UE geo-location and velocity information |  |

</div>

#### 8.3.2.2 UE geo-location and velocity information

The UEGeoandVelEIDescription statement contains the attributes defined in table 8.3.2.2-1:

Table 8.3.2.2-1: Definition of UEGeoandVelEIDescription

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| Attribute name | Data type | P | Cardinality | Description | Applicability |
| gadShape | GadShapeType | M | 1 | GAD shapes used for UE geo-location information, see clause 8.2.2.2 |  |
| velocityDesc | VelocityDescType | O | 1 | Type of description for UE velocity information, see clause 8.2.2.3 |  |
| granularityPeriod | integer | M | 1 | Interval of periodic measurement in milliseconds |  |
| reportingPeriod | integer | M | 1 | Interval of periodic reporting in milliseconds |  |
| reportingAmount | integer | M | 1 | Number of periodic reports |  |
| NOTE: Event-triggered measurement and reporting is not specified in the present document. | | | | | |

</div>

### 8.3.3 Statements for EI job result

#### 8.3.3.1 Introduction

This clause defines the structured data type and attributes to be used for EI job result definition, which are summarized in table 8.3.3.1-1.

Table 8.3.3.1-1: Statements for EI job result definition

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| Data type | Clause defined | Description | Applicability |
| UeGeoandVelEIResult | 8.3.3.2 | EI job result definition for UE geo-location and velocity information |  |

</div>

#### 8.3.3.2 UE geo-location and velocity EI

The UEGeoandVelEIResult statement contains the attributes defined in table 8.3.3.2-1:

Table 8.3.3.2-1: Definition of UEGeoandVelEIResult

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| Attribute name | Data type | P | Cardinality | Description | Applicability |
| timeStamp | DateTime | M | 1 | Indicates the UTC time corresponds to the UE geo-location and velocity enrichment information, see 3GPP TS 29.571 [5], clause 5.2.2. |  |
| ueId | UeId | M | 1 | UE identifier, see clause 6.3.1.7. |  |
| gadShape | GadShapeType | M | 1 | GAD shapes used for UE geo-location information, see clause 8.2.2.2 |  |
| geoLocation | GeoLocationType | M | 1 | Indicates the UE geo-location enrichment information, see table 8.3.2.2-2 |  |
| velocityDesc | VelocityDescType | O | 0..1 | Type of description for UE velocity information, see clause 8.2.2.3 |  |
| velocity | VelocityType | C | 0..1 | Indicates the UE velocity enrichment information, see table 8.3.2.2-3 |  |
| NOTE: Presence condition "C" means that the attribute shall be included if the attribute "velocityDesc" is included. | | | | | |

</div>

The GeoLocationType is defined in table 8.3.2.2-2 as a list of following mutually exclusive alternatives.

Table 8.3.2.2-2: Definition of GeoLocationType

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| Data type | Cardinality | Discriminator name | Discriminator mapping | Description |
| Point | 1 | gadShape | POINT | Geolocation consisting of a single ellipsoid point, represented by its longitude and latitude, see 3GPP TS 29.572 [20], clause 6.1.6.2.6 |
| PointUncertaintyCircle | 1 | gadShape | POINT\_UNCERTAINTY\_CIRCLE | Geolocation consisting of a point and an uncertainty value, see 3GPP TS 29.572 [20], clause 6.1.6.2.7 |
| PointUncertaintyEllipse | 1 | gadShape | POINT\_UNCERTAINTY\_ELLIPSE | Geolocation consisting of a point and an uncertainty ellipse, see 3GPP TS 29.572 [20], clause 6.1.6.2.8 |
| Polygon | 1 | gadShape | POLYGON | Geolocation consisting of a list of points, see 3GPP TS 29.572 [20], clause 6.1.6.2.9 |
| PointAltitude | 1 | gadShape | POINT\_ALTITUDE | Geolocation consisting of a point and an altitude value, see 3GPP TS 29.572 [20], clause 6.1.6.2.10 |
| PointAltitudeUncertainty | 1 | gadShape | POINT\_ALTITUDE\_UNCERTAINTY | Geolocation consisting of a point, an altitude value, and an uncertainty value, see 3GPP TS 29.572 [20], clause 6.1.6.2.11 |
| EllipsoidArc | 1 | gadShape | ELLIPSOID\_ARC | Geolocation consisting of an ellipsoid arc, see 3GPP TS 29.572 [20], clause 6.1.6.2.12 |

</div>

The VelocityType is defined in table 8.3.2.2-3 as a list of following mutually exclusive alternatives.

Table 8.3.2.2-3: Definition of VelocityType

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| Data type | Cardinality | Discriminator name | Discriminator mapping | Description |
| HorizontalVelocity | 1 | velocityDesc | H\_VELOCITY | Horizonal velocity, see 3GPP TS 29.572 [20], clause 6.1.6.2.18 |
| HorizontalWithVerticalVelocity | 1 | velocityDesc | HV\_VELOCITY | Horizonal velocity and vertical velocity, see 3GPP TS 29.572 [20], clause 6.1.6.2.19 |
| HorizontalVelocityWithUncertainty | 1 | velocityDesc | H\_VELOCITY\_UNCERTAINTY | Horizonal velocity with a speed uncertainty value, see 3GPP TS 29.572 [20], clause 6.1.6.2.20 |
| HorizontalWithVerticalVelocityAndUncertainty | 1 | velocityDesc | HV\_VELOCITY\_UNCERTAINTY | Horizonal velocity and vertical velocity with speed uncertainty values, see 3GPP TS 29.572 [20], clause 6.1.6.2.21 |

</div>

### 8.3.4 Statements for EI job constraints

#### 8.3.4.1 Introduction

This clause defines the structured data type and attributes to be used for EI job constraints. Table 8.3.4.1-1 specifies the statements that can be used for EI job constraints.

Table 8.3.4.1-1: Statements for EI job constraints

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| Data type | Clause defined | Description | Applicability |
| UEGeoandVelEIConstraints | 8.3.4.2 | EI job constraints for UE geo-location and velocity information |  |

</div>

#### 8.3.4.2 UE geo-location and velocity information

The UEGeoandVelEIConstraints contains the attributes defined in table 8.3.4.2-1:

Table 8.3.4.2-1: Definition of UEGeoandVelEIConstraints

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| Attribute name | Data type | P | Cardinality | Description | Applicability |
| supportedGadShapes | array(GadShapeType) | M | 1..N | Indicates supported GAD shapes to describe UE geo-location, see clause 8.2.2.2 |  |
| supportedVelocityDescs | array(VelocityDescType) | O | 1..N | Indicates supported types of UE velocity description, see clause 8.2.2.3 |  |

</div>

## 8.4 EI representations objects

### 8.4.1 EI type object

The EI type object can be empty or contain EI type specific information.

An EiTypeObject is based on IETF RFC 8259 [6] and can contain:

* one JSON schema for EiJobDefinition;
* one JSON schema for EiJobStatusObject;
* one JSON schema for EiJobResultObject; or
* one JSON schema for EiJobConstraintsObject.

The type EiTypeObject is defined in table 8.4.1-1.

Table 8.4.1-1: General definition of EiTypeObject

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| Attribute name | Data type | P | Cardinality | Description | Applicability |
| eiJobDefinitionSchema | JsonSchema | O | 0..1 | The schemas are EI type specific |  |
| eiJobStatusSchema | JsonSchema | O | 0..1 |  |
| eiJobResultSchema | JsonSchema | O | 0..1 |  |
| eiJobConstraintsSchema | JsonSchema | O | 0..1 |  |
| NOTE 1: Clause 9.2 contains definitions and EI type specific schemas for O-RAN defined A1 EI types.  NOTE 2: The eiJobDefinitionSchema attribute shall contain the compound EI job definition schema as described in clause 9.1.2.2. | | | | | |

</div>

The JSON schema for an EiJobDefinition is used by the A1-EI Consumer to formulate an EI job definition and by the A1-EI Producer to validate an EiJobObject during Create EI job and Update EI job procedures.

The JSON schema for an EiJobConstraintsObject is used by the A1-EI Producer to formulate EI job constraints and by the A1-EI Consumer to validate an EiJobConstraintsObject that is considered when formulating an EI job definition.

The JSON schema for an EiJobStatusObject is used by the A1-EI Producer to formulate EI job status and by the A1-EI Consumer to validate an EiJobStatusObject during Query EI job status and Notify EI job status procedures.

The JSON schema for an EiJobResultObject is used by the A1-EI Producer to formulate EI job results and by the A1-EI Consumer to validate an EiJobResultObject during Deliver EI job result procedures.

The EiTypeObject and the EiJobConstraintsObject can be retrieved using the Query EI type procedure.

### 8.4.2 EI job object

#### 8.4.2.1 General

An EiJobObject is based on IETF RFC 8259 [6] and contains:

* one EI type identifier;
* one target URI for EI Job results; and
* one EI type specific job definition containing one or more EI job definition statements.

and optionally

* one target URI for EI Job status notifications.

The type EiJobObject is defined in table 8.4.2-1.

Table 8.4.2-1: General definition of EIJobObject

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| Attribute name | Data type | P | Cardinality | Description | Applicability |
| eiTypeId | string | M | 1 | EI type identifier | EI type specific |
| jobResultUri | string | M | 1 | See clause 8.2.1 |  |
| jobStatusNotificationUri | string | O | 0..1 | See clause 8.2.1 |  |
| jobDefinition | JobDefinition | M | 1 | See clause 8.3.2 | EI type specific |
| NOTE: Presence condition "M" means that the data type shall be included in an EI job object for EI types based on the present document. Additional attributes may be defined for a specific EI type. | | | | | |

</div>

This definition is general and indicates how to formally construct an EiJobObject. The EI types in clause 9.2 define EI type identifiers and schemas for EI job definitions.

The EI job definition is related to the EI job results, i.e., it can express which of the possible EI job result attributes that should be delivered based on the EI job.

#### 8.4.2.2 Allowed combinations

A job definition statement can be applied together with a ScopeIdentifier containing different combinations of identifiers attributes. Not all combinations are relevant and different combinations are relevant for different EI types (see clause 9).

### 8.4.3 EI job status object

An EiJobStatus object is based on IETF RFC 8259 [6] and always contains:

* one EI job status attribute.

Table 8.4.3-1: General definition of EIJobStatusObject

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| Attribute name | Data type | P | Cardinality | Description | Applicability |
| jobStatus | JobStatusType | M | 1 | See 8.2.2 | statement indicating status of an EI job |
| NOTE: Presence condition "M" means that the data type shall be included in an EI job status object for EI types based on the present document. Additional attributes may be defined for a specific EI type. | | | | | |

</div>

### 8.4.4 EI job result object

An EiJobResult object is based on IETF RFC 8259 [6] and it contains

* one or more EI job result statements.

### 8.4.5 EI job constraints object

An EiJobConstraintsObject is based on IETF RFC 8259 [6] and it contains

* one or more EI job constraints statements.

The content is related to the EI job definition, i.e.; it can express capabilities and limitations related to supported attributes and value ranges for EI job result attributes, and EI job production and delivery attributes.

## 8.5 Binary data

Binary data is not applicable in this version of the present document.

# 9 A1-EI data types (EI types)

## 9.1 Introduction

### 9.1.1 Identification and compatibility of EI types

An EI type is identified by a EiTypeId as defined in A1AP [3], clause 6.3.3.1.3. The EiTypeId is a string that consists of two parts: a typename and a version.

When updating an EI type, the version in the EiTypeId is updated according to SemVer [19] to reflect its compatibility with other EI types that has the same typename.

Two EI types are considered as different if the EiTypeId is different, i.e. even if the typename is the same and the version only differs in the patch version digit.

Two EI types are compatible in case the typename is the same and the major version digit in the version is the same. In general, two EI types X and Y are compatible when all objects that can be created based on EI type X can be validated by the schemas for EI type Y and all objects that can be created based on EI type Y can be validated by the schemas for EI type X.

### 9.1.2 Common definitions

#### 9.1.2.1 EI job status

This is a generic EI job status schema, it may be adjusted and used together with an EI job schema in an EiTypeObject and will then be identified by the same EI type identifier as the EI job schema.

{

"$schema": "https://json-schema.org/draft/2020-12/schema",

"description": "O-RAN standard EI status",

"type": "object",

"properties": {

"jobStatus": {

"type": "string",

"enum": [

"ENABLED",

"DISABLED"

]

}

},

"additionalProperties": false,

"required": ["jobStatus"]

}

If an EI type specific status schema contains additional attributes, they are included based on the structure of the generic schema.

#### 9.1.2.2 Scope identifiers and common data types

The EI job definition schemas defined in clause 9.2 can be base schemas that embed a subschema with common data types definitions in same way as described for policy types in clause 7.1.

An EI type definition can link to the common data types schema defined in clause 7.1.2.1 and the compatibility relations are the same as for A1 policy types as described in Annex C. The EI types defined in the present document link to the version of the common data types schema defined in the present document.

It is the compound EI job definition schemas that are identified by the EI type identifier and included in the EiTypeObject specified in clause 8.4.1.

#### 9.1.2.3 Schema identification

The EI type identifier is part of the $id keyword included in the EI job definition schema.

The $id keyword for the EI job definition schemas are constructed from the URI base and the EI type identifier in the same was as for policy types as described in clause 7.1.3.2. The base URI for EI types is the same as for policy types.

## 9.2 EI type definitions

### 9.2.1 UE location and velocity information

#### 9.2.1.1 EI type identifier

EiTypeId: **ORAN\_UEGeoandVel\_4.0.0**

#### 9.2.1.2 Rationale

##### 9.2.1.2.1 Use case

See Non-RT RIC and A1/R1 interface: Use Cases and Requirements [1], clauses 4.4, 4.5, and 4.7.

##### 9.2.1.2.2 Statements, restrictions and extensions

A UEGeoandVelEIDescription statement can be applied together with ScopeIdentifier containing different combinations of identifiers. Not all combinations are relevant. Table 9.2.1.2.2-1 indicates the combinations that are allowed.

Table 9.2.1.2.2-1: Allowed combinations of UEGeoandVelEIDescription with ScopeIdentifier

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| ScopeIdentifier  EI job definition | ueId | groupId | sliceId | qosId | cellId |
| UEGeoandVelEIDescription | 1 | 0 | 0 | 0 | 0 |
| NOTE 1: on each row is listed a combination of identifiers that is allowed for the indicated statement. Notation is the same as for cardinality: "0" means the identifier shall not occur and "1" means the identifier shall occur.  NOTE 2: A single UE identifier is allowed in the scope of the present document. Whether the scope for UEGeoandVelEIDescription statement can be extended to a group of UEs, UEs in a slice, or UEs in a cell is For Further Study. | | | | | |

</div>

#### 9.2.1.3 JSON schemas

##### 9.2.1.3.1 EI job definition schema

{

"$schema": "https://json-schema.org/draft/2020-12/schema",

"$id": "https://schemas.o-ran.org/jsonschemas/a1td/oran\_uegeoandvel\_4.0.0",

"description": "O-RAN standard UE geo-location and velocity EI job definition",

"type": "object",

"properties": {

"scope": {

"type": "object",

"properties": {

"ueId": {"$ref": "/jsonschemas/a1td/common\_2.0.0#/$defs/UeId"}

},

"additionalProperties": false,

"required": ["ueId"]

},

"ueGeoandVelEIDescription": {

"type": "object",

"properties": {

"gadShape": {"$ref": "#/$defs/GadShapeType"},

"granularityPeriod": {

"type": "number",

"minimum": 1,

"maximum": 60000

},

"reportingPeriod": {

"type": "number",

"minimum": 1,

"maximum": 60000

},

"reportingAmount": {

"type": "number",

"minimum": 1,

"maximum": 3600000

},

"velocityDesc": {"$ref": "#/$defs/VelocityDescType"}

},

"required": ["gadShape", "granularityPeriod", "reportingPeriod", "reportingAmount"],

"additionalProperties": false

}

},

"additionalProperties": false,

"required": ["scope", "ueGeoandVelEIDescription"],

"$defs": {

"GadShapeType": {

"type": "string",

"enum": [

"POINT",

"POINT\_UNCERTAINTY\_CIRCLE",

"POINT\_UNCERTAINTY\_ELLIPSE",

"POLYGON",

"POINT\_ALTITUDE",

"POINT\_ALTITUDE\_UNCERTAINTY",

"ELLIPSOID\_ARC"

]

},

"VelocityDescType": {

"type": "string",

"enum": [

"H\_VELOCITY",

"HV\_VELOCITY",

"H\_VELOCITY\_UNCERTAINTY",

"HV\_VELOCITY\_UNCERTAINTY"

]

},

"https://schemas.o-ran.org/jsonschemas/a1td/common\_2.0.0":

}

}

##### 9.2.1.3.2 EI job constraints schema

{

"$schema": "https://json-schema.org/draft/2020-12/schema",

"description": "O-RAN standard UE geo-location and velocity EI job constraints",

"type": "object",

"properties": {

"ueGeoandVelEIConstraints": {

"type": "object",

"properties": {

"supportedGadShapes": {

"type": "array",

"items": {

"$ref": "#/$defs/GadShapeType"

},

"minItems": 1

},

"supportedVelocityDescs": {

"type": "array",

"items": {

"$ref": "#/$defs/VelocityDescType"

},

"minItems": 1

}

},

"required": ["supportedGadShapes"],

"additionalProperties": false

}

},

"additionalProperties": false,

"required": ["ueGeoandVelEIConstraints"],

"$defs": {

"GadShapeType": {

"type": "string",

"enum": [

"POINT",

"POINT\_UNCERTAINTY\_CIRCLE",

"POINT\_UNCERTAINTY\_ELLIPSE",

"POLYGON",

"POINT\_ALTITUDE",

"POINT\_ALTITUDE\_UNCERTAINTY",

"ELLIPSOID\_ARC"

]

},

"VelocityDescType": {

"type": "string",

"enum": [

"H\_VELOCITY",

"HV\_VELOCITY",

"H\_VELOCITY\_UNCERTAINTY",

"HV\_VELOCITY\_UNCERTAINTY"

]

}

}

}

##### 9.2.1.3.3 EI job status schema

The generic EI job status schema in clause 9.1.2.1 is used.

##### 9.2.1.3.4 EI job result schema

{

"$schema": "https://json-schema.org/draft/2020-12/schema",

"description": "O-RAN standard UE geo-location and velocity EI job results",

"type": "array",

"items": {

"$ref": "#/$defs/UEGeoandVelEIResult"

},

"minItems": 1,

"$defs": {

"UEGeoandVelEIResult": {

"type": "object",

"properties": {

"timeStamp": {"$ref": "#/$defs/DateTime"},

"ueId": {"$ref": "/jsonschemas/a1td/common\_2.0.0#/$defs/UeId"},

"gadShape": {"$ref": "#/$defs/GadShapeType"},

"velocityDesc": {"$ref": "#/$defs/VelocityDescType"}

},

"allof": [

{

"if": {

"properties": { "gadShape": { "const": "POINT" } }

},

"then": {

"properties": { "geoLocation": { "$ref": "#/$defs/Point" } }

}

},

{

"if": {

"properties": { "gadShape": { "const": "POINT\_UNCERTAINTY\_CIRCLE" } }

},

"then": {

"properties": { "geoLocation": { "$ref": "#/$defs/PointUncertaintyCircle" } }

}

},

{

"if": {

"properties": { "gadShape": { "const": "POINT\_UNCERTAINTY\_ELLIPSE" } }

},

"then": {

"properties": { "geoLocation": { "$ref": "#/$defs/PointUncertaintyEllipse" } }

}

},

{

"if": {

"properties": { "gadShape": { "const": "POLYGON" } }

},

"then": {

"properties": { "geoLocation": { "$ref": "#/$defs/Polygon" } }

}

},

{

"if": {

"properties": { "gadShape": { "const": "POINT\_ALTITUDE" } }

},

"then": {

"properties": { "geoLocation": { "$ref": "#/$defs/PointAltitude" } }

}

},

{

"if": {

"properties": { "gadShape": { "const": "POINT\_ALTITUDE\_UNCERTAINTY" } }

},

"then": {

"properties": { "geoLocation": { "$ref": "#/$defs/PointAltitudeUncertainty" } }

}

},

{

"if": {

"properties": { "gadShape": { "const": "ELLIPSOID\_ARC" } }

},

"then": {

"properties": { "geoLocation": { "$ref": "#/$defs/EllipsoidArc" } }

}

},

{

"if": {

"properties": { "velocityDesc": { "const": "H\_VELOCITY" } },

"required": ["velocityDesc"]

},

"then": {

"properties": { "velocity": { "$ref": "#/$defs/HorizontalVelocity" } }

}

},

{

"if": {

"properties": { "velocityDesc": { "const": "HV\_VELOCITY" } },

"required": ["velocityDesc"]

},

"then": {

"properties": {

"velocity": { "$ref": "#/$defs/HorizontalWithVerticalVelocity" }

}

}

},

{

"if": {

"properties": { "velocityDesc": { "const": "H\_VELOCITY\_UNCERTAINTY" } },

"required": ["velocityDesc"]

},

"then": {

"properties": {

"velocity": { "$ref": "#/$defs/HorizontalVelocityWithUncertainty" }

}

}

},

{

"if": {

"properties": { "velocityDesc": { "const": "HV\_VELOCITY\_UNCERTAINTY" } },

"required": ["velocityDesc"]

},

"then": {

"properties": {

"velocity": { "$ref": "#/$defs/HorizontalWithVerticalVelocityAndUncertainty" }

}

}

}

],

"required": ["timeStamp", "ueId", "gadShape", "geoLocation"]

},

"DateTime": {

"type": "string",

"format": "date-time"

},

"GadShapeType": {

"type": "string",

"enum": [

"POINT",

"POINT\_UNCERTAINTY\_CIRCLE",

"POINT\_UNCERTAINTY\_ELLIPSE",

"POLYGON",

"POINT\_ALTITUDE",

"POINT\_ALTITUDE\_UNCERTAINTY",

"ELLIPSOID\_ARC"

]

},

"VelocityDescType": {

"type": "string",

"enum": [

"H\_VELOCITY",

"HV\_VELOCITY",

"H\_VELOCITY\_UNCERTAINTY",

"HV\_VELOCITY\_UNCERTAINTY"

]

},

"Point": {

"type": "object",

"properties": {

"lon": {

"type": "number",

"minimum": -180,

"maximum": 180

},

"lat": {

"type": "number",

"minimum": -90,

"maximum": 90 }

},

"required": ["lon", "lat"]

},

"PointUncertaintyCircle": {

"type": "object",

"properties": {

"point": { "$ref": "#/$defs/Point" },

"uncertainty": { "$ref": "#/$defs/Uncertainty" }

},

"required": ["point", "uncertainty"]

},

"PointUncertaintyEllipse": {

"type": "object",

"properties": {

"point": { "$ref": "#/$defs/Point" },

"uncertaintyEllipse": { "$ref": "#/$defs/UncertaintyEllipse" },

"confidence": { "$ref": "#/$defs/Confidence" }

},

"required": ["point", "uncertainty", "confidence"]

},

"Polygon": {

"type": "array",

"items": {

"$ref": "#/$defs/Point"

},

"minItems": 3,

"maxItems": 15

},

"PointAltitude": {

"type": "object",

"properties": {

"point": { "$ref": "#/$defs/Point" },

"altitude": { "$ref": "#/$defs/Altitude" }

},

"required": ["point", "altitude"]

},

"PointAltitudeUncertainty": {

"type": "object",

"properties": {

"point": { "$ref": "#/$defs/Point" },

"altitude": { "$ref": "#/$defs/Altitude" },

"uncertaintyEllipse": { "$ref": "#/$defs/UncertaintyEllipse" },

"uncertaintyAltitude": { "$ref": "#/$defs/Uncertainty" },

"confidence": { "$ref": "#/$defs/Confidence" }

},

"required": ["point", "altitude", "uncertaintyEllipse", "uncertaintyAltitude", "confidence"]

},

"EllipsoidArc": {

"type": "object",

"properties": {

"point": { "$ref": "#/$defs/Point" },

"innerRadius": { "$ref": "#/$defs/InnerRadius" },

"uncertaintyRadius": { "$ref": "#/$defs/Uncertainty" },

"offsetAngle": { "$ref": "#/$defs/Angle" },

"includeAngle": { "$ref": "#/$defs/Angle" },

"confidence": { "$ref": "#/$defs/Confidence" }

},

"required": [

"point",

"innerRadius",

"uncertaintyRadius",

"offsetAngle",

"includeAnlge",

"confidence"

]

},

"HorizontalVelocity": {

"type": "object",

"properties": {

"hSpeed": { "$ref": "#/$defs/HorizontalSpeed" },

"bearing": { "$ref": "#/$defs/Angle" }

},

"required": ["hSpeed", "bearing"] },

"HorizontalWithVerticalVelocity": {

"type": "object",

"properties": {

"hSpeed": { "$ref": "#/$defs/HorizontalSpeed" },

"bearing": { "$ref": "#/$defs/Angle" },

"vSpeed": { "$ref": "#/$defs/VerticalSpeed" },

"vDirection": { "$ref": "#/$defs/VerticalDirection" }

},

"required": ["hSpeed", "bearing", "vSpeed", "vDirection"]

},

"HorizontalVelocityWithUncertainty": {

"type": "object",

"properties": {

"hSpeed": { "$ref": "#/$defs/HorizontalSpeed" },

"bearing": { "$ref": "#/$defs/Angle" },

"hUncertainty": { "$ref": "#/$defs/SpeedUncertainty" }

},

"required": ["hSpeed", "bearing", "hUncertainty"]

},

"HorizontalWithVerticalVelocityAndUncertainty": {

"type": "object",

"properties": {

"hSpeed": { "$ref": "#/$defs/HorizontalSpeed" },

"bearing": { "$ref": "#/$defs/Angle" },

"vSpeed": { "$ref": "#/$defs/VerticalSpeed" },

"vDirction": { "$ref": "#/$defs/VerticalDirction" },

"hUncertainty": { "$ref": "#/$defs/SpeedUncertainty" },

"vUncertainty": { "$ref": "#/$defs/SpeedUncertainty" }

},

"required": ["hSpeed", "bearing", "vSpeed", "vDirection", "hUncertainty", "vUncertainty"]

},

"Uncertainty": {

"type": "number",

"minimum": 0

},

"UncertaintyEllipse": {

"type": "object",

"properties": {

"semiMajor": { "$ref": "#/$defs/Uncertainty" },

"semiMinor": { "$ref": "#/$defs/Uncertainty" },

"orientationMajor": { "$ref": "#/$defs/Orientation" }

},

"required": ["semiMajor", "semiMinor", "orientationMajor"]

},

"Orientation": {

"type": "integer",

"minimum": 0,

"maximum": 100

},

"Confidence": {

"type": "number",

"minimum": 0,

"maximum": 100

},

"Altitude": {

"type": "number",

"minimum": -32767,

"maximum": 32767

},

"InnerRadius": {

"type": "integer",

"minimum": 0,

"maximum": 327675

},

"Angle": {

"type": "integer",

"minimum": 0,

"maximum": 360

},

"HorizontalSpeed": {

"type": "number",

"minimum": 0,

"maximum": 2047

},

"VerticalSpeed": {

"type": "number",

"minimum": 0,

"maximum": 255

},

"VerticalDirection": {

"type": "string",

"enum": [

"UPWARD",

"DOWNWARD"

]

},

"SpeedUncertainty": {

"type": "number",

"minimum": 0,

"maximum": 255

},

"https://schemas.o-ran.org/jsonschemas/a1td/common\_2.0.0":

}

}

Annex A (Informative):
Policy examples

# A.1 Generic scope identifier

These are examples of policies that illustrate the usage of the generic ScopeIdentifier definitions in clause 7.1.2.1.

## A.1.1 RAN UE ID based generic scope identifier

{

"scope": {

"ueId": {

"guRanUeId": {"globalGnbId": {"plmnId": {"mcc":"123", "mnc":"45"},

"gnbId": {"gnbIdLength": 25, "gnbIdValue": 6028163} },

"ranUeId": "1234567890ABCDEF"}

},

"groupId": {

"spId": 123

},

"sliceId": {

"sst": 123, "sd": "456DEF", "plmnId": {"mcc":"123", "mnc":"45"}

},

"qosId": {

"5qI": 123

},

"cellId": {

"plmnId": {"mcc":"123", "mnc":"45"}, "cId": {"ncI": 12345678901}

}

}

}

## A.1.2 AMF UE NGAP ID based generic scope identifier

{

"scope": {

"ueId": {

"guAmfUeNgapId": {"guAmI": {

"plmnId": {"mcc":"123", "mnc":"45"},"amfRegionId": "48", "amfSetId": "001", "amfPointer": "12"}, "amfUeNgapId": 100}

},

"groupId": {

"spId": 123

},

"sliceId": {

"sst": 123, "sd": "456DEF", "plmnId": {"mcc":"123","mnc":"45"}

},

"qosId": {

"5qI": 123

},

"cellId": {

"plmnId": {"mcc":"123", "mnc":"45"}, "cId": {"ncI": 12345678901}

}

}

}

## A.1.3 MME UE S1AP ID based generic scope identifier

{

"scope": {

"ueId": {

"guMmeUeS1apId": {"guMmeI": {

"plmnId": {"mcc":"123", "mnc":"45"}, "mmeGroupId": "1111", "mmeCode": "11"},

"mmeUeS1apId": 100}

},

"groupId": {

"spId": 123

},

"sliceId": {

"sst": 123, "sd": "456DEF", "plmnId": {"mcc":"123", "mnc":"45"}

},

"qosId": {

"5qI": 123

},

"cellId": {

"plmnId": {"mcc":"123", "mnc":"45"},"cId": {"ncI": 12345678901}

}

}

}

## A.1.4 gNB-CU UE F1AP ID based generic scope identifier

{

"scope": {

"ueId": {

"guGnbCuUeF1apId": {"globalGnbId": {

"plmnId": {"mcc":"123","mnc":"45"}, "gnbId": {"gnbIdLength": 25, "gnbIdValue": 6028163} },

"gnbCuUeF1apId": 100}

},

"groupId": {

"spId": 123

},

"sliceId": {

"sst": 123, "sd": "456DEF", "plmnId": {"mcc":"123", "mnc":"45"}

},

"qosId": {

"5qI": 123

},

"cellId": {

"plmnId": {"mcc":"123", "mnc":"45"}, "cId": {"ncI": 12345678901}

}

}

}

## A.1.5 gNB-CU-CP UE E1AP ID based generic scope identifier

{

"scope": {

"ueId": {

"guGnbCuCpUeE1apId": {"globalGnbId": {

"plmnId": {"mcc":"123", "mnc":"45"}, "gnbId": {"gnbIdLength": 25,"gnbIdValue": 6028163} },

"gnbCuCpUeE1apId": 100}

},

"groupId": {

"spId": 123

},

"sliceId": {

"sst": 123, "sd": "456DEF", "plmnId": {"mcc":"123", "mnc":"45"}

},

"qosId": {

"5qI": 123

},

"cellId": {

"plmnId": {"mcc":"123", "mnc":"45"}, "cId": {"ncI": 12345678901}

}

}

}

## A.1.6 eNB UE X2AP ID based scope identifier

{

"scope": {

"ueId": {

"guEnbUeX2apId": {

"globalEnbId": {

"plmnId": {"mcc":"123","mnc":"45"},

"enbId": {"macroEnbId": "11111"} },

"enbUeX2apId": 100}

},

"sliceId": {

"sst": 123, "sd": "456DEF", "plmnId": {"mcc":"123", "mnc":"45"}

},

"qosId": {

"5qI": 123

},

"cellId": {

"plmnId": {"mcc":"123", "mnc":"45"}, "cId": {"ncI": 12345678901}

}

}

}

# A.2 QoS (Quality of Service)

## A.2.1 QoS based resource optimization per-UE

{

"scope": {

"ueId": {

"guRanUeId": {"globalGnbId": {

"plmnId": {"mcc":"123", "mnc":"45"}, "gnbId": {"gnbIdLength": 25, "gnbIdValue": 6028163} },

"ranUeId": "0000000000000855"

}

},

"qosId": {

"5qI": 67

}

},

"qosObjectives": {

"priorityLevel": 50

}

}

## A.2.2 QoS based resource optimization per-slice

{

"scope": {

"sliceId": {

"sst": 11, "sd": "456DEF", "plmnId": {"mcc":"248", "mnc":"35"} },

"qosId": {

"5qI": 67

},

"cellId": {

"plmnId": {"mcc":"248", "mnc":"35"}, "cId": { "ncI": 24}

}

},

"qosObjectives": {

"gfbr": 1000,

"mfbr": 500,

"pdb": 120

}

}

# A.3 QoE (Quality of Experience)

## A.3.1 QoE based resource optimization per-UE

{

"scope": {

"ueId": {

"guRanUeId": {"globalGnbId": {

"plmnId": {"mcc":"123", "mnc":"45"}, "gnbId": {"gnbIdLength": 25,"gnbIdValue": 6028163} },

"ranUeId": "0000000000000855"}

},

"qosId": {

"5qI": 67

}

},

"qoeObjectives": {

"initialBuffering": 30,

"reBuffFreq": 5,

"stallRatio": 2

}

}

## A.3.2 QoE based resource optimization per-slice

{

"scope": {

"sliceId": {

"sst": 11, "sd": "456DEF", "plmnId": {"mcc":"248", "mnc":"35"} }

},

"qoeObjectives": {

"qoeScore": 4.25

}

}

# A.4 TSP (Traffic Steering Preferences)

## A.4.1 Traffic steering per-UE

{

"scope": {

"ueId": {

"guRanUeId": {"globalGnbId": {

"plmnId": {"mcc":"248", "mnc":"35"}, "gnbId": {"gnbIdLength": 25, "gnbIdValue": 6028163 } },

"ranUeId": "0000000000000855"}

}

},

"tspResources": [

{

"cellIdList": [

{"plmnId": {"mcc": "248","mnc": "35"}, "cId": {"ncI": 39} },

{"plmnId": {"mcc": "248","mnc": "35"}, "cId": {"ncI": 40} }

],

"preference": "PREFER"

},

{

"cellIdList": [

{"plmnId": {"mcc": "248","mnc": "35"}, "cId": {"ncI": 81} },

{"plmnId": {"mcc": "248","mnc": "35"}, "cId": {"ncI": 82} },

{"plmnId": {"mcc": "248","mnc": "35"}, "cId": {"ncI": 83} }

],

"preference": "FORBID"

}

]

}

## A.4.2 Traffic steering per-slice

{

"scope": {

"sliceId": {

"sst": 11, "sd": "456DEF", "plmnId": {"mcc": "248", "mnc": "35"}

},

"qosId": {

"5qI": 67

}

},

"tspResources": [

{

"cellIdList": [

{"plmnId": {"mcc": "248","mnc": "35"}, "cId": {"ncI": 55} },

{"plmnId": {"mcc": "248","mnc": "35"}, "cId": {"ncI": 65} }

],

"preference": "SHALL"

},

{

"cellIdList": [

{"plmnId": {"mcc": "248","mnc": "35"}, "cId": {"ncI": 31} },

{"plmnId": {"mcc": "248","mnc": "35"}, "cId": {"ncI": 32} },

{"plmnId": {"mcc": "248","mnc": "35"}, "cId": {"ncI": 33} }

],

"preference": "AVOID"

}

]

}

# A.5 QoS optimization with resource directive

{

"scope": {

"ueId": {

"guRanUeId": {"globalGnbId": {

"plmnId": {"mcc":"248", "mnc":"35"}, "gnbId": {"gnbIdLength": 25, "gnbIdValue": 6028163} },

"ranUeId": "0000000000000855"

}

},

"qosId": {

"5qI": 67

}

},

"qosObjectives": {

"priorityLevel": 50

},

"tspResources": [

{

"cellIdList": [

{"plmnId": {"mcc": "248","mnc": "35"}, "cId": {"ncI": 39} },

{"plmnId": {"mcc": "248","mnc": "35"}, "cId": {"ncI": 40} }

],

"preference": "PREFER"

},

{

"cellIdList": [

{"plmnId": {"mcc": "248","mnc": "35"}, "cId": {"ncI": 81} },

{"plmnId": {"mcc": "248","mnc": "35"}, "cId": {"ncI": 82} },

{"plmnId": {"mcc": "248","mnc": "35"}, "cId": {"ncI": 83} }

],

"preference": "AVOID"

}

]

}

# A.6 QoE optimization with resource directive

{

"scope": {

"sliceId": {

"sst": 11, "sd": "456DEF", "plmnId": {"mcc":"248", "mnc":"35"}

}

},

"qoeObjectives": {

"qoeScore": 4.25

},

"tspResources": [

{

"cellIdList": [

{"plmnId": {"mcc": "248","mnc": "35"}, "cId": {"ncI": 55} },

{"plmnId": {"mcc": "248","mnc": "35"}, "cId": {"ncI": 65} }

],

"preference": "SHALL"

},

{

"cellIdList": [

{"plmnId": {"mcc": "248","mnc": "35"}, "cId": {"ncI": 21} },

{"plmnId": {"mcc": "248","mnc": "35"}, "cId": {"ncI": 22} },

{"plmnId": {"mcc": "248","mnc": "35"}, "cId": {"ncI": 23} }

],

"preference": "AVOID"

}

]

}

# A.7 Status object for notification

{

"enforceStatus": "NOT\_ENFORCED",

"enforceReason": "SCOPE\_NOT\_APPLICABLE"

}

# A.8 UE level

## A.8.1 UE level per-QoS

{

"scope": {

"ueId": {

"guRanUeId": {"globalGnbId": {

"plmnId": { "mcc":"123", "mnc":"45"}, "gnbId": {"gnbIdLength": 25, "gnbIdValue": 6028163} },

"ranUeId": "0000000000000855"}

},

"qosId": {

"5qI": 67

}

},

"ueLevelObjectives": {

"ulPacketDelay": 0.5

}

}

## A.8.2 UE level per-slice

{

"scope": {

"ueId": {

"guRanUeId": {"globalGnbId": {

"plmnId": {"mcc":"248", "mnc":"35"},"gnbId": {"gnbIdLength": 25,"gnbIdValue": 6028163} },

"ranUeId": "0000000000000855"

}

},

"sliceId": {

"sst": 11, "sd": "456DEF", "plmnId": {"mcc":"248","mnc":"35"}

}

},

"ueLevelObjectives": {

"dlThroughput": 5000

}

}

# A.9 RAN Slice SLA assurance

## A.9.1 Support of maximum slice throughput SLA

{

"scope": {

"sliceId": {"sst": 1, "sd": "456DEF", "plmnId": {"mcc":"248", "mnc":"35"} }

},

"sliceSlaObjectives": {

"maxDlThptPerUe": 50000,

"maxUlThptPerUe": 25000,

"maxDlThptPerSlice": 300000000,

"maxUlThptPerSlice": 150000000

}

}

## A.9.2 Support of maximum number of UEs and PDU sessions per slice SLA

{

"scope": {

"sliceId": {"sst": 3, "sd": "456DEF", "plmnId": {"mcc":"248", "mnc":"35"}

}

},

"sliceSlaObjectives": {

"maxNumberOfUes": 100,

"maxNumberOfPduSessions": 800

},

"sliceSlaResources": {

"cellIdList": [

{"plmnId": {"mcc": "248","mnc": "35"}, "cId": {"ncI": 1} },

{"plmnId": {"mcc": "248","mnc": "35"}, "cId": {"ncI": 2} },

{"plmnId": {"mcc": "248","mnc": "35"}, "cId": {"ncI": 3} }

]

}

}

## A.9.3 Support of UE-level performance targets for slice users

{

"scope": {

"sliceId": {"sst": 2, "sd": "123DEF", "plmnId": {"mcc":"248", "mnc":"35"} }

},

"sliceSlaObjectives": {

"maxDlPacketDelayPerUe": 5,

"maxUlPacketDelayPerUe": 5

},

"sliceSlaResources": {

"cellIdList": [

{"plmnId": {"mcc": "248","mnc": "35"}, "cId": {"ncI": 1} },

{"plmnId": {"mcc": "248","mnc": "35"}, "cId": {"ncI": 2} },

{"plmnId": {"mcc": "248","mnc": "35"}, "cId": {"ncI": 3} }

]

}

}

## A.9.4 Support of slice priority

{

"scope": {

"sliceId": {"sst": 1, "sd": "123DEF", "plmnId": {"mcc":"248", "mnc":"35"}

}

},

"sliceSlaObjectives": {

"dlSlicePriority": 20,

"ulSlicePriority": 30

},

"sliceSlaResources": {

"cellIdList": [

{"plmnId": {"mcc": "248","mnc": "35"}, "cId": {"ncI": 1} },

{"plmnId": {"mcc": "248","mnc": "35"}, "cId": {"ncI": 2} },

{"plmnId": {"mcc": "248","mnc": "35"}, "cId": {"ncI": 3} }

]

}

}

# A.10 Load balancing

## A.10.1 Load balancing per-cell

{

"scope": {

"cellId": {

"plmnId": {"mcc":"123", "mnc":"45"}, "cId": {"ncI": 31} }

},

"lbObjectives": {

"targetPrbUsg": 80,

"prbUsgType": 1

},

"lbResources": {

"cellIdList": [

{"plmnId": {"mcc": "123","mnc": "45"}, "cId": {"ncI": 32} },

{"plmnId": {"mcc": "123","mnc": "45"}, "cId": {"ncI": 33} },

{"plmnId": {"mcc": "123","mnc": "45"}, "cId": {"ncI": 34} }

]

}

}

## A.10.2 Load balancing per-cell per-slice

{

"scope": {

"cellId": {

"plmnId": {"mcc":"123", "mnc":"45"}, "cId": {"ncI": 31}

},

"sliceId": {

"sst": 11, "sd": "456DEF", "plmnId": {"mcc": "123", "mnc": "45"}

}

},

"lbObjectives": {

"targetPrbUsg": 80,

"prbUsgType": 1

},

"lbResources": {

"cellIdList": [

{"plmnId": {"mcc": "123","mnc": "45"}, "cId": {"ncI": 32} },

{"plmnId": {"mcc": "123","mnc": "45"}, "cId": {"ncI": 33} },

{"plmnId": {"mcc": "123","mnc": "45"}, "cId": {"ncI": 34} }

]

}

}

# A.11 Energy saving

## A.11.1 **Comprehensive** energy saving

### A.11.1.1 Energy saving over tracking area

{

"scope": {

"taIList": [

{"plmnId": {"mcc": "248", "mnc": "35"}, "tac": "123456"}

]

},

"esObjectives": {

"targetPeeEnergy": 20

}

}

{

### A.11.1.2 Energy saving over cell list

{

"scope": {

"cellIdList": [

{"plmnId": {"mcc": "248","mnc": "35"}, "cId": {"ncI": 71} },

{"plmnId": {"mcc": "248","mnc": "35"}, "cId": {"ncI": 72} },

{"plmnId": {"mcc": "248","mnc": "35"}, "cId": {"ncI": 73} },

{"plmnId": {"mcc": "248","mnc": "35"}, "cId": {"ncI": 81} },

{"plmnId": {"mcc": "248","mnc": "35"}, "cId": {"ncI": 82} },

{"plmnId": {"mcc": "248","mnc": "35"}, "cId": {"ncI": 83} }

]

},

"esObjectives": {

"esPercentage": 10

}

}

## A.11.2 Energy saving with exclusion cell list

### A.11.2.1 Energy saving over cells that must remain operational but can have some coverage impact

{

"scope": {

"taIList": [

{"plmnId": {"mcc": "248", "mnc": "35"}, "tac": "123456"}

]

},

"esObjectives": {

"esPercentage": 10

},

"esResources": [

{

"operationalCells": [

{"plmnId": {"mcc": "248","mnc": "35"}, "cId": {"ncI": 91} },

{"plmnId": {"mcc": "248","mnc": "35"}, "cId": {"ncI": 92} },

{"plmnId": {"mcc": "248","mnc": "35"}, "cId": {"ncI": 93} }

],

"operationalPreference": "FORBID"

}

]

}

### A.11.2.2 Energy saving over cells that must remain operational and maintain full coverage

{

"scope": {

"taIList": [

{"plmnId": {"mcc": "248", "mnc": "35"}, "tac": "123456"}

]

},

"esObjectives": {

"esPercentage": 10

},

"esResources": [

{

"operationalCells": [

{"plmnId": {"mcc": "248","mnc": "35"}, "cId": {"ncI": 91} },

{"plmnId": {"mcc": "248","mnc": "35"}, "cId": {"ncI": 92} },

{"plmnId": {"mcc": "248","mnc": "35"}, "cId": {"ncI": 93} }

],

"operationalPreference": "FORBID"

},

{

"coverageCells": [

{"plmnId": {"mcc": "248","mnc": "35"}, "cId": {"ncI": 91} },

{"plmnId": {"mcc": "248","mnc": "35"}, "cId": {"ncI": 92} },

{"plmnId": {"mcc": "248","mnc": "35"}, "cId": {"ncI": 93} }

],

"coveragePreference": "FORBID"

}

]

}

Annex B (Informative):
EI examples

# B.1 Generic examples

## B.1.1 EI job status

This is an example of EI job status that illustrates the usage of the generic EI job status schema defined in clause 9.1.1.

{

"jobStatus": "DISABLED"

}

# B.2 UE geo-location and velocity

## B.2.1 Statement for EI job constraints

{

"ueGeoandVelEIConstraints": {

"supportedGadShapes": ["POINT", "POINT\_ALTITUDE"],

"supportedVelocityDescs": ["H\_VELOCITY", "HV\_VELOCITY"]

}

}

## B.2.2 Statement for EI job definition

{

"scope": {

"ueId": {

"guRanUeId": {"globalGnbId": {

"plmnId": {"mcc":"123", "mnc":"45"}, "gnbId": {"gnbIdLength": 25, "gnbIdValue": 6028163 } },

"ranUeId": "0000000000000855"

}

}

},

"ueGeoandVelEIDescription": {

"gadShape": "POINT",

"granularityPeriod": 500,

"reportingPeriod": 500,

"reportingAmount": 1200,

"velocityDesc": "H\_VELOCITY"

}

}

## B.2.3 Statement for EI job result

[

{

"timeStamp": "2022-05-30T09:00:30.5Z",

"ueId": {

"guRanUeId": {"globalGnbId": {

"plmnId": {"mcc":"123", "mnc":"45"}, "gnbId": {"gnbIdLength": 25, "gnbIdValue": 6028163 } },

"ranUeId": "0000000000000855"

}

},

"gadShape": "POINT",

"geoLocation": {

"lon": -122.960625,

"lat": 45.545112

},

"velocityDesc": "H\_VELOCITY",

"velocity": {

"hSpeed": 15,

"bearing": 90

}

}

]

Annex C (Informative):
JSON schema identification and versioning

# C.1 General

The base URI defined in clause 7.1 is used for the policy types and EI types, as well as the subschemas they link to, defined in the present document.

Since the base URI is the same, data types defined in the subschema can be referred to with relative URI, e.g. "/jsonschemas/a1td/common\_x.y.z/#/$defs/UeId".

# C.2 Embedding a subschema

A subschema is defined with $schema and $id keywords, e.g.:

{

"$schema": "https://json-schema.org/draft/2020-12/schema",

"$id": "https://schemas.o-ran.org/jsonschemas/a1td/common\_2.0.0",

"$defs": {

...

}

}

A subschema is linked using $defs keyword in the base schema, e.g.:

{

"$schema": "https://json-schema.org/draft/2020-12/schema",

"$id": "https://schemas.o-ran.org/jsonschemas/a1td/ORAN\_QoSTarget\_4.0.1",

...

"$defs": {

"https://schemas.o-ran.org/jsonschemas/a1td/common\_2.0.0":

}

}

In a compound schema, a subschema is embedded into the base

schema after the $defs where it is linked, e.g.:

{

"$schema": "https://json-schema.org/draft/2020-12/schema",

"$id": "https://schemas.o-ran.org/jsonschemas/a1td/ORAN\_QoSTarget\_4.0.1",

...

"$defs": {

"https://schemas.o-ran.org/jsonschemas/a1td/common\_2.0.0":

{

"$schema": "https://json-schema.org/draft/2020-12/schema",

"$id": "https://schemas.o-ran.org/jsonschemas/a1td/common\_2.0.0",

"$defs": {

...

}

}

}

}

# C.3 Versioning of policy type schemas and common data types schema

## C.3.1 General

The common data types schema specified in clause 7.1.2.1 and the policy schemas specified in clause 7.2 can be updated independently but a policy schema update can also require, or be required by, an update of the common data types schema. When the common data types schema is updated, all policy schemas are updated to link to the new version of common data types schema ensuring that all schemas and linking are consistent within the present document.

The following update scenarios can occur:

* Policy type is updated but the update has not required a change to the common data types. If the common data types schema is updated, the updated policy schema links to the new common data types schema, and all other policy schemas are updated to link to the new common data types schema.
* Policy type is updated and the update has required a change to the common data types. The new policy schema links to the new common data types schema. All other policy schemas are updated to link to the new common data types schema.
* The common data types are updated. All policy schemas are updated to link to the new common data types schema. Policy schemas that are impacted by the updated common data types schema also incorporate any required changes.

## C.3.2 Versioning of policy types

When updating a policy schema to link to a new common data types schema, the update may result in a major, minor, or patch update to the policy type version

NOTE: An update of a policy schema may link to a new version of the common data types schema without being impacted by the changes made to it and if it is impacted it can result in an update that is either compatible or not compatible.

When linking to a new version of the common data types schema that has impact on the compatibility of the policy type, the policy type major version is incremented.

When linking to a new version of the common data types schema and no further changes are made to the policy schema, the policy type patch version is incremented.

Annex (informative):
Change History

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| Date | Revision | Description |
| 2021.03.13 | 01.00 | First version based on data models and policy types from A1AP v03.00 |
| 2021.07.16 | 02.00 | Introducing new policy types for UE Level target and Slice SLA target. Enhancing data type definitions and JSON encodings. |
| 2022.04.01 | 03.00 | Introducing new policy type for Load balancing |
| 2022.07.30 | 04.00 | Introducing new EI type for UE location and velocity information |
| 2022.11.17 | 05.00 | Aligning to O-RAN drafting rules.  Enhanced alignment between A1-P and A1-EI, and between A1AP and A1TD. |
| 2023.03.22 | 05.01 | Editorial enhancements |
| 2023.07.31 | 06.00 | Enhanced descriptions for SliceSlaObjectives and UE identifier options for ScopeIdentifier, and adapting to latest template |
| 2023.11.30 | 07.00 | ETSI PAS related editorial enhancements and extended description of packet delay and packet loss attributes and UE identifier options for ScopeIdentifier. Updating to latest JSON schema draft. |
| 2024.03.31 | 08.00 | Editorial enhancements. Introducing new policy type for Energy saving. |
| 2024.07.31 | 09.00 | Segmentation of JSON schemas. Adding attributes to Slice SLA target and Network energy saving policy types. |
| 2024.11.30 | 10.00 | Updates to the common schema and the policy and EI types related to that. Updated references. |

</div>
---

- View in [GitHub Mode]({{site.github_page_url}}/O-RAN.WG2.TS.A1TD-R004-v10.00.docx.md).
- Go back to [Table of Contents]({{site.baseurl}}/).
- Download the [Original Document]({{site.download_url}}/O-RAN.WG2.TS.A1TD-R004-v10.00.docx).

---

* toc
{:toc}
