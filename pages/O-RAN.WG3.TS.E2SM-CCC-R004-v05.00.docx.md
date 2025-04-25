## O-RAN.WG3.TS.E2SM-CCC-R004-v05.00.docx

- View in [Reader Mode](https://simewu.com/spec-reader/pages/09-WG3/O-RAN.WG3.TS.E2SM-CCC-R004-v05.00.docx).
- Go back to [Table of Contents](../README.md).
- Download the [Original Document](https://github.com/Simewu/spec-reader/raw/refs/heads/main/documents/O-RAN.WG3.TS.E2SM-CCC-R004-v05.00.docx).

---

![](../assets/images/f25b9c62a8f2.jpg)O-RAN.WG3.TS.E2SM-CCC-R004-v05.00

*Technical Specification*

**O-RAN Work Group 3 (WG-3) Near-Real-time RAN Intelligent Controller and E2 Interface**

**E2 Service Model (E2SM) Cell Configuration and Control**

Copyright (C) 2025 by the O-RAN ALLIANCE e.V.

The copying or incorporation into any other work of part or all of the material available in this specification in any form without the prior written permission of O-RAN ALLIANCE e.V. is prohibited, save that you may print or download extracts of the material of this specification for your personal use, or copy the material of this specification for the purpose of sending to individual third parties for their information provided that you acknowledge O-RAN ALLIANCE as the source of the material and that you inform the third party that these conditions apply to them and that they must comply with them.

O-RAN ALLIANCE e.V., Buschkauler Weg 27, 53347 Alfter, Germany Register of Associations, Bonn VR 11238, VAT ID DE321720189

# Contents

Foreword 5

Modal verbs terminology 5

1. Scope 6
2. References 6
   1. Normative references 6
   2. Informative references 6
3. Definition of terms, symbols and abbreviations 7
   1. Terms 7
   2. Symbols 7
   3. Abbreviations 7
4. General 7
   1. Procedure Specification Principles 7
   2. Forwards and Backwards Compatibility 8
   3. Specification Notations 8
   4. Void 8
5. E2SM Services 8
6. RAN Function Service Model Description 9
   1. RAN Function Overview 9
   2. RAN Function exposure services 9
      1. REPORT service 9
      2. INSERT service 10
      3. CONTROL service 10
      4. POLICY service 10
      5. QUERY service 10
   3. REPORT service description 10
   4. INSERT service description 10
   5. CONTROL service description 10
   6. POLICY service description 11
   7. QUERY service description 11
7. RAN Function Description 11
   1. RAN Function Definition 11
   2. RAN Function name 11
   3. Event trigger styles 12
      1. Event trigger style list 12
      2. Event trigger style 1: E2 Node Configuration Change 12
      3. Event trigger style 2: Periodic 12
   4. Supported RIC REPORT Services 13
      1. REPORT Service style list 13
      2. REPORT Service Style 1: Node-Level Configuration 13
      3. REPORT Service Style 2: Cell-Level Configuration 14
   5. Supported RIC INSERT Services 14
   6. Supported RIC CONTROL Services 14
      1. CONTROL Service Style Types 14
      2. CONTROL Service Style 1: Node Configuration and Control 14
      3. CONTROL Service Style 2: Cell Configuration and Control 15
   7. Supported RIC POLICY Services 15

7.7A Supported RIC QUERY Services 16

7.7A.1 QUERY Service style list 16

7.7A.2 QUERY Service Style 1: Node-Level Configuration Query 16

* 1. A.3 QUERY Service Style 2: Cell-Level Configuration Query 16
  2. Supported RIC Service Styles and E2SM IE Formats 17

1. RAN Configuration Structures 17
   1. Approach 17
      1. RIC Event Trigger Definition 18
      2. RIC Action Definition 19
      3. Report Indication 20
      4. Insert Indication 21
      5. Control Action 21
      6. Policy Action 21
   2. Common RAN Configuration Structures 21
      1. Node-Level RAN Configuration Structures 22
      2. Cell-Level RAN Configuration Structures 22
   3. RAN Configuration Structures for Event Trigger 22
      1. RAN Configuration Structures for Event Trigger Style 1 22
      2. RAN Configuration Structures for Event Trigger Style 2 22
   4. RAN Configuration Structures for Report Services 23
      1. RAN Configuration Structures for Report Service Style 1 23
      2. RAN Configuration Structures for Report Service Style 2 23
   5. RAN Configuration Structures for Insert services 23
   6. RAN Configuration Structures for Control services 23
      1. RAN Configuration Structures for Control Service Style 1 23
      2. RAN Configuration Structures for Control Service Style 2 23
   7. RAN Configuration Structures for Policy services 23

8.7A RAN Configuration Structures for Query services 23

8.7A.1 RAN Configuration Structures for Query Service Style 1 23

* 1. A.2 RAN Configuration Structures for Query Service Style 2 23
  2. Attribute Definitions 23
     1. Attribute Definitions for Node-Level RAN Configuration Structures 23
     2. Attribute Definitions for Cell-Level RAN Configuration Structures 26

1. Elements for E2SM Service Model 31
   1. General 31
   2. Message Functional Definition and Content 31
      1. Messages for RIC Functional procedures 31
      2. Messages for RIC Global Procedures 45
   3. Information Element definitions 48
      1. General 48
      2. RAN Function Name 49
      3. RIC Style Type 49
      4. RIC Style Name 49
      5. RIC Format Type 49
      6. Cell Global ID 49
      7. RAN Configuration Structure Name 49
      8. Attribute Name 49
      9. Report Type 49
      10. Event Time 50
      11. Cause 50
      12. pLMNId 50
      13. sNSSAI 50
      14. pLMNInfo 51
      15. pLMNInfoList 51
      16. rRMPolicyMember 51
      17. rRMPolicyMemberList 51
      18. bWPList 52
      19. 5QIList 52
      20. partitionFlowList 52
      21. partitionList 53
      22. policyType 53
      23. antennaMaskName 54
      24. antennaMask 54
      25. sleepMode 55
      26. dataDir 55
      27. symbolMask 55
      28. slotMask 56
      29. validDuration 56
      30. esObjective 56
      31. onDurationTimer 57
      32. cycleStartOffset 57
      33. oruUserPlaneConfiguration 57
      34. txArrayList 58
      35. rxArrayList 60
      36. perfObjectiveList 62
      37. oruCapabilities 63
      38. energySavingCapabilityCommonInfo 63
      39. asmCapabilityInfo 63
      40. trxControlCapabilityInfo 64
   4. JSON Schema 65
      1. General 65
      2. JSON Schema Definitions 65
   5. Message transfer syntax 88
2. Handling of Unknown, Unforeseen and Erroneous Protocol Data 88

Annex A (informative): Examples on IE Contents 88

Annex (informative): Change history/Change request (history) 89

# Foreword

This Technical Specification (TS) has been produced by WG3 of the O-RAN Alliance.

The content of the present document is subject to continuing work within O-RAN and may change following formal O-RAN approval. Should the O-RAN Alliance modify the contents of the present document, it will be re-released by O-RAN with an identifying change of version date and an increase in version number as follows:

version xx.yy.zz where:

xx: the first digit-group is incremented for all changes of substance, i.e. technical enhancements, corrections, updates, etc. (the initial approved document will have xx=01). Always 2 digits with leading zero if needed.

yy: the second digit-group is incremented when editorial only changes have been incorporated in the document. Always 2 digits with leading zero if needed.

zz: the third digit-group included only in working versions of the document indicating incremental changes during the editing process. External versions never include the third digit-group. Always 2 digits with leading zero if needed.

# Modal verbs terminology

In the present document "**shall**", "**shall not**", "**should**", "**should not**", "**may**", "**need not**", "**will**", "**will not**", "**can**" and "**cannot**" are to be interpreted as described in clause 3.2 of the O-RAN Drafting Rules (Verbal forms for the expression of provisions).

"**must**" and "**must not**" are **NOT** allowed in O-RAN deliverables except when used in direct citation.

# Scope

The present document specifies the E2 Service Model (E2SM) for the Near RT RIC Cell Configuration and Control.

# References

## Normative references

References are either specific (identified by date of publication and/or edition number or version number) or non-specific. For specific references, only the cited version applies. For non-specific references, the latest version of the referenced document (including any amendments) applies.

NOTE 1: While any hyperlinks included in this clause were valid at the time of publication, O-RAN cannot guarantee their long-term validity.

NOTE 2: In the case of a reference to a 3GPP document (including a GSM document), a non-specific reference implicitly refers to the latest version of that document in 3GPP Release 18, or the latest 3GPP release prior to Release 18 that includes that document.

The following referenced documents are necessary for the application of the present document.

1. Void.
2. O-RAN.WG3.TS.E2GAP: "O-RAN E2 General Aspects and Principles (E2GAP)".
3. ORAN.WG3.TS.E2AP: "O-RAN E2 Application Protocol (E2AP)".
4. O-RAN.WG3.TS.E2SM: "O-RAN E2 Service Model (E2SM)".
5. IETF RFC 5905 (2010-06): "Network Time Protocol Version 4: Protocol and Algorithms Specification".
6. 3GPP TS 28.541 V17.9.0 (2023-01): "Management and orchestration; 5G Network Resource Model (NRM); Stage 2 and stage 3 (Release 17)".
7. 3GPP TS 38.211 V17.4.0 (2022-12): "NR; Physical channels and modulation (Release 17)".
8. O-RAN.WG1.TS.OAD: "O-RAN Architecture Description (OAD)".
9. O-RAN.WG4.CUS.0-R003-v14, "O-RAN Control, User and Synchronization Plane Specification".
10. O-RAN.WG4.MP.0-R003-v14, "O-RAN Management Plane Specification".
11. O-RAN.WG5.O-DU-O1.0-R003-v09, "O-RAN O1 Interface Specification for O-DU".
12. 3GPP TS 28.552 V17.12.0 (2023-12): "Management and orchestration; 5G performance measurements (Release 17)".
13. 3GPP TS 38.331: "NR; Radio Resource Control (RRC) Protocol Specification".

## Informative references

References are either specific (identified by date of publication and/or edition number or version number) or non-specific. For specific references, only the cited version applies. For non-specific references, the latest version of the referenced document (including any amendments) applies.

NOTE 1: While any hyperlinks included in this clause were valid at the time of publication, O-RAN cannot guarantee their long-term validity.

NOTE 2: In the case of a reference to a 3GPP document (including a GSM document), a non-specific reference implicitly refers to the latest version of that document in 3GPP Release 18, or the latest 3GPP release prior to Release 18 that includes that document.

The following referenced documents are not necessary for the application of the present document, but they assist the user with regard to a particular subject area.

[i.1] 3GPP TR 21.905: "Vocabulary for 3GPP Specifications".

# Definition of terms, symbols and abbreviations

## Terms

For the purposes of the present document, the terms given in 3GPP TR 21.905 [i.1], O-RAN.WG1.TS.OAD [8], O- RAN.WG3.TS.E2GAP [2], O-RAN.WG3.TS.E2SM [4] and the following apply:

Void

## Symbols

Void

## Abbreviations

For the purposes of the present document, the following abbreviations apply: O-CU O-RAN Central Unit

O-CU-CP O-RAN Central Unit - Control Plane O-CU-UP O-RAN Central Unit - User Plane

O-DU O-RAN Distributed Unit

Near-RT RIC Near-real-time RAN Intelligent Controller

# General

## Procedure Specification Principles

The principle for specifying the procedure logic is to specify the functional behaviour of the terminating node exactly and completely. Any rule that specifies the behaviour of the originating node shall be possible to be verified with information that is visible within the system.

The following specification principles have been applied for the procedure text in clause 8:

* The procedure text discriminates between:
  1. Functionality which "shall" be executed.

The procedure text indicates that the receiving node "shall" perform a certain function Y under a certain condition. If the receiving node supports procedure X but cannot perform functionality Y requested in the REQUEST message of a Class 1 EP, the receiving node shall respond with the message used to report unsuccessful outcome for this procedure, containing an appropriate cause value.

* 1. Functionality which "shall, if supported" be executed.

The procedure text indicates that the receiving node "shall, if supported," perform a certain function Y under a certain condition. If the receiving node supports procedure X, but does not support functionality Y, the receiving node shall proceed with the execution of the EP, possibly informing the requesting node about the not supported functionality.

- Any required inclusion of an optional IE in a response message is explicitly indicated in the procedure text. If the procedure text does not explicitly indicate that an optional IE shall be included in a response message, the optional IE shall not be included. For requirements on including *Criticality Diagnostics* IE, see clause 10.

## Forwards and Backwards Compatibility

The forwards and backwards compatibility of the protocol is assured by a mechanism where all current and future messages, and IEs or groups of related IEs, include ID and criticality fields that are coded in a standard format that will not be changed in the future. These parts can always be decoded regardless of the standard version.

## Specification Notations

For the purposes of the present document, the following notations apply:

Service when referring to a Service in the specification the **SERVICE NAME** is written with upper case characters and in bold followed by the word "service", e.g., **REPORT** service.

Procedure When referring to an elementary procedure in the specification the Procedure Name is written with the first letters in each word in upper case characters followed by the word "procedure", e.g., Handover Preparation procedure.

Message When referring to a message in the specification the MESSAGE NAME is written with all letters in upper case characters followed by the word "message", e.g., HANDOVER REQUEST message.

IE When referring to an information element (IE) in the specification the *Information Element Name* is written with the first letters in each word in upper case characters and all letters in Italic font followed by the abbreviation "IE", e.g., *E-RAB ID* IE.

Value of an IE When referring to the value of an information element (IE) in the specification the "Value" is written as it is specified in the specification enclosed by quotation marks, e.g., "Value".

## Void

# E2SM Services

As defined in O-RAN.WG3.TS.E2GAP [2], a given RAN Function offers a set of services to be exposed over the E2 (REPORT, INSERT, CONTROL, POLICY and/or QUERY) using O-RAN.WG3.TS.E2AP [3] defined procedures. Each of the E2AP Procedures listed in table 5-1 contains specific E2 Node RAN Function dependent Information Elements (IEs) which shall be defined by a specific E2SM.

**Table 5-1: Relationship RAN Function specific E2AP Information elements and E2AP Procedures**

|  |  |  |
| --- | --- | --- |
| **RAN Function specific E2AP Information Elements** | **E2AP Information Element reference** | **Related E2AP Procedures** |
| *RIC Event Trigger Definition* IE | O-RAN.WG3.TS.E2AP [3] clause 9.2.9 | RIC Subscription  RIC Subscription Modification |
| *RIC Action Definition* IE | O-RAN.WG3.TS.E2AP [3] clause 9.2.12 | RIC Subscription  RIC Subscription Modification |
| *RIC Indication Header* IE | O-RAN.WG3.TS.E2AP [3] clause 9.2.17 | RIC Indication |
| *RIC Indication Message* IE | O-RAN.WG3.TS.E2AP [3] clause 9.2.16 | RIC Indication |
| *RIC Call Process ID* IE | O-RAN.WG3.TS.E2AP [3] clause 9.2.18 | RIC Indication RIC Control |
| *RIC Control Header* IE | O-RAN.WG3.TS.E2AP [3] clause 9.2.20 | RIC Control |
| *RIC Control Message* IE | O-RAN.WG3.TS.E2AP [3] clause 9.2.19 | RIC Control |
| *RIC Control Outcome IE* | O-RAN.WG3.TS.E2AP [3] clause 9.2.25 | RIC Control |
| *RIC Query Header IE* | O-RAN.WG3.TS.E2AP [3] clause 9.2.36 | RIC Query |
| *RIC Query Definition IE* | O-RAN.WG3.TS.E2AP [3] clause 9.2.37 | RIC Query |
| *RIC Query Outcome IE* | O-RAN.WG3.TS.E2AP [3] clause 9.2.38 | RIC Query |
| *RAN Function Definition* IE | O-RAN.WG3.TS.E2AP [3] clause 9.2.23 | E2 Setup  RIC Service Update |

All of these RAN Function specific E2AP IEs are defined in O-RAN.WG3.TS.E2AP [3] as "OCTET STRING".

The purpose of this specification is to define the contents of these fields for the specific RAN function "Cell Configuration and Control".

# RAN Function Service Model Description

## RAN Function Overview

For the purposes of this E2 Service Model, E2SM-CCC, the E2 Node terminating the E2 Interface is assumed to host one or more instances of the RAN Function "Cell Configuration and Control" which performs the following functionalities:

* E2 REPORT services used to expose node level and cell level configuration information
* E2 CONTROL services used to initiate control and/or configuration of node level and cell level parameters
* E2 QUERY services used to request and retrieve node level and cell level configuration information

This E2SM specification provides a set of RAN Function exposure services described in clause 6.2 and has been prepared with the assumption that the same E2SM may be used to describe either a single RAN Function in the E2 Node handling all RAN cell configuration and control related processes or more than one RAN Function in the E2 Node with each instance handling a subset of the cell configuration and control related processes on the E2 Node.

## RAN Function exposure services

### REPORT service

The "Cell Configuration and Control" RAN Function provides selective support of the following **REPORT** services:

* Node level configuration information in E2 Nodes
* Cell level configuration information in E2 Nodes

### INSERT service

Void

### CONTROL service

The "Cell Configuration and Control" RAN Function provides selective support of the following **CONTROL** services:

* Node level configuration and control in E2 Nodes
* Cell level configuration and control in E2 Nodes

### POLICY service

Void

### QUERY service

The "Cell Configuration and Control" RAN Function provides support of the following **QUERY** services:

* Node level configuration information retrieval from E2 Nodes
* Cell level configuration information retrieval from E2 Nodes

## REPORT service description

The E2SM-CCC REPORT service requirements defined in clause 6.2.1 are offered using a set of REPORT Styles. All REPORT styles are implemented using a set of IEs that constitute "Action Definition", "RIC Indication Header" and "RIC Indication Message" to deliver "Cell Configuration and Control" related REPORT services. Each REPORT service style is associated with a specific "Event Trigger" approach. For each Report style, a single RAN Parameter table is used to specify the required information to be reported.

The following REPORT styles are supported:

* Node level configuration information in E2 Nodes
* Cell level configuration information in E2 Nodes

## INSERT service description

Void

## CONTROL service description

The E2SM-CCC CONTROL service requirements defined in clause 6.2.3 are offered using a set of CONTROL Styles. Each style corresponds to a set of "CONTROL Action", where each "CONTROL Action" deals with a specific functionality and has a set of associated RAN parameters, provided in a mapping table. All CONTROL Service styles are implemented using a set of Ies constituting a "RIC Control Request Header" and a "RIC Control Request Message" to deliver "Cell Configuration and Control" related CONTROL services. A "CONTROL Action" containing one or more RAN parameters and their associated values can either be sent from the RIC, either asynchronously to the E2 node or as a response to a previous "INSERT Indication" from the E2 node.

The following CONTROL styles are supported:

* Node level configuration and control in E2 Nodes
* Cell level configuration and control in E2 Nodes

## POLICY service description

Void

## QUERY service description

The E2SM-CCC QUERY service requirements defined in clause 6.2.5 are offered using a set of QUERY Styles. All QUERY styles are implemented using a set of IEs for RIC Query Header, RIC Query Definition and RIC Query Outcome. For each Query style, respective RAN Configuration Structures are used to specify the required information to be requested and responded.

# RAN Function Description

## RAN Function Definition

The E2AP [3] procedures E2 Setup and RIC Service Update are used to transport the RAN Function Description.

For a specific RAN Function declared using E2SM-CCC, the *RAN Function Definition* IE, defined in clause 9.2.2.1 shall report the following information:

* RAN Function name along with associated information on E2SM definition
* Event trigger styles list along with the corresponding encoding type for each associated E2AP IE.
* RIC **REPORT** Service styles list along with the corresponding encoding type for each associated E2AP IE.
* RIC **INSERT** Service styles list along with the corresponding encoding type for each associated E2AP IE.
* RIC **CONTROL** Service styles list along with the corresponding encoding type for each associated E2AP IE.
* RIC **POLICY** Service styles list along with the corresponding encoding type for each associated E2AP IE.
* RIC **QUERY** Service styles list along with the corresponding encoding type for each associated E2AP IE.

For the case where *RAN Function Definition* IE, defined in clause 9.2.2.1, is present in the E2 SETUP REQUEST message the IE shall provide a complete list of all supported node-level RAN Configuration Structures and associated Attributes, Services including Styles, Actions and Formats along with a complete list of Cells and associated supported cell-level RAN Configuration Structures and associated Attributes, Services including Styles, Actions and Formats for all supported RIC services reflecting the current status of the RAN Function.

For the case where *RAN Function Definition* IE, defined in clause 9.2.2.1, is present in the RIC SERVICE UPDATE message within the E2AP *RAN Functions Added List* IE, the IE shall provide a complete list of all supported node-level RAN Configuration Structures and associated Attributes, Services including Styles, Actions and Formats along with a complete list of Cells and associated supported cell-level RAN Configuration Structures and associated Attributes, Services including Styles, Actions and Formats for all supported RIC services for the newly added RAN Function with a new RAN Function ID.

For the case where *RAN Function Definition* IE, defined in clause 9.2.2.1, is present in the RIC SERVICE UPDATE message within the E2AP *RAN Functions Modified List* IE, the IE shall provide a complete list of all supported node-level RAN Configuration Structures and associated Attributes, Services including Styles, Actions and Formats along with a complete list of Cells and associated supported cell-level RAN Configuration Structures and associated Attributes, Services including Styles, Actions and Formats for all supported RIC services including both modified and unchanged information for an existing RAN Function.

## RAN Function name

RAN Function Short Name "ORAN-E2SM-CCC"

RAN Function name description "Cell Configuration and Control"

RAN Function Instance, required when and if E2 Node exposes more than one instance of a RAN Function based on this E2SM.

## Event trigger styles

### Event trigger style list

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **RIC**  **Style Type** | **Style Name** | **Supported RIC Service Style** | | | **Style Description** |
| **Report** | **Insert** | **Policy** |
| 1 | E2 Node Configuration Change | 1,2 | - | - | Triggered upon subscription and when a configuration change within the E2 Node occurs. |
| 2 | Periodic | 1,2 | - | - | Triggered in a specified period of time. |

The details of the individual Event trigger Styles are provided in subsequent clauses.

### Event trigger style 1: E2 Node Configuration Change

This Event trigger style is used to detect configuration changes on the subscribed E2 Node. The configuration changes can occur at node-level and/or cell-level. A node-level configuration change event occurs when addition, modification or deletion related to at least one attribute within the RAN Configuration Structures defined in clause 8.3.1 associated with the node occurs. Similarly, a cell-level configuration change event occurs when addition, modification or deletion related to at least one attribute within the RAN Configuration Structures defined in clause 8.3.2 occurs on cells within the E2 Node. The E2 Node can also be configured to detect cell-level configuration changes at a certain cell.

The E2 Node can be configured to detect node-level or cell-level changes. The following table provides the configuration changes that are supported for event triggering along with associated RAN Configuration Structures and respective *RIC Event Trigger Definition* IE Formats.

**Table 7.3.2-1: Event Trigger Definition Style 1 - E2 Node configuration change types, the associated RAN Configuration Structures for event triggering and respective *RIC Event Trigger Definition* IE Formats**

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **E2 Node** | **Associated** | **Supported** | ***RIC Event*** | **Description** |
| **Configuration** | **RAN** | **RIC** | ***Trigger*** |  |
| **Change Type** | **Configuration** | **REPORT** | ***Definition* IE** |  |
|  | **Structures** | **Service** | **Format** |  |
|  |  | **Style** |  |  |
| Node-level | 8.3.1.1 | 1 | *RIC Event* | Triggered upon |
| Configuration Change |  |  | *Trigger* | subscription and when a |
|  |  |  | *Definition* IE | node-level configuration |
|  |  |  | Format 1 | change occurs. |
|  |  |  | (9.2.1.1.1) |  |
| Cell-level Configuration | 8.3.1.2 | 2 | *RIC Event* | Triggered upon |
| Change |  |  | *Trigger* | subscription and when a |
|  |  |  | *Definition* IE | cell-level configuration |
|  |  |  | Format 2 | change occurs. |
|  |  |  | (9.2.1.1.2) |  |

### Event trigger style 2: Periodic

This Event trigger style is used to trigger events within the E2 Node in a certain period of time. The following table provides the associated RAN Configuration Structures and respective *RIC Event Trigger Definition* IE Format.

**Table 7.3.3-1: Event Trigger Definition Style 2 - Periodic type, the associated RAN Configuration Structures for event triggering and respective *RIC Event Trigger Definition* IE Format**

|  |  |  |  |
| --- | --- | --- | --- |
| **Periodic Type** | **Associated RAN**  **Configuration Structures** | ***RIC Event Trigger Definition* IE Format** | **Description** |
| Periodic | 8.3.2 | *RIC Event Trigger Definition* IE Format 3 (9.2.1.1.3) | Triggered periodically in a certain period of time. |

## Supported RIC REPORT Services

### REPORT Service style list

|  |  |  |
| --- | --- | --- |
| **RIC Style Type** | **Style Name** | **Style Description** |
| 1 | Node-Level Configuration | This style is used to report node-level E2 Node configuration information |
| 2 | Cell-Level Configuration | This style is used to report cell-level E2 Node configuration information |

The details of the individual REPORT Service Styles are provided in subsequent clauses.

### REPORT Service Style 1: Node-Level Configuration

##### REPORT Service Style Description

This **REPORT** Service style provides node-level E2 Node related configuration information. E2 Node configuration information is sent to Near-RT RIC as a RIC INDICATION message which includes the information within *RIC Indication Message* IE along with an associated *RIC Indication Header* IE. Node-level configuration information includes the RAN Configuration Structures defined in clause 8.4.1 and their attributes provided in clause 8.8.1.

This **REPORT** Service style is initiated by Event Trigger style 1: E2 Node Configuration Change or by Event Trigger style 2: Periodic and configured using *RIC Action Definition* IE.

* + - 1. REPORT Service *RIC Action Definition* IE contents

This **REPORT** Service style uses the *RIC Action Definition* IE Format 1 (9.2.1.2.1).

The supported RAN Configuration Structures for this style are provided in clause 8.4.1 and respective attributes are provided in clause 8.8.1*.*

* + - 1. REPORT Service *RIC Indication Header* IE contents

This **REPORT** Service style uses the *RIC Indication Header* IE Format 1 (9.2.1.3.1).

* + - 1. REPORT Service *RIC Indication Message* IE contents

The **REPORT** Service style uses the *RIC Indication Message* IE Format 1 (9.2.1.4.1).

The supported RAN Configuration Structures for this style are provided in clause 8.4.1 and respective attributes are provided in clause 8.8.1*.*

### REPORT Service Style 2: Cell-Level Configuration

##### REPORT Service Style Description

This **REPORT** Service style provides cell related configuration information. Cell configuration information is sent to Near-RT RIC as a RIC INDICATION message which includes the information within *RIC Indication Message* IE along with an associated *RIC Indication Header* IE. Cell configuration information includes the RAN Configuration Structures defined in clause 8.4.2 and their attributes provided in clause 8.8.2.

This **REPORT** Service style is initiated by Event Trigger style 1: E2 Node Configuration Change or by Event Trigger style 2: Periodic and configured using *RIC Action Definition* IE.

* + - 1. REPORT Service *RIC Action Definition* IE contents

This **REPORT** Service style uses the *RIC Action Definition* IE Format 2 (9.2.1.2.2).

The supported RAN Configuration Structures for this style are provided in clause 8.4.2 and respective attributes are provided in clause 8.8.2*.*

* + - 1. REPORT Service *RIC Indication Header* IE contents

This **REPORT** Service style uses the *RIC Indication Header* IE Format 1 (9.2.1.3.1).

* + - 1. REPORT Service *RIC Indication Message* IE contents

The **REPORT** Service style uses the *RIC Indication Message* IE Format 2 (9.2.1.4.2).

The supported RAN Configuration Structures for this style are provided in clause 8.4.2 and respective attributes are provided in clause 8.8.2*.*

## Supported RIC INSERT Services

Void

## Supported RIC CONTROL Services

### CONTROL Service Style Types

|  |  |  |
| --- | --- | --- |
| **RIC Style Type** | **Style Name** | **Style Description** |
| 1 | Node Configuration and Control | Used to perform node-level configuration and control at the E2 Node |
| 2 | Cell Configuration and Control | Used to perform cell-level configuration and control at the E2 Node |

The details of the individual Control Service Styles are provided in subsequent clauses

### CONTROL Service Style 1: Node Configuration and Control

##### CONTROL Service Style description

This **CONTROL** Service style provides a mechanism to modify RAN configuration (based on various triggers, such as the receipt of an A1 policy enforcement or detection of slice SLA violation conditions) at the E2 Node using the *RIC Control Header* IE and *RIC Control Message* IE.

* + - 1. CONTROL Service *RIC Control Header* IE contents

This **CONTROL** style uses *RIC Control Header* IE Format 1 (9.2.1.6.1).

* + - 1. CONTROL Service *RIC Control Message* IE contents

This **CONTROL** style uses *RIC Control Message* IE Format 1 (9.2.1.7.1).

* + - 1. CONTROL Service *RIC Call Process ID* IE contents

Void

* + - 1. CONTROL Service *RIC Control Outcome* IE contents

This **CONTROL** Service *RIC Control Outcome* IE contains a transparent container that is used to carry the outcome of processing the incoming *RIC Control Request* message.

This **CONTROL** style uses *RIC Control Outcome* IE Format 1 (9.2.1.8.1).

### CONTROL Service Style 2: Cell Configuration and Control

##### CONTROL Service Style description

This **CONTROL** Service style provides a mechanism to modify RAN configuration (based on various triggers, such as the receipt of an A1 policy enforcement or detection of slice SLA violation conditions) at the cells of the E2 Node using the *RIC Control Header* IE and *RIC Control Message* IE.

* + - 1. CONTROL Service *RIC Control Header* IE contents

This **CONTROL** style uses *RIC Control Header* IE Format 1 (9.2.1.6.1).

* + - 1. CONTROL Service *RIC Control Message* IE contents

This **CONTROL** style uses *RIC Control Message* IE Format 2 (9.2.1.7.2).

* + - 1. CONTROL Service *RIC Call Process ID* IE contents

Void

* + - 1. CONTROL Service *RIC Control Outcome* IE contents

This **CONTROL** Service *RIC Control Outcome* IE contains a transparent container that is used to carry the outcome of processing the incoming *RIC Control Request* message.

This **CONTROL** style uses *RIC Control Outcome* IE Format 2 (9.2.1.8.2).

## Supported RIC POLICY Services

Void

## A Supported RIC QUERY Services

### 7.7A.1 QUERY Service style list

|  |  |  |
| --- | --- | --- |
| **RIC Style Type** | **Style Name** | **Style Description** |
| 1 | Node-Level Configuration  Query | Used to request and get response for node-level configuration  information |
| 2 | Cell-Level Configuration  Query | Used to request and get response for cell-level configuration  information |

### 7.7A.2 QUERY Service Style 1: Node-Level Configuration Query

##### 7.7A.2.1 QUERY Service Style description

This **QUERY** Service style is used to request node level related configuration data related to E2 Node by Near-RT RIC. E2 Node shall use this service style to respond to the requested information from Near-RT RIC.

7.7A.2.2 QUERY Service *RIC Query Header* IE contents

This **QUERY** Service style uses the *E2SM-CCC Query Header Format 1* IE (9.2.1.9.1).

7.7A.2.3 QUERY Service *RIC Query Definition* IE contents

The RIC Query Definition for this service style indicates the information type requested by Near-RT RIC.

The **QUERY** Service style uses the *E2SM-CCC Query Definition Format 1* IE (9.2.1.10.1). The supported RAN configuration structures for this format are provided in clause 8.9.1.

7.7A.2.4 QUERY Service *RIC Query Outcome* IE contents

This **QUERY** Service style uses the *E2SM-CCC Query Outcome Format 1* IE (9.2.1.11.1). The mapping of RAN Configuration Structures configured in the *RIC Query Definition* IE to the reported IEs in the *E2SM-CCC Query Outcome Format 1* IE is provided in the semantics description of the IEs.

### 7.7A.3 QUERY Service Style 2: Cell-Level Configuration Query

##### 7.7A.3.1 QUERY Service Style description

This **QUERY** Service style is used to request node level related configuration data related to E2 Node by Near-RT RIC. E2 Node shall use this service style to respond to the requested information from Near-RT RIC.

7.7A.3.2 QUERY Service *RIC Query Header* IE contents

This **QUERY** Service style uses the *E2SM-CCC Query Header Format 1* IE (9.2.1.9.1).

7.7A.3.3 QUERY Service *RIC Query Definition* IE contents

The RIC Query Definition for this service style indicates the information type requested by Near-RT RIC.

The **QUERY** Service style uses the *E2SM-CCC Query Definition Format 2* IE (9.2.1.10.2). The supported RAN configuration structures for this format are provided in clause 8.9.2.

7.7A.3.4 QUERY Service *RIC Query Outcome* IE contents

This **QUERY** Service style uses the *E2SM-CCC Query Outcome Format 2* IE (9.2.1.11.2). The mapping of RAN Configuration Structures configured in the *RIC Query Definition* IE to the reported IEs in the *E2SM-CCC Query Outcome Format 2* IE is provided in the semantics description of the IEs.

## Supported RIC Service Styles and E2SM IE Formats

Table 7.8-1 and 7.8-2 provide a summary of the E2SM IE Formats defined to support this E2SM specification.

**Table 7.8-1: Summary of the E2SM IE Formats defined to support RIC Event Trigger Styles**

|  |  |
| --- | --- |
| **RIC Event Trigger Style** | **Event Trigger Definition Format** |
| Style 1 | 1, 2 |
| Style 2 | 3 |

**Table 7.8-2: Summary of the E2SM IE Formats defined to support RIC Service Styles**

|  |  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- | --- |
| **RIC**  **Service Style** | **Action Definition Format** | **Indication Header Format** | **Indication Message Format** | **Call Process ID Format** | **Control Header Format** | **Control Message Format** | **Control Outcome Format** |
| **REPORT** | | | | | | |  |
| Style 1 | 1 | 1 | 1 |  |  |  |  |
| Style 2 | 2 | 1 | 2 |  |  |  |  |
|  |  |  |  |  |  |  |  |
| **INSERT** | | | | | | |  |
|  |  |  |  |  |  |  |  |
| **CONTROL** | | | | | | |  |
| Style 1 |  |  |  |  | 1 | 1 | 1 |
| Style 2 |  |  |  |  | 1 | 2 | 2 |
|  |  |  |  |  |  |  |  |
| **POLICY** | | | | | | |  |
|  |  |  |  |  |  |  |  |

**Table 7.8-3: Summary of the E2SM IE Formats defined to support RIC Service Styles**

|  |  |  |  |
| --- | --- | --- | --- |
| **RIC Service Style** | **Query Header**  **Format** | **Query Definition**  **Format** | **Query Outcome**  **Format** |
| **QUERY** | | | |
| Style 1 | 1 | 1 | 1 |
| Style 2 | 1 | 2 | 2 |

# RAN Configuration Structures

## Approach

The RAN Configuration Structures associated with each RIC Service described in clause 7 are listed here in clause 8. RAN Configuration Structures are groupings of RAN configuration attributes, which can either be based on the NRM definitions in 3GPP TS 28.541 [6] where applicable or extended / newly introduced by O-RAN specifications. RAN Configuration Structures and their corresponding set of attributes are used by the E2SM-CCC RIC services.

The following clauses introduce E2SM-CCC RAN Configuration Structures and their attributes as well as the necessary information to enable their support in each RIC service. Clause 8.8 provides the definitions for each RAN Configuration Structure and its respective attributes. The attributes of RAN Configuration Structures which are based on 3GPP NRM definitions include respective 3GPP standard definitions of these RAN configuration structure attributes as referenced in the tables below under the "Semantics Description" column. These attributes, which have 3GPP standard definitions, are not freshly defined or redefined in this specification.

The attributes, whose corresponding value in the "Is Writable" column in the configuration structure is FALSE, shall not be modified by the Near-RT RIC; however, such attributes shall serve as a reference to other attributes, which are bound to the same configuration structure.

For e.g., in the RAN configuration structure O-RRMPolicyRatio (in clauses 8.8.1.4 and 8.8.2.4), the value of the "Is Writable" field for the *resourceType* attribute is FALSE since the *resourceType* IE indicates the type of the RRM policy resource, which could be a) PRB DL or PRB UL for the O-NRCellDU defined in clause 8.8.2.2 or the O-GNBDUFunction defined in clause

8.8.1.1 or b) number of RRC connected UEs for the O-NRCellCU defined in clause 8.8.2.1 or the O-GNBCUCPFunction defined in clause 8.8.1.2 or c) the DRB for the O-GNBCUUPFunction defined in clause 8.8.1.3. Therefore, the attribute value for the *resourceType* IE cannot be modified by the Near-RT RIC, but can be used within the RIC CONTROL Service for other purposes (e.g., serving as a reference to the other attributes; *rRMPolicyMaxRatio*, *rRMPolicyMinRatio*, *rRMPolicyDedicatedRatio*, *rRMPolicyMemberList* within the structure O-RRMPolicyRatio for any given instance of the RAN configuration structure).

### RIC Event Trigger Definition

Node-level and cell-level event triggers can be configured periodically or upon a configuration change within the E2 Node based on the RAN Configuration Structures defined in clause 8.3. In the E2 node RAN function "CCC", there can be one or more instances of these RAN configuration structures, where a local copy of the attributes for each instance shall be maintained for modifying and managing their values. If Near-RT RIC subscribes to periodic events (see event trigger style 2 defined in clause 7.3.3), the RAN function "CCC" in the E2 node shall trigger events in a certain period defined in the *RIC Event Trigger Definition* IE. On the other hand, if Near-RT RIC subscribes to E2 configuration changes (see event trigger style 1 defined in clause 7.3.2), the RAN function "CCC" in the E2 node shall trigger an event upon subscription and when the specified list of the configuration attributes pertaining to any instance of the RAN configuration structures (listed here in clause 8), provided by the Near-RT RIC in the *RIC Event Trigger Definition* IE, undergoes a change (e.g. modification in its value). If the list of configuration attributes is not provided for any RAN configuration structure by the Near-RT RIC in the *RIC Event Trigger Definition* IE, then the RAN function "CCC" in the E2 node shall trigger an event when any attribute in the listed configuration structures in the *RIC Event Trigger Definition* IE undergoes a change. This change in the value of the configuration attribute can be caused either by an internal operation in the E2 node or due to a management operation carried out by a management function (such as the SMO) over a management interface (such as O1) or a dSON operation, etc.

An example use case for configuration change event triggers is when O-RRMPolicyRatio RAN configuration structure is used for managing radio resources for two different slices (e.g., eMBB and URLLC) in the same NR Cell. In this case, there will be two instances of the O-RRMPolicyRatio (in clause 8.8.2.4) created for the same NR Cell, with one instance (e.g., O- RRMPolicyRatio\_PRB\_1) used for managing PRB resource allocation of the eMBB slice and another instance (e.g., O- RRMPolicyRatio\_PRB\_2) used for managing the PRB resource allocation of the URLLC slice of the same NR Cell. During subscription, if the Near-RT RIC includes O-RRMPolicyRatio in the *RAN Configuration Structure Name* IE under the *List of RAN Configuration Structures* IE corresponding to the NR Cell in the *RIC Event Trigger Definition* IE (clause 9.2.1.1.2) and includes *rRMPolicyMinRatio* attribute and *rRMPolicyMaxRatio* attribute for the *Attribute Name* IE under the *List of Attributes* IE in the *RIC Event Trigger Definition* IE, then the RAN function "CCC" in the E2 node shall trigger the RIC event whenever *rRMPolicyMinRatio* attribute or *rRMPolicyMaxRatio* attribute changes in O-RRMPolicyRatio\_PRB\_1 for the NR cell and/or whenever any of these attributes change in O-RRMPolicyRatio\_PRB\_2 for the same NR cell.

In the E2 node, the RAN function "CCC" shall also trigger an event in case of other configuration changes pertaining to the node or the cells, such as creation of a new instance or deletion of an existing instance of any configuration structure (listed here in clause 8), as specified by the Near-RT RIC in the *RIC Event Trigger Definition* IE.

Examples include triggering an event in the E2 node when a new instance of the O-NRCellCU is created, which happens whenever a new NR cell is added to the E2 node, or triggering an event in the E2 node when a new instance of the O-BWP is created, which happens whenever a new bandwidth part (BWP) is added to the NR cell, given by the *Global Cell Id* IE (in clause 9.2.1.1.2), in the E2 node. Additional examples include triggering an event in the E2 node when an existing instance of the O- RRMPolicyRatio is deleted, which happens when an existing RRM policy pertaining to the E2 node (related to the RRC connected users for the O-CU-CP E2 node or the DRB policy for the O-CU-UP E2 node) is deleted.

### RIC Action Definition

When an event is triggered by the RAN function "CCC" within the E2 node pertaining to one or more RAN configuration structures, the RAN function "CCC" in the E2 Node shall execute the actions as defined in *RIC Action Definition* IE in clause 9.2.1.2.

Using E2SM-CCC Action Definition Formats 1 and 2 (clauses 9.2.1.2.1 and 9.2.1.2.2), the Near-RT RIC shall specify which RAN configuration structures and which attributes pertaining to these structures shall have to be reported, when the corresponding event is triggered in the E2 node. The requested RAN configuration structures are provided in the *RAN Configuration Structure Name* IE listed under the *List of Node-level Configuration Structures* IE in clause 9.2.1.2.1 or under the *List of Cell-level Configuration Structures* IE in clause 9.2.1.2.2. The requested attributes for that specific RAN configuration structure are provided in *List of Attributes* IE.

When the *Report Type* IE is 'All', then the E2 node shall generate a report indication action involving every instance of the respective RAN configuration structure whether there has been a configuration change (addition/deletion/modification, as discussed in clause 8.1.1) or not. If the *List of Attributes* IE is not included in the *RIC Action Definition* IE, then the E2 node shall report the attribute-value pair for all the attributes defined within the respective RAN configuration structure, pertaining to each instance of the configuration structure; whereas, if the *List of Attributes* IE is included in the *RIC Action Definition* IE, then the E2 node shall only report the attribute-value pair for the specific list of attributes within the respective RAN configuration structure, pertaining to each instance of the configuration structure.

When the *Report Type* IE is 'Change', then the E2 node shall generate a report indication action involving only those instances of the respective RAN configuration structure that underwent a configuration change among all. Depending on the inclusion of *List of Attributes* IE, all or specified list of attribute-value pairs shall be present for those changed RAN configuration structure instances. Finally, when *Global Cell Id* IE is present, then the reporting shall be done only for the specified cell(s).

For e.g., An NR Cell has two instances of O-RRMPolicyRatio configuration structure, namely O-RRMPolicyRatio\_PRB\_1 and O-RRMPolicyRatio\_PRB\_2, for managing the RRM policy ratio of PRB allocation in the cell for eMBB and URLLC slices, respectively. The RIC Event Trigger Definition IE is defined such that the event must be triggered when the rRMPolicyMinRatio attribute of any instance, O-RRMPolicyRatio\_PRB\_1 and/or O-RRMPolicyRatio\_PRB\_2, undergoes a change. The following cases present details of how the E2 node shall generate the report actions for different RIC Action Definition IE contents, for this example.

Case 1: In the *RIC Action Definition* IE, *Cell Global ID* IE of the NR Cell is specified (clause 9.2.1.2.2), *Report Type* IE is 'All' and *List of Attributes* IE is not included, and the instance O-RRMPolicyRatio\_PRB\_1 underwent a configuration change. In this case, the E2 node shall generate a report action including both the instances, O-RRMPolicyRatio\_PRB\_1 and O- RRMPolicyRatio\_PRB\_2 (irrespective of whether any of their attributes has changed or not) within the *List of Configuration Structures Reported* IE and include all attribute-value pairs as defined in clause 8.8.2.4, in respective IEs; For the unchanged O- RRMPolicyRatio instance(s), i.e. O-RRMPolicyRatio\_PRB\_2, current values for all attributes shall be present in *Values of Attributes* IE whereas for the modified O-RRMPolicyRatio instance(s), i.e. O-RRMPolicyRatio\_PRB\_1, in addition to reporting the current values for all attributes in *Values of Attributes* IE, the old values of all attributes shall be reported in *Old Values of Attributes* IE.

Case 2: In the RIC Action Definition IE, Cell Global ID IE of the NR Cell is specified (clause 9.2.1.2.2), Report Type IE is 'All' and List of Attributes IE is mentioned in the RIC Action Definition IE and includes the resourceType, rRMPolicyMemberList, rRMPolicyMinRatio, and the rRMPolicyMaxRatio attribute. In this case, again the E2 node shall generate a report action including both the instances, O-RRMPolicyRatio\_PRB\_1 and O-RRMPolicyRatio\_PRB\_2 (irrespective of whether any of their attributes has changed or not) within List of Configuration Structures Reported IE, but shall now include only the resourceType, rRMPolicyMemberList, rRMPolicyMinRatio, rRMPolicyMaxRatio attribute-value pairs in respective IEs since only those attributes are listed to be reported in the List of Attributes IE. For the unchanged O-RRMPolicyRatio instance(s), i.e., O- RRMPolicyRatio\_PRB\_2, current values for these four attributes shall be present in Values of Attributes IE whereas, for the modified O-RRMPolicyRatio instance(s), i.e., O-RRMPolicyRatio\_PRB\_1, in addition to reporting the current values for these four attributes in Values of Attributes IE, the old values of these four attributes shall be reported in Old Values of Attributes IE.

Case 3: In the RIC Action Definition IE, Cell Global ID IE of the NR Cell is specified (clause 9.2.1.2.2), Report Type IE is 'Change' and List of Attributes IE is not included. In this case the E2 node shall generate a report indication action only involving the changed instance of O-RRMPolicyRatio, i.e., O-RRMPolicyRatio\_PRB\_1, within the List of Configuration Structures Reported IE and include all attribute-value pairs as defined in clause 8.8.2.4 for the instance O-RRMPolicyRatio\_PRB\_1, reporting the current values for all attributes in Values of Attributes IE and reporting the old values of all attributes for the same instance in Old Values of Attributes IE.

Case 4: In the RIC Action Definition IE, Cell Global ID IE of the NR Cell is specified (clause 9.2.1.2.2), Report Type IE is 'Change' and List of Attributes IE is mentioned in the RIC Action Definition IE and includes the resourceType, rRMPolicyMemberList, rRMPolicyMinRatio, and the rRMPolicyMaxRatio attribute. In this case again the E2 node shall generate a report indication action only involving the changed instance(s) of O-RRMPolicyRatio, i.e., O- RRMPolicyRatio\_PRB\_1, within the List of Configuration Structures Reported IE, but shall now include only the resourceType, rRMPolicyMemberList, rRMPolicyMinRatio, rRMPolicyMaxRatio attribute-value pairs in respective IEs since only those attributes are listed to be reported in the List of Attributes IE. The E2 Node shall report current values for these four attributes for the instance O-RRMPolicyRatio\_PRB\_1 in Values of Attributes IE and shall report the old values of these four attributes for the same instance in Old Values of Attributes IE.

The details of the approach for the Report Indication action, Insert Indication action and the Policy action are discussed in clauses 8.1.3, 8.1.4 and 8.1.6, respectively.

### Report Indication

When the E2 node executes a Report Indication action, it shall report the attribute-value pairs for the relevant list of attributes (as detailed in clause 8.1.2 and clause 9.2.1.2) from the instances of the configuration structures. The *Change Type* IE provided by the E2 Node in the *RIC Indication Message* IE (clauses 9.2.1.4.1 and 9.2.1.4.2) corresponds to the type of the event. As discussed in clause 7.3 and clause 8.1.1, the RAN function "CCC" in the E2 node shall generate events by any of the following triggers: modification in the value of the configuration attributes in the instances of the configuration structures (*Change Type* IE is 'Modification'), addition of new instances of configuration structures pertaining to the E2 nodes or the cells (*Change Type* IE is 'Addition'), deletion of existing instances of configuration structures pertaining to E2 nodes or cells (*Change Type* IE is 'Deletion'), upon subscription, and/or periodic timer events (*Change Type* IE is 'None').

In case of attribute-value modifications within the E2 Node, then the E2 node shall report the attribute-value pairs for the list of attributes (specified in the *RIC Action Definition* IE) before the modification as well as after the modification using the *Old Values of Attributes* IE and the *Values of Attributes* IE, respectively (*Change Type* IE is 'Modification'). These IEs contain the structure of the attribute-value pairs for the relevant list of attributes. Since there can be multiple instances for any RAN configuration structure (as detailed in clause 8.1.1) pertaining to the E2 nodes or cells, the E2 node shall include both the *Old Values of Attributes* IE as well as the *Values of Attributes* IE in order to enable the Near-RT RIC to discover the correct instances of the configuration structures, for which the E2 node reports the relevant list of attribute-value pairs.

For illustrative purposes, the example O-RRMPolicyRatio use case presented in clause 8.1.1 can be used again where there are

2 instances of the O-RRMPolicyRatio RAN configuration structure, namely O-RRMPolicyRatio\_PRB\_1 and O- RRMPolicyRatio\_PRB\_2, that are used for managing PRB resource allocation of the eMBB and URLLC slices in the same NR Cell. When the RIC event trigger is caused due to modification in the values of O-RRMPolicyRatio\_PRB\_1, if the *RIC Action Definition* IE includes the *Report Type* IE whose value is set to 'All' and the *List of Attributes* IE which includes the *resourceType, rRMPolicyMemberList, rRMPolicyMinRatio*, and *rRMPolicyMaxRatio* attributes, then the E2 node shall report these four attributes for both O-RRMPolicyRatio\_PRB\_1 and O-RRMPolicyRatio\_PRB\_2.

For O-RRMPolicyRatio\_PRB\_1, the E2 node shall report the value of *ChangeType* IE as 'Modification' and report old values for *resourceType, rRMPolicyMemberList, rRMPolicyMinRatio, rRMPolicyMaxRatio* attributes (before modification) for the eMBB slice served by the NR Cell in the *Old Value of Attributes* IE and shall report the new values for these attributes in the *Value of Attributes* IE. However, for O-RRMPolicyRatio\_2, the E2 node shall report the value of *ChangeType* IE as 'None' and the current values of the *resourceType, rRMPolicyMemberList, rRMPolicyMinRatio, rRMPolicyMaxRatio* attributes for O- RRMPolicyRatio\_PRB\_2, pertaining to the uRLLC slice served by the same cell, shall be reported in the *Value of Attributes* IE in the E2SM-CCC *RIC Indication message* IE contents since there has been no modification in O-RRMPolicyRatio\_PRB\_2.

This reporting of attribute-value pairs for the list of attributes in both the *Old Value of Attributes* IE and the *Value of Attributes* IE, in the case of modification, enables the Near-RT RIC to discover the correct instance of the RAN configuration structure, when there is more than one instance of the same RAN configuration structure assuming key attributes are configured to be present in Report Indication action which depends on the use case and the RAN configuration structure. In order to guarantee identification of the correct instance within the Near-RT RIC in all cases, during subscription Near-RT RIC should not include *List of Attributes IE* in *RIC Action Definition* IE for all attributes to be reported in RIC Indication.

As another example, when a new instance of the O-RRMPolicyRatio RAN configuration structure is created (e.g., O- RRMPolicyRatio\_DRB\_3) due to the creation of a new RRM policy for the resource type DRB, within the E2 node O-CU-UP, and when the *RIC Action Definition* IE includes the *Report Type* IE whose value is set to 'Change' and the *List of Attributes* IE, which includes the *resourceType, rRMPolicyMemberList, rRMPolicyMinRatio, rRMPolicyMaxRatio* attributes, then the E2 node shall report the value of *ChangeType* IE as 'Addition' and shall report the attribute-value pair of all these attributes in the *Value*

*of Attributes* IE. Since the configuration change is not due to modification in the value of an attribute but due to the creation of a new O-RRMPolicyRatio in the E2 node, the E2 node shall not report the *Old Value of Attributes* IE. Likewise, if an instance of the O-RRMPolicyRatio RAN configuration structure is deleted, then the E2 node shall report the value of *ChangeType* IE as 'Deletion' and shall only report the attribute-value pair of all these attributes in the *Value of Attributes* IE pertaining to the deleted O-RRMPolicyRatio instance.

### Insert Indication

Void

### Control Action

When the Near-RT RIC executes a control action, it shall provide the attribute-value pairs for the list of attributes that the Near- RT RIC shall control for the instances of the RAN configuration structures. The Near-RT RIC shall specify the RAN configuration structures that it controls using the *RAN Configuration Structure Name* IE (in *RIC Control Message* IE, specified in clause 9.2.1.7) under the *List of Configuration Structures* IE for the E2 node or for the list of cells specified using the *List of Cells* IE (in clause 9.2.1.7.2).

For each RAN configuration structure, the Near-RT RIC shall include the *Old Values of Attributes* IE and the *New Values of Attributes* IE. These IEs contain the structure of the attribute-value pairs for the entire list of attributes of the configuration structures that the Near-RT RIC shall control on the E2 nodes. Since there can be multiple instances for any RAN configuration structure (as detailed in clause 8.1.1) pertaining to the E2 nodes or cells that the Near-RT RIC controls, the Near-RT RIC shall include both the *Old Values of Attributes* IE as well as the *New Values of Attributes* IE in order to enable the E2 node to determine the correct instances of the RAN configuration structures for which the values of the attributes shall be modified by the RIC.

The RAN function "CCC" in the E2 node shall determine the correct instances of the RAN configuration structures using the *Old Values of Attributes* IE containing the current attribute-value pairs and replace them with the attribute-value pairs in the *New Values of Attributes* IE, as specified by the Near-RT RIC, for those instances.

As an example, similar to the O-RRMPolicyRatio use case presented in clause 8.1.1 where there are 2 instances of the O- RRMPolicyRatio RAN configuration structure, namely O-RRMPolicyRatio\_PRB\_1 and O-RRMPolicyRatio\_PRB\_2, the Near- RT RIC can control PRB resource allocation for these eMBB and URLLC slices in the same NR Cell by utilizing the RIC CONTROL Service. In order to do so, the Near-RT RIC shall modify the values of the O-RRMPolicyRatio attributes (e.g., *rRMPolicyMinRatio, rRMPolicyMaxRatio, rRMPolicyDedicatedRatio*) for O-RRMPolicyRatio\_PRB\_1 and O- RRMPolicyRatio\_PRB\_2 for the same NR cell (of type O-NRCellDU). For each O-RRMPolicyRatio instance, the Near-RT RIC shall first include the old values of the respective O-RRMPolicyRatio attributes (*resourceType, rRMPolicyMemberList, RMPolicyMinRatio, rRMPolicyMaxRatio, rRMPolicyDedicatedRatio*) of the NR cell in the *Old Value of Attributes* IE. Second, the Near-RT RIC shall include all the unchanged and new values of the respective O-RRMPolicyRatio attributes requested by the Near-RT RIC that the E2 node shall replace with, in the *New Value of Attributes* IE. When there is more than one instance of the RAN configuration structure (e.g. O-RRMPolicyRatio\_PRB\_1 and O-RRMPolicyRatio\_PRB\_2 in this example scenario), the E2 node shall determine the correct instance of the RAN configuration structure from the attribute-value pairs included in the list of attributes in both the *Old Value of Attributes* IE and the *New Value of Attributes* IE to be able to modify the correct instance and its respective attribute values.

### Policy Action

Void

## Common RAN Configuration Structures

The configuration structures, referencing the corresponding attributes, that can be commonly used across multiple service styles are listed here.

### Node-Level RAN Configuration Structures

|  |  |  |
| --- | --- | --- |
| **RAN Configuration Structure Name** | **RAN Configuration Structure Definition** | **Semantics Description** |
| O-GNBDUFunction | 8.8.1.1 | Represents O-GNBDUFunction attributes defined in 8.8.1.1. |
| O-GNBCUCPFunction | 8.8.1.2 | Represents O-GNBCUCPFunction attributes defined in 8.8.1.2. |
| O-GNBCUUPFunction | 8.8.1.3 | Represents O-GNBCUUPFunction attributes defined in 8.8.1.3. |
| O-RRMPolicyRatio | 8.8.1.4 | Represents O-RRMPolicyRatio attributes defined in 8.8.1.4. |

### Cell-Level RAN Configuration Structures

|  |  |  |
| --- | --- | --- |
| **RAN Configuration Structure Name** | **RAN**  **Configuration Structure Definition** | **Semantics Description** |
| O-NRCellCU | 8.8.2.1 | Represents O-NRCellCU attributes defined in 8.8.2.1. |
| O-NRCellDU | 8.8.2.2 | Represents O-NRCellDU attributes defined in 8.8.2.2. |
| O-BWP | 8.8.2.3 | Represents O-BWP attributes defined in 8.8.2.3. |
| O-RRMPolicyRatio | 8.8.2.4 | Represents O-RRMPolicyRatio attributes defined in 8.8.2.4. |
| O-CESManagementFunction | 8.8.2.5 | Represents O-CESManagementFunction attributes defined in 8.8.2.5. |
| O-NESPolicy | 8.8.2.6 | Represents O-NESPolicy attributes defined in  8.8.2.6. |
| O-CellDTXDRXConfig | 8.8.2.7 | Represents O-CellDTXDRXConfig attributes defined in 8.8.2.7 |
| O-RUInfo | 8.8.2.8 | Represents the O-RUInfo attributes defined in 8.8.2.8 |

## RAN Configuration Structures for Event Trigger

### RAN Configuration Structures for Event Trigger Style 1

##### RAN Configuration Structures for Node-level Configuration Change

Common node-level RAN Configuration Structures defined in clause 8.2.1 shall be used when defining event triggers.

##### RAN Configuration Structures for Cell-level Configuration Change

Common cell-level RAN Configuration Structures defined in clause 8.2.2 shall be used when defining event triggers.

### RAN Configuration Structures for Event Trigger Style 2

Common node-level and cell-level RAN Configuration Structures defined in clauses 8.2.1 and 8.2.2 shall be used when defining event triggers.

## RAN Configuration Structures for Report Services

### RAN Configuration Structures for Report Service Style 1

Common node-level RAN Configuration Structures defined in clause 8.2.1 shall be used for REPORT Service Style 1.

### RAN Configuration Structures for Report Service Style 2

Common cell-level RAN Configuration Structures defined in clause 8.2.2 shall be used for REPORT Service Style 2.

## RAN Configuration Structures for Insert services

Void

## RAN Configuration Structures for Control services

### RAN Configuration Structures for Control Service Style 1

Common node-level RAN Configuration Structures defined in clause 8.2.1 shall be used for CONTROL Service Style 1.

### RAN Configuration Structures for Control Service Style 2

Common cell-level RAN Configuration Structures defined in clause 8.2.2 shall be used for CONTROL Service Style 2.

## RAN Configuration Structures for Policy services

Void

## A RAN Configuration Structures for Query services

### 8.7A.1 RAN Configuration Structures for Query Service Style 1

Common node-level RAN Configuration Structures defined in clause 8.2.1 shall be used for QUERY Service Style 1.

### 8.7A.2 RAN Configuration Structures for Query Service Style 2

Common cell-level RAN Configuration Structures defined in clause 8.2.2 shall be used for QUERY Service Style 2.

## Attribute Definitions

### Attribute Definitions for Node-Level RAN Configuration Structures

##### O-GNBDUFunction

The E2 node O-DU is represented by the O-GNBDUFunction configuration structure.

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Supported Services** | **Is writable** | **IE type and reference** | **Semantics description** |
| gNBDUId | REPORT | FALSE | INTEGER  (0..236-1) | Please refer to [6] clause  4.4.1, "gNBDUId" attribute |
| gNBDUName | REPORT | FALSE | STRING | Please refer to [6] clause 4.4.1, "gNBDUName"  attribute |
| gNBId | REPORT | FALSE | INTEGER (0..4294967295) | Please refer to [6] clause 4.4.1, "gNBId" attribute |
| gNBIdLength | REPORT | FALSE | INTEGER (22..32) | Please refer to [6] clause 4.4.1, "gNBIdLength" attribute |

##### O-GNBCUCPFunction

The E2 node O-CU-CP is represented by the O-GNBCUCPFunction configuration structure.

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Supported Services** | **Is writable** | **IE type and reference** | **Semantics description** |
| gNBId | REPORT, CONTROL | FALSE | INTEGER (0..4294967295) | Please refer to [6] clause 4.4.1, "gNBId" attribute |
| gNBIdLength | REPORT, CONTROL | FALSE | INTEGER (22..32) | Please refer to [6] clause 4.4.1, "gNBIdLength" attribute |
| gNBCUName | REPORT, CONTROL | FALSE | STRING | Please refer to [6] clause 4.4.1, "gNBCUName"  attribute |
| pLMNId | REPORT, CONTROL | FALSE | 9.3.12 | Please refer to [6] clause 4.4.1,  "GNBCUCPFunction.pLMNId  " attribute |
| x2BlockList | REPORT, CONTROL | TRUE | STRING | Please refer to [6] clause 4.4.1, "x2BlockList" attribute |
| x2AllowList | REPORT, CONTROL | TRUE | STRING | Please refer to [6] clause 4.4.1, "x2AllowList" attribute |
| xnBlockList | REPORT, CONTROL | TRUE | STRING | Please refer to [6] clause 4.4.1, "xnBlockList" attribute |
| xnAllowList | REPORT, CONTROL | TRUE | STRING | Please refer to [6] clause 4.4.1, "xnAllowList" attribute |
| x2HOBlockList | REPORT, CONTROL | TRUE | STRING | Please refer to [6] clause 4.4.1, "x2HOBlockList"  attribute |
| xnHOBlockList | REPORT, CONTROL | TRUE | STRING | Please refer to [6] clause 4.4.1, "xnHOBlockList" attribute |

##### O-GNBCUUPFunction

The E2 node O-CU-UP is represented by the O-GNBCUUPFunction configuration structure.

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Supported Services** | **Is writable** | **IE type and reference** | **Semantics description** |
| gNBId | REPORT | FALSE | INTEGER  (0..4294967295) | Please refer to [6] clause  4.4.1, "gNBId" attribute |
| gNBIdLength | REPORT | FALSE | INTEGER (22..32) | Please refer to [6] clause 4.4.1, "gNBIdLength" attribute |
| gNBCUUPId | REPORT | FALSE | INTEGER (0..236-1) | Please refer to [6] clause 4.4.1, "gNBCUUPId" attribute |
| pLMNInfoList | REPORT | FALSE | 9.3.15 | The PLMNInfoList is a list of PLMNInfo data type. It defines which PLMNs that can be served by the GNBCUUPFunction [6] and which S-NSSAIs can be supported by the GNBCUUPFunction [6] for corresponding PLMN in case  of network slicing feature is supported. |

* + - 1. O-RRMPolicyRatio

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Supported Services** | **Is writable** | **IE type and reference** | **Semantics description** |
| resourceType | REPORT, CONTROL | FALSE | ENUMERATED (PRB UL, PRB DL, DRB, RRC) | Please refer to [6] clause 4.4.1, "resourceType" attribute. This IE should be included in RIC Services for enabling association with the correct instance of the O- RRMPolicyRatio RAN configuration structure. |
| rRMPolicyMemberList | REPORT, CONTROL | TRUE | 9.3.17 | Please refer to [6] clause 4.4.1, "rRMPolicyMemberList" attribute. This IE should be included in RIC Services for enabling association with the correct instance of the O- RRMPolicyRatio RAN configuration structure. |
| rRMPolicyMaxRatio | REPORT, CONTROL | TRUE | INTEGER (0..100) | Please refer to [6] clause 4.4.1, "rRMPolicyMaxRatio" attribute |
| rRMPolicyMinRatio | REPORT, CONTROL | TRUE | INTEGER (0..100) | Please refer to [6] clause 4.4.1, "rRMPolicyMinRatio" attribute |
| rRMPolicyDedicatedRatio | REPORT, CONTROL | TRUE | INTEGER (0..100) | Please refer to [6] clause 4.4.1,  "rRMPolicyDedicatedRatio" attribute |

### Attribute Definitions for Cell-Level RAN Configuration Structures

* + - 1. O-NRCellCU

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Supported Services** | **Is writable** | **IE type and reference** | **Semantics description** |
| cellLocalId | REPORT, CONTROL | FALSE | INTEGER | Please refer to [6] clause 4.4.1, "cellLocalId" attribute |
| pLMNInfoList | REPORT, CONTROL | FALSE | 9.3.15 | Please refer to [6] clause 4.4.1,  "NRCellCU.pLMNInfoList" attribute |

* + - 1. O-NRCellDU

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Supported**  **Services** | **Is writable** | **IE type and**  **reference** | **Semantics description** |
| cellLocalId | REPORT | FALSE | INTEGER | Please refer to [6] clause 4.4.1, "cellLocalId" attribute |
| operationalState | REPORT | FALSE | ENUMERATED (ENABLED, DISABLED) | Please refer to [6] clause 4.4.1, "operationalState" attribute |
| administrativeState | REPORT | FALSE | ENUMERATED (LOCKED, SHUTTING DOWN, UNLOCKED) | Please refer to [6] clause 4.4.1, "administrativeState" attribute |
| cellState | REPORT | FALSE | ENUMERATED (IDLE, INACTIVE,  ACTIVE) | Please refer to [6] clause 4.4.1, "cellState" attribute |
| pLMNInfoList | REPORT | FALSE | 9.3.15 | Please refer to [6] clause 4.4.1,  "NRCellDU.pLMNInfoList" attribute |
| nRPCI | REPORT | FALSE | INTEGER (0..503) | Please refer to [6] clause 4.4.1, "nRPCI" attribute |
| nRTAC | REPORT | FALSE | INTEGER (0..16777215) | Please refer to [6] clause 4.4.1, "nRTAC" attribute |
| arfcnDL | REPORT | FALSE | INTEGER | Please refer to [6] clause 4.4.1, "arfcnDL" attribute |
| arfcnUL | REPORT | FALSE | INTEGER | Please refer to [6] clause 4.4.1, "arfcnUL" attribute |
| arfcnSUL | REPORT | FALSE | INTEGER | Please refer to [6] clause 4.4.1, "arfcnSUL" attribute |
| bSChannelBwDL | REPORT | FALSE | INTEGER | Please refer to [6] clause 4.4.1, "bSChannelBwDL" attribute |
| ssbFrequency | REPORT | FALSE | INTEGER (0..3279165) | Please refer to [6] clause  4.4.1, "ssbFrequency" attribute |
| ssbPeriodicity | REPORT | FALSE | ENUMERATED (5, 10, 20, 40,  80, 160) | Please refer to [6] clause 4.4.1, "ssbPeriodicity" attribute |
| ssbSubCarrierSpacing | REPORT | FALSE | ENUMERATED (15, 30, 120,  240) | Please refer to [6] clause 4.4.1,  "ssbSubCarrierSpacing" attribute |
| ssbOffset | REPORT | FALSE | INTEGER (0..159) | Please refer to [6] clause 4.4.1, "ssbOffset" attribute |

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| ssbDuration | REPORT | FALSE | ENUMERATED (1, 2, 3, 4, 5) | Please refer to [6] clause 4.4.1, "ssbDuration" attribute |
| bSChannelBwUL | REPORT | FALSE | INTEGER | Please refer to [6] clause 4.4.1, "bSChannelBwUL" attribute |
| bSChannelBwSUL | REPORT | FALSE | INTEGER | Please refer to [6] clause 4.4.1, "bSChannelBwSUL" attribute |
| bWPList | REPORT | FALSE | 9.3.18 | This attribute contains the list of O-BWPs. See clause  8.8.2.3 for O-BWP  definition. |
| partitionList | REPORT, CONTROL | TRUE | 9.3.21 | This O-RAN specific attribute contains the list of frequency partitions for interference control for RAN Slice SLA Assurance use  case. |

#### O-BWP

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Is writable** | **IE type and reference** | **Semantics description** |
| bwpContext | REPORT, CONTROL | TRUE | ENUMERATED (DL, UL, SUL) | Please refer to [6] clause 4.4.1, "bwpContext" attribute |
| isInitialBwp | REPORT, CONTROL | TRUE | ENUMERATED (INITIAL, OTHER) | Please refer to [6] clause 4.4.1, "isInitialBwp" attribute |
| subCarrierSpacing | REPORT, CONTROL | TRUE | ENUMERATED (15, 30, 60, 120) | Please refer to [6] clause  4.4.1, "subCarrierSpacing" attribute |
| cyclicPrefix | REPORT, CONTROL | TRUE | ENUMERATED (NORMAL, EXTENDED) | Please refer to [6] clause 4.4.1, "cyclicPrefix" attribute |
| startRB | REPORT, CONTROL | TRUE | INTEGER | Please refer to [6] clause 4.4.1, "startRB" attribute |
| numberOfRBs | REPORT, CONTROL | TRUE | INTEGER | Please refer to [6] clause 4.4.1, "numberOfRBs" attribute |

##### O-RRMPolicyRatio

Please refer to clause 8.8.1.4 for O-RRMPolicyRatio attribute definitions.

##### O-CESManagementFunction

This IOC embodies the management capabilities for Energy Saving (ES) functions. Its purpose is to facilitate energy-saving for individual cell.

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Supported Services** | **Is writable** | **IE type and reference** | **Semantics description** |
| cesSwitch | REPORT | FALSE | ENUMERATED (TRUE, FALSE) | Please refer to [6] clause 4.4.1, "cesSwitch" attribute. This attribute determines whether the energy-saving  function is enabled or disabled for cell. |
| energySavingState | REPORT | FALSE | ENUMERATED  (isNotEnergySa ving, isEnergySaving) | Please refer to [6] clause 4.4.1, "energySavingState" attribute. Specifies the status regarding the energy-saving  in the cell. |
| energySavingControl | REPORT, CONTROL | TRUE | ENUMERATED  (toBeEnergySav ing, toBeNotEnergy Saving) | Please refer to [6] clause 4.4.1,  "energySavingControl". This attribute allows the Near-RT RIC to initiate energy-saving  activation or deactivation. |

##### O-NESPolicy

This IOC embodies attribute(s) that are needed to provide the NES policy(s) to O-DU for TRX Control (RF Channel Reconfiguration) and Advanced Sleep Mode optimization, see clause 16.3.4 of [11].

NOTE: After receiving the TRX or ASM configuration, the E2 node shall try to achieve the configured behaviour.

However, it is up to the E2 node to decide when and whether the configuration can be applied.

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Supported Services** | **Is writable** | **IE type and reference** | **Semantics description** |
| policyType | REPORT, CONTROL | FALSE | 9.3.22 | Policy type to indicate whether the policy is for ASM or TRX Control. |
| antennaMaskName | REPORT, CONTROL | TRUE | 9.3.23 | "antennaMaskName" corresponds to the selected "mask-name" in the list, "supported-trx-control-masks", provided by O-RU, see clause  20.3.1.2 of [10]. |
| antennaMask | REPORT, CONTROL | TRUE | 9.3.24 | Antenna mask contains an octet string mask value indicating which antenna element to be switched off/on, see clause 16.2 of [9]. It is used if supported antenna mask list is not reported by the O-RU, which means the O-RU supports  any mask value (see 20.3.1.2 of [10]). |
| sleepMode | REPORT, CONTROL | TRUE | 9.3.25 | In case "policyType" is ASM, "sleepMode" corresponds to the selected "sleep-mode-type" in the list of the supported sleep modes provided by the O-RU for ASM, see clause 20.4.1 of [10].  In case "policyType" is TRX\_CONTROL, "sleepMode" corresponds to the selected "sleep- mode-type" in the list of the supported sleep modes provided  by the O-RU for TRX Control, see clause 20.3.1 of [10]. |
| dataDir | REPORT, CONTROL | FALSE | 9.3.26 | Applied data direction, DL or UL, of the configuration. |

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| symbolMask | REPORT, CONTROL | TRUE | 9.3.27 | Indicates the OFDM symbols in a slot for which the sleep mode configuration above (antennaMaskName, antennaMask, sleepMode, dataDir) to be applied.  If absent, all symbols are applied |
| slotMask | REPORT, CONTROL | TRUE | 9.3.28 | "slotMask" contains an octet string mask value indicating the slot numbers in a frame (repeated sleep pattern every frame) for which the sleep mode configuration (antennaMaskName, antennaMask, sleepMode, dataDir, symbolMask) can be applied except slots for common channels (e.g. paging, RA, SSB, SIB1, SIB2,  etc.).  If absent, all slots except slots for common channels (e.g. paging, RA, SSB, SIB1, SIB2, etc.) are  applied. |
| validDuration | REPORT, CONTROL | TRUE | 9.3.29 | Indicate the time duration in unit of 10ms for which the sleep mode configuration above (antennaMaskName, antennaMask, sleepMode, symbolMask, slotMask) to be valid.  If absent, the sleep mode configuration is expected to be applicable until cancelled (the policy is removed). |
| esObjective | REPORT, CONTROL | TRUE | 9.3.30 | Indicate the expected energy saving target. |
| perfObjectiveList | REPORT, CONTROL | TRUE | 9.3.36 | A list of performance objectives where each performance objective indicates the expected QoS performance target to be achieved for a service type in one or more network slice(s) identified by the corresponding 5QI value and optional slice identifier(s), and on the data direction indicated by dataDir.  It is configured along with "esObjective" to tune the system between maximum performance and maximum energy saving, e.g. reducing eMBB service throughput in order to save more energy. |

##### O-CellDTXDRXConfig

The O-CellDTXDRXConfig IE embodies the cell DTX/DRX configuration of a serving cell, and it is defined as follows.

NOTE 1: Only one O-CellDTXDRXConfig instance can be present for a cell.

NOTE 2: If the cell DTX/DRX configuration is activated and if there is any overlap between the configured cell DTX/DRX active period (active cell transmission/reception) and the sleep duration specified in the O-NES Policy using the symbolMask and slotMask parameters for the ASM policy type, E2 Node shall not implement the O-NES ASM policy during the overlap. If the cell DTX/DRX configuration is activated and there is any overlap between the configured cell DTX/DRX non-active period (inactive cell transmission/reception) and the sleep duration in O-NES ASM policy, E2 Node shall apply the cell DTX/DRX non-active period during the overlapping slots or symbols. In addition, E2 node may apply the sleep duration based on ASM configuration in O-NES policy during the overlapping slots or symbols.

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Supported**  **Services** | **Is writable** | **IE type and**  **reference** | **Semantics description** |
| onDurationTimer | REPORT, CONTROL | TRUE | 9.3.31 | Refer to 3GPP TS 38.331 [13], clause 6.3.2, "cellDTXDRX- onDurationTimer"  description. |
| cycleStartOffset | REPORT, CONTROL | TRUE | 9.3.32 | Refer to 3GPP TS 38.331 [13], clause 6.3.2, "cellDTXDRX-  CycleStartOffset" description. |
| slotOffset | REPORT, CONTROL | TRUE | INTEGER (0..31) | Indicates the slot-level offset. Value in multiple of 1/32 ms. Value 1 corresponds to 1/32 ms, value 2 corresponds to 2/32 ms, and so on Refer to 3GPP TS 38.331 [13], clause  6.3.2, "cellDTXDRX-  SlotOffset" description. |
| configType | REPORT, CONTROL | TRUE | ENUMERATED (DTX, DRX, DTXDRX) | Indicates whether the configuration is for cell DTX only, cell DRX only, or joint cell DTX/DRX configuration. Refer to 3GPP TS 38.331 [13], clause 6.3.2, "cellDTXDRXconfigType"  description. |
| activationStatus | REPORT, CONTROL | TRUE | ENUMERATED (ACTIVATED, DEACTIVATED) | Initial activation status of cell DTX/DRX. Refer to 3GPP TS  38.331 [13], clause 6.3.2,  "cellDTXDRXactivationStatus " description. |
| l1Activation | REPORT, CONTROL | TRUE | ENUMERATED (ENABLED, DISABLED) | Indicates whether the cell enables L1 signaling (DCI 2\_9) for dynamic activation/deactivation of cell DTX/DRX configuration.  Refer to 3GPP TS 38.331, clause 6.3.2 [13], "cellDTXDRX-L1activation"  description. |

* + - 1. O-RUInfo

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Supported Services** | **Is writable** | **IE type and reference** | **Semantics description** |
| oruUserPlaneConfiguration | REPORT | FALSE | 9.3.33 | The oruUserPlaneConfiguration is a list of user plane configurations supported by the  O-RU from the o-ran-uplane- conf.yang module. |
| oruCapabilities | REPORT | FALSE | 9.3.37 | The oruCapabilities contains O- RU capability related information supported by the O-RU from the o-ran-module-cap.yang module. |

# Elements for E2SM Service Model

## General

Void

## Message Functional Definition and Content

### Messages for RIC Functional procedures

##### RIC Event Trigger Definition IE

This information element is part of the RIC SUBSCRIPTION REQUEST message sent by the Near-RT RIC to an E2 Node and is required for event triggers used to initiate REPORT, INSERT and POLICY actions.

Direction: NEAR-RT RIC ? E2 Node.

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| **CHOICE** *Event Trigger Definition Format* |  |  |  |  |
| >E2SM-CCC Event Trigger Definition Format 1 | M |  | 9.2.1.1.1 | Triggered upon subscription and when a node-level configuration change occurs. |
| >E2SM-CCC Event Trigger Definition Format 2 | M |  | 9.2.1.1.2 | Triggered upon subscription and when a cell-level configuration change occurs. |
| >E2SM-CCC Event Trigger  Definition Format 3 | M |  | 9.2.1.1.3 | Used for periodic event triggering |

* + - * 1. E2SM-CCC Event Trigger Definition Format 1: Node-Level Configuration Change

This event trigger definition format is used to configure E2 Nodes to trigger events when a node-level configuration change occurs. The list of RAN Configuration Structures defined in clause 8.3.1 shall be included. Any changes (addition, modification, deletion) regarding the listed RAN Configuration Structures shall trigger an event within the E2 Node. Optionally specific attributes for a certain RAN Configuration Structure can be configured to trigger an event if specified with *Attribute Name* IE within *List of Attributes* for that RAN Configuration Structure*.*

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| List of Node-level Configuration Structures |  | *1..<maxnoof NodeLevelC onfigStructur*  *es>* |  |  |
| >RAN Configuration Structure Name | M |  | 9.3.7 | Specifies the name of the node- level RAN configuration structure that the event will be triggered when a configuration change (addition, modification, deletion) occurs. Valid RAN Configuration Structures for this event trigger are  defined in 8.3.1. |
| >List of Attributes |  | *0..<maxnoof AttributesTo Report>* |  | Optionally specifies the list of attributes within the RAN Configuration Structure that will only cause an event trigger upon change. Absence of this IE indicates that all attributes of the specified RAN Configuration Structure will trigger the event upon  change. |
| >>Attribute Name | M |  | 9.3.8 | Specifies the name of the attribute under the RAN Configuration Structure that will trigger the event upon change. Valid attributes for each node-level RAN Configuration  Structure are defined in 8.8.1. |

|  |  |
| --- | --- |
| **Range bound** | **Explanation** |
| maxnoofNodeLevelConfigStr uctures | Maximum number of E2 Node level configuration structures that can be listed for the event triggering. The value is *<256>.* |
| maxnoofAttributesToReport | Maximum no. of attributes supported by Event Trigger Definition Format 1. The value is 65535. |

* + - * 1. E2SM-CCC Event Trigger Definition Format 2: Cell-Level Configuration Change

This event trigger definition format is used to configure E2 Nodes to trigger events when a cell-level configuration change occurs. The list of RAN Configuration Structures defined in clause 8.3.2 shall be included. Any changes (addition, modification, deletion) regarding the listed RAN Configuration Structures shall trigger an event for any cell within the E2 Node. The list of RAN Configuration Structures for event triggering can optionally be configured to be triggered for a specific cell, if indicated by the *Global Cell Id* IE. In addition, optionally specific attributes for a certain RAN Configuration Structure can be configured to trigger an event if specified with *Attribute Name* IE within *List of Attributes* for that RAN Configuration Structure*.*

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| List of Cell-level  Configuration Structures |  | *1..<maxnoof*  *Cells>* |  |  |
| > Cell Global Id | O |  | 9.3.6 | Specifies the global cell id of the cell the event will be triggered for. Absence of this IE indicates that a configuration change (addition, modification, deletion) in any cell regarding the listed RAN Configuration Structures shall  trigger an event. |
| >List of RAN Configuration Structures |  | *1..<maxnoof CellLevelCo nfigStructure s>* |  |  |
| >>RAN Configuration Structure Name | M |  | 9.3.7 | Specifies the name of the cell-level RAN configuration structure that the event will be triggered when a configuration change (addition, modification, deletion) occurs. Valid RAN Configuration Structures for  this event trigger are defined in 8.3.2. |
| >>List of Attributes |  | *0..<maxnoof AttributesTo Report>* |  | Optionally specifies the list of attributes within the RAN Configuration Structure that will only cause an event trigger upon change. Absence of this IE indicates that all attributes of the specified RAN Configuration  Structure will trigger the event upon change. |
| >>>Attribute Name | M |  | 9.3.8 | Specifies the name of the attribute under the RAN Configuration Structure that will trigger the event upon change. Valid attributes for each cell-level RAN Configuration Structure are defined in 8.8.2. |

|  |  |
| --- | --- |
| **Range bound** | **Explanation** |
| maxnoofCells | Maximum number of cells that can be listed for the event triggering. The value is  *<1024>.* |
| maxnoofCellLevelConfigStruc  tures | Maximum number of E2 Node level configuration structures that can be listed for  the event triggering. The value is *<1024>.* |
| maxnoofAttributesToReport | Maximum no. of attributes supported by Event Trigger Definition Format 2. The value is 65535. |

* + - * 1. E2SM-CCC Event Trigger Definition Format 3: Periodic Event Trigger

This event trigger definition format is used to configure E2 Nodes to trigger events in a certain period.

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| Period | M |  | INTEGER (10..4294967295) | Used to indicate the  event triggering period in unit of 1 millisecond |

#### RIC ACTION DEFINITION IE

This information element is part of the RIC SUBSCRIPTION REQUEST message sent by the Near-RT RIC to an E2 Node. In this service model, this information element provides additional information for the nominated Action (Report).

Direction: NEAR-RT RIC ? E2 Node.

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| RIC Style Type | M |  | 9.3.3 |  |
| **CHOICE** *Action Definition Format* |  |  |  |  |
| >E2SM-CCC Action Definition Format 1 | M |  | 9.2.1.2.1 | Used by REPORT service to report node- level configuration structures |
| >E2SM-CCC Action Definition Format 2 | M |  | 9.2.1.2.2 | Used by REPORT service to report cell- level configuration structures |

* + - * 1. E2SM-CCC Action Definition Format 1

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| List of Node-level RAN Configuration Structures | M | *1..<maxnoofCo nfigurationsToR eport>* |  |  |
| >Report Type | M |  | 9.3.9 | Indicates whether:   * the values for the configuration structures listed shall be reported regardless there has been a change or not * the values for the configuration structures listed shall be reported only if its value has been changed (modification, addition, deletion) |
| >RAN Configuration Structure Name | M |  | 9.3.7 | Specifies the name of the node-level RAN configuration structure that shall be reported. Valid RAN Configuration Structures for this action definition are  defined in 8.4.1. |
| >List of Attributes |  | *0..<maxnoofAttr ibutesToReport*  *>* |  |  |
| >>Attribute Name | M |  | 9.3.8 | Specifies the name of the required attribute. The value of the attribute shall be reported. Valid attributes for this action definition are  defined in 8.8.1. |

|  |  |
| --- | --- |
| **Range bound** | **Explanation** |
| maxnoofConfigurationsToReport | Maximum no. of configurations supported by Action Definition Format 1. The value is 256. |
| maxnoofAttributesToReport | Maximum no. of attributes supported by Action Definition Format 1. The value is 65535. |

* + - * 1. E2SM-CCC Action Definition Format 2

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| List of Cell Configurations To Be Reported |  | *1..<maxnoofCell sToReport>* |  |  |
| > Cell Global Id | O |  | 9.3.6 | Indicates the global cell id of the cell that cell-level configuration structure list applies for.  Absence of this IE indicates that listed cell-level configuration  structures apply for all cells within the E2 Node. |
| >List of Cell-level RAN Configuration Structures |  | *1..<maxnoofCo nfigurationsToR eport>* |  |  |
| >>Report Type | M |  | 9.3.9 | Indicates whether:   * the values for the configuration structures listed shall be reported regardless there has been a change or not * the values for the configuration structures listed shall be reported only if its value has been changed (modification, addition, deletion) |
| >>RAN Configuration Structure Name | M |  | 9.3.7 | Specifies the name of the cell- level RAN configuration structure that shall be reported. Valid RAN Configuration Structures for this action definition are defined in 8.4.2. |
| >>List of Attributes |  | *0..<maxnoofAttr ibutesToReport*  *>* |  |  |
| >>>Attribute Name | M |  | 9.3.8 | Specifies the name of the required attribute. The value of the attribute shall be reported. Valid attributes for this action definition are defined in 8.8.2. |

|  |  |
| --- | --- |
| **Range bound** | **Explanation** |
| maxnoofCellsToReport | Maximum no. of cells supported by Action Definition Format 2. The value is 1024. |
| maxnoofConfigurationsToReport | Maximum no. of configurations supported by Action Definition Format 2. The value is 1024. |
| maxnoofAttributesToReport | Maximum no. of attributes supported by Action Definition Format 2. The value is 65535. |

#### RIC INDICATION HEADER IE

This information element is part of the RIC INDICATION message sent by the E2 Node to the Near-RT RIC and is required for REPORT action.

Direction: E2 Node ? NEAR-RT RIC.

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| **CHOICE** *Indication Header*  *Format* |  |  |  |  |
| >E2SM-CCC Indication Header Format 1 | M |  |  |  |

* + - * 1. E2SM-CCC Indication Header Format 1

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| Indication Reason | M |  | ENUMERATED (Upon  Subscription, Upon Change, Periodic) | Provides the cause of the event trigger |
| Event Time | M |  | 9.3.10 | Provides the time of the event trigger. |

#### RIC INDICATION MESSAGE IE

This information element is part of the RIC INDICATION message sent by the E2 Node to the Near-RT RIC and is required for REPORT action.

Direction: E2 Node ? NEAR-RT RIC.

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| **CHOICE** *Indication Message Format* |  |  |  |  |
| >E2SM-CCC Indication Message Format 1 | M |  |  |  |
| >E2SM-CCC Indication Message Format 2 | M |  |  |  |

* + - * 1. E2SM-CCC Indication Message Format 1

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| List of Configuration Structures Reported |  | *1..<maxnoof Configuration sReported>* |  | Indicates the configuration structures that are reported within the message. |
| >Change Type | M |  | ENUMERATED  (None, Modification, Addition, Deletion) | None - no change occurred in reported RAN configuration structure attributes - e.g., due to periodic reporting or initial subscription. Values of attributes shall be reported through "Values of Attributes".  Modification - a modification of value occurred in at least one attribute of the RAN configuration structure. New values shall be reported through "Values of Attributes" and old attribute values shall be reported through "Old Values of Attributes".  Addition - Notification of addition of a new RAN configuration structure. Values of its attributes shall be reported through "Values of Attributes".  Deletion - Notification of deletion of a RAN configuration structure. Deleted attribute values shall be reported through "Values of  Attributes". |
| >RAN Configuration Structure Name | M |  | 9.3.7 | Indicates the RAN Configuration Structure name. |
| >Values of Attributes | M |  | OCTET STRING | Provides the attribute values for the respective RAN Configuration Structure  defined in clause 8.4.1. |
| >Old Values of Attributes | O |  | OCTET STRING | Provides the old values of the attributes for the respective RAN Configuration Structure defined in clause 8.4.1 and shall be included if "Change Type" equals to "Modification". |

|  |  |
| --- | --- |
| **Range bound** | **Explanation** |
| maxnoofConfigurationsReported | Maximum no. of configurations supported by Indication Message Format 1. The value is 65535. |

* + - * 1. E2SM-CCC Indication Message Format 2

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| List of Cells Reported |  | *1..<maxnoofCell sReported>* |  | Indicates the cells and respective configuration structures that are reported within the message. |
| >Cell Global Id | M |  | 9.3.6 | Indicates the cell the event  was triggered for. |
| >List of Configuration Structures Reported |  | *1..<maxnoofCon figurationsRepor ted>* |  | Indicates the configuration structures that are reported within the message that belong to the cell. |
| >>Change Type | M |  | ENUMERATED  (None, Modification, Addition, Deletion) | None - no change occurred in reported RAN configuration structure attributes - e.g., due to periodic reporting or initial subscription. Values of attributes shall be reported through "Values of Attributes".  Modification - a modification of value occurred in at least one attribute of the RAN configuration structure. New values shall be reported through "Values of Attributes" and old attribute values shall be reported through "Old Values of Attributes".  Addition - Notification of addition of a new RAN configuration structure. Values of its attributes shall be reported through "Values of Attributes".  Deletion - Notification of deletion of a RAN configuration structure. Deleted attribute values shall be reported through "Values of Attributes". |
| >>RAN Configuration Structure Name | M |  | 9.3.7 | Indicates the RAN  Configuration Structure name. |
| >>Values of Attributes | M |  | OCTET STRING | Provides the attribute values for the respective RAN Configuration Structure defined in clause 8.4.2. |
| >>Old Values of Attributes | O |  | OCTET STRING | Provides the old values of the attributes for the respective RAN Configuration Structure defined in clause 8.4.2 and shall be included if "Change  Type" equals to "Modification". |

|  |  |
| --- | --- |
| **Range bound** | **Explanation** |
| maxnoofCellsReported | Maximum no. of cells supported by Indication Message Format 2. The value is 65535. |
| maxnoofConfigurationsReported | Maximum no. of configurations supported by Indication Message Format 2. The value is 65535. |

#### RIC CONTROL HEADER IE

This information element is part of the RIC CONTROL message sent by the Near-RT RIC to an E2 Node and is required for RIC Control Procedure.

Direction: Near-RT RIC ? E2 Node.

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| **CHOICE** *Control Header Format* |  |  |  |  |
| >E2SM-CCC Control Header Format 1 | M |  | 9.2.1.6.1 |  |

* + - * 1. E2SM-CCC Control Header Format 1

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| RIC Style Type | M |  | 9.3.3 | Refer to clause 7.6.1 |

#### RIC CONTROL MESSAGE IE

This information element is part of the RIC CONTROL message sent by the Near-RT RIC to an E2 Node and is required for RIC Control Procedure.

Direction: Near-RT RIC ? E2 Node.

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| **CHOICE** *Control Message Format* |  |  |  |  |
| >E2SM-CCC Control Message Format 1 | M |  | 9.2.1.7.1 |  |
| >E2SM-CCC Control Message Format 2 | M |  | 9.2.1.7.2 |  |

* + - * 1. E2SM-CCC Control Message Format 1

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| List of Configuration Structures |  | *1..<maxnoofCo nfigurations>* |  | Indicates the configuration structures that are controlled within the message. |
| >RAN Configuration Structure Name | M |  | 9.3.7 | Indicates the RAN Configuration Structure name. |
| >Old Values of Attributes | M |  | OCTET STRING | Provides the old attribute values for the respective RAN Configuration Structure defined in clause 8.6.1. |
| >New Values of Attributes | M |  | OCTET STRING | Provides the new attribute values for the respective RAN Configuration Structure defined in clause 8.6.1. |

|  |  |
| --- | --- |
| **Range bound** | **Explanation** |
| maxnoofConfigurations | Maximum no. of configurations supported by Control Message Format 1. The value is 65535. |

* + - * 1. E2SM-CCC Control Message Format 2

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and**  **reference** | **Semantics description** |
| List of Cells |  | *1..<maxnoofCell s>* |  |  |
| >Cell Global Id | M |  | 9.3.6 | Indicates the target cell for control. |
| >List of Configuration Structures |  | *1..<maxnoofCo nfigurations>* |  |  |
| >>RAN Configuration Structure Name | M |  | 9.3.7 | Indicates the RAN Configuration Structure name. |
| >>Old Values of Attributes | M |  | OCTET STRING | Provides the old attribute values for the respective RAN Configuration Structure defined in clause  8.6.2. |
| >>New Values of Attributes | M |  | OCTET STRING | Provides the new attribute values for the respective RAN Configuration Structure defined in clause 8.6.2. |

|  |  |
| --- | --- |
| **Range bound** | **Explanation** |
| maxnoofCells | Maximum no. of cells supported by Control Message Format 2. The value is 65535. |
| maxnoofConfigurations | Maximum no. of configurations supported by Control Message Format 2. The value is 65535. |

#### RIC CONTROL OUTCOME IE

This information element is part of the RIC CONTROL ACKOWLEDGEMENT and RIC CONTROL FAILURE messages and is sent by the E2 Node to the Near-RT RIC and is required for RIC Control Procedure.

Direction: E2 Node ? Near-RT RIC

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| **CHOICE** *Control Outcome Format* |  |  |  |  |
| >E2SM-CCC Control Outcome Format 1 | M |  | 9.2.1.8.1 |  |
| >E2SM-CCC Control Outcome Format 2 | M |  | 9.2.1.8.2 |  |

* + - * 1. E2SM-CCC Control Outcome Format 1

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| Received Timestamp | O |  | OCTET STRING | Time RIC Control Request message received by RAN Function over E2 interface.  Carries UTC time encoded as the  64-bit timestamp format as defined in clause 6 of IETF RFC 5905 [5] containing both seconds and fraction parts. |
| RAN Configuration Structures Accepted List |  | *0..<maxn oofConfig urations>* |  | Indicates the list of configuration structure changes that are accepted by the E2 Node. |
| >RAN Configuration Structure Name | M |  | 9.3.7 | Indicates the RAN Configuration Structure name. |
| >Old Values of Attributes | M |  | OCTET STRING | Provides the old attribute values for the respective RAN Configuration Structure defined in clause 8.6.1. |
| >Current Values of Attributes | M |  | OCTET STRING | Provides the current attribute values for the respective RAN Configuration  Structure defined in clause 8.6.1. |
| >Applied Timestamp | O |  | OCTET STRING | Time RAN configuration change was applied by the RAN Function.  Carries UTC time encoded as the  64-bit timestamp format as defined in clause 6 of IETF RFC 5905 [5] containing both seconds and fraction  parts. |
| RAN Configuration Structures Failed List |  | *0..<maxn oofConfig urations>* |  | Indicates the list of configuration structure changes that are failed by the E2 Node. |
| >RAN Configuration Structure Name | M |  | 9.3.7 | Indicates the RAN Configuration Structure name. |
| >Old Values of Attributes | M |  | OCTET STRING | Provides the old attribute values for the respective RAN Configuration Structure defined in clause 8.6.1. |
| >Requested Values of Attributes | M |  | OCTET STRING | Provides the requested attribute values for the respective RAN Configuration Structure defined in clause 8.6.1. |
| >Cause | M |  | 9.3.11 | Provides the cause of the failure |

|  |  |
| --- | --- |
| **Range bound** | **Explanation** |
| maxnoofConfigurations | Maximum no. of configurations supported by Control Outcome Format 1. The value is 65535. |

* + - * 1. E2SM-CCC Control Outcome Format 2

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| Received Timestamp | O |  | OCTET STRING | Time RIC Control Request message received by RAN Function over E2 interface.  Carries UTC time encoded as the  64-bit timestamp format as defined in clause 6 of IETF RFC 5905 [5] containing both seconds and fraction  parts. |
| List of Cells |  | *1..<maxn oofCells>* |  |  |
| >Cell Global Id | M |  | 9.3.6 | Indicates the target cell for control. |
| >RAN Configuration Structures Accepted List |  | *0..<maxn oofConfig*  *urations>* |  | Indicates the list of configuration structure changes that are accepted  by the Cell. |
| >>RAN Configuration Structure Name | M |  | 9.3.7 | Indicates the RAN Configuration Structure name. |
| >>Old Values of Attributes | M |  | OCTET STRING | Provides the old attribute values for the respective RAN Configuration Structure defined in clause 8.6.2. |
| >>Current Values of Attributes | M |  | OCTET STRING | Provides the current attribute values for the respective RAN Configuration Structure defined in clause 8.6.2. |
| >>Applied Timestamp | O |  | OCTET STRING | Time RAN configuration change was applied by the RAN Function.  Carries UTC time encoded as the  64-bit timestamp format as defined in clause 6 of IETF RFC 5905 [5] containing both seconds and fraction  parts. |
| >RAN Configuration Structures Failed List |  | *0..<maxn oofConfig urations>* |  | Indicates the list of configuration structure changes that are failed by the Cell. |
| >>RAN Configuration Structure Name | M |  | 9.3.7 | Indicates the RAN Configuration Structure name. |
| >>Old Values of Attributes | M |  | OCTET STRING | Provides the old attribute values for the respective RAN Configuration Structure defined in clause 8.6.2. |
| >>Requested Values of Attributes | M |  | OCTET STRING | Provides the requested attribute values for the respective RAN Configuration Structure defined in  clause 8.6.2. |
| >>Cause | M |  | 9.3.11 | Provides the cause of the failure |

|  |  |
| --- | --- |
| **Range bound** | **Explanation** |
| maxnoofCells | Maximum no. of cells supported by Control Outcome Format 2. The value is 65535. |
| maxnoofConfigurations | Maximum no. of configurations supported by Control Outcome Format 2. The value is 65535. |

#### RIC QUERY HEADER IE

This information element is part of the RIC QUERY REQUEST message sent by the Near-RT RIC to an E2 Node and is required for RIC QUERY Procedure.

Direction: Near-RT RIC ? E2 Node.

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and**  **reference** | **Semantics**  **description** |
| **CHOICE** *Query Header Format* | M |  |  |  |
| >E2SM-CCC Query Header Format 1 |  |  | 9.2.1.9.1 |  |

* + - * 1. E2SM-CCC Query Header Format 1

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and**  **reference** | **Semantics description** |
| RIC Style Type | M |  | 9.3.3 | Refer to clause 7.7A.1 |

#### RIC QUERY DEFINITION IE

This information element is part of the RIC QUERY REQUEST message sent by the Near-RT RIC to an E2 Node and is required for RIC Query Procedure.

Direction: Near-RT RIC ? E2 Node.

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and**  **reference** | **Semantics**  **description** |
| **CHOICE** *Query Definition Format* | M |  |  |  |
| >E2SM-CCC Query Definition Format 1 |  |  | 9.2.1.10.1 |  |
| >E2SM-CCC Query Definition Format 2 |  |  | 9.2.1.10.2 |  |

* + - * 1. E2SM-CCC Query Definition Format 1

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and**  **reference** | **Semantics description** |
| List of Node-level RAN Configuration Structures | M | *1..<maxnoofC*  *onfigurationsT oReport>* |  |  |
| >RAN Configuration Structure Name | M |  | 9.3.7 | Specifies the name of the node-level RAN configuration structure that shall be reported. Valid RAN Configuration Structures for this query definition are  defined in 8.9.1 |
| >List of Attributes |  | *0..<maxnoofAt tributesToRep*  *ort>* |  |  |
| >>Attribute Name | M |  | 9.3.8 | Specifies the name of the required attribute. The value of the attribute shall be reported. Valid attributes for each node-level RAN Configuration Structure are  defined in 8.8.1. |

|  |  |
| --- | --- |
| **Range bound** | **Explanation** |
| maxnoofConfigurationsToReport | Maximum no. of configurations supported by Query Definition Format 1. The value is 256. |
| maxnoofAttributesToReport | Maximum no. of attributes supported by Query Definition Format 1.  The value is 65535. |

* + - * 1. E2SM-CCC Query Definition Format 2

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and**  **reference** | **Semantics description** |
| List of Cells To Be Queried |  | *1..<maxnoofC*  *ellsToReport>* |  |  |
| > Cell Global Id | O |  | 9.3.6 | Indicates the global cell id of the cell that List of Cell-level Configuration Structures to Be Queried applies for. Absence of this IE indicates that listed cell- level RAN configuration structures apply for all cells  within the E2 Node. |
| >List of Cell-level Configuration Structures |  | *1..<maxnoofC onfigurationsT*  *oReport>* |  | This IE is mandatory for Query Service Style2. |
| >>RAN Configuration Structure Name | M |  | 9.3.7 | Specifies the name of the cell- level RAN configuration structure that shall be reported. Valid RAN Configuration Structures for this query  definition are defined in 8.9.2. |
| >>List of Attributes |  | *0..<maxnoofAt*  *tributesToRep ort>* |  |  |
| >>>Attribute Name | M |  | 9.3.8 | Specifies the name of the required attribute.  Valid attributes for each cell- level RAN Configuration Structure are defined in 8.8.2. Valid attributes for this action  definition are defined in 8.8.2. |

|  |  |
| --- | --- |
| **Range bound** | **Explanation** |
| maxnoofCellsToReport | Maximum no. of cells supported by Query Definition Format 2. The value is 1024. |
| maxnoofConfigurationsToReport | Maximum no. of configurations supported by Query Definition Format 2. The value is 1024. |
| maxnoofAttributesToReport | Maximum no. of attributes supported by Query Definition Format 2. The value is 65535. |

#### RIC QUERY OUTCOME IE

This information element is part of the RIC QUERY RESPONSE message sent by the Near-RT RIC to an E2 Node and is required for RIC Query Procedure.

Direction: E2 Node ? Near-RT RIC

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and**  **reference** | **Semantics**  **description** |
| **CHOICE** *Query Outcome Format* | M |  |  |  |
| >E2SM-CCC Query Outcome Format 1 |  |  | 9.2.1.11.1 |  |
| >E2SM-CCC Query Outcome Format 2 |  |  | 9.2.1.11.2 |  |

* + - * 1. E2SM-CCC Query Outcome Format 1

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and**  **reference** | **Semantics description** |
| List of Configuration Structures to Be Reported for Query |  | *1..<maxnoofC onfigurationsR*  *eported>* |  | Indicates the configuration structures that are reported  within the message. |
| >RAN Configuration Structure Name | M |  | 9.3.7 | Indicates the RAN Configuration Structure  name. |
| >Values of Attributes | M |  | OCTET STRING | Provides the attribute values for the respective RAN Configuration Structure defined in clause  8.9.1 |

|  |  |
| --- | --- |
| **Range bound** | **Explanation** |
| maxnoofConfigurationsReported | Maximum no. of configurations supported by Query Outcome Format 1. The value is 65535. |

* + - * 1. E2SM-CCC Query Outcome Format 2

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and**  **reference** | **Semantics description** |
| List of Cells to Be Reported for Query |  | *1..<maxnoofC ellsReported>* |  | Indicates the cells and respective configuration structures that are reported  within the message. |
| >Cell Global Id | M |  | 9.3.6 | Indicates the cell the event  was triggered for. |
| >List of Configuration Structures to Be Reported for Query |  | *1..<maxnoofC onfigurationsR eported>* |  | Indicates the configuration structures that are reported within the message that  belong to the cell. |
| >>RAN Configuration Structure Name | M |  | 9.3.7 | Indicates the RAN  Configuration Structure name. |
| >>Values of Attributes | M |  | OCTET STRING | Provides the attribute values for the respective RAN Configuration Structure  defined in clause 8.9.2 |

|  |  |
| --- | --- |
| **Range bound** | **Explanation** |
| maxnoofCellsReported | Maximum no. of cells supported by Query Outcome Format 2. The value is 65535. |
| maxnoofConfigurationsReported | Maximum no. of configurations supported by Query Outcome Format 2. The value is 65535. |

### Messages for RIC Global Procedures

##### RAN Function Definition IE

This information element is part of the E2 SETUP REQUEST, and RIC SERVICE UPDATE message sent by the E2 Node to the Near-RT RIC and is used to provide all required information for the Near-RT RIC to determine how a given E2 Node has been configured to support a given RAN Function specific E2SM.

Direction: E2 Node ? NEAR-RT RIC.

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| RAN Function Name | M |  | 9.3.2 |  |
| List of Supported Node-level RAN Configuration Structures |  | *0..<maxno ofConfigur ations>* |  | Indicates the list of Node-level RAN Configuration Structures that are supported by the E2  Node. |
| >RAN Configuration Structure Name | M |  | 9.3.7 |  |
| >List of Supported Attributes |  | *0..<maxno ofAttribute s>* |  | Provides the supported attributes for the respective RAN  Configuration Structure defined in clause 8.6.1. |
| >>Attribute Name | M |  | 9.3.8 |  |
| >>Supported Services | M |  | 9.2.2.2 |  |
| List of Cells |  | *0..<maxno ofCells>* |  | Provides the list of cells and supported RAN Configuration Structures and attributes corresponding  to each cell. |
| >Cell Global Id | M |  | 9.3.6 |  |
| >List of Supported Cell-level RAN Configuration Structures |  | *0..<maxno ofConfigur ations>* |  | Indicates the list of Cell- level RAN Configuration Structures that are  supported by the cell. |
| >>RAN Configuration Structure Name | M |  | 9.3.7 |  |
| >>List of Supported Attributes |  | *0..<maxno ofAttribute s>* |  | Provides the supported attributes for the respective RAN Configuration Structure  defined in clause 8.6.2. |
| >>>Attribute Name | M |  | 9.3.8 |  |
| >>>Supported Services | M |  | 9.2.2.2 |  |

|  |  |
| --- | --- |
| **Range bound** | **Explanation** |
| maxnoofCells | Maximum no. of cells supported by RAN Function Definition. The value is 1024. |
| maxnoofConfigurations | Maximum no. of RAN Configuration Structures supported by RAN Function Definition. The value is 1024. |
| maxnoofAttributes | Maximum no. of attributes supported by RAN Function Definition. The value is 65535. |

##### Supported Services

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| Event Trigger | O |  | 9.2.2.2.1 |  |
| Report Service | O |  | 9.2.2.2.2 |  |
| Insert Service | O |  | 9.2.2.2.3 |  |
| Control Service | O |  | 9.2.2.2.4 |  |
| Policy Service | O |  | 9.2.2.2.5 |  |
| Query Service | O |  | 9.2.2.2.6 |  |

* + - * 1. Event Trigger

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| List of Supported Event Trigger Styles |  | *1..<maxno ofRICstyle s>* |  |  |
| >Event Trigger Style Type | M |  | 9.3.3 |  |
| >Event Trigger Style Name | M |  | 9.3.4 |  |
| >Event Trigger Format Type | M |  | 9.3.5 |  |

|  |  |
| --- | --- |
| **Range bound** | **Explanation** |
| maxnoofRICStyles | Maximum no. of styles supported by RAN Function. The value is  <*63*>. |

* + - * 1. Report Service

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and**  **reference** | **Semantics description** |
| List of Supported Report Styles |  | *1..*  *<maxnoofRI CStyles>* |  |  |
| >Report Service Style Type | M |  | 9.3.3 |  |
| >Report Service Style Name | M |  | 9.3.4 |  |
| >List of Supported Event Trigger Styles | M | *1..*  *<maxnoofEv entTriggerSt yles>* |  |  |
| >>Event Trigger Style Type | M |  | 9.3.3 |  |
| >Report Service Action Definition  Format Type | M |  | 9.3.5 |  |
| >Report Service Indication Header Format Type | M |  | 9.3.5 |  |
| >Report Service Indication Message Format Type | M |  | 9.3.5 |  |

|  |  |
| --- | --- |
| **Range bound** | **Explanation** |
| maxnoofRICStyles | Maximum no. of styles supported by RAN Function. The value is  <*63*>. |
| *maxnoofEventTriggerStyles* | Maximum no. of styles supported by RAN Function. The value is  <*63*>. |

* + - * 1. Insert Service

Void

* + - * 1. Control Service

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presen ce** | **Range** | **IE type and reference** | **Semantics description** |
| List of Supported Control Styles |  | *1..*  *<maxnoofRICStyle s>* |  |  |
| >Control Service Style Type | M |  | 9.3.3 |  |
| >Control Service Style Name | M |  | 9.3.4 |  |
| >Control Service Header Format  Type | M |  | 9.3.5 |  |
| >Control Service Message Format Type | M |  | 9.3.5 |  |
| >RIC Call Process ID Format Type | O |  | 9.3.5 |  |
| >Control Service Control  Outcome Format Type | M |  | 9.3.5 |  |

|  |  |
| --- | --- |
| **Range bound** | **Explanation** |
| maxnoofRICStyles | Maximum no. of styles supported by RAN Function. The value is  <*63*>. |

* + - * 1. Policy Service

Void

* + - * 1. Query Service

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and**  **reference** | **Semantics description** |
| List of Supported Query styles |  | *1..*  *<maxnoof RICStyles*  *>* |  |  |
| >Query Service Style Type | M |  | 9.3.3 |  |
| >Query Service Style Name | M |  | 9.3.4 |  |
| >Query Service Header Format Type | M |  | 9.3.5 | Header type used by Query  style |
| >Query Service Definition Format Type | M |  | 9.3.5 | Query Definition format type  used by Query style |
| >Query Service Outcome Format Type | M |  | 9.3.5 | Query Outcome format type  used by Query style |

|  |  |
| --- | --- |
| **Range bound** | **Explanation** |
| maxnoofRICstyles | Maximum no. of styles supported by RAN Function. The value is  <*63*>. |

## Information Element definitions

### General

Void.

### RAN Function Name

This IE is defined in [4] clause 6.2.2.1.

### RIC Style Type

This IE is defined in [4] clause 6.2.2.2.

### RIC Style Name

This IE is defined in [4] clause 6.2.2.3.

### RIC Format Type

This IE is defined in [4] clause 6.2.2.4.

### Cell Global ID

This IE is defined in [4] clause 6.2.2.5.

### RAN Configuration Structure Name

This IE defines the name of a given RAN Configuration Structure which are defined in clause 8.

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| RAN Configuration Structure Name | M |  | OCTET STRING |  |

### Attribute Name

This IE defines the name of a given attribute which are defined for each RAN Configuration Structure in clause 8.8.

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| Attribute Name | M |  | OCTET STRING |  |

### Report Type

This IE defines the reporting type of the RAN Configuration Structures. There are 2 types of reporting:

* All: the RAN Configuration Structure shall be reported regardless there has been a change or not in its value
* Change: the RAN Configuration Structure shall be reported only if its value has been changed (e.g. modified, added, deleted)

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| Report Type | M |  | ENUMERATED (All, Change) |  |

NOTE: When E2 Node sends the report for the event "upon subscription", it shall report all the values for the listed RAN configuration structures regardless there has been a change or not.

### Event Time

This IE defines the time of the event.

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| Event Time | M |  | OCTET STRING | Carries UTC time encoded as the 64-bit timestamp format as defined  in clause 6 of IETF RFC 5905 [5]  containing both seconds and fraction parts. This parameter shall be encoded in hexadecimal  format. |

### Cause

This IE defines the cause of the failure for a control action within a RIC Control Outcome IE.

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| Cause | M |  | ENUMERATED (Not  supported, Not available, Incompatible state, JSON error, Semantic error, Unspecified) |  |

The meaning of the different cause values is presented in the following table.

|  |  |
| --- | --- |
| **Cause** | **Meaning** |
| Not supported | Related capability is not supported within E2 Node |
| Not available | Resources are not available to perform the required action |
| Incompatible state | The received message is not compatible with current E2 Node state (e.g. Old value mismatch) |
| JSON error | The received message contains invalid JSON |
| Semantic error | The requested action included a semantic error |
| Unspecified | None of the above cause values applies |

### pLMNId

This IE indicates the PLMN Identity and is defined in [4] clause 6.2.3.1.

### sNSSAI

This IE indicates the S-NSSAI and is defined in [4] clause 6.2.3.12.

### pLMNInfo

This IE is used to represent PLMN ID and S-NSSAI pair.

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| pLMNId | M |  | 9.3.12 |  |
| sNSSAI | O |  | 9.3.13 | This IE shall be present if network slicing feature is supported |

### pLMNInfoList

This IE is used to represent list of pLMNInfo defined in 9.3.14.

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| pLMNInfoList |  | *1..<maxnoof PLMNInfo>* |  |  |
| >pLMNInfo | M |  | 9.3.14 |  |

|  |  |
| --- | --- |
| **Range bound** | **Explanation** |
| maxnoofPLMNInfo | Maximum no. of PLMNInfo supported for an E2 Node. Value is 65536. |

### rRMPolicyMember

This IE is used to represent RRM Policy member information.

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| pLMNId | M |  | 9.3.12 |  |
| sNSSAI | O |  | 9.3.13 | This IE shall be present if network slicing feature is supported |

### rRMPolicyMemberList

This IE is used to represent list of rRMPolicyMember defined in 9.3.16.

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| rRMPolicyMemberList |  | *1..<maxnoof RRMPolicyM ember>* |  |  |
| >rRMPolicyMember | M |  | 9.3.16 |  |

|  |  |
| --- | --- |
| **Range bound** | **Explanation** |
| maxnoofRRMPolicyMember | Maximum no. of RRMPolicyMember supported. Value is 65536. |

### bWPList

This IE is used to represent list of O-BWP defined in 8.8.2.3.

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| bWPList |  | *1..<maxnoof*  *BWP>* |  |  |
| >O-BWP | M |  | 8.8.2.3 |  |

|  |  |
| --- | --- |
| **Range bound** | **Explanation** |
| maxnoofBWP | Maximum no. of O-BWP supported. Value is 256. |

### 5QIList

This IE is used to represent list of 5QIs included in an entry of partitionFlowList defined in 9.3.20.

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| 5QIList |  | *1..<maxnoof 5QIList>* |  |  |
| >5QI | M |  | INTEGER | As for standardized 5QI values, please refer to TS 23.501,  5.7.4 "Standardized 5QI to QoS characteristics mapping", such as 70 for Mission Critical delay sensitive signalling, or 80 for Low Latency eMBB applications  Augmented Reality. |

|  |  |
| --- | --- |
| **Range bound** | **Explanation** |
| maxnoof5QIList | Maximum no. of 5QIList supported for an E2 Node. Value is 128. |

### partitionFlowList

This IE is used to represent list of QoS flows included in an entry of partitionList defined in 9.3.21.

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| partitionFlowList |  | *1..<maxnoof PartitionFlow List>* |  |  |
| >partitionFlow Item | M |  |  |  |
| >>sNSSAI | M |  | 9.3.13 | Pair of pLMNID and sNSSAI is used to uniquely identify an applicable slice. |
| >>pLMNID | M |  | 9.3.12 | Pair of pLMNID and sNSSAI is used to uniquely  identify an applicable slice. |
| >>5QIList | O |  | 9.3.19 | This optional attribute is prepared for accommodating finer granularity of QoS flows with 5QI. |

|  |  |
| --- | --- |
| **Range bound** | **Explanation** |
| maxnoofPartitionFlowList | Maximum no. of partitionFlowList supported for an E2 Node. Value is 128. |

### partitionList

This IE is used to represent list of frequency partitions for per-slice interference control among cells as an O-RAN specific attribute added in O-NRCellDU defined in 8.8.2.2. The IE is used for O-DU scheduling algorithm to accommodate the interference control, configured by Near-RT RIC through analysis and control of per-slice interference. The frequency range of a partition is defined with two parameters of pOffsetToPointA and pNumberOfRBs, both expressed in units of RB. For example, assuming 15KHz subcarrier spacing for FR1, one RB is 180KHz and 60 KHz subcarrier spacing for FR2, one RB is 720KHz, according to 3GPP TS 38.211 [7], 4.4.4.1 and 4.4.4.2. Based on the per-slice-per-UE RSRP/CQI measurements collected from E2SM-KPM among multiple cells, Near-RT RIC analyzes possible aggressor cells of each slice in terms of reliability requirement in RAN Slice SLA assurance, and it allocates resources for aggressor cells not to use the same RB resources with the victim cell and informs O-DUs of their recommended resource allocations. The partitionList IE is for the DU's internal allocation of resources and need not be sent to the UE.

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| partitionList |  | *1..<maxnoof PartitionList>* |  |  |
| >partition Item | M |  |  |  |
| >>pOffsetToPointA | M |  | INTEGER | It defines the frequency offset between point A and the lowest subcarrier of the RB of a frequency partition. The unit is number of RBs as described above. Please  refer to [7] clause 4.4.2. |
| >>pNumberOfRBs | M |  | INTEGER | It defines the length of a frequency partition in contiguous resource block. The unit is number of RBs as described above. Please  refer to [7] clause 4.4.2. |
| >>partitionFlowList | M |  | 9.3.20 |  |

|  |  |
| --- | --- |
| **Range bound** | **Explanation** |
| maxnoofPartitionList | Maximum no. of partitionList supported. Value is 128. |

### policyType

This IE This IE defines the NES policy type in the O*-*NESPolicy IOC which is defined in clause 8.

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| policyType | M |  | ENUMERATED (ASM, TRX\_CONTROL) | Please refer to clause 8.8.2.6, "policyType" attribute.  This IE should be included in the *Old Values of Attributes* IE when modifying existing O- NESPolicy for enabling association with the correct instance of the O-NESPolicy  RAN configuration structure. |

### antennaMaskName

This IE defines the antenna mask name in the O*-*NESPolicy IOC which is defined in clause 8.

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| antennaMaskName | O |  | STRING | Please refer to clause 8.8.2.6, "antennaMaskName" attribute.  This IE should be included in the *Old Values of Attributes* IE when modifying existing O-NESPolicy if it was present in it, for enabling association with the correct instance of the O-NESPolicy RAN configuration structure. |

### antennaMask

This IE defines the antenna mask value in the O*-*NESPolicy IOC which is defined in clause 8.

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| antennaMask | O |  | STRING | Please refer to clause 8.8.2.6, "antennaMask" attribute.  This IE should be included in the *Old Values of Attributes* IE when modifying existing O-NESPolicy if it was present in it, for enabling association with the correct instance of the O-NESPolicy RAN configuration structure. |

### sleepMode

This IE defines the sleep mode type in the O*-*NESPolicy IOC which is defined in clause 8.

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| sleepMode | O |  | ENUMERATED (SLEEP\_MODE0, SLEEP\_MODE1, SLEEP\_MODE2, SLEEP\_MODE3) | Please refer to clause 8.8.2.6, "sleepMode" attribute.  This IE should be included in the *Old Values of Attributes* IE when modifying existing O-NESPolicy if it was present in it, for enabling association with the correct instance of the O-NESPolicy  RAN configuration structure. |

### dataDir

This IE defines the data direction in the O*-*NESPolicy IOC which is defined in clause 8.

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| dataDir | M |  | ENUMERATED (DL,UL) | Please refer to clause 8.8.2.6, "dataDir" attribute.  This IE should be included in the *Old Values of Attributes* IE when modifying existing O-NESPolicy for enabling association with the correct instance of the O-NESPolicy RAN  configuration structure. |

### symbolMask

This IE defines the symbol mask in the O*-*NESPolicy IOC which is defined in clause 8.

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| symbolMask | O |  | INTEGER  (0..214-1) | Please refer to clause 8.8.2.6, "symbolMask" attribute.  This IE should be included in the *Old Values of Attributes* IE when modifying existing O-NESPolicy if it was present in it, for enabling association with the correct instance of the O-NESPolicy RAN configuration structure. |

### slotMask

This IE defines the slot mask in the O*-*NESPolicy IOC which is defined in clause 8.

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| slotMask | O |  | STRING | Please refer to clause 8.8.2.6, "slotMask" attribute.  This IE should be included in the *Old Values of Attributes* IE when modifying existing O-NESPolicy if it was present in it, for enabling association with the correct instance of the O-NESPolicy RAN configuration structure. |

### validDuration

This IE defines the valid duration in the O*-*NESPolicy IOC which is defined in clause 8.

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| validDuration | O |  | INTEGER | Please refer to clause 8.8.2.6, "validDuration" attribute.  This IE should be included in the *Old Values of Attributes* IE when modifying existing O-NESPolicy if it was present in it, for enabling association with the correct instance of the O-NESPolicy RAN  configuration structure. |

### esObjective

This IE defines the energy saving objective in the O*-*NESPolicy IOC which is defined in clause 8.

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| CHOICE EsObjective |  | *0..1* |  | Please refer to clause 8.8.2.6, "EsObjective" attribute.  This IE should be included in the *Old Values of Attributes* IE when modifying existing O-NESPolicy if it was present in it for enabling association with the correct instance of the O-  NESPolicy RAN configuration structure. |
| >targetEc | C |  | REAL | Target energy consumption, PEE.Energy (3GPP TS 28.552 [12], clause 5.1.1.19.3), of O-RU in kWh.  See NOTE. |
| >esPercentage | C |  | INTEGER (*0..100*) | Energy consumption reduction of O-RU in percentage. The energy consumption is measured based on method defined in 3GPP TS 28.552 [12], clause 5.1.1.19.3.  See NOTE. |
| NOTE: Between esPercentage, targetEc, one of the parameters is required, and only one of the parameters can be present. | | | | |

### onDurationTimer

This IE defines the cell DTX/DRX duration.

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| CHOICE  onDurationTimer |  |  |  | Please refer to clause 8.8.2.7. |
| >subMilliSeconds | M |  | INTEGER (1..31) | Indicates the length of cell DTX/DRX active duration in sub- ms. Value in multiples of 1/32 ms. Refer to 3GPP TS 38.331 [13],  clause 6.3.2, "cellDTXDRX-  onDurationTimer" description. |
| >milliSeconds | M |  | ENUMERATED (ms1,  ms2, ms3, ms4, ms5, ms6, ms8, ms10, ms20, ms40, ms50, ms60, ms80, ms100, ms200, ms300, ms400, ms500, ms600, ms800, ms1000, ms1200, ms1600) | Indicates the length of cell DTX/DRX active duration in ms. Enum value ms1 corresponds to 1 ms, enum value ms2 corresponds to 2 ms, and so on. Refer to 3GPP TS 38.331 [13], clause 6.3.2,  "cellDTXDRX-onDurationTimer" description. |

### cycleStartOffset

This IE defines the cell DTX/DRX periodicity and offset.

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| cycleStartOffset |  |  |  | Please refer to clause 8.8.2.7. |
| >periodicity | M |  | ENUMERATED (ms10,  ms20, ms32, ms40, ms60, ms64, ms70, ms80, ms128, ms160, ms256, ms320, ms512, ms640, ms1024, ms1280, ms2048, ms2560, ms5120, ms10240) | Indicates the periodicity of the cell DTX/DRX pattern in ms. Enum value ms10 corresponds to 10 ms, enum value ms20 corresponds to 20 ms, and so on. Refer to 3GPP TS 38.331 [13], clause 6.3.2,  "cellDTXDRX-CycleStartOffset" description. |
| >offset | M |  | INTEGER (0.. 10239) | Indicates the subframe-level offset of the cell DTX/DRX pattern.  Value in multiple of 1 ms. The offset value shall not exceed the value of the periodicity. Refer to 3GPP TS 38.331 [13], clause  6.3.2, "cellDTXDRX-  CycleStartOffset" description. |

### oruUserPlaneConfiguration

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and**  **reference** | **Semantics description** |
| txArrayList | O |  | 9.3.34 | The txArrayList is a list of tx-arrays  supported by the O-RU |
| rxArrayList | O |  | 9.3.35 | The rxArrayList is a list of rx-  arrays supported by the O-RU |

### txArrayList

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| txArrayList |  | *1..<maxnoo fTxArrays>* |  | Corresponds to the list "tx- arrays" in the o-ran-uplane- conf.yang YANG module provided by the O-RU. See O-RAN WG4.MP [10] clause  15.2.4 |
| >txArrayItem | M |  |  |  |
| >>tName | M |  | STRING | Unique name of the array |
| >>tNumberOfRows | M |  | INTEGER (1..65535) | Number of rows array elements are shaped into -  M. See O-RAN WG4.CUS [9]  clause 12.5.3 |
| >>tNumberOfColumns | M |  | INTEGER (1..65535) | Number of columns array elements are shaped into -  N. See O-RAN WG4.CUS [9]  clause 12.5.3 |
| >>tNumberOfArrayLayers | M |  | INTEGER (1..255) | Number of array layers array elements are shaped into -  Q. See O-RAN WG4.CUS [9]  clause 12.5.3 |
| >>tHorizontalSpacing | O |  | NUMBER | Average distance in meters between centers of nearby AE in horizontal direction (in array coordinates system). See O-RAN WG4.CUS [9]  clause 12.5.3. Represented as decimal 64 with 5-digits  fraction. |
| >>tVerticalSpacing | O |  | NUMBER | Average distance in meters between centers of nearby AE in vertical direction (in array coordinates system). See O-RAN WG4.CUS [9]  clause 12.5.3. Represented as decimal 64 with 5-digits  fraction. |
| >>tNormalVectorDirection | O |  |  |  |
| >>>tAzimuthAngle | O |  | NUMBER | Azimuth angle - ?? (phi) - in degrees, counter-clockwise rotation around z-axis. Value 'zero' points to broad-side, value '90' points to y-axis.  See O-RAN WG4.CUS [9]  clause 12.5.2. Represented as decimal 64 with 4-digits fraction. |
| >>>tZenithAngle | O |  | NUMBER | Zenith angle - ? (theta) - in degrees, counter-clockwise rotation around y-axis. Value 'zero' points to zenith, value '90' points to horizon. See O- RAN WG4.CUS [9] clause  12.5.2. Represented as decimal 64 with 4-digits  fraction. |

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| >>tLeftmostBottomArrayEl ementPosition | O |  |  | Position of centre of the leftmost, bottom element of array in O-RU coordinate  system. See O-RAN WG4.CUS [9] clause 12.5.3 |
| >>>tXAxis | O |  | NUMBER | X dimension in meters of position of leftmost, bottom array element. Represented as decimal 64 with 4-digits  fraction. |
| >>>tYAxis | O |  | NUMBER | Y dimension in meters of position of leftmost, bottom array element. Represented as decimal 64 with 4-digits  fraction. |
| >>>tZAxis | O |  | NUMBER | Z dimension in meters of position of leftmost, bottom array element. Represented as decimal 64 with 4-digits  fraction. |
| >>tPolarizationList | M | *1..<maxnoo fTxPolarizat*  *ions>* |  | See O-RAN WG4.CUS [9]  clause 12.5.3 |
| >>>tPolarizationItem | M |  |  |  |
| >>>>tPolarizationIndex | M |  | INTEGER (0..255) | Index (p) identifying the polarization out of the total P  polarizations |
| >>>>tPolarizationType | M |  | ENUMERATED (MINUS\_45, ZERO,  PLUS\_45, PLUS\_90} | Type of polarization supported by the array |
| >>tBandNumber | M |  | INTEGER (1..1024) | Frequency band of the  antenna array |
| >>tMaxGain | M |  | NUMBER | Max gain in dB of RF path linked with array element (minimum over elements of array) or array layers.  Represented as decimal 64  with 4-digits fraction. |
| >>tMinGain | O |  | NUMBER | Min gain in dB of RF path linked with array element (maximum over elements of array) or array layers.  Represented as decimal 64 with 4-digits fraction. |
| >>tIndependentPowerBudg et | M |  | BOOLEAN | If TRUE then every element of array has its own power budget independent from power budgets of other elements.  If FALSE then all elements of array that are at same row and column and have same polarization share power budget |

|  |  |
| --- | --- |
| **Range bound** | **Explanation** |
| maxnoofTxArrays | Maximum no. of Tx arrays supported. Value is 256. |
| maxnoofTxPolarizations | Maximum no. of Tx polarizations supported. Value is 2. |

### rxArrayList

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| rxArrayList |  | *1..<maxnoo fRxArrays>* |  | Corresponds to the list "rx- arrays" in the o-ran-uplane- conf.yang YANG module provided by the O-RU. See O-RAN WG4.MP [10] clause  15.2.4 |
| >rxArrayItem | M |  |  |  |
| >>rName | M |  | STRING | Unique name of the array |
| >>rNumberOfRows | M |  | INTEGER (1..65535) | Number of rows array elements are shaped into -  M. See O-RAN WG4.CUS [9]  clause 12.5.3 |
| >>rNumberOfColumns | M |  | INTEGER (1..65535) | Number of columns array elements are shaped into -  N. See O-RAN WG4.CUS [9]  clause 12.5.3 |
| >>rNumberOfArrayLayers | M |  | INTEGER (1..255) | Number of array layers array elements are shaped into - Q. See O-RAN WG4.CUS [9]  clause 12.5.3 |
| >>rHorizontalSpacing | O |  | NUMBER | Average distance in meters between centers of nearby AE in horizontal direction (in array coordinates system) . See O-RAN WG4.CUS [9]  clause 12.5.3. Represented  as decimal 64 with 5-digits fraction. |
| >>rVerticalSpacing | O |  | NUMBER | Average distance in meters between centers of nearby AE in vertical direction (in array coordinates system) . See O-RAN WG4.CUS [9]  clause 12.5.3. Represented as decimal 64 with 5-digits  fraction. |
| >>rNormalVectorDirection | O |  |  |  |
| >>>rAzimuthAngle | O |  | NUMBER | Azimuth angle - ?? (phi) - in degrees, counter-clockwise rotation around z-axis. Value 'zero' points to broad-side, value '90' points to y-axis.  See O-RAN WG4.CUS [9]  clause 12.5.2. Represented as decimal 64 with 4-digits fraction. |

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| >>>rZenithAngle | O |  | NUMBER | Zenith angle - ? (theta) - in degrees, counter-clockwise rotation around y-axis. Value 'zero' points to zenith, value '90' points to horizon. See O- RAN WG4.CUS [9] clause  12.5.2. Represented as decimal 64 with 4-digits  fraction. |
| >>rLeftmostBottomArrayEl ementPosition | O |  |  | Position of centre of the leftmost, bottom element of array in O-RU coordinate system. See O-RAN  WG4.CUS [9] clause 12.5.3 |
| >>>rXAxis | O |  | NUMBER | X dimension in meters of position of leftmost, bottom array element. Represented as decimal 64 with 4-digits  fraction. |
| >>>rYAxis | O |  | NUMBER | Y dimension in meters of position of leftmost, bottom array element. Represented as decimal 64 with 4-digits  fraction. |
| >>>rZAxis | O |  | NUMBER | Z dimension in meters of position of leftmost, bottom array element. Represented as decimal 64 with 4-digits  fraction. |
| >>rPolarizationList | M | *1..<maxnoo fRxPolariza*  *tions>* |  |  |
| >>>rPolarizationItem | M |  |  |  |
| >>>>rPolarizationIndex | M |  | INTEGER (0..255) | Index (p) identifying the polarization out of the total P  polarizations |
| >>>>rPolarizationType | M |  | ENUMARATED  (MINUS\_45, ZERO, PLUS\_45, PLUS\_90} | Type of polarization supported by the array |
| >>rBandNumber | M |  | INTEGER (1..1024) | Frequency band of the  antenna array |
| >>rGainCorrectionRange | M |  |  |  |
| >>>rMax | M |  | NUMBER | Maximum allowed value in dB. Represented as decimal  64 with 4-digits fraction. |
| >>>rMin | M |  | NUMBER | Minimum allowed value in dB. Represented as decimal 64  with 4-digits fraction. |

|  |  |
| --- | --- |
| **Range bound** | **Explanation** |
| maxnoofRxArrays | Maximum no. of Rx arrays supported. Value is 256. |
| maxnoofRxPolarizations | Maximum no. of Rx polarizations supported. Value is 2. |

### perfObjectiveList

This IE defines the list of performance objectives in O*-*NESPolicy which is defined in clause 8.

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| perfObjectiveList |  | *1..<maxnoof Objectives>* |  | This IE should be included in the *Old Values of Attributes* IE when modifying existing O-NESPolicy if it was present in it for enabling association with the correct instance of the O-NESPolicy RAN  configuration structure |
| >perfObjective | M |  |  |  |
| >> pLMNInfoList | O |  | 9.3.15 | A list of pair of pLMNID and sNSSAI which are used to uniquely identify one or more applicable slice(s). If absent, the  configuration applies to all slice(s). |
| >> fiveQIValue | M |  | INTEGER (0..255) | Identify the corresponding service type in standardized 5QI values for which the performance objective to be configured.  See 3GPP TS 23.501, clause 5.7.4 and 3GPP TS 28.541, clause 5.4 |
| >> maxNgbrFlowBr | O |  | STRING | Maximum aggregated bit rate for all the Non-GBR flows having the same fiveQIValue to limit the total throughput of a certain Non-GBR service type in a cell in order to create more sleep opportunities to save energy.  Note: this is different from the Maximum Flow Bit Rate for GBR flows defined in clause 5.7.2.5 of 3GPP TS 23.501.  It is formatted as follows:  Pattern: '^\d+(\.\d+)? (bps|Kbps|Mbps|Gbps|Tbps)$', see TS 29.512.  Examples:  "125 Mbps", "0.125 Gbps", "125000 Kbps".  AllowedValues: N/A. |
| >>flowBrAvgWindow | O |  | INTEGER (0..4095) | Indicate the averaging window (in unit of ms) of a 5QI representing the duration over which the maxNgbrFlowBr shall be calculated. |
| >>maxPd | O |  | INTEGER (0..1023) | It indicates an upper bound of packet delay allowed between O-DU F1U end point and UE (in unit of 0.5ms) for a service type identified by the 5QI. The value shall be smaller than the E2E Packet Delay Budget (including delay in UPF) configured in the QoS characteristics (see 3GPP TS 23.501), subtracting CN packet delay and packet delay experienced in O-CU-UP and F1U interface.  O-DU can try to delay the traffic scheduling up to the upper bound, to concentrate the transmission in fewer number of slots, |

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
|  |  |  |  | leaving transmission gaps to save energy through ASM (switching off O-RU RF components during the gaps). |
| >>targetPd | O |  | INTEGER (0..1023) | It indicates a target packet delay in average between O-DU F1U end point and UE (in unit of 0.5ms) for a 5QI. The value shall be smaller than the E2E Packet Delay Budget configured in the QoS characteristics and smaller than maxPd if configured.  O-DU can try to delay the traffic scheduling using the target delay, to concentrate the transmission in fewer number of slots, leaving transmission gaps to save energy  through ASM (switching off O-RU RF components during the gaps). |

|  |  |
| --- | --- |
| **Range bound** | **Explanation** |
| maxnoofObjectives | Maximum no. of performance objectives supported. Value is 128. |

### oruCapabilities

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and**  **reference** | **Semantics description** |
| energySavingCapabilityCommonInfo | O |  | 9.3.38 | O-RU capabilities common to both TRX  Control and Advanced Sleep Mode. |
| asmCapabilityInfo | O |  | 9.3.39 | O-RU ASM capability info |
| trxControlCapabilityInfo | O |  | 9.3.40 | O-RU TRX Control capability info |

### energySavingCapabilityCommonInfo

This IE is used to represent O-RU capability information common to both ASM and TRX Control.

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and**  **reference** | **Semantics description** |
| ST8-ready-message-supported | M |  | BOOL | The capability of the cell to support the "ready" message via clause Type 8 command.  Refer to [10], clause 20.4.1 |
| sleep-duration-extension-supported | M |  | BOOL | The capability of the cell to support the extension of a defined sleep interval.  Refer to [10], clause 20.4.1 |
| emergency-wake-up-command- supported | M |  | BOOL | The capability of the cell to support emergency wake-up procedure.  Refer to [10], clause 20.4.1 |

### asmCapabilityInfo

This IE is used to represent O-RU ASM capability information.

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and**  **reference** | **Semantics description** |
| sleepModes |  | *1..<ma xnoofM*  *odes>* |  | A list of sleep modes supported by the O-RU which are reported with their  corresponding wakeupDuration values. |
| >sleepMode | M |  |  |  |
| >>sleepModeType | M |  | ENUMERATED (SLEEP\_MODE0, SLEEP\_MODE1, SLEEP\_MODE2,  SLEEP\_MODE3) | This value indicates the sleep modes supported by the O-RU for a particular [tr]x-array.  Refer to [10], clause 20.4.1 |
| >>wakeupDuration | M |  | INTEGER (0...232-1) | This value indicates the reported wake- up time (in microseconds) for a particular sleep mode for a particular [tr]x-array.  Refer to [10], clause 20.4.1 |
| >>wakeupDurationGuranteed | M |  | BOOL | The capability of the O-RU to guarantee full wake-up operation within the time reported in wakeupDuration**.**  Refer to [10], clause 20.4.1 |
| definedDurationSleepSupported | M |  | BOOL | The capability of the O-RU to support the defined sleep functionality.  Refer to [10], clause 20.4.1 |
| undefinedDurationSleepSupported | M |  | BOOL | The capability of the O-RU to support the un-defined sleep functionality.  Refer to [10], clause 20.4.1 |

|  |  |
| --- | --- |
| **Range bound** | **Explanation** |
| maxnoofModes | Maximum no. of sleep modes, supported value is 4. |

### trxControlCapabilityInfo

This IE is used to represent O-RU TRX control capability information.

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and**  **reference** | **Semantics description** |
| supportedTrxControlMasks |  | *1..<ma xnoofM asks>* |  | A list of TRX control configurations that are supported by the O-RU which are reported with their corresponding maskName and antennaMask values.  The absence of the list supported-trx- control-masks indicates that any combination of antenna mask is supported by the O-RU for a particular [tr]x-array.  Refer to [10], clause 20.3.1 |
| >supportedTrxControlMask | M |  |  |  |
| >> maskName | M |  | STRING | Name of the supported antenna mask  Refer to [10], clause 20.3.1 |

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| >> antennaMask | M |  | INTEGER (0..264-1) | Supported antenna mask value.  Refer to [10], clause 20.3.1 |
| sleepModes |  | *1..<ma xnoofM odes>* |  | A list of sleep modes supported by the O-RU which are reported with their corresponding wakeup duration values. |
| >sleepMode | M |  |  |  |
| >>sleepModeType | M |  | ENUMERATED (SLEEP\_MODE0, SLEEP\_MODE1, SLEEP\_MODE2,  SLEEP\_MODE3) | This value indicates the sleep modes supported by the O-RU for a particular [tr]x-array.  Refer to [10], clause 20.3.1. |
| >>wakeupDuration | M |  | INTEGER (0...232-1) | This value indicates the reported wake- up time (in microseconds) for each individual sleep mode for the TRX(s) corresponding to a particular [tr]x-array.  Refer to [10], clause 20.3.1. |
| >>wakeupDurationGuranteed | M |  | BOOL | The capability of the O-RU to guarantee the complete wake-up operation or to become active within the duration reported in wakeupDuration.  Refer to [10], clause 20.3.1. |
| definedDurationSleepSupported | M |  | BOOL | The capability of the O-RU to support the defined sleep functionality.  Refer to [10], clause 20.3.1. |
| undefinedDurationSleepSupported | M |  | BOOL | The capability of the O-RU to support the un-defined sleep functionality.  Refer to [10], clause 20.3.1. |

|  |  |
| --- | --- |
| **Range bound** | **Explanation** |
| maxnoofModes | Maximum no. of sleep modes, supported value is 4. |
| maxnoofMasks | Maximum no. of antenna masks, supported value is 128. |

## JSON Schema

### General

E2SM-CCC JSON Schema definitions conforms to JSON Draft 07 and Draft 2019-09. Clause 9.4.2 contains the JSON Schema definitions of the E2SM information elements and the RAN Configuration Structures to be carried within the E2AP [3] protocol messages as an OCTET STRING with JSON encoding.

If an E2SM information element carried as an OCTET STRING in an E2AP [3] message that is not constructed as defined in this specification is received, this shall be considered as an encoding error and if applicable, the respective *Cause* IE shall be included in the response message.

### JSON Schema Definitions

{

"openapi": "3.0.1", "info": {

"title": "E2SM-CCC",

"version": "5.0.0",

"description": "OAS 3.0.1 specification compatible schema for O-RAN WG3 E2SM-CCC"

},

"paths": {}, "components": {

"schemas": {

"GnbId": {

"type": "integer", "minimum": 0,

"maximum": 4294967295

},

"GnbIdLength": { "type": "integer", "minimum": 22,

"maximum": 32

},

"GnbName": {

"type": "string", "maxLength": 150

},

"GnbDuId": {

"type": "number", "minimum": 0,

"maximum": 68719476735

},

"GnbCuUpId": { "type": "number", "minimum": 0,

"maximum": 68719476735

}, "Sst": {

"type": "integer", "maximum": 255

},

"Snssai": {

"type": "object", "properties": {

"sst": {

"$ref": "#/components/schemas/Sst"

},

"sd": {

"type": "string"

}

}

},

"SnssaiList": { "type": "array", "items": {

"$ref": "#/components/schemas/Snssai"

}

},

"Mcc": {

"type": "string", "pattern": "[0-9]{3}"

}, "Mnc": {

"type": "string",

"pattern": "[0-9]{3}|[0-9]{2}"

},

"PlmnId": {

"type": "object", "properties": {

"mcc": {

"$ref": "#/components/schemas/Mcc"

},

"mnc": {

"$ref": "#/components/schemas/Mnc"

}

}

},

"PlmnIdList": { "type": "array", "items": {

"$ref": "#/components/schemas/PlmnId"

}

},

"PlmnInfo": { "type": "object",

"properties": { "plmnId": {

"$ref": "#/components/schemas/PlmnId"

},

"snssai": {

"$ref": "#/components/schemas/Snssai"

}

}

},

"PlmnInfoList": { "type": "array", "items": {

"$ref": "#/components/schemas/PlmnInfo"

}

},

"GGnbId": {

"type": "string",

"pattern": "^[0-9]{3}[0-9]{2,3}-(22|23|24|25|26|27|28|29|30|31|32)-[0-9]{1,10}"

}, "GEnbId": {

"type": "string",

"pattern": "^[0-9]{3}[0-9]{2,3}-(18|20|21|22)-[0-9]{1,7}"

},

"GGnbIdList": { "type": "array", "items": {

"$ref": "#/components/schemas/GGnbId"

}

},

"GEnbIdList": { "type": "array", "items": {

"$ref": "#/components/schemas/GEnbId"

}

},

"NrPci": {

"type": "integer", "minimum": 0,

"maximum": 503

},

"NrTac": {

"type": "integer", "minimum": 0,

"maximum": 16777215

},

"OperationalState": { "type": "string", "enum": [

"ENABLED", "DISABLED"

]

},

"AdministrativeState": { "type": "string", "enum": [

"LOCKED", "SHUTTINGDOWN", "UNLOCKED"

]

},

"CellState": { "type": "string", "enum": [

"IDLE", "INACTIVE", "ACTIVE"

]

},

"CyclicPrefix": { "type": "string", "enum": [

"15",

"30",

"60",

"120"

]

},

"BwpContext": { "type": "string", "enum": [

"DL",

"UL", "SUL"

]

},

"IsInitialBwp": { "type": "string", "enum": [

"INITIAL", "OTHER", "SUL"

]

},

"SubCarrierSpacing": { "type": "integer", "enum": [

15,

30,

60,

120

]

},

"SsbPeriodicity": { "type": "integer", "enum": [

5,

10,

20,

40,

80,

160

]

},

"SsbDuration": { "type": "integer", "enum": [

1,

2,

3,

4,

5

]

},

"SsbSubCarrierSpacing": { "type": "integer", "enum": [

15,

30,

120,

240

]

},

"ResourceType": { "type": "string", "enum": [

"PRB\_DL",

"PRB\_UL",

"DRB", "RRC"

]

},

"RrmPolicyMember": { "type": "object", "properties": {

"plmnId": {

"$ref": "#/components/schemas/PlmnId"

},

"snssai": {

"$ref": "#/components/schemas/Snssai"

}

}

},

"RrmPolicyMemberList": { "type": "array", "items": {

"$ref": "#/components/schemas/RrmPolicyMember"

}

},

"5QiList": { "type": "array",

"items": {"type": "integer"}

},

"PartitionFlowList": { "type": "array", "items": {

"type": "object", "properties": {

"snssai": {

"$ref": "#/components/schemas/Snssai"

},

"plmnId": {

"$ref": "#/components/schemas/PlmnId"

},

"5qiList": {

"$ref": "#/components/schemas/5QiList"

}

}

}

},

"PartitionList": { "type": "array", "items": {

"type": "object", "properties": {

"pOffsetToPointA": {"type": "integer"}, "pNumberOfRBs": {"type": "integer"}, "partitionFlowList": {

"$ref": "#/components/schemas/PartitionFlowList"

}

}

}

},

"EsObjective": { "oneOf": [

{

"type": "object", "properties": {

"targetEc": {

"type": "number"

}

}

},

{

"type": "object", "properties": {

"esPercentage": { "type": "integer", "minimum": 0,

"maximum": 100

}

}

}

]

},

"PerfObjective": { "type": "object", "properties": {

"plmnInfoList": {"$ref": "#/components/schemas/PlmnInfoList"}, "fiveQIValue": {"type": "integer", "minimum": 0, "maximum": 255}, "maxNgbrFlowBr": {"type": "string"},

"flowBrAvgWindow": {"type": "integer", "minimum": 0, "maximum": 4095}, "maxPd": {"type": "integer" , "minimum": 0, "maximum": 1023},

"targetPd": {"type": "integer", "minimum": 0, "maximum": 1023}

},

"required": ["plmnInfoList", "fiveQIValue"]

},

"PerfObjectiveList": {

"type": "array", "items": {

"$ref": "#/components/schemas/PerfObjective"

}

},

"SleepMode": { "type": "object", "properties": {

"sleepModeType": { "type": "string",

"enum": ["SLEEP\_MODE0"," SLEEP\_MODE1"," SLEEP\_MODE2"," SLEEP\_MODE3"]

},

"wakeupDuration": {"type": "integer"}, "wakeupDurationGuaranteed": {"type": "boolean"}

},

"required": ["sleepModeType", "wakeupDuration", "wakeupDurationGuaranteed"]

},

"SleepModes": { "type": "array", "items": {

"$ref": "#/components/schemas/SleepMode"

}

},

"SupportedTrxControlMask": { "type": "object", "properties": {

"maskName": {"type": "string"},

"antennaMask": {"type": "integer"}

},

"required": ["maskName", "antennaMask"]

},

"SupportedTrxControlMasks": { "type": "array",

"items": {

"$ref": "#/components/schemas/SupportedTrxControlMask"

}

},

"EnergySavingCapabilityCommonInfo": { "type": "object",

"properties": {

"ST8-ready-message-supported": {"type": "boolean"},

"sleep-duration-extension-supported": {"type": "boolean"}, "emergency-wake-up-command-supported": {"type": "boolean"}

},

"required": ["ST8-ready-message-supported", " sleep-duration-extension-supported", "emergency- wake-up-command-supported"]

},

"AsmCapabilityInfo": { "type": "object", "properties": {

"sleepModes": {"$ref": "#/components/schemas/SleepModes"}, "definedDurationSleepSupported": {"type": "boolean"}, "undefinedDurationSleepSupported": {"type": "boolean"}

},

"required": ["sleepModes", "definedDurationSleepSupported", "undefinedDurationSleepSupported"]

},

"TrxControlCapabilityInfo": { "type": "object", "properties": {

"supportedTrxControlMasks": {"$ref": "#/components/schemas/SupportedTrxControlMasks"}, "sleepModes": {"$ref": "#/components/schemas/SleepModes"}, "definedDurationSleepSupported": {"type": "boolean"}, "undefinedDurationSleepSupported": {"type": "boolean"}

},

"required": ["supportedTrxControlMasks", "sleepModes", "definedDurationSleepSupported", "undefinedDurationSleepSupported"]

},

"OruCapabilities": { "type": "object", "properties": {

"energySavingCapabilityCommonInfo": {"$ref": "#/components/schemas/EnergySavingCapabilityCommonInfo"},

"asmCapabilityInfo": {"$ref": "#/components/schemas/AsmCapabilityInfo"}, "trxControlCapabilityInfo": {"$ref": "#/components/schemas/TrxControlCapabilityInfo"}

}

},

"OnDurationTimer": { "oneOf": [

{

"type": "integer", "minimum": 1,

"maximum": 31

},

{

"type": "string",

"enum": ["ms1", "ms2", "ms3", "ms4", "ms5", "ms6", "ms8", "ms10", "ms20", "ms40", "ms50",

"ms60", "ms80", "ms100", "ms200", "ms300", "ms400", "ms500", "ms600", "ms800", "ms1000", "ms1200", "ms1600"]

}

]

},

"CycleStartOffset": { "type": "object", "properties": {

"periodicity": { "type": "string",

"enum": ["ms10", "ms20", "ms32", "ms40", "ms60", "ms64", "ms70", "ms80", "ms128", "ms160",

"ms256", "ms320", "ms512", "ms640", "ms1024", "ms1280", "ms2048", "ms2560", "ms5120", "ms10240"]

},

"offset": {

"type": "integer", "minimum": 0,

"maximum": 10239

}

}

},

"tPolarizationItem": { "type": "object", "properties": {

"tPolarizationIndex": { "type": "integer", "minimum": 0,

"maximum": 255

},

"tPolarizationType": { "type": "string", "enum": [

"MINUS\_45", "ZERO", "PLUS\_45", "PLUS\_90"

]

}

},

"required": ["tPolarizationIndex", "tPolarizationType"]

},

"rPolarizationItem": { "type": "object", "properties": {

"rPolarizationIndex": { "type": "integer", "minimum": 0,

"maximum": 255

},

"rPolarizationType": { "type": "string", "enum": [

"MINUS\_45", "ZERO", "PLUS\_45",

"PLUS\_90"

]

}

},

"required": ["rPolarizationIndex", "rPolarizationType"]

},

"TxArrayItem": { "type": "object", "properties": {

"tName": {

"type": "string"

},

"tNumberOfRows": { "type": "integer", "minimum": 1,

"maximum": 65535

},

"tNumberOfColumns": { "type": "integer", "minimum": 1,

"maximum": 65535

},

"tNumberOfArrayLayers": { "type": "integer", "minimum": 1,

"maximum": 255

},

"tHorizontalSpacing": { "type": "number"

},

"tVerticalSpacing": { "type": "number"

},

"tNormalVectorDirection": { "type": "object", "properties": {

"tAzimuthAngle": { "type": "number"

},

"tZenithAngle": { "type": "number"

}

}

},

"tLeftmostBottomArrayElementPosition": { "type": "object",

"properties": { "tXAxis": {

"type": "number"

},

"tYAxis": {

"type": "number"

},

"tZAxis": {

"type": "number"

}

}

},

"tPolarizationList": { "type": "array", "items": {

"$ref": "#/components/schemas/tPolarizationItem"

}

},

"tBandNumber": { "type": "integer", "minimum": 1,

"maximum": 1024

},

"tMaxGain": {

"type": "number"

},

"tMinGain": {

"type": "number"

},

"tIndependentPowerBudget": { "type": "boolean"

}

},

"required": ["tName", "tNumberOfRows", "tNumberOfColumns", "tNumberOfArrayLayers", "tPolarizationList", "tBandNumber", "tMaxGain", "tIndependentPowerBudget"]

},

"RxArrayItem": { "type": "object", "properties": {

"rName": {

"type": "string"

},

"rNumberOfRows": { "type": "integer", "minimum": 1,

"maximum": 65535

},

"rNumberOfColumns": { "type": "integer", "minimum": 1,

"maximum": 65535

},

"rNumberOfArrayLayers": { "type": "integer", "minimum": 1,

"maximum": 255

},

"rHorizontalSpacing": { "type": "number"

},

"rVerticalSpacing": { "type": "number"

},

"rNormalVectorDirection": { "type": "object", "properties": {

"rAzimuthAngle": { "type": "number"

},

"rZenithAngle": { "type": "number"

}

}

},

"rLeftmostBottomArrayElementPosition": { "type": "object",

"properties": { "rXAxis": {

"type": "number"

},

"rYAxis": {

"type": "number"

},

"rZAxis": {

"type": "number"

}

}

},

"rPolarizationList": { "type": "array", "items": {

"$ref": "#/components/schemas/rPolarizationItem"

}

},

"rBandNumber": { "type": "integer",

"minimum": 1,

"maximum": 1024

},

"rGainCorrectionRange": { "type": "object", "properties": {

"rMax": {

"type": "number"

},

"rMin": {

"type": "number"

}

}

}

},

"required": ["rName", "rNumberOfRows", "rNumberOfColumns", "rNumberOfArrayLayers", "rPolarizationList", "rBandNumber", "rGainCorrectionRange", "rMax", "rMin"]

},

"TxArrayList": { "type": "array", "items": {

"$ref": "#/components/schemas/TxArrayItem"

}

},

"RxArrayList": { "type": "array", "items": {

"$ref": "#/components/schemas/RxArrayItem"

}

},

"OruUserPlaneConfiguration": { "type": "object", "properties": {

"txArrayList": {

"$ref": "#/components/schemas/TxArrayList"

},

"rxArrayList": {

"$ref": "#/components/schemas/RxArrayList"

}

}

},

"O-GnbCuCpFunction": { "type": "object", "properties": {

"gnbId": {"$ref": "#/components/schemas/GnbId"}, "gnbIdLength": {"$ref": "#/components/schemas/GnbIdLength"}, "gnbCuName": {"$ref": "#/components/schemas/GnbName"}, "plmnId": {"$ref": "#/components/schemas/PlmnId"}, "x2BlockList": {"$ref": "#/components/schemas/GEnbIdList"}, "xnBlockList": {"$ref": "#/components/schemas/GGnbIdList"}, "x2AllowList": {"$ref": "#/components/schemas/GEnbIdList"}, "xnAllowList": {"$ref": "#/components/schemas/GGnbIdList"}, "x2HOBlockList": {"$ref": "#/components/schemas/GEnbIdList"}, "xnHOBlockList": {"$ref": "#/components/schemas/GGnbIdList"}

}

},

"O-GnbCuUpFunction": { "type": "object", "properties": {

"gnbId": {"$ref": "#/components/schemas/GnbId"}, "gnbIdLength": {"$ref": "#/components/schemas/GnbIdLength"}, "gnbCuUpId": {"$ref": "#/components/schemas/GnbCuUpId"}, "plmnInfoList": {"$ref": "#/components/schemas/PlmnInfoList"}

}

},

"O-GnbDuFunction": { "type": "object", "properties": {

"gnbDuId": {"$ref": "#/components/schemas/GnbDuId"}, "gnbDuName": {"$ref": "#/components/schemas/GnbName"}, "gnbId": {"$ref": "#/components/schemas/GnbId"}, "gnbIdLength": {"$ref": "#/components/schemas/GnbIdLength"}

}

},

"O-NrCellCu": {

"type": "object", "properties": {

"cellLocalId": {"type": "integer"},

"plmnInfoList": {"$ref": "#/components/schemas/PlmnInfoList"}

}

},

"O-NrCellDu": {

"type": "object", "properties": {

"cellLocalId": {"type": "integer"},

"operationalState": {"$ref": "#/components/schemas/OperationalState"}, "administrativeState": {"$ref": "#/components/schemas/AdministrativeState"}, "cellState": {"$ref": "#/components/schemas/CellState"},

"plmnInfoList": {"$ref": "#/components/schemas/PlmnInfoList"}, "nrPci": {"$ref": "#/components/schemas/NrPci"},

"nrTac": {"$ref": "#/components/schemas/NrTac"}, "arfcnDL": {"type": "integer"},

"arfcnUL": {"type": "integer"},

"arfcnSUL": {"type": "integer"},

"bSChannelBwDL": {"type": "integer"}, "ssbFrequency": {

"type": "integer", "minimum": 0,

"maximum": 3279165

},

"ssbPeriodicity": {"$ref": "#/components/schemas/SsbPeriodicity"}, "ssbSubCarrierSpacing": {"$ref": "#/components/schemas/SsbSubCarrierSpacing"}, "ssbOffset": {

"type": "integer", "minimum": 0,

"maximum": 159

},

"ssbDuration": {"$ref": "#/components/schemas/SsbDuration"}, "bSChannelBwUL": {"type": "integer"},

"bSChannelBwSUL": {"type": "integer"},

"bwpList": {"type": "array","items": {"$ref": "#/components/schemas/O-Bwp"}}, "partitionList": {"$ref": "#/components/schemas/PartitionList"}

}

},

"O-RRMPolicyRatio": { "type": "object", "properties": {

"resourceType": {"$ref": "#/components/schemas/ResourceType"}, "rRMPolicyMemberList": {"$ref": "#/components/schemas/RrmPolicyMemberList"}, "rRMPolicyMaxRatio": {"type": "integer"},

"rRMPolicyMinRatio": {"type": "integer"}, "rRMPolicyDedicatedRatio": {"type": "integer"}

}

},

"O-Bwp": {

"type": "object", "properties": {

"bwpContext": {"$ref": "#/components/schemas/BwpContext"}, "isInitialBwp": {"$ref": "#/components/schemas/IsInitialBwp"}, "subCarrierSpacing": {"$ref": "#/components/schemas/SubCarrierSpacing"}, "cyclicPrefix": {"$ref": "#/components/schemas/CyclicPrefix"}, "startRB": {"type": "integer"},

"numberOfRBs": {"type": "integer"}

}

},

"O-CESManagementFunction": { "type": "object", "properties": {

"cesSwitch": {"type": "boolean"}, "energySavingState": {

"type": "string",

"enum": ["isNotEnergySaving", "isEnergySaving"]

},

"energySavingControl": { "type": "string",

"enum": ["toBeEnergySaving", "toBeNotEnergySaving"]

}

}

},

"O-NESPolicy": {

"type": "object", "properties": {

"policyType": { "type": "string",

"enum": ["ASM", "TRX\_CONTROL"]

},

"antennaMaskName": { "type": "string"

},

"antennaMask": { "type": "string"

},

"sleepMode": { "type": "string",

"enum": ["SLEEP\_MODE0", "SLEEP\_MODE1","SLEEP\_MODE2", "SLEEP\_MODE3"]

},

"dataDir": { "type": "string",

"enum": ["DL", "UL"]

},

"symbolMask": { "type": "integer", "minimum": 0,

"maximum": 16383

},

"slotMask": {

"type": "string"

},

"validDuration": { "type": "integer"

},

"esObjective": {

"$ref": "#/components/schemas/EsObjective"

},

"perfObjectiveList": {

"$ref": "#/components/schemas/PerfObjectiveList"

}

}

},

"O-CellDTXDRXConfig": { "type": "object", "properties": {

"onDurationTimer": {

"$ref": "#/components/schemas/OnDurationTimer"

},

"cycleStartOffset": {

"$ref": "#/components/schemas/CycleStartOffset"

},

"slotOffset": { "type": "integer", "minimum": 0,

"maximum": 31

},

"configType": { "type": "string",

"enum": ["DTX", "DRX", "DTXDRX"]

},

"activationStatus": { "type": "string",

"enum": ["ACTIVATED", "DEACTIVATED"]

},

"l1Activation": { "type": "string",

"enum": ["ENABLED", "DISABLED"]

}

}

},

"O-RUInfo": {

"type": "object", "properties": {

"oruUserPlaneConfiguration": {"$ref": "#/components/schemas/OruUserPlaneConfiguration"},

"oruCapabilities": {"$ref": "#/components/schemas/OruCapabilities"}

}

},

"E2SM-CCC-RAN-Configuration-Structure": { "oneOf": [

{

"$ref": "#/components/schemas/O-GnbCuCpFunction"

},

{

"$ref": "#/components/schemas/O-GnbCuUpFunction"

},

{

"$ref": "#/components/schemas/O-GnbDuFunction"

},

{

"$ref": "#/components/schemas/O-NrCellCu"

},

{

"$ref": "#/components/schemas/O-NrCellDu"

},

{

"$ref": "#/components/schemas/O-RRMPolicyRatio"

},

{

"$ref": "#/components/schemas/O-Bwp"

},

{

"$ref": "#/components/schemas/O-CESManagementFunction"

},

{

"$ref": "#/components/schemas/O-NESPolicy"

},

{

"$ref": "#/components/schemas/O-CellDTXDRXConfig"

},

{

"$ref": "#/components/schemas/O-RUInfo"

}

]

},

"RIC-Indication-Header": { "type": "object", "properties": {

"indicationHeaderFormat": {"$ref": "#/components/schemas/IndicationHeaderFormat"}

},

"required": ["indicationHeaderFormat"]

},

"IndicationHeaderFormat": { "oneOf": [

{

"$ref": "#/components/schemas/E2SM-CCC-IndicationHeaderFormat1"

}

]

},

"E2SM-CCC-IndicationHeaderFormat1": { "type": "object",

"properties": {

"indicationReason": {"enum": ["uponSubscription", "uponChange", "periodic"] }, "eventTime": {"type": "string"}

},

"required": ["indicationReason", "eventTime"]

},

"RIC-Indication-Message": { "type": "object", "properties": {

"indicationMessageFormat": {"$ref": "#/components/schemas/IndicationMessageFormat"}

},

"required": ["indicationMessageFormat"]

},

"IndicationMessageFormat": { "oneOf": [

{

"$ref": "#/components/schemas/E2SM-CCC-IndicationMessageFormat1"

},

{

"$ref": "#/components/schemas/E2SM-CCC-IndicationMessageFormat2"

}

]

},

"E2SM-CCC-IndicationMessageFormat1": { "type": "object",

"properties": { "listOfConfigurationStructuresReported": {"$ref":

"#/components/schemas/ListOfConfigurationsReported"}

},

"required": ["listOfConfigurationStructuresReported"]

},

"ListOfConfigurationsReported": { "type": "array",

"items": {

"$ref": "#/components/schemas/ConfigurationStructure"

}

},

"ConfigurationStructure": { "type": "object", "properties": {

"changeType": { "enum": ["none", "modification", "addition", "deletion"] }, "ranConfigurationStructureName": {"type": "string"},

"valuesOfAttributes": { "$ref": "#/components/schemas/ValuesOfAttributes" }, "oldValuesOfAttributes": {"$ref": "#/components/schemas/ValuesOfAttributes"}

},

"required": ["changeType", "ranConfigurationStructureName", "valuesOfAttributes"]

},

"ValuesOfAttributes": { "type": "object", "properties": {

"ranConfigurationStructure": { "$ref": "#/components/schemas/E2SM-CCC-RAN-Configuration- Structure" }

},

"required": ["ranConfigurationStructure"]

},

"E2SM-CCC-IndicationMessageFormat2": { "type": "object",

"properties": {

"listOfCellsReported": {"$ref": "#/components/schemas/ListOfCellsReported"}

},

"required": ["listOfCellsReported"]

},

"ListOfCellsReported": { "type": "array", "items": {

"$ref": "#/components/schemas/CellReported"

}

},

"CellReported": { "type": "object", "properties": {

"cellGlobalId": {"$ref": "#/components/schemas/CellGlobalId" }, "listOfConfigurationStructuresReported": {"$ref":

"#/components/schemas/ListOfConfigurationsReported"}

},

"required": ["cellGlobalId", "listOfConfigurationStructuresReported"]

},

"CellGlobalId": { "type": "object", "oneOf": [

{

"$ref": "#/components/schemas/NR-CGI"

},

{

"$ref": "#/components/schemas/EUTRA-CGI"

}

]

},

"NR-CGI": {

"type": "object", "properties": {

"plmnIdentity": {"$ref": "#/components/schemas/PlmnId" }, "nRCellIdentity": {"$ref": "#/components/schemas/NRCellIdentity"}

},

"required": ["plmnIdentity", "nRCellIdentity"]

},

"NRCellIdentity": { "type": "string",

"pattern": "^[A-Fa-f0-9]{9}$"

},

"EUTRA-CGI": {

"type": "object", "properties": {

"plmnIdentity": {"$ref": "#/components/schemas/PlmnId"}, "eUTRACellIdentity": {"$ref": "#/components/schemas/EUTRACellIdentity"}

},

"required": ["plmnIdentity", "eUTRACellIdentity"]

},

"EUTRACellIdentity": { "type": "string"

},

"RIC-Control-Header": { "type": "object", "properties": {

"controlHeaderFormat": {"$ref": "#/components/schemas/ControlHeaderFormat"}

},

"required": ["controlHeaderFormat"]

},

"ControlHeaderFormat": { "oneOf": [

{

"$ref": "#/components/schemas/E2SM-CCC-ControlHeaderFormat1"

}

]

},

"E2SM-CCC-ControlHeaderFormat1": { "type": "object",

"properties": {

"ricStyleType": { "type": "integer" }

},

"required": ["ricStyleType"]

},

"RIC-Control-Message": { "type": "object", "properties": {

"controlMessageFormat": {"$ref": "#/components/schemas/ControlMessageFormat"}

},

"required": ["controlMessageFormat"]

},

"ControlMessageFormat": { "oneOf": [

{

"$ref": "#/components/schemas/E2SM-CCC-ControlMessageFormat1"

},

{

"$ref": "#/components/schemas/E2SM-CCC-ControlMessageFormat2"

}

]

},

"E2SM-CCC-ControlMessageFormat1": { "type": "object",

"properties": {

"listOfConfigurationStructures": {"$ref": "#/components/schemas/ListOfConfigurationStructures"}

},

"required": ["listOfConfigurationStructures"]

},

"ListOfConfigurationStructures": { "type": "array",

"items": {

"$ref": "#/components/schemas/ConfigurationStructureWrite"

}

},

"ConfigurationStructureWrite": { "type": "object", "properties": {

"ranConfigurationStructureName": {"type": "string"},

"oldValuesOfAttributes": {"$ref": "#/components/schemas/ValuesOfAttributes"}, "newValuesOfAttributes": { "$ref": "#/components/schemas/ValuesOfAttributes" }

},

"required": ["ranConfigurationStructureName", "oldValuesOfAttributes", "newValuesOfAttributes"]

},

"E2SM-CCC-ControlMessageFormat2": { "type": "object",

"properties": {

"listOfCellsControlled": {"$ref": "#/components/schemas/ListOfCellsControlled"}

},

"required": ["listOfCellsControlled"]

},

"ListOfCellsControlled": { "type": "array", "items": {

"$ref": "#/components/schemas/CellControlled"

}

},

"CellControlled": { "type": "object", "properties": {

"cellGlobalId": {"$ref": "#/components/schemas/CellGlobalId" }, "listOfConfigurationStructures": {"$ref": "#/components/schemas/ListOfConfigurationStructures"}

},

"required": ["cellGlobalId", "listOfConfigurationStructures"]

},

"RANFunctionDefinition": { "type": "object", "properties": {

"ranFunctionName": {"$ref": "#/components/schemas/RANFunctionName" }, "listOfSupportedNodeLevelConfigurationStructures": {"$ref":

"#/components/schemas/ListOfSupportedRANConfigurationStructures"}, "listOfCellsForRANFunctionDefinition": {"$ref":

"#/components/schemas/ListOfCellsForRANFunctionDefinition"}

},

"required": ["ranFunctionName"]

},

"RANFunctionName": { "type": "object", "properties": {

"ranFunctionShortName": {"type": "string"}, "ranFunctionServiceModelOID": {"type": "string"}, "ranFunctionDescription": {"type": "string"}, "ranFunctionInstance": {"type": "integer"}

},

"required": ["ranFunctionShortName", "ranFunctionServiceModelOID", "ranFunctionDescription"]

},

"ListOfSupportedRANConfigurationStructures": { "type": "array",

"items": {

"$ref": "#/components/schemas/RANConfigurationStructure"

}

},

"RANConfigurationStructure": { "type": "object", "properties": {

"ranConfigurationStructureName": {"type": "string"},

"listOfSupportedAttributes": {"$ref": "#/components/schemas/ListOfSupportedAttributes"}

},

"required": ["ranConfigurationStructureName"]

},

"ListOfSupportedAttributes": { "type": "array",

"items": {

"$ref": "#/components/schemas/Attribute"

}

},

"Attribute": { "type": "object", "properties": {

"attributeName": {"type": "string"},

"supportedServices": {"$ref": "#/components/schemas/RICServices"}

},

"required": ["attributeName","supportedServices"]

},

"RICServices": { "type": "object", "properties": {

"eventTrigger": {"$ref": "#/components/schemas/EventTrigger"}, "reportService": {"$ref": "#/components/schemas/ReportService"}, "insertService": {"$ref": "#/components/schemas/InsertService"},

"controlService": {"$ref": "#/components/schemas/ControlService"}, "policyService": {"$ref": "#/components/schemas/PolicyService"}, "queryService": {"$ref": "#/components/schemas/QueryService"}

}

},

"EventTrigger": { "type": "object", "properties": {

"listOfSupportedEventTriggerStyles": {"$ref": "#/components/schemas/ListOfSupportedEventTriggerStyles"}

},

"required": ["listOfSupportedEventTriggerStyles"]

},

"ListOfSupportedEventTriggerStyles": { "type": "array",

"items": {

"$ref": "#/components/schemas/EventTriggerStyle"

}

},

"EventTriggerStyle": { "type": "object", "properties": {

"eventTriggerStyleType": {"type": "integer"}, "eventTriggerStyleName": {"type": "string"}, "eventTriggerFormatType": {"type": "integer"}

},

"required": ["eventTriggerStyleType", "eventTriggerStyleName", "eventTriggerFormatType"]

},

"ReportService": { "type": "object", "properties": {

"listOfSupportedReportStyles": {"$ref": "#/components/schemas/ListOfSupportedReportStyles"}

},

"required": ["listOfSupportedReportStyles"]

},

"ListOfSupportedReportStyles": { "type": "array",

"items": {

"$ref": "#/components/schemas/ReportStyle"

}

},

"ReportStyle": { "type": "object", "properties": {

"reportServiceStyleType": {"type": "integer"}, "reportServiceStyleName": {"type": "string"}, "listOfSupportedEventTriggerStylesForReportStyle": {

"type": "array", "items": {

"$ref": "#/components/schemas/EventTriggerStyleType"

}

},

"reportServiceActionDefinitionFormatType": {"type": "integer"}, "reportServiceIndicationHeaderFormatType": {"type": "integer"}, "reportServiceIndicationMessageFormatType": {"type": "integer"}

},

"required": ["reportServiceStyleType", "reportServiceStyleName", "listOfSupportedEventTriggerStylesForReportStyle", "reportServiceActionDefinitionFormatType", "reportServiceIndicationHeaderFormatType", "reportServiceIndicationMessageFormatType"]

},

"EventTriggerStyleType": { "type": "object", "properties": {

"eventTriggerStyleType": {"type": "integer"}

},

"required": ["eventTriggerStyleType"]

},

"InsertService": { "type": "object"

},

"ControlService": { "type": "object", "properties": {

"listOfSupportedControlStyles": {"$ref": "#/components/schemas/ListOfSupportedControlStyles"}

},

"required": ["listOfSupportedControlStyles"]

},

"ListOfSupportedControlStyles": { "type": "array",

"items": {

"$ref": "#/components/schemas/ControlStyle"

}

},

"ControlStyle": { "type": "object", "properties": {

"controlServiceStyleType": {"type": "integer"}, "controlServiceStyleName": {"type": "string"}, "controlServiceHeaderFormatType": {"type": "integer"}, "controlServiceMessageFormatType": {"type": "integer"}, "ricCallProcessIDFormatType": {"type": "integer"}, "controlServiceControlOutcomeFormatType": {"type": "integer"}

},

"required": ["controlServiceStyleType", "controlServiceStyleName", "controlServiceHeaderFormatType", "controlServiceMessageFormatType", "controlServiceControlOutcomeFormatType"]

},

"PolicyService": { "type": "object"

},

"QueryService": { "type": "object", "properties": {

"listOfSupportedQueryStyles": {"$ref": "#/components/schemas/ListOfSupportedQueryStyles"}

},

"required": ["listOfSupportedQueryStyles"]

},

"ListOfSupportedQueryStyles": { "type": "array",

"items": {

"$ref": "#/components/schemas/QueryStyle"

}

},

"QueryStyle": { "type": "object", "properties": {

"queryServiceStyleType": {"type": "integer"}, "queryServiceStyleName": {"type": "string"}, "queryServiceHeaderFormatType": {"type": "integer"}, "queryServiceDefinitionFormatType": {"type": "integer"}, "queryServiceOutcomeFormatType": {"type": "integer"}

},

"required": ["queryServiceStyleType", "queryServiceStyleName", "queryServiceHeaderFormatType", "queryServiceDefinitionFormatType", "queryServiceOutcomeFormatType"]

},

"ListOfCellsForRANFunctionDefinition": { "type": "array",

"items": {

"$ref": "#/components/schemas/CellForRANFunctionDefinition"

}

},

"CellForRANFunctionDefinition": { "type": "object", "properties": {

"cellGlobalID": {"$ref": "#/components/schemas/NR-CGI"}, "listOfSupportedCellLevelRANConfigurationStructures": {"$ref":

"#/components/schemas/ListOfSupportedRANConfigurationStructures"}

},

"required": ["cellGlobalID"]

},

"RICEventTriggerDefinition": { "type": "object", "properties": {

"eventTriggerDefinitionFormat": {"$ref": "#/components/schemas/EventTriggerDefinitionFormat"}

},

"required": ["eventTriggerDefinitionFormat"]

},

"EventTriggerDefinitionFormat": { "oneOf": [

{

"$ref": "#/components/schemas/E2SM-CCC-EventTriggerDefinition-Format1"

},

{

"$ref": "#/components/schemas/E2SM-CCC-EventTriggerDefinition-Format2"

},

{

"$ref": "#/components/schemas/E2SM-CCC-EventTriggerDefinition-Format3"

}

]

},

"E2SM-CCC-EventTriggerDefinition-Format1": { "type": "object",

"properties": { "listOfNodeLevelConfigurationStructuresForEventTrigger": {"$ref":

"#/components/schemas/ListOfRANConfigurationStructuresForEventTrigger"}

},

"required": ["listOfNodeLevelConfigurationStructuresForEventTrigger"]

},

"ListOfRANConfigurationStructuresForEventTrigger": { "type": "array",

"items": {

"$ref": "#/components/schemas/RANConfigurationStructureForEventTrigger"

}

},

"RANConfigurationStructureForEventTrigger": { "type": "object",

"properties": {

"ranConfigurationStructureName": {"type": "string"}, "listOfAttributes": {

"type": "array", "items": {

"type": "string"

}

}

},

"required": ["ranConfigurationStructureName"]

},

"E2SM-CCC-EventTriggerDefinition-Format2": { "type": "object",

"properties": { "listOfCellLevelConfigurationStructuresForEventTrigger": {

"$ref": "#/components/schemas/ListOfCellLevelConfigurationStructuresForEventTrigger"

}

},

"required": ["listOfCellLevelConfigurationStructuresForEventTrigger"]

},

"ListOfCellLevelConfigurationStructuresForEventTrigger": { "type": "array",

"items": {

"$ref": "#/components/schemas/CellLevelConfigurationStructureForEventTrigger"

}

},

"CellLevelConfigurationStructureForEventTrigger": { "type": "object",

"properties": {

"cellGlobalId": {"$ref": "#/components/schemas/NR-CGI"}, "listOfRANConfigurationStructuresForEventTrigger": {"$ref":

"#/components/schemas/ListOfRANConfigurationStructuresForEventTrigger"}

},

"required": ["listOfRANConfigurationStructuresForEventTrigger"]

},

"E2SM-CCC-EventTriggerDefinition-Format3": { "type": "object",

"properties": {

"period": {"type": "integer"}

},

"required": ["period"]

},

"RICActionDefinition": { "type": "object", "properties": {

"ricStyleType": {"type": "integer"},

"actionDefinitionFormat": {"$ref": "#/components/schemas/ActionDefinitionFormat"}

},

"required": ["ricStyleType", "actionDefinitionFormat"]

},

"ActionDefinitionFormat": { "oneOf": [

{

"$ref": "#/components/schemas/E2SM-CCC-ActionDefinitionFormat1"

},

{

"$ref": "#/components/schemas/E2SM-CCC-ActionDefinitionFormat2"

}

]

},

"E2SM-CCC-ActionDefinitionFormat1": { "type": "object",

"properties": { "listOfNodeLevelRANConfigurationStructuresForADF": {"$ref":

"#/components/schemas/ListOfRANConfigurationStructuresForADF"}

},

"required": ["listOfNodeLevelRANConfigurationStructuresForADF"]

},

"ListOfRANConfigurationStructuresForADF": { "type": "array",

"items": {

"$ref": "#/components/schemas/RANConfigurationStructureForADF"

}

},

"RANConfigurationStructureForADF": { "type": "object",

"properties": {

"reportType": {"enum": ["all", "change"]}, "ranConfigurationStructureName": {"type": "string"}, "listOfAttributes": {

"type": "array", "items": {

"$ref": "#/components/schemas/AttributeName"

}

}

},

"required": ["reportType", "ranConfigurationStructureName"]

},

"AttributeName": { "type": "object", "properties": {

"attributeName": {"type": "string"}

},

"required": ["attributeName"]

},

"E2SM-CCC-ActionDefinitionFormat2": { "type": "object",

"properties": { "listOfCellConfigurationsToBeReportedForADF": {"$ref":

"#/components/schemas/ListOfCellConfigurationsToBeReportedForADF"}

},

"required": ["listOfCellConfigurationsToBeReported"]

},

"ListOfCellConfigurationsToBeReportedForADF": { "type": "array",

"items": {

"$ref": "#/components/schemas/CellConfigurationToBeReportedForADF"

}

},

"CellConfigurationToBeReportedForADF": { "type": "object",

"properties": {

"cellGlobalId": {"$ref": "#/components/schemas/NR-CGI"}, "listOfCellLevelRANConfigurationStructuresForADF": {

"$ref": "#/components/schemas/ListOfRANConfigurationStructuresForADF"

}

}

},

"RIC-Control-Outcome": { "type": "object", "properties": {

"controlOutcomeFormat": {"$ref": "#/components/schemas/ControlOutcomeFormat"}

},

"required": ["controlOutcomeFormat"]

},

"ControlOutcomeFormat": {

"oneOf": [

{

"$ref": "#/components/schemas/E2SM-CCC-ControlOutcomeFormat1"

},

{

"$ref": "#/components/schemas/E2SM-CCC-ControlOutcomeFormat2"

}

]

},

"E2SM-CCC-ControlOutcomeFormat1": { "type": "object",

"properties": {

"receivedTimestamp": {"type": "string"}, "ranConfigurationStructuresAcceptedList": {"$ref":

"#/components/schemas/RanConfigurationStructuresAcceptedList"}, "ranConfigurationStructuresFailedList": {"$ref":

"#/components/schemas/RanConfigurationStructuresFailedList"}

}

},

"RanConfigurationStructuresAcceptedList": { "type": "array",

"items": {

"$ref": "#/components/schemas/ConfigurationStructureAccepted"

}

},

"ConfigurationStructureAccepted": { "type": "object",

"properties": {

"ranConfigurationStructureName": {"type": "string"},

"oldValuesOfAttributes": {"$ref": "#/components/schemas/ValuesOfAttributes"}, "currentValuesOfAttributes": { "$ref": "#/components/schemas/ValuesOfAttributes" }, "appliedTimestamp": {"type": "string"}

},

"required": ["ranConfigurationStructureName", "oldValuesOfAttributes", "currentValuesOfAttributes"]

},

"RanConfigurationStructuresFailedList": { "type": "array",

"items": {

"$ref": "#/components/schemas/ConfigurationStructureFailed"

}

},

"ConfigurationStructureFailed": { "type": "object", "properties": {

"ranConfigurationStructureName": {"type": "string"},

"oldValuesOfAttributes": {"$ref": "#/components/schemas/ValuesOfAttributes"}, "requestedValuesOfAttributes": { "$ref": "#/components/schemas/ValuesOfAttributes"}, "cause": { "$ref": "#/components/schemas/Cause"}

},

"required": ["ranConfigurationStructureName", "oldValuesOfAttributes", "requestedValuesOfAttributes", "cause"]

},

"Cause": {

"type": "string", "enum": [

"NotSupported", "NotAvailable", "IncompatibleState", "JsonError", "SemanticError", "Unspecified"

]

},

"E2SM-CCC-ControlOutcomeFormat2": { "type": "object",

"properties": {

"receivedTimestamp": {"type": "string"},

"listOfCellsForControlOutcome": {"$ref": "#/components/schemas/ListOfCellsForControlOutcome"}

},

"required": ["listOfCellsForControlOutcome"]

},

"ListOfCellsForControlOutcome": { "type": "array",

"items": {

"$ref": "#/components/schemas/CellControlOutcome"

}

},

"CellControlOutcome": { "type": "object", "properties": {

"cellGlobalId": {"$ref": "#/components/schemas/CellGlobalId" }, "ranConfigurationStructuresAcceptedList": {"$ref":

"#/components/schemas/RanConfigurationStructuresAcceptedList"}, "ranConfigurationStructuresFailedList": {"$ref":

"#/components/schemas/RanConfigurationStructuresFailedList"}

},

"required": ["cellGlobalId"]

},

"RIC-Query-Header": { "type": "object", "properties": {

"queryHeaderFormat": {"$ref": "#/components/schemas/QueryHeaderFormat"}

},

"required": ["queryHeaderFormat"]

},

"QueryHeaderFormat": { "oneOf": [

{

"$ref": "#/components/schemas/E2SM-CCC-QueryHeaderFormat1"

}

]

},

"E2SM-CCC-QueryHeaderFormat1": { "type": "object", "properties": {

"ricStyleType": { "type": "integer" }

},

"required": ["ricStyleType"]

},

"RIC-Query-Definition": { "type": "object", "properties": {

"queryDefinitionFormat": {"$ref": "#/components/schemas/QueryDefinitionFormat"}

},

"required": ["queryDefinitionFormat"]

},

"QueryDefinitionFormat": { "oneOf": [

{

"$ref": "#/components/schemas/E2SM-CCC-QueryDefinitionFormat1"

},

{

"$ref": "#/components/schemas/E2SM-CCC-QueryDefinitionFormat2"

}

]

},

"E2SM-CCC-QueryDefinitionFormat1": { "type": "object",

"properties": { "listOfNodelevelRanConfigurationStructuresForQuery": {"$ref":

"#/components/schemas/ListOfNodelevelRanConfigurationStructuresForQuery"}

},

"required": ["listOfNodelevelRanConfigurationStructuresForQuery"]

},

"ListOfNodelevelRanConfigurationStructuresForQuery": { "type": "array",

"items": {

"$ref": "#/components/schemas/NodelevelRanConfigurationStructuresForQuery"

}

},

"NodelevelRanConfigurationStructuresForQuery": { "type": "object",

"properties": {

"ranConfigurationStructureName": {"type": "string"}, "listOfAttributes": {

"type": "array", "items": {

"$ref": "#/components/schemas/AttributeName"

}

}

},

"required": ["ranConfigurationStructureName"]

},

"E2SM-CCC-QueryDefinitionFormat2": { "type": "object",

"properties": { "listOfCellsToBeQueriedForQuery": {"$ref":

"#/components/schemas/ListOfCellsToBeQueriedForQuery"}

},

"required": ["listOfCellsToBeQueriedForQuery"]

},

"ListOfCellsToBeQueriedForQuery": { "type": "array",

"items": {

"$ref": "#/components/schemas/CellsToBeQueried"

}

},

"CellsToBeQueried": { "type": "object", "properties": {

"cellGlobalId": {"$ref": "#/components/schemas/CellGlobalId" }, "listOfCelllevelConfigurationStructuresForQuery": {"$ref":

"#/components/schemas/ListOfCelllevelConfigurationStructuresForQuery"}

},

"required": ["listOfCelllevelConfigurationStructuresForQuery"]

},

"ListOfCelllevelConfigurationStructuresForQuery": { "type": "array",

"items": {

"$ref": "#/components/schemas/CelllevelConfigurationStructuresForQuery"

}

},

"CelllevelConfigurationStructuresForQuery": { "type": "object",

"properties": {

"ranConfigurationStructureName": {"type": "string"}, "listOfAttributes": {

"type": "array", "items": {

"$ref": "#/components/schemas/AttributeName"

}

}

},

"required": ["ranConfigurationStructureName"]

},

"RIC-Query-Outcome": { "type": "object", "properties": {

"queryDefinitionFormat": {"$ref": "#/components/schemas/QueryOutcomeFormat"}

},

"required": ["queryOutcomeFormat"]

},

"QueryOutcomeFormat": { "oneOf": [

{

"$ref": "#/components/schemas/E2SM-CCC-QueryOutcomeFormat1"

},

{

"$ref": "#/components/schemas/E2SM-CCC-QueryOutcomeFormat2"

}

]

},

"E2SM-CCC-QueryOutcomeFormat1": { "type": "object", "properties": {

"listOfConfigurationStructuresToBeReportedForQuery": {"$ref": "#/components/schemas/ListOfConfigurationStructuresToBeReportedForQuery"}

},

"required": ["listOfConfigurationStructuresToBeReportedForQuery"]

},

"ListOfConfigurationStructuresToBeReportedForQuery": { "type": "array",

"items": {

"$ref": "#/components/schemas/ConfigurationStructuresToBeReportedForQuery"

}

},

"ConfigurationStructuresToBeReportedForQuery": { "type": "object",

"properties": {

"ranConfigurationStructureName": {"type": "string"},

"valuesOfAttributes": { "$ref": "#/components/schemas/ValuesOfAttributes" }

},

"required": ["ranConfigurationStructureName", "valuesOfAttributes"]

},

"E2SM-CCC-QueryOutcomeFormat2": { "type": "object", "properties": {

"listOfCellsToBeReportedForQuery": {"$ref": "#/components/schemas/ListOfCellsToBeReportedForQuery"}

},

"required": ["listOfCellsToBeReportedForQuery"]

},

"ListOfCellsToBeReportedForQuery": { "type": "array",

"items": {

"$ref": "#/components/schemas/CellsToBeReportedForQuery"

}

},

"CellsToBeReportedForQuery": { "type": "object", "properties": {

"cellGlobalId": {"$ref": "#/components/schemas/CellGlobalId" }, "listOfConfigurationStructuresToBeReportedForQuery": {"$ref":

"#/components/schemas/ListOfConfigurationStructuresToBeReportedForQuery"}

},

"required": ["cellGlobalId", "listOfConfigurationStructuresToBeReportedForQuery"]

}

}

}

}

## Message transfer syntax

Void

# Handling of Unknown, Unforeseen and Erroneous Protocol Data

Void

# Annex A (informative): Examples on IE Contents

Void

Annex (informative):

Change history/Change request (history)

|  |  |  |
| --- | --- | --- |
| **Date** | **Revision** | **Description** |
| 2022.02.25 | 00.00.01 | Initial skeleton |
| 2022.03.10 | 00.00.02 | Editorial changes for removal of text from clauses to minimize initial content |
| 2022.06.07 | 00.00.03 | Editorial changes related to E2SM name update from "Cell Control" to "Cell Configuration and Control"  Addition of CRs agreed in WG3#139:   * JNPR-2022.02.25-WG3-CR-0004-E2SM-CC-RANFunctionServiceModelDescription-v2 * JNPR-2022.02.25-WG3-CR-0005-E2SM-CC-RANFunctionName-v2   Addition of CRs agreed in WG3#147:   * JNPR.AO-2022.03.04-WG3-CR-0007-E2SM-CCC-EventTriggerStyle1-v4 * JNPR.AO-2022.03.04-WG3-CR-0008-E2SM-CCC-EventTriggerDefinitionFormat1-v4 |
| 2022.06.28 | 00.00.04 | Addition of CRs agreed in WG3#149:   * JNPR.AO-2022.03.09-WG3-CR-0009-E2SM-CCC-ReportService-v3.docx * JNPR.AO-2022.03.09-WG3-CR-0010-E2SM-CCC-ActionDefinition-v3.docx * JNPR.AO-2022.03.15-WG3-CR-0011-E2SM-CCC-Section8-v3.docx * JNPR.AO-2022.05.23-WG3-CR-0012-E2SM-CCC-RICIndication-v1.docx |
| 2022.07.05 | 00.00.05 | Addition of CRs agreed in WG3#151:   * JNPR-2022.02.25-WG3-CR-0006-E2SM-CCC-RICControlServices-v2 * JNPR-2022.06.22-WG3-CR-0013-E2SM-CCC-RICControl-v2 |
| 2022.07.18 | 00.00.06 | Addition of CRs agreed in WG3#153:   * JNPR.AO-2022.06.30-WG3-CR-0014-E2SM-CCC-- ControlRelatedConfigurationStructures- v3   - JNPR-2022.07.05-WG3-CR-0015-E2SM-CCC-Section9.3-v1   * JNPR.AO-2022.07.07-WG3-CR-0016-E2SM-CCC-RANFunctionDefinition-v2   Editorial changes to correct clause number cross-references within the document |
| 2022.07.19 | 00.00.07 | Addition of CRs agreed in WG3#154:  - JNPR.AO-2022.07.08-WG3-CR-0017-E2SM-CCC-JSON Schemas-v1  Editorial changes (consistent upper/lower case definitions across clauses 8, 9 and JSON schema definitions, enum vs enumerations, removal of extra empty lines, etc.) |
| 2022.07.21 | 00.00.08 | Update of the document to comply with the new O-RAN Technical Spec template |
| 2022.07.29 | 00.00.09 | Addressed WG3 review comments |
| 2022.08.02 | 01.00 | Final version 01.00 |
| 2022.11.04 | 01.00.01 | Addition of CRs agreed in WG3#164:   * JNPR-2022.10.13-WG3-CR-0018-E2SM-CCC-ControlOutcomeJSONSchema * JNPR-2022.10.13-WG3-CR-0019-E2SM-CCC-JSONSchemaFixes   Note: This version contains non-backward compatible change with respect to v01.00. |
| 2022.11.18 | 01.00.02 | Editorial changes to add R003 to file name, update copyright year and update of clause 7.1:  Corrected IE name to align with clause 9.2.2.1 RAN Function Definition IE definition. |
| 2022.11.18 | 01.01 | Final version 01.01 |
| 2023.03.15 | 01.01.01 | Aligned to latest O-RAN document template Addition of CR agreed in WG3#175:  - FJT-2023.01.18-WG3-CR-0001-E2SM-CCC\_InterferenceControl-v04.docx |
| 2023.06.30 | 01.01.02 | Addition of CRs agreed in WG3#177 and WG3#182:   * FJT-2023.03.16-WG3-CR-0003-E2SM-CCC\_InterferenceControl\_JSONSchema\_update- v01.docx * JNPR.AO-2023.03.22-WG3-CR-0020-E2SM-CCC-VersionClarificationFor3GPPReferences-   v3.docx |
| 2023.07.28 | 01.01.03 | Editorial changes to address comments received during WG3 approval process. |
| 2023.07.30 | 02.00 | Final version 02.00 |
| 2023.11.03 | 02.00.01 | Initial version towards v03.00 Addition of CR agreed in WG3#197:  - RSYS.AO-2023.08.22-WG3-CR-0002-E2SM-CCC-Energy Saving Report-v03 |

|  |  |  |
| --- | --- | --- |
| 2023.11.03 | 02.00.02 | Addition of CR agreed in WG3#199:  - NEC-2023.08.31-WG3-CR-0021-E2SM-CCC JSON Schema Definitions IE -  listOfCellsControlled |
| 2023.11.03 | 02.00.03 | Addition of CR agreed in WG3#201:  - JNPR.AO-2023.09.11-WG3-CR-0021-E2SM-CCC-RANFunctionDefinitionStage2-v1 |
| 2023.11.03 | 02.00.04 | Addition of CR agreed in WG3#202:  - RSYS.AO-2023.10.04-WG3-CR-0002-E2SM-CCC-JSON Schema for celllevel Energy Saving-v01 |
| 2023.11.17 | 02.00.05 | WG3 review comments are addressed, and approval is completed. |
| 2023.11.17 | 02.00.06 | All changes accepted, clean version. |
| 2023.11.18 | 03.00 | Final version 03.00 |
| 2024.03.21 | 03.00.01 | Initial version towards v04.00  Addition of CRs agreed in WG3#216, WG3#217 and WG3#218:   * NEC-2023.12.14-WG3-CR-0028-E2SM-CCC\_clarification\_on\_ReportType\_v01 * RMI.AO-2023.09.21-WG3-CR-0003-E2SM-CCC-Energy Saving ASM and TRX Control-   v09   * RMI.AO-2024.02.29-WG3-CR-0005-E2SM-CCC-JSON Schema for ASM and TRX   Control Energy Saving-v04  - NOK.AO-2024.03.13-WG3-CR-0001-E2SM-CCC clause 3.1 and 4.3-v02 |
| 2024.03.31 | 03.00.02 | Editorial changes to align to O-RAN TS template v01.01  Editorial changes based on remarks during WG3 approval. |
| 2024.03.31 | 04.00 | Final version 04.00 |
| 2024.11.11 | 04.00.01 | Initial version towards v05.00  Aligned to O-RAN TS template v02.01  Addition of CRs agreed in WG3#233, WG3#234, WG3#235, WG3#237, WG#239  - INT.AO-2024.05.30-WG3-CR-0028-E2SM-CCC-Cell DTX DRX-v06   * COT-2024.05.24-WG3-CR-0005-E2SM-CCC-MU-MIMO-Optimization-O-RU-Config-v04 * INT.AO-2024.08.07-WG3-CR-0029-E2SM-CCC-JSON schema for cell DTX DRX-v01 * NEC-2024.07.24-WG3-CR-0029-E2SM-CCC OCTET STRING format -v03 * COT-2024.08.12-WG3-CR-0011-E2SM-CCC-JSON-Schema-Definitions-for-O-RU-Config-   v02  - NEC.AO-2024.07.18-WG3-CR-0021-E2SM-CCC RIC Query -v08   * NEC-2024.07.24-WG3-CR-0030-E2SM-CCC NRCellIdentity JSON Schema length-v03 |
| 2024.11.25 | 04.00.02 | Aligned to O-RAN Working Procedures v04.00  Editorial changes to add missing range bound tables for query definition and outcome formats Addition of CRs agreed in WG3#229, WG3#234, WG3#245   * RMI.AO-2024.04.01-WG3-CR-0006-E2SM-CCC-Adding Performance Objective Parameters in O-NESPolicy-v05 * RMI.AO-2024.02.12-WG3-CR-0004-E2SM-CCC-Energy Saving ASM and TRX Control-O-RU-   Capability-Report-v03   * JNPR-2024.11.11-WG3-CR-0034-E2SM-CCC\_oruUserPlaneConfig-Correction-v01 * JNPR-2024.11.11-WG3-CR-0035-E2SM-CCC\_Query Service- JSONSchemaCorrection-v01 * JNPR-2024.11.11-WG3-CR-0036-E2SM-CCC\_ODR\_Update\_of\_References-v01 * JNPR-2024.11.11-WG3-CR-0037-E2SM-CCC\_ODR\_Update\_of\_Clause\_5-v01 * RMI.AO-2024.11.09-WG3-CR-0007-E2SM-CCC-JSON Schema for performance objecitves- v01 * RMI.AO-2024.11.09-WG3-CR-0008-E2SM-CCC-JSON Schema for oruCapability-v02 * JNPR-2024.11.12-WG3-CR-0038-E2SM-CCC\_Update-of-FFS-wording-v01 * JNPR-2024.11.12-WG3-CR-0039-E2SM-CCC\_ODR\_Update-of-section-wording-v01 * JNPR-2024.11.19-WG3-CR-0040-E2SM-CCC\_JSONSchemaVersionUpdateAndCorrection- v01 |
| 2024.12.06 | 04.00.03 | Editorial changes based on remarks during WG3 approval. |
| 2024.12.06 | 05.00 | Final version 05.00 |
---

- View in [Reader Mode](https://simewu.com/spec-reader/pages/09-WG3/O-RAN.WG3.TS.E2SM-CCC-R004-v05.00.docx).
- Go back to [Table of Contents](../README.md).
- Download the [Original Document](https://github.com/Simewu/spec-reader/raw/refs/heads/main/documents/O-RAN.WG3.TS.E2SM-CCC-R004-v05.00.docx).
