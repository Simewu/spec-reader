---
title: O-RAN.WG3.TS.E2SM-LLC-R004-v01.00.docx.md
author: O-RAN Alliance, WG3
layout: post
---

- View in [GitHub Mode]({{site.github_page_url}}/O-RAN.WG3.TS.E2SM-LLC-R004-v01.00.docx.md).
- Go back to [Table of Contents]({{site.baseurl}}/).
- Download the [Original Document]({{site.download_url}}/O-RAN.WG3.TS.E2SM-LLC-R004-v01.00.docx).

---

* toc
{:toc}

---

![webwxgetmsgimg (7).jpeg]({{site.baseurl}}/assets/images/22f5c6d82866.jpg)O-RAN.WG3.TS.E2SM-LLC-R004-v01.00

*Technical Specification*

**O-RAN Work Group 3 (Near-RT RIC and E2 Interface) E2 Service Model (E2SM), Lower Layers Control**

Copyright (C) 2025 by the O-RAN ALLIANCE e.V.

The copying or incorporation into any other work of part or all of the material available in this specification in any form without the prior written permission of O-RAN ALLIANCE e.V. is prohibited, save that you may print or download extracts of the material of this specification for your personal use, or copy the material of this specification for the purpose of sending to individual third parties for their information provided that you acknowledge O-RAN ALLIANCE as the source of the material and that you inform the third party that these conditions apply to them and that they must comply with them.

O-RAN ALLIANCE e.V., Buschkauler Weg 27, 53347 Alfter, Germany Register of Associations, Bonn VR 11238, VAT ID DE321720189

# Contents

Contents 2

List of tables 4

Foreword 5

Modal verbs terminology 5

1. Scope 6
2. References 6
   1. Normative references 6
   2. Informative references 6
3. Definition of terms, symbols, and abbreviations 7
   1. Terms 7
   2. Symbols 7
   3. Abbreviations 7
4. General 7
   1. Procedure specification principles 7
   2. Forwards and backwards compatibility 7
   3. Specification notations 7
5. E2SM services 8
6. RAN function service model description 8
   1. RAN function overview 8
   2. RAN function exposure services 9
      1. REPORT service 9
      2. INSERT service 9
      3. CONTROL service 9
      4. POLICY service 9
      5. QUERY service 9
   3. REPORT service description 9
   4. INSERT service description 9
   5. CONTROL service description 10
   6. POLICY service description 10
   7. QUERY service description 10
7. RAN function description 10
   1. RAN function definition 10
   2. RAN function name 10
   3. Event trigger definition styles 11
      1. RIC *Event Trigger Definition* IE style list 11
      2. RIC *Event Trigger Definition* IE style 1: Lower Layers Information Event 11
      3. RIC Event trigger definition IE style 2: Periodic 11
   4. Supported RIC REPORT services 11
      1. REPORT service style list 11
      2. REPORT service style 1: Lower layers information copy 11
      3. REPORT Service Style 2: Lower layers measurements 12
   5. Supported RIC INSERT services 13
   6. Supported RIC CONTROL services 13
      1. CONTROL service style types 13
      2. CONTROL service style 1: Logical channels handling control 13
      3. CONTROL Service Style 2: Scheduling Parameters Control 14
   7. Supported RIC POLICY services 15
   8. Supported RIC QUERY services 15
   9. Supported RIC service styles and E2SM IE formats 15
8. Elements for E2SM service model 16
   1. General 16
   2. Message functional definition and content 16
      1. Messages for RIC Functional procedures 16
      2. Messages for RIC global procedures 20
   3. Information Element definitions 22
      1. General 22
      2. RAN Function Name 22
      3. RIC Style Type 22
      4. RIC Style Name 22
      5. RIC Format Type 22
      6. Control Action ID 23
      7. Control Action Name 23
      8. UE ID 23
      9. Event Trigger Condition ID 23
      10. Event Trigger ID for UE 23
      11. Logical OR 23
      12. Event Trigger UE Information 23
      13. Group of UEs 24
      14. Cell Global ID 24
      15. Lower Layers Information Type 24
      16. Lower Layers Measurement Type 24
      17. Slot Information 25
      18. Slot Time Stamp 25
      19. SRS 25
      20. CSI 27
      21. DL RLC Buffer Status 28
      22. DL PDCP Buffer Status 29
      23. DL HARQ Statistics 30
      24. Received Timestamp 31
      25. Logical Channel Handling Control 31
      26. DL Scheduling Control 32
      27. DL Scheduling Control Outcome 37
   4. Information Element abstract syntax (with ASN.1) 40
      1. General 40
      2. Information Element Definitions 40
   5. Message transfer syntax 49
9. Handling of unknown, unforeseen and erroneous protocol data 49

Annex (informative): Change history 49

# List of tables

Table 5-1: Relationship between RAN Function specific E2AP Information elements and E2AP Procedures 8

Table 7.9-1: Summary of the E2SM IE Formats defined to support RIC Event Trigger Styles 15

Table 7.9-2: Summary of the E2SM IE Formats defined to support RIC Service Styles 15

Table 7.9-3: Summary of the E2SM IE Formats defined to support RIC Service Styles 15

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

The present document describes the E2 service model (E2SM) for the Near RT RIC Lower Layers Control interaction covering layers L1 and L2 interactions.

# References

## Normative references

References are either specific (identified by date of publication and/or edition number or version number) or non-specific. For specific references, only the cited version applies. For non-specific references, the latest version of the referenced document (including any amendments) applies.

NOTE 1: While any hyperlinks included in this clause were valid at the time of publication, O-RAN cannot guarantee their long-term validity.

NOTE 2: In the case of a reference to a 3GPP document (including a GSM document), a non-specific reference implicitly refers to the latest version of that document in 3GPP Release 18, or the latest 3GPP release prior to Release 18 that includes that document.

The following referenced documents are necessary for the application of the present document.

1. O-RAN.WG3.TS.E2GAP: "O-RAN E2 General Aspects and Principles (E2GAP)".
2. O-RAN.WG1.TS.OAD: "O-RAN Architecture Description".
3. O-RAN.WG3.TS.E2AP: "O-RAN E2 Application Protocol (E2AP)".
4. O-RAN.WG3.TS.E2SM: "O-RAN E2 Service Model (E2SM)".
5. 3GPP TS 38.211: "NR; Physical channels and modulation".
6. 3GPP TS 38.213: "NR; Physical layer procedures for control".
7. IETF RFC 5905 (2010-06): "Network Time Protocol Version 4: Protocol and Algorithms Specification".
8. O-RAN.WG4.TS.CUS: "O-RAN Control, User and Synchronization Plane Specification".
9. 3GPP TS 38.331: "NR; Radio Resource Control (RRC) Protocol Specification".
10. 3GPP TS 25.321: "Medium Access Control (MAC) protocol specification".
11. 3GPP TS 37.483: "E1 Application Protocol (E1AP)".
12. 3GPP TS 38.323: "NR; Packet Data Convergence Protocol (PDCP) specification".
13. 3GPP TS 38.214: "NR; Physical layer procedures for data".
14. 3GPP TS 38.212: "NR; Multiplexing and channel coding".
15. Recommendation ITU-T X.680 (2002-07): "Information technology - Abstract Syntax Notation One (ASN.1): Specification of basic notation".
16. Recommendation ITU-T X.681 (2002-07): "Information technology - Abstract Syntax Notation One (ASN.1): Information object specification".
17. Recommendation ITU-T X.691 (2002-07): "Information technology - ASN.1 encoding rules - Specification of Packed Encoding Rules (PER) ".
18. 3GPP TS 36.413: "E-UTRAN; S1 Application Protocol (S1AP)".

## Informative references

References are either specific (identified by date of publication and/or edition number or version number) or non-specific. For specific references, only the cited version applies. For non-specific references, the latest version of the referenced document (including any amendments) applies.

NOTE 1: While any hyperlinks included in this clause were valid at the time of publication, O-RAN cannot guarantee their long-term validity.

NOTE 2: In the case of a reference to a 3GPP document (including a GSM document), a non-specific reference implicitly refers to the latest version of that document in 3GPP Release 18, or the latest 3GPP release prior to Release 18 that includes that document.

The following referenced documents are not necessary for the application of the present document, but they assist the user with regard to a particular subject area.

[i.1] 3GPP TR 21.905: "Vocabulary for 3GPP Specifications".

# Definition of terms, symbols, and abbreviations

## Terms

For the purposes of the present document, the terms given in 3GPP TR 21.905 [i.1], O-RAN WG3.TS.E2GAP [1], O-RAN WG1.TS.OAD [2].

## Symbols

Void

## Abbreviations

For the purposes of the present document, the abbreviations given in 3GPP TR 21.905 [i.1], O-RAN WG3.TS.E2GAP [1], O- RAN WG1.TS.OAD [2], and the following apply.

HOL Head of Line

LLI Lower Layers Information

PDB Packet Delay Budget

SMG Spatial Multiplexing Group

SPS Semi Persistent Scheduling

# General

## Procedure specification principles

The procedure specification principles defined in O-RAN WG3.TS.E2AP [3] clause 4 shall apply.

## Forwards and backwards compatibility

The forwards and backwards compatibility of the E2 interface uses the forward and backwards compatibility compatibilities offered by the O-RAN WG3.TS.E2AP [3] protocol.

## Specification notations

For the purposes of the present document, the following notations apply:

Service when referring to a Service in the specification the **SERVICE NAME** is written with upper case characters and in bold followed by the word "service", e.g. **REPORT** service.

Procedure When referring to an elementary procedure in the specification the Procedure Name is written with the first letters in each word in upper case characters followed by the word "procedure", e.g. Handover Preparation procedure.

Message When referring to a message in the specification the MESSAGE NAME is written with all letters in upper case characters followed by the word "message", e.g. HANDOVER REQUEST message.

IE When referring to an information element (IE) in the specification the *Information Element Name* is written with the first letters in each word in upper case characters and all letters in Italic font followed by the abbreviation "IE", e.g. *Event Trigger Condition ID* IE.

Value of an IE When referring to the value of an information element (IE) in the specification the "Value" is written as it is specified in the specification enclosed by quotation marks, e.g. "Value".

# E2SM services

As defined in O-RAN WG3.TS.E2GAP [1], a given RAN Function offers a set of services to be exposed over the E2 (REPORT, INSERT, CONTROL, POLICY and/or QUERY) using O-RAN WG3.TS.E2AP [3] defined procedures. Each of the E2AP Procedures listed in table 5-1 contains specific E2 Node RAN Function dependent Information Elements (IEs).

Table 5-1: Relationship between RAN Function specific E2AP Information elements and E2AP Procedures

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **RAN Function specific E2AP**  **Information Elements** | **E2AP Information Element reference** | **Related E2AP Procedures** |
| RIC *Event Trigger Definition* IE | O-RAN WG3.TS.E2AP [3] clause 9.2.9 | RIC Subscription  RIC Subscription Modification |
| RIC *Action Definition* IE | O-RAN WG3.TS.E2AP [3] clause 9.2.12 | RIC Subscription  RIC Subscription Modification |
| RIC *Indication Header* IE | O-RAN WG3.TS.E2AP [3] clause 9.2.17 | RIC Indication |
| RIC *Indication Message* IE | O-RAN WG3.TS.E2AP [3] clause 9.2.16 | RIC Indication |
| RIC *Call Process ID* IE | O-RAN WG3.TS.E2AP [3] clause 9.2.18 | RIC Indication  RIC Control |
| RIC *Control Header* IE | O-RAN WG3.TS.E2AP [3] clause 9.2.20 | RIC Control |
| RIC *Control Message* IE | O-RAN WG3.TS.E2AP [3] clause 9.2.19 | RIC Control |
| RIC *Control Outcome* IE | O-RAN WG3.TS.E2AP [3] clause 9.2.25 | RIC Control |
| RIC *Query Header* IE | O-RAN WG3.TS.E2AP [3] clause 9.2.36 | RIC Query |
| RIC *Query Definition* IE | O-RAN WG3.TS.E2AP [3] clause 9.2.37 | RIC Query |
| RIC *Query Outcome* IE | O-RAN WG3.TS.E2AP [3] clause 9.2.38 | RIC Query |
| RAN *Function Definition* IE | O-RAN WG3.TS.E2AP [3] clause 9.2.23 | E2 Setup  RIC Service Update |

</div>

All of these RAN Function specific E2AP IEs are defined in O-RAN WG3.TS.E2AP [3] as "OCTET STRING".

The purpose of this specification is to define the contents of these fields for the specific RAN function "Lower Layers Control".

# RAN function service model description

## RAN function overview

For the purposes of this E2 Service Model, E2SM-LLC, the E2 Node terminating the E2 Interface is assumed to host one or more instances of the RAN Function which performs the following functionalities:

* E2 REPORT services used to expose UE related lower layers information
* E2 CONTROL services used to initiate control of UE level lower layers parameters

This E2SM specification provides a set of RAN Function exposure services described in clause 6.2 and has been prepared with the assumption that the same E2SM may be used to describe either a single RAN Function in the E2 Node handling all RAN control related call processes or more than one RAN Function in the E2 Node with each instance handling a subset of the RAN control related call processes on the E2 Node.

## RAN function exposure services

### REPORT service

The "Lower Layers Control" RAN Function provides selective support of the following **REPORT** services:

* UE level PHY/MAC information, used for estimating the channels
* Traffic status, used for triggering E2 Control

### INSERT service

Void

### CONTROL service

The "Lowe Layers Control" RAN Function provides selective support of the following **CONTROL** services:

* UE level control of handling the scheduling of specific logical channels
* UE level control of parameters for scheduling transmissions

### POLICY service

Void

### QUERY service

Void

## REPORT service description

The E2SM-LLC REPORT service requirements defined in Clause 6.2.1 are offered using a set of REPORT Styles. All REPORT styles are implemented using a set of IEs for Action Definition, RIC Indication Header and RIC Indication Message and have specific Event Trigger approach.

The following REPORT styles are supported:

* Lower Layers Information (LLI) Copy: This REPORT style is initiated by "Lower Layers Information Event" Event Trigger and is used to report PHY and MAC information received from UEs along with UE associated information when the event trigger conditions are satisfied.
* Lower Layers Measurements: This REPORT style is initiated by "Periodic" Event Trigger and is used to report traffic information per logical channel per UE and to report slot timestamps when the event trigger conditions are satisfied.

## INSERT service description

Void

## CONTROL service description

The E2SM-LLC CONTROL service requirements defined in Clause 6.2.3 are offered using a set of CONTROL Styles. Each style corresponds to a set of "CONTROL Action", where each "CONTROL Action" deals with a specific functionality and has a set of associated RAN parameters, provided in a mapping table. All CONTROL Service styles are implemented using a set of IEs constituting a "RIC Control Request Header" and a "RIC Control Request Message" to deliver RAN Control-related CONTROL services. A "CONTROL Action" containing one or more RAN parameters and their associated values can be sent asynchronously from the RIC to the E2 node.

The following CONTROL styles are supported:

* UE level control of handling of scheduling specific logical channels
* UE level control of parameters for scheduling transmissions

## POLICY service description

Void

## QUERY service description

Void

# RAN function description

## RAN function definition

The E2AP [3] procedures E2 Setup and RIC Service Update are used to transport the RAN Function Description. For the specific RAN Function, the *RAN Function Definition* IE shall report the following information:

* RAN Function name along with associated information on E2SM definition
* Event trigger styles list along with the corresponding encoding type for each associated E2AP IE.
* RIC **REPORT** Service styles list along with the corresponding encoding type for each associated E2AP IE.
* RIC **INSERT** Service styles list along with the corresponding encoding type for each associated E2AP IE.
* RIC **CONTROL** Service styles list along with the corresponding encoding type for each associated E2AP IE.
* RIC **POLICY** Service styles list along with the corresponding encoding type for each associated E2AP IE.
* RIC **QUERY** Service styles list along with the corresponding encoding type for each associated E2AP IE.

## RAN function name

RAN Function Short Name "ORAN-E2SM-LLC"

RAN Function name description "Lower Layers Control"

RAN Function Instance, required when and if E2 Node exposes more than one instance of a RAN Function based on this E2SM.

## Event trigger definition styles

* + 1. RIC *Event Trigger Definition* IE style list

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **RIC**  **Style Type** | **Style Name** | **Supported RIC Service Style** | | | **Style Description** |
| **Report** | **Insert** | **Policy** |
| 1 | Low Layers Information Event | 1 | - | - | Triggering conditions are based on arrival of control message or PHY  signal. |
| 2 | Periodic | 2 | - | - | Triggered at specific time periods. |

</div>

* + 1. RIC *Event Trigger Definition* IE style 1: Lower Layers Information Event

This *RIC Event Trigger Definition* IE style is used to detect a specific control message or PHY signals received by E2 Node from a UE. The E2 Node can also be configured simultaneously to detect multiple messages and to trigger on any logical combination of the configured message events.

Each message event configured can be further conditioned to be associated only for a certain UE or group of UEs as indicated by the *Associated UE Info* IE if included. In case that the *Global Associated UE Info* IE is included, the information is applied uniformly to all the message events configured and the IE shall override any *Associated UE Info* IE included for some message events.

For each message event configured, Event Trigger Condition ID is assigned so that E2 Node can reply to Near-RT RIC in the RIC INDICATION message to inform which event(s) are the cause for triggering.

This *RIC Event Trigger Definition* IE style uses *E2SM-LLC Event Trigger Definition Format 1* IE (8.2.1.1.1).

* + 1. RIC *Event trigger definition* IE style 2: Periodic

This *RIC Event Trigger Definition* IE style is used to trigger an E2 Node to send periodic reports to the Near RT-RIC at a specified time period.

The event configured can be further conditioned to be associated only for a certain UE or group of UEs as indicated by the

*Associated UE Info* IE if included.

This *RIC Event Trigger Definition* IE style uses *RIC Event Trigger Definition Format 2* IE (8.2.1.1.2).

## Supported RIC REPORT services

### REPORT service style list

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **RIC Style Type** | **Style Name** | **Style Description** |
| 1 | LLI copy | This style is used to report a copy of LLI received from UE. |
| 2 | Periodic | This style is used to report the lower layers measurements collected  by the E2 Node |

</div>

### REPORT service style 1: Lower layers information copy

##### REPORT service style description

This **REPORT** Service style provides the copy of PHY and Control information received from UEs to be carried as a transparent container in the *RIC Indication Message* IE.

This **REPORT** Service style is initiated by Event Trigger style 1: Lower Layers Information Event.

* + - 1. REPORT service *RIC Action Definition* IE contents

The Action Definition for this service style is used to request E2 Node to report a copy of received UE specific LLI. The action definition indicates which related UE specific LLI is to be reported along with the Control message or PHY signal that triggers this report service.

This **REPORT** Service style uses the *E2SM-LLC Action Definition Format 1* IE (8.2.1.2.1).

* + - 1. REPORT service *RIC Indication Header* IE contents

This **REPORT** Service style uses the *E2SM-LLC Indication Header Format 1* IE (8.2.1.3.1)

* + - 1. REPORT service *RIC Indication Message* IE contents

The **REPORT** Service *RIC Indication Message* IE carries the content of the received LLI indicated in the *RIC Action Definition* IE.

This **REPORT** Service style uses the *E2SM-LLC Indication Message Format 1* IE (8.2.1.4.1).

### REPORT Service Style 2: Lower layers measurements

##### REPORT Service Style description

This **REPORT** Service style provides UE related lower layers information. The information is carried in the *RIC Indication Message* IE along with an associated *RIC Indication Header* IE providing information related event trigger conditions. The required information to be provided is controlled using the associated *RIC Action Definition* IE parameters.

This **REPORT** Service style enables the E2 Node to report:

* L1 per UE measurements including
  + HARQ ACK/NACK/DTX counts
* L2 per UE information including
  + PDCP and RLC buffer statuses
* Time synchronization

This **REPORT** Service style is initiated by Event Trigger style 2: Periodic.

* + - 1. REPORT Service *RIC Action Definition* IE contents

The Action Definition for this service style indicates the set of lower layers information parameters to be reported on a periodic basis.

This **REPORT** Service style uses the *E2SM-LLC Action Definition* IE Format 2 (8.2.1.2.2).

* + - 1. REPORT Service *RIC Indication Header* IE contents

This **REPORT** Service style uses the *E2SM-LLC Indication Header* IE Format 1 (8.2.1.3.1).

* + - 1. REPORT Service *RIC Indication Message* IE contents

The **REPORT** Service *RIC Indication Message* IE carries the requested lower layers measurements indicated in the *RIC Action Definition* IE.

This **REPORT** Service style uses the *E2SM-LLC Indication Message* IE Format 2 (8.2.1.4.2).

## Supported RIC INSERT services

Void

## Supported RIC CONTROL services

### CONTROL service style types

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **RIC Style Type** | **Style Name** | **Style Description** |
| 1 | Logical Channels Handling  control | Used for taking control of scheduling specific logical channels.  Belongs to Fundamental level CONTROL Services. |
| 2 | Scheduling parameters control | Used to provide scheduling related parameters to O-DU for specific data and control flows per slot.  Belongs to Fundamental level CONTROL Services. |

</div>

Each of the Control Service styles listed above points to adopt the following common features:

* Control Action ID: The index ID for the individual control action under a given Control Service style.
* Control Action Name: Indicates the functionality of the E2 node which is controlled by Near-RT RIC
* Control Action Description: Describes the control action and functionality of the receiving E2 Node.

The details of the individual Control Service styles are provided in subsequent sections.

### CONTROL service style 1: Logical channels handling control

##### CONTROL service style description

This **CONTROL** Service style provides a mechanism to directly control and monitor the handling of logical channels. Applications of this service include:

* Handover of RLC bearers' scheduling to Near-RT RIC

The supported RAN control actions and the corresponding RAN parameters are as follows.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **Control Action ID** | **Control Action Name** | **Control Action description** | **Is UE group- based control action**  **allowed** | **Associated IE** |
| 1 | DL Logical Channels Handling  control | To control the handling of scheduling specific DL logical channels | NO | 8.3.25 |

</div>

* + - 1. CONTROL service *RIC Control Header* IE contents

This **CONTROL** service *RIC Control Header* IE contains the *RIC Style Type* IE and *Control Action ID* IE. This **CONTROL** style uses *E2SM-LLC Control Header Format 1* IE (8.2.1.6.1).

* + - 1. CONTROL service *RIC Control Message* IE contents

This **CONTROL** Service *RIC Control Message* IE contains the sequence of RAN parameters, associated with a given Control Action within this Control Service style, controlled by the near-RT RIC along with the values for these parameters, as set by the RIC.

This **CONTROL** style uses *E2SM-LLC Control Message* IE Format 1 (8.2.1.7.1).

* + - 1. CONTROL service *RIC Call Process ID* IE contents

This **CONTROL** Service *RIC Call Process ID* IE is not supported for this CONTROL service style.

* + - 1. CONTROL service *RIC Control Outcome* IE contents

This **CONTROL** Service *RIC Control Outcome* IE contains a list of RAN Parameters and is used to carry information concerning the outcome of executing the RIC Control Request.

This **CONTROL** style uses *E2SM-LLC Control Outcome* IE Format 1 (8.2.1.8.1).

### CONTROL Service Style 2: Scheduling Parameters Control

##### CONTROL Service Style description

This **CONTROL** Service style provides a mechanism to directly control and monitor the application of scheduling and precoding parameters

Applications of this service include:

* Served Radio Bearers scheduling parameters control

The supported RAN control actions and the corresponding RAN parameters are as follows.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **Control Action ID** | **Control Action Name** | **Control Action description** | **Is UE**  **group- based control action allowed** | **Associated IE** |
| 1 | DL scheduling  parameters control | To control the scheduling parameters per slot | NO | 8.3.26 |

</div>

* + - 1. CONTROL Service *RIC Control Header* IE contents

This **CONTROL** Service *RIC Control Header* IE contains the *RIC Style Type* IE and *Control Action ID* IE. This **CONTROL** style uses *E2SM-LLC Control Header Format 1* IE (8.2.1.6.1).

* + - 1. CONTROL Service *RIC Control Message* IE contents

This **CONTROL** Service *RIC Control Message* IE contains the sequence of RAN parameters, associated with a given Control Action within this Control Service style, controlled by the Near-RT RIC along with the values for these parameters, as set by the RIC.

This **CONTROL** style uses *E2SM-LLC Control Message* IE Format 1 (8.2.1.7.1).

* + - 1. CONTROL Service *RIC Call Process ID* IE contents

This **CONTROL** Service *RIC Call Process ID* IE is not supported for this CONTROL service style.

* + - 1. CONTROL Service *RIC Control Outcome* IE contents

This **CONTROL** Service *RIC Control Outcome* IE contains a list of parameters and is used to carry information concerning the outcome of executing the RIC Control Request.

This **CONTROL** style uses *E2SM-LLC Control Outcome* IE Format 1 (8.2.1.8.1).

## Supported RIC POLICY services

Void

## Supported RIC QUERY services

Void

## Supported RIC service styles and E2SM IE formats

Table 7.9-1, Table 7.9-2 and Table 7.9-3 provide a summary of the E2SM IE Formats defined to support this E2SM specification.

Table 7.9-1: Summary of the E2SM IE Formats defined to support RIC Event Trigger Styles

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **RIC Event Trigger Style** | **Event Trigger Definition**  **Format** |
| Style 1 | 1 |
| Style 2 | 2 |

</div>

Table 7.9-2: Summary of the E2SM IE Formats defined to support RIC Service Styles

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- | --- |
| **RIC**  **Service Style** | **Action Definition**  **Format** | **Indication Header**  **Format** | **Indication Message**  **Format** | **Call Process ID**  **Format** | **Control Header**  **Format** | **Control Message**  **Format** | **Control Outcome**  **Format** |
| **REPORT** | | | | | | |  |
| Style 1 | 1 | 1 | 1 |  |  |  |  |
| Style 2 | 2 | 1 | 2 |  |  |  |  |
|  |  |  |  |  |  |  |  |
| **INSERT** | | | | | | |  |
|  |  |  |  |  |  |  |  |
| **CONTROL** | | | | | | |  |
| Style 1 |  |  |  |  | 1 | 1 | 1 |
| Style 2 |  |  |  |  | 1 | 1 | 1 |
|  |  |  |  |  |  |  |  |
| **POLICY** | | | | | | |  |
|  |  |  |  |  |  |  |  |

</div>

Table 7.9-3: Summary of the E2SM IE Formats defined to support RIC Service Styles

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **RIC Service Style** | **Query Header**  **Format** | **Query Definition**  **Format** | **Query Outcome**  **Format** |
| **QUERY** | | | |
|  |  |  |  |

</div>

# Elements for E2SM service model

## General

## Message functional definition and content

### Messages for RIC Functional procedures

##### RIC Event Trigger Definition IE

This information element is part of the RIC SUBSCRIPTION REQUEST message sent by the Near-RT RIC to an E2 Node and is required for event triggers used to initiate REPORT actions.

Direction: NEAR-RT RIC ? E2 Node.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and**  **reference** | **Semantics description** |
| **CHOICE** Event Trigger Format |  |  |  |  |
| >E2SM-LLC Event Trigger  Definition Format 1 | M |  | 8.2.1.1.1 | Used for Event Trigger Style 1 |
| >E2SM-LLC Event Trigger  Definition Format 2 | M |  | 8.2.1.1.2 | Used for Event Trigger Style 2 |

</div>

###### E2SM-LLC Event Trigger Definition Format 1: Lower Layers Information Event

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and**  **reference** | **Semantics description** |
| List of LLI for Event Trigger |  | *1..<maxnoof*  *LLIs>* |  |  |
| >Event Trigger Condition ID | M |  | 8.3.9 |  |
| *>*Lower Layers Information  Type | M |  | 8.3.15 |  |
| >Associated UE Info | O |  | 8.3.12 | Indicates applicable UE(s) for event triggering associated to each message event ("Any" UE  if not included). |
| >Logical OR | O |  | 8.3.11 |  |
| Global Associated UE Info | O |  | 8.3.12 | Indicates applicable UE(s) for event triggering, applied to all the message events uniformly. This IE shall override any *Associated UE Info* IE included for some message events. |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Range bound** | **Explanation** |
| maxnoofLLIs | Maximum number of LLIs in a given E2 node for which event trigger can be  defined. The value is *<63>.* |

</div>

###### E2SM-LLC Event Trigger Definition Format 2: Periodic

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| Reporting Period | M |  | INTEGER (1..65535) | Used to indicate the event triggering period in unit of 1  millisecond |
| Associated UE Info | O |  | 8.3.12 | Indicates applicable UE(s) for event triggering ("Any" UE if  not included). |

</div>

##### RIC Action Definition IE

This information element is part of the RIC SUBSCRIPTION REQUEST message sent by the Near-RT RIC to an E2 Node. In this service model, this information element provides additional information for the nominated RIC Action.

Direction: NEAR-RT RIC ? E2 Node.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and**  **reference** | **Semantics**  **description** |
| RIC Style Type | M |  | 8.3.3 |  |
| **CHOICE** *Action Definition*  *Format* | M |  |  |  |
| >E2SM-LLC Action Definition  Format 1 |  |  | 8.2.1.2.1 | Used by REPORT  Service Style 1 |
| >E2SM-LLC Action Definition  Format 2 |  |  | 8.2.1.2.2 | Used by REPORT  Service Style 2 |

</div>

###### E2SM-LLC Action Definition Format 1

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics**  **description** |
| Lower Layers Information Type | M |  | 8.3.15 |  |

</div>

###### E2SM-LLC Action Definition Format 2

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics**  **description** |
| List of Measurement to Report |  | *1..<maxnoofMe asurementsToR*  *eport>* |  |  |
| >Lower Layers Measurement  Type | M |  | 8.3.16 |  |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Range bound** | **Explanation** |
| maxnoofMeasurementsToReport | Maximum no. of lower layers measurements supported by Action  Definition Format 2. The value is <*65535*>. |

</div>

##### RIC Indication Header IE

This information element is part of the RIC INDICATION message sent by the E2 Node to the Near-RT RIC and is required for REPORT action.

Direction: E2 Node ? NEAR-RT RIC.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and**  **reference** | **Semantics description** |
| CHOICE *Indication Header*  *Format* |  |  |  |  |
| >E2SM-LLC Indication  Header Format 1 | M |  | 8.2.1.3.1 |  |

</div>

###### E2SM-LLC Indication Header Format 1

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics**  **description** |
| Event Trigger Condition ID | O |  | 8.3.9 | Event Trigger  Condition ID |

</div>

##### RIC Indication Message IE

This information element is part of the RIC INDICATION message sent by the E2 Node to the Near-RT RIC and is required for REPORT action.

Direction: E2 Node ? NEAR-RT RIC.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and**  **reference** | **Semantics description** |
| **CHOICE** *Indication Message*  *Format* | M |  |  |  |
| >E2SM-LLC Indication  Message Format 1 |  |  | 8.2.1.4.1 |  |
| >E2SM-LLC Indication  Message Format 2 |  |  | 8.2.1.4.2 |  |

</div>

###### E2SM-LLC Indication Message Format 1

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics**  **description** |
| Slot Time Stamp | M |  | 8.3.18 | Indicates the slot in which the latest received parameter was received by the  E2 Node |
| CHOICE Lower Layers  Information Type | M |  |  |  |
| >SRS |  |  | 8.3.19 |  |
| >CSI |  |  | 8.3.20 |  |

</div>

###### E2SM-LLC Indication Message Format 2

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics**  **description** |
| List of Lower Layers  Measurements |  | *1..<maxnoofMea*  *surements>* |  |  |
| >Slot Time Stamp | M |  | 8.3.18 | Indicates the last slot of the collected data in the report.  When the Measurement Type is 'Slot Time Stamp', indicates the slot at the time the message  is sent. |
| >CHOICE Lower Layers  Measurement Type | M |  |  |  |
| >>DL RLC Buffer Status |  |  | 8.3.21 |  |
| >>DL PDCP Buffer Status |  |  | 8.3.22 |  |
| >>DL HARQ Statistics |  |  | 8.3.23 |  |
| >>Slot Time Stamp |  |  | NULL |  |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Range bound** | **Explanation** |
| maxnoofMeasurements | Maximum number of measurements supported by Indication  Message Format 2. The value is <*63*>. |

</div>

#### RIC CALL PROCESS ID IE

Void

#### RIC CONTROL HEADER IE

This information element is part of the RIC CONTROL message sent by the Near-RT RIC to an E2 Node and is required for RIC Control Procedure.

Direction: Near-RT RIC ? E2 Node.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and**  **reference** | **Semantics**  **description** |
| **CHOICE** *Control Header Format* | M |  |  |  |
| >E2SM-LLC Control Header Format 1 |  |  | 8.2.1.6.1 |  |

</div>

###### E2SM-LLC Control Header Format 1

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and**  **reference** | **Semantics description** |
| RIC Style Type | M |  | 8.3.3 |  |
| Control Action ID | M |  | 8.3.6 | Refer to clause 7.6 |

</div>

#### RIC CONTROL MESSAGE IE

This information element is part of the RIC CONTROL message sent by the Near-RT RIC to an E2 Node and is required for RIC Control Procedure.

Direction: Near-RT RIC ? E2 Node.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and**  **reference** | **Semantics**  **description** |
| **CHOICE** *Control Message Format* | M |  |  |  |
| >E2SM-LLC Control Message Format 1 |  |  | 8.2.1.7.1 |  |

</div>

###### E2SM-LLC Control Message Format 1

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and**  **reference** | **Semantics**  **description** |
| CHOICE Control Type | M |  |  |  |
| >Logical Channel Handling Control |  |  | 8.3.25 | Only applicable to Control Service Style 1  Action ID 1 |
| >DL Scheduling Control |  |  | 8.3.26 | Only applicable to Control Service Style 2  Action ID 1 |

</div>

#### RIC CONTROL OUTCOME IE

This information element is part of the RIC CONTROL ACKOWLEDGEMENT and RIC CONTROL FAILURE messages and is sent by the E2 Node to the Near-RT RIC and is required for RIC Control Procedure.

Direction: E2 Node ? Near-RT RIC.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and**  **reference** | **Semantics**  **description** |
| **CHOICE** *Control Outcome*  *Format* | M |  |  |  |
| >E2SM-LLC Control Outcome  Format 1 |  |  | 8.2.1.8.1 |  |

</div>

###### E2SM-LLC Control Outcome Format 1

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics**  **description** |
| CHOICE Control Parameter  Type | M |  |  |  |
| >Logical Channel Handling |  |  | 8.3.24 | Only applicable for Control Service Style 1  Action ID 1 |
| >DL Scheduling Parameters |  |  | 8.3.27 | Only applicable for Control Service Style 2  Action ID 1 |

</div>

### Messages for RIC global procedures

##### RAN Function Definition IE

This information element is part of the E2 SETUP REQUEST, and RIC SERVICE UPDATE message sent by the E2 Node to the Near-RT RIC and is used to provide all required information for the Near-RT RIC to determine how a given E2 Node has been configured to support a given RAN Function specific E2SM.

Direction: E2 Node ? NEAR-RT RIC.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and**  **reference** | **Semantics description** |
| RAN Function Name | M |  | 8.3.2 |  |
| RAN Function Definition for EVENT  TRIGGER | O |  | 8.2.2.2 |  |
| RAN Function Definition for REPORT | O |  | 8.2.2.3 |  |
| RAN Function Definition for CONTROL | O |  | 8.2.2.4 |  |

</div>

##### RAN Function Definition for EVENT TRIGGER

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and**  **reference** | **Semantics description** |
| List of EVENT TRIGGER styles |  | *1..*  *<maxnoo fRICStyle*  *s>* |  |  |
| >RIC Event Trigger Style Type | M |  | 8.3.3 |  |
| >RIC Event Trigger Style Name | M |  | 8.3.4 |  |
| >RIC Event Trigger Format Type | M |  | 8.3.5 |  |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Range bound** | **Explanation** |
| maxnoofRICStyles | Maximum no. of styles supported by RAN Function. The value is  <*63*>. |

</div>

##### RAN Function Definition for REPORT

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and**  **reference** | **Semantics description** |
| List of REPORT styles |  | *1..*  *<maxnoof RICStyles*  *>* |  |  |
| >RIC Report Style Type | M |  | 8.3.3 |  |
| >RIC Report Style Name | M |  | 8.3.4 |  |
| >Supported RIC Event Trigger Style  Type | M |  | 8.3.3 |  |
| >RIC Report Action Format Type | M |  | 8.3.5 | Action Definition type used  by Report style |
| >RIC Indication Header Format Type | M |  | 8.3.5 | Indication Header type used  by Report style |
| >RIC Indication Message Format Type | M |  | 8.3.5 | Indication Message type  used by Report style |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Range bound** | **Explanation** |
| maxnoofRICStyles | Maximum no. of styles supported by RAN Function. The value is  <*63*>. |

</div>

##### RAN Function Definition for CONTROL

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and**  **reference** | **Semantics description** |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| List of CONTROL styles |  | *1..*  *<maxnoo fRICStyle s>* |  |  |
| >RIC Control Style Type | M |  | 8.3.3 |  |
| >RIC Control Style Name | M |  | 8.3.4 |  |
| >List of Control Actions |  | *0..*  *<maxnoo fControlA ction>* |  |  |
| >>Control Action ID | M |  | 8.3.6 |  |
| >>Control Action Name | M |  | 8.3.7 |  |
| >RIC Control Header Format Type | M |  | 8.3.5 |  |
| >RIC Control Message Format Type | M |  | 8.3.5 |  |
| >RIC Call Process ID Format Type | O |  | 8.3.5 |  |
| >RIC Control Outcome Format Type | M |  | 8.3.5 |  |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Range bound** | **Explanation** |
| maxnoofRICStyles | Maximum no. of styles supported by RAN Function. The value is  <*63*>. |
| maxnoofControlAction | Maximum no. of Control actions supported by RAN Function. The  value is <*65535*>. |

</div>

## Information Element definitions

### General

When specifying information elements which are to be represented by bit strings, if not otherwise specifically stated in the semantics description of the concerned IE or elsewhere, the following principle applies with regards to the ordering of bits:

* The first bit (leftmost bit) contains the most significant bit (MSB);
* The last bit (rightmost bit) contains the least significant bit (LSB);
* When importing bit strings from other specifications, the first bit of the bit string contains the first bit of the concerned information.

### RAN Function Name

This IE is defined in O-RAN WG3.TS.E2SM [4] clause 6.2.2.1.

### RIC Style Type

This IE is defined in O-RAN WG3.TS.E2SM [4] clause 6.2.2.2.

### RIC Style Name

This IE is defined in O-RAN WG3.TS.E2SM [4] clause 6.2.2.3.

### RIC Format Type

This IE is defined in O-RAN WG3.TS.E2SM [4] clause 6.2.2.4.

### Control Action ID

This IE uniquely identifies an action of a given RIC Control style.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics**  **description** |
| Control Action ID | M |  | INTEGER (1.. 65535, ...) |  |

</div>

### Control Action Name

This IE defines the name of a given control action.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics**  **description** |
| Control Action Name | M |  | PrintableString(SIZE(1..  150, ...)) |  |

</div>

### UE ID

This IE is defined in O-RAN WG3.TS.E2SM [4] clause 6.2.2.6.

### Event Trigger Condition ID

This IE defines an identifier for event trigger conditions configured for a specific Event Trigger style.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics**  **description** |
| Event Trigger Condition ID | M |  | INTEGER (1..65535, ...) |  |

</div>

### Event Trigger ID for UE

This IE defines an identifier for a specific UE related condition configured for event triggering.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics**  **description** |
| Event Trigger ID for UE | M |  | INTEGER (1..65535, ...) |  |

</div>

### Logical OR

This IE indicates a logical ("and" or "or") connection of the current condition to the next condition in a given sequence of conditions.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics**  **description** |
| Logical OR | M |  | ENUMERATED (true, false, | If set to "true", |
|  |  | ...) | logical connection |
|  |  |  | to the next |
|  |  |  | condition is "or". |
|  |  |  | Otherwise, "and". |

</div>

### Event Trigger UE Information

This IE defines a set of applicable UEs for event triggering.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| List of Associated UE  Information |  | *1..<maxnoofUEInf*  *o>* |  |  |
| >Event Trigger ID for UE | M |  | 8.3.10 |  |
| >**CHOICE** *UE Type* |  |  |  |  |
| ***>>Individual UE*** |  |  |  |  |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| >>>UE ID | M |  | 8.3.8 |  |
| ***>>UE Group*** |  |  |  |  |
| >>>Group of UEs | M |  | 8.3.13 |  |
| >Logical OR | O |  | 8.3.11 |  |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Range bound** | **Explanation** |
| maxnoofUEInfo | Maximum number of UE information in a given E2 node for which event trigger  can be defined. The value is *<65535>* |

</div>

### Group of UEs

This IE uniquely identifies a group of UEs. At least one parameter must be included.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics**  **description** |
| Cell Global ID | O |  | 8.3.14 |  |
| List of UE Identifiers |  | *0..<maxnoof*  *UEs>* |  |  |
| > UE ID | M |  | 8.3.8 |  |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Range bound** | **Explanation** |
| maxnoofUEs | Maximum number of UEs in a given E2 node for which event trigger can be  defined. The value is *<65535>* |

</div>

### Cell Global ID

This IE is defined in O-RAN WG3.TS.E2SM [4] clause 6.2.2.5.

### Lower Layers Information Type

This IE defines the type of lower layers information to trigger on and/or report.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| Lower Layers Information Type | M |  | ENUMERATED (SRS, CSI, ...) | SRS refers to received SRS symbols defined in 3GPP TS  38.211 [5] Clause 6.4.1.4.  "CSI" Refers to UCI defined in 3GPP TS 38.213 [6] Clause 9. |

</div>

### Lower Layers Measurement Type

This IE defines the type of lower layers measurements to trigger on and/or report.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| Lower Layers | M |  | ENUMERATED |  |
| Measurement Type |  | (DL\_RLC\_Buffer\_Status, |
|  |  | DL\_PDCP\_Buffer\_Status, |
|  |  | DL\_HARQ\_Statistics, |
|  |  | Slot\_Time\_Stamp, ...) |

</div>

### Slot Information

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and**  **reference** | **Semantics**  **description** |
| System Frame Number | M |  | INTEGER (0..1023) |  |
| **CHOICE** *Slot Index* | M |  |  |  |
| >SCS-15 |  |  |  |  |
| >>SCS-15 | M |  | INTEGER (0..9) |  |
| >SCS-30 |  |  |  |  |
| >>SCS-30 | M |  | INTEGER (0..19) |  |
| >SCS-60 |  |  |  |  |
| >>SCS-60 M | M |  | INTEGER (0..39) |  |
| >SCS-120 |  |  |  |  |
| >>SCS-120 | M |  | INTEGER (0..79) |  |

</div>

### Slot Time Stamp

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and**  **reference** | **Semantics**  **description** |
| Slot Information | M |  | 8.3.17 |  |
| Slot Start Time | M |  | OCTET STRING (SIZE(8)) | Carries UTC time encoded as the 64-bit timestamp format as defined in Clause 6 of IETF RFC 5905  [7] containing both seconds and fraction parts. Represents the start time of the  slot |

</div>

### SRS

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and**  **reference** | **Semantics**  **description** |
| List of SRS Receive Antennas |  | *1..<maxnoofReceiveA ntennas>* |  | Antennas used to receive the SRS. The  antennas shall be listed in the order as defined in O-RAN WG4.TS.CUS [8]  Clause 12.5.4. |
| >List of SRS Symbols |  | *<1, 2, 4>* |  | Symbols of the received raw SRS starting with the symbol in position l0 as defined in 3GPP TS 38.211 [5]  Clause 6.4.1.4.1. |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| >>SRS Compression Header | C-  ifStaticSR S |  | OCTET STRING (SIZE(1)) | Compression method and IQ width defined in the M-Plane when the static IQ format and compression method is configured via the M-Plane, formatted as udCompHdr in O-RAN  WG4.TS.CUS [8]  Clause 8.3.3.13. This parameter shall be included only when SRS related IQ data is transferred from the O-RU with IQ data transfer procedure without C-Plane (see O-RAN WG4.TS.CUS [8]  clause 8.3.5.4). |
| >>Raw SRS | M |  | OCTET STRING | As defined in O- RAN WG4.TS.CUS [8]  Table 8.3.2-1 starting from  Octet 13. |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Range bound** | **Explanation** |
| maxnoofReceiveAntennas | Maximum number of receive antennas supported. The value is  <65535>. |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Condition** | **Explanation** |
| ifStaticSRS | This IE shall be present if the configuration of the SRS  transfer over the FH is configured as static. Otherwise, it shall not be present. |

</div>

### CSI

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and**  **reference** | **Semantics**  **description** |
| List of CSI UE Identifiers |  | *1..<maxnoofUEID>* |  |  |
| >UE ID | M |  | 8.3.8 |  |
| >Channel carrying the UCI | M |  | ENUMERATED  (PUCCH, PUSCH) |  |
| >List of CSI Reports |  | *1..<maxnoofCSIReport*  *s>* |  |  |
| >>CSI Report Config ID | M |  | INTEGER (0..47) | *CSI-*  *ReportConfigID*  IE in 3GPP TS  38.331 [9]  Clause. The ID of this CSI  report. |
| >>CSI Fields of CSI Report Part 1 | M |  | BIT STRING | 3GPP TS 38.212  [14] Tables 6.3.1.1.2-7/8/8-  A/9. CSI fields of CSI part 1 if the CSI report is of two parts, or the CSI report if it is  not of two parts. |
| >> CSI Fields of CSI Report Part 2 | C-  ifCsiPart2 |  | BIT STRING | 3GPP TS 38.212  [14] Tables 6.3.1.1.2-10/11.  CSI fields of CSI part 2 if the CSI report is of two  parts |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Range bound** | **Explanation** |
| maxnoofUEID | Maximum number of UE Identifiers supported. The value is  <65535>. |
| maxnoofCSIReports | Maximum number of CSI reports per UE supported. The value is  <255> |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Condition** | **Explanation** |
| ifCsiPart2 | This IE shall be present if the CSI report received from the UE  includes part 2. Otherwise, it shall not be present. |

</div>

### DL RLC Buffer Status

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and**  **reference** | **Semantics**  **description** |
| List of DL RLC UE Identifiers |  | *1..<maxnoofUEID>* |  |  |
| >UE ID | M |  | 8.3.8 |  |
| >List of DL RLC UE Bearers |  | *1..<maxnoofUEBearer*  *s>* |  |  |
| >>LCID | M |  | INTEGER (1..32, ...) | *logicalChannelId entity* IE in 3GPP TS 38.331 [9]  Sec 6. Logical  Channel ID |
| >>DL RLC Buffer Occupancy | M |  | INTEGER | Buffer Occupancy (BO) in number of bytes as defined in 3GPP TS  25.321 [10]  clause 8.2.2(c). |
| >>DL RLC HOL Time To Live | M |  | INTEGER (0..1023, ...) | Time in units of 0.5ms. The time available for the PDU at the head of the line in the RLC buffer to be transmitted without violating the PDB associated with  this LCID. |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Range bound** | **Explanation** |
| maxnoofUEID | Maximum number of UE Identifiers supported. The value is  <65535>. |
| maxnoofUEBearers | Maximum number of reported bearers per UE supported. The value  is <255> |

</div>

### DL PDCP Buffer Status

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and**  **reference** | **Semantics**  **description** |
| List of DL PDCP UE Identifiers |  | *1..<maxnoofUEID>* |  |  |
| >UE ID | M |  | 8.3.8 |  |
| >List of DL PDCP UE Bearers |  | *1..<maxnoofUEBearer*  *s>* |  |  |
| >>DRB ID | M |  | INTEGER (1..32, ...) | DRB ID IE in 3GPP TS 37.483  [11] clause  9.3.1.16 |
| >>DL PDCP Buffer Occupancy | M |  | INTEGER | PDCP data volume in number of bytes as defined in 3GPP TS 38.323  [12] clause 5.6. |
| >>DL PDCP HOL Time To Live | M |  | INTEGER (0..1023, ...) | Time in units of 0.5ms. The time available for the PDU at the head of the line in the PDCP buffer to be transmitted without violating the PDB associated with  this DRB ID. |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Range bound** | **Explanation** |
| *maxnoofUEID* | Maximum number of UE Identifiers supported. The value is  <65535>. |
| *maxnoofUEBearers* | Maximum number of reported bearers per UE supported. The value  is <255> |

</div>

### DL HARQ Statistics

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and**  **reference** | **Semantics**  **description** |
| List of DL HARQ UE Identifiers |  | *1..<maxnoofUEID>* |  |  |
| >HARQ UE ID | M |  | 8.3.8 |  |
| >List of DL HARQ Codewords |  | <1, 2> |  |  |
| >>DL SU ACK Count | M |  | INTEGER | Number of ACKs counted for non- MU-MIMO DL  transmissions since the last report |
| >>DL SU NACK Count | M |  | INTEGER | Number of NACKs counted for non-MU- MIMO DL  transmissions since the last report |
| >>DL SU DTX Count | M |  | INTEGER | Number of DTXs counted for non- MU-MIMO DL  transmissions since the last  report |
| >>DL MU ACK Count | M |  | INTEGER | Number of ACKs counted for MU- MIMO DL  transmissions  since the last report |
| >>DL MU NACK Count | M |  | INTEGER | Number of NACKs counted for MU-MIMO DL  transmissions  since the last report |
| >>DL MU DTX Count | M |  | INTEGER | Number of DTXs counted for MU- MIMO DL  transmissions  since the last report |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Range bound** | **Explanation** |
| *maxnoofUEID* | Maximum number of UE Identifiers supported. The value is  <65535>. |

</div>

### Received Timestamp

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and**  **reference** | **Semantics**  **description** |
| Received Timestamp | M |  | OCTET STRING (SIZE(8)) | Time RIC Control Request message received by RAN Function over E2 interface.  Carries UTC time encoded as the 64-bit timestamp format as defined in Clause 6 of IETF RFC 5905  [7] containing both seconds and fraction  parts. |

</div>

### Logical Channel Handling Control

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and**  **reference** | **Semantics**  **description** |
| List of Logical Channel UE  Identifiers |  | *1..<maxnoofUEID>* |  |  |
| >UE ID | M |  | 8.3.8 |  |
| >List of logical channels controlled by Near-RT RIC to add |  | *0..<maxnoofLogicalCh annels>* |  | The list of bearers for which the O-DU is requested to delegate scheduling decisions to the Near-RT RIC (in addition to the ones already  delegated) |
| >>Logical Channel ID | M |  | INTEGER (1..32) | *LogicalChannelId entity* IE in 3GPP TS 38.331 [9]  clause 6 |
| >>Starting Slot number | M |  | 8.3.17 | The slot number from which the control of scheduling the logical channel  starts |
| >List of logical channels to release |  | *0..<maxnoofLogicalCh annels>* |  | The list of bearers the  Near-RT RIC will no longer  schedule |
| >>Logical Channel ID | M |  | INTEGER (1..32) | *LogicalChannelId entity* IE in 3GPP TS 38.331 [9]  clause 6 |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| >>Starting Slot number | M |  | 8.3.17 | The slot number from which the control of scheduling the logical channel is being released  back to the O-DU |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Range bound** | **Explanation** |
| maxnoofUEID | Maximum number of UE Identifiers supported by E2SM-LLC Indication Message Format 1 IE to be reported. The value is  <65535>. |
| maxnoofLogicalChannels | Maximum no. of logical channels. The value is <*63*>. |

</div>

### DL Scheduling Control

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| List of DL Slots to be scheduled |  | *1..<maxnoofScheduled*  *DLSlots>* |  |  |
| >Slot Information | M |  | 8.3.17 |  |
| >List of DL Grants |  | *1..<maxnoofDLGrants*  *>* |  |  |
| >>Grant ID | M |  | INTEGER (1..63, ...) | This is the ID used by the RIC for the grant it seeks to add to  the PDCCH |
| >>BWP ID | O |  | INTEGER (0..4, ...) | *BWP-Id* IE in 3GPP TS 38.331  [9]. Identifies the BWP in which to include the grant. Value of 0 or field not included, indicate the DL Initial  BWP |
| >>UE ID | M |  | 8.3.8 |  |
| >>List of Logical Channels |  | *1..<maxnoofLogicalCh annels>* |  |  |
| >>>Logical Channel ID | M |  | INTEGER (1..32, ...) | *LogicalChannelId entity* IE in 3GPP TS 38.331 [9]  clause 6 |
| >>>TB1 Number of Bytes | M |  | INTEGER | The number of bytes of the logical channel to  be included in TB1 of the grant |
| >>>TB2 Number of Bytes | O |  | INTEGER | The number of bytes of the logical channel to be included in  TB2 of the grant |
| >>**CHOICE** Downlink Control Information Type | M |  |  |  |
| **>>>DCI 1\_0** |  |  |  |  |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| 4>Use CS-RNTI | O |  |  | Indicates the use of CS-RNTI in the DCI to activate/deactivat e SPS. CS-RNTI  not used when not included. |
| 5>SPS Config Index | C-  ifSPSList |  | INTEGER (0..7, ...) | *sps-ConfigIndex*  IE in 3GPP TS  38.331 [9].  Indicates the index of one of multiple SPS configurations when there are multiple SPS configurations in the *SPS-Config* IE (3GPP TS  38.331 [9]) of the  UE. |
| 5>Activation | M |  | ENUMERATED  (Activate, Deactivate) | Indicates whether to activate or deactivate the  SPS |
| 4>Freq Domain Resources | M |  | INTEGER | Representing DL frequency resource allocation type 1 as defined in Clause 5.1.2.2.2  of 3GPP TS  38.214 [13] |
| 4>Time Domain Resources | M |  | INTEGER (0..15, ...) | 4 bits of representing resource allocation in time domain as defined in Clause  5.1.2.1 of 3GPP  TS 38.214 [13] |
| 4>VRB to PRB Mapping | O |  | ENUMERATED  (Interleaved, ...) | Not interleaved if not included |
| 4>MCS | M |  | INTEGER (0..31, ...) | 5 bits representing the MCS as defined in Clause 5.1.3.1  of 3GPP TS  38.214 [13] |
| 4>Redundancy Version | M |  | INTEGER (0..3, ...) | 2 bits as defined in Table 7.3.1.1.1-2 of  3GPP TS 38.212  [14] |
| **>>>DCI 1\_1** |  |  |  |  |
| 4>Use CS-RNTI | O |  |  | Indicates the use of CS-RNTI in the DCI to activate SPS. CS-RNTI not  used when not included. |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| 5>SPS Config Index | C-  ifSPSList |  | INTEGER (0..7, ...) | *sps-ConfigIndex*  IE in 3GPP TS  38.331 [9].  Indicates the index of one of multiple SPS configurations when there are multiple SPS configurations in the *SPS-Config* IE (3GPP TS  38.331 [9]) of the UE. |
| 4>Carrier Indicator | O |  | INTEGER (1..7, ...) | As defined in Clause 10.1 of  3GPP TS 38.213  [6]. If not included, indicates the UE  serving cell. |
| 4>Freq Domain Resources | M |  | BIT STRING | Representing DL frequency resource allocation type 0 or 1 as defined in Clause 7.3.1.2.2 of 3GPP TS  38.212 [14] and  Clause 5.1.2.2 of  TS 38.214 [13] |
| 4>Time Domain Resources | M |  | INTEGER (0..15, ...) | 4 bits representing resource allocation in time domain as defined in Clause  5.1.2.1 of 3GPP  TS 38.214 [13] |
| 4>VRB to PRB Mapping | O |  | ENUMERATED  (Interleaved, ...) | Not interleaved if not included |
| 4>PRB Bundling Size Indicator | O |  | INTEGER(0..1, ...) | Only applicable when *prb- BundlingType* (3GPP TS  38.331 [9]) is set to 'dynamicBundlin g'. Indicates which of the two bundle size sets configured by *dynamicBundling* IE to use as specified in Clause 5.1.2.3 of  3GPP TS 38.214  [13]. |
| 4>TB1 MCS | M |  | INTEGER (0..31, ...) | 5 bits representing the MCS as defined in Clause 5.1.3.1 of 3GPP TS  38.214 [13] |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| 4>TB1 Redundancy Version | M |  | INTEGER (0..3, ...) | 2 bits as defined in Table 7.3.1.1.1-2 of  3GPP TS 38.212  [14] |
| 4>TB2 MCS | O |  | INTEGER (0..31, ...) | 5 bits representing the MCS as defined in Clause 5.1.3.1 of 3GPP TS  38.214 [13] |
| 4>TB2 Redundancy Version | O |  | INTEGER (0..3, ...) | 2 bits as defined in Table 7.3.1.1.1-2 of  3GPP TS 38.212  [14] |
| 4>Antenna ports | M |  | BIT STRING (SIZE(4..6)) | As defined in Clause 7.3.1.2.2 of 3GPP TS  38.212 [14] |
| 4>Transmission Configuration Indication | O |  | INTEGER (0..7) | As defined in Clause  7.43.1.2.2 of TS  38.212 [14] |
| 4>SRS Request | O |  | BIT STRING (SIZE(2..3)) | If included, identifies the SRS resource set(s) to trigger as defined in Clause 7.3.1.2.2 of 3GPP TS  38.212 [14]. No  aperiodic SRS triggering if not included (or set  to 0). |
| 4>DMRS Sequence Initialization | M |  | INTEGER(0..1) | Selects between two ways of initializing the DMRS sequence as defined in clause 7.4.1.1.1  of 3GPP TS  38.211 [5]. |
| **>>>Semi Persistence** |  |  | NULL | Indicates SPS resources being  allocated without DCI |
| >List of PDSCH SMGs |  | *1..<maxnoofPdschSM Gs>* |  |  |
| >>Precoder ID | M |  | INTEGER (0..63, ...) | An index to the position in the Sequence of PDSCH  Precoders |
| >>SMG Priority | O |  | INTEGER (0..31, ...) | Indicates priority of avoiding overwrites, where 0 represents highest priority and 31 represents  lowest priority. |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| >>Start RB | M |  | INTEGER | Identifies the lowest virtual RB  of the SMG |
| >>Number of RBs | M |  | INTEGER | Indicates the number of contiguous virtual RBs, starting from the Start RB, that construct the  SMG |
| >>Start Symbol | M |  | INTEGER | Identifies the  lowest symbol of the SMG |
| >>Number of Symbols | M |  | INTEGER | Indicates the number of contiguous symbols that construct the  SMG |
| >List of CSI-RS Precoding Bands |  | *0..<maxnoofCsiRsPrec odingBands>* |  |  |
| >>Precoder ID | M |  | INTEGER (0..63, ...) | An index to the position in the Sequence of  Precoders |
| >>UE ID | M |  | 8.3.8 |  |
| >>NZP CSI-RS Resource ID | M |  | INTEGER (0..191, ...) | *NZP-CSI-RS-*  *ResourceId* IE in  3GPP TS 38.331  [9]. Identifies the NZP CSI-RS  resource |
| >>Start RB | M |  | INTEGER | Identifies the lowest RB of the CSI-RS  precoding band |
| >>Number of RBs | M |  | INTEGER | Indicates the number of contiguous RBs, starting from the Start RB, that construct the CSI-RS  precoding band |
| >List of Precoders |  | *1..<maxnoofPrecoders*  *>* |  |  |
| >> Compression Information | O |  |  |  |
| >>> Precoder Compression Header | M |  | OCTET STRING | As defined in Clause 7.7.1.2 of O-RAN  WG4.TS.CUS [8] |
| >>> Precoder Compression Parameters | M |  | OCTET STRING | As defined in Clause 7.7.1.3 of O-RAN  WG4.TS.CUS [8] |
| >>List of Precoder Coefficients | M | *1..<maxnoofPrecoder Coefficients>* |  | The mapping of the coefficients to layers and antenna elements is as defined in Clause  12.5.3 of O-RAN  WG4.TS.CUS [8] |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| >>> Precoder Coefficient I | M |  | INTEGER | The precoder coefficient I value. As defined in Clause 7.7.1.4 of O-RAN WG4.TS.CUS  [8]. |
| >>> Precoder Coefficient Q | M |  | INTEGER | The precoder coefficient Q value. As defined in Clause 7.7.1.5 of O-RAN WG4.TS.CUS  [8]. |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Condition** | **Explanation** |
| ifSPSList | This IE shall be present if there are multiple SPS configurations in the *SPS-Config* IE (3GPP TS 38.331 [9]) of  the UE. |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Range bound** | **Explanation** |
| maxnoofScheduledDLSlots | Maximum no. of slots to be scheduled. The value is <*63*>. |
| maxnoofDLGrants | Maximum no. of grants per slots. The value is <*63*>. |
| maxnoofLogicalChannels | Maximum no. of logical channels. The value is <*63*>. |
| maxnoofPdschSMGs | Maximum no. of spatial multiplexing groups. The value is <*63*>. |
| maxnoofCsiRsPrecodingBands | Maximum no. of CSI-RS precoding bands. The value is <*63*>. |
| maxnoofPrecoders | Maximum no. of precoders. The value is <255>. |
| maxnoofPrecoderCoefficients | Maximum no. of precoder coefficients. The value is <*65535*>. |

</div>

### DL Scheduling Control Outcome

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| Received Timestamp | M |  | 8.3.24 |  |
| Processing Time Margin | M |  | INTEGER (-32,767..  32,767) | Time margin after processing the information for the first slot included in the Control Message. A negative value indicates by how much time the Control Message was too late to arrive at the E2 Node.  Carries signed 16-bit fraction of a second  resolving ~30 microseconds. |
| List of Slots |  | *1..<maxnoofScheduled DLSlots>* |  |  |
| >Slot Information | M |  | 8.3.17 |  |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| >List of DL Grants |  | *1..<maxnoofDLGrants*  *>* |  | The full list of grants included in the Control  Message |
| >>Grant ID | M |  |  | ID of the grant  included in the Control Message |
| >>CHOICE Execution Level | M |  |  |  |
| >>>Fully Executed | O |  | NULL |  |
| >>>Not Fully Executed | O |  |  |  |
| 4>List of Scheduled Logical Channels |  | *1..<maxnoofLogicalCh annels>* |  | Shall include the list of all logical channels included in the Control Message  for the same Grant ID. |
| 5>Logical Channel ID | M |  | INTEGER (1..32, ...) | *logicalChannelId entity* IE in 3GPP TS 38.331 [9]  Sec 6 |
| 5>Number of Bytes Scheduled | M |  | INTEGER | Indicates the number of bytes actually scheduled from  the logical channel |
| 5>Cause | M |  | INTEGER | Identifies the cause of not sending the number of bytes requested in the Control Message.  0= Other  1= Information arrived too late 2= LCID  overwritten by other transmissions. 3= Reached maximum number of DCIs for the slot.  4= UE not available.  5= Resources used for retransmission/s 6= Insufficient RLC queue  depth |
| >List of Additional DL Allocations |  | *0..<maxnoofDLGrants*  *>* |  | Shall include the list of all DL PDSCH  allocations not included in the Control Message and used slot  resources. |
| >>UE ID | O |  | 8.3.8 | Shal be included if granted to a  specific UE |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| >>Logical Channel ID | O |  | INTEGER (1..32, ...) | *logicalChannelId entity* IE in 3GPP TS 38.331 [9]  Sec 6. Shall be included if it exists for the  logical channel. |
| >>Number of Bytes Scheduled | M |  | INTEGER | Indicates the number of bytes scheduled |
| >>Start Symbol | O |  | INTEGER | Should be included when Logical Channel  ID doesn't apply to this allocation |
| >>Number of Symbols | O |  | INTEGER | Should be included when Logical Channel ID doesn't apply  to this allocation |
| >>Start RB | O |  | INTEGER | Should be included when Logical Channel ID doesn't apply  to this allocation |
| >>Number of RBs | O |  | INTEGER | Should be included when Logical Channel ID doesn't apply  to this allocation |
| >List of CSI-RS Precoding Bands Not Executed |  | *0..<MaxnoofCsiRsPrec odingBands>* |  | Shall include the list of all CSI-RS precoding bands included in the Control Message that were not  executed |
| >>CSI-RS Precoding Band ID | M |  | INTEGER  (0..maxnoofCsiRsPr ecodingBands) | Identifies the position of the CSI-RS  Precoding Band Item in the List of CSI-RS  Precoding Bands. The value "0" represents the first CSI-RS Precoding Band Item, "1" the  second, etc. |
| >>Cause | M |  | INTEGER | 0= Other  1= Information arrived too late 2= Unrecognized UE ID  3= Unrecognized NZP CSI-RS  Resource ID 4= invalid RB range  5= Invalid number of Coef.  6= Coef gain is too high |

</div>

## Information Element abstract syntax (with ASN.1)

### General

E2SM-LLC ASN.1 definition conforms to ITU-T Recommendation X.680 [15], ITU-T Recommendation X.681 [16].

Clause 8.4.2 presents the Abstract Syntax of the E2SM information elements to be carried within the O-RAN WG3.TS.E2AP

[3] protocol messages with ASN.1. In case there is contradiction between the ASN.1 definition in this clause and the tabular format in clauses 8.2 and 8.3, the ASN.1 shall take precedence, except for the definition of conditions for the presence of conditional elements, in which the tabular format shall take precedence.

If an E2SM information element carried as an OCTET STRING in an O-RAN WG3.TS.E2AP [3] message that is not constructed as defined above is received, this shall be considered as Abstract Syntax Error, and the message shall be handled as defined for Abstract Syntax Error in clause 8.

### Information Element Definitions

-- ASN1START

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

-- E2SM-LLC Information Element Definitions

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

E2SM-LLC-IEs {

iso(1) identified-organization(3) dod(6) internet(1) private(4) enterprise(1) 53148 e2(1) version1(1) e2sm(2) e2sm-LLC-IEs (5)}

DEFINITIONS AUTOMATIC TAGS ::= BEGIN

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

-- E2SM Common IEs

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

IMPORTS

RANfunction-Name, RIC-Style-Name, RIC-Style-Type, RIC-Format-Type, CGI,

UEID

FROM E2SM-COMMON-IEs;

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

-- CONSTANTS

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| maxnoofLLIs | INTEGER | ::= | 63 |
| maxnoofMeasurementsToReport | INTEGER | ::= | 65535 |
| maxnoofMeasurements | INTEGER | ::= | 63 |
| maxnoofRICStyles | INTEGER | ::= | 63 |
| maxnoofControlAction | INTEGER | ::= | 65535 |
| maxnoofUEInfo | INTEGER | ::= | 65535 |
| maxnoofUEs | INTEGER | ::= | 65535 |
| maxnoofReceiveAntennas | INTEGER | ::= | 65535 |
| maxnoofUEID | INTEGER | ::= | 65535 |
| maxnoofCSIReports | INTEGER | ::= | 255 |
| maxnoofUEBearers | INTEGER | ::= | 255 |
| maxnoofLogicalChannels | INTEGER | ::= | 63 |
| maxnoofScheduledDLSlots | INTEGER | ::= | 63 |
| maxnoofDLGrants | INTEGER | ::= | 63 |
| maxnoofPdschSMGs | INTEGER | ::= | 63 |
| maxnoofCsiRsPrecodingBands | INTEGER | ::= | 63 |
| maxnoofPrecoders | INTEGER | ::= | 255 |
| maxnoofPrecoderCoefficients | INTEGER | ::= | 65535 |

</div>

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

-- IEs

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\* LogicalOR ::= ENUMERATED {true, false, ...}

LowerLayers-Info-Type ::= ENUMERATED {srs, csi,...}

LowerLayers-Meas-Type ::= ENUMERATED { dl-rlc-buffer-status, dl-pdcp-buffer-status, dl-harq-statistics, slot-time-stamp, ...}

LogicalChannelID ::= INTEGER (1..32, ...) SpsConfigIndex ::= INTEGER (0..7, ...) ReceivedTimestamp ::= OCTET STRING (SIZE(8))

-- Event Trigger related IEs

EventTrigger-UE-Info ::= SEQUENCE {

ueInfo-List SEQUENCE (SIZE(1..maxnoofUEInfo)) OF EventTrigger-UE-Info-Item,

...

}

EventTrigger-UE-Info-Item ::= SEQUENCE {

eventTriggerUEID RIC-EventTrigger-UE-ID,

ueType CHOICE {

ueType-Choice-Individual EventTrigger-UE-Info-Item-Choice-Individual, ueType-Choice-Group EventTrigger-UE-Info-Item-Choice-Group,

...

},

logicalOR LogicalOR OPTIONAL,

...

}

EventTrigger-UE-Info-Item-Choice-Individual ::= SEQUENCE { ueID UEID,

...

}

EventTrigger-UE-Info-Item-Choice-Group ::= SEQUENCE { groupOfUEs GroupOfUEs,

...

}

GroupOfUEs ::= SEQUENCE {

cellGlobalID CGI OPTIONAL,

ueIdentifier-List SEQUENCE (SIZE(0..maxnoofUEs)) OF UeIdentifier-Item,

...

}

UeIdentifier-Item ::= SEQUENCE {

ueID UEID,

...

}

-- RIC Service related IEs

RIC-ControlAction-ID ::= INTEGER (1..65535, ...)

RIC-ControlAction-Name ::= PrintableString (SIZE(1..150, ...)) RIC-EventTriggerCondition-ID ::= INTEGER (1..65535, ...)

RIC-EventTrigger-UE-ID ::= INTEGER (1..65535, ...)

SlotTimeStamp ::= SEQUENCE {

slotInfo SlotInfo,

slotStartTime OCTET STRING (SIZE(8)),

...

}

SlotInfo ::= SEQUENCE {

systemFramNumber INTEGER (0..1023, ...),

slotIndex CHOICE {

scs-15 INTEGER (0..9),

scs-30 INTEGER (0..19),

scs-60 INTEGER (0..39),

scs-120 INTEGER (0..79),

...

},

...

}

SRS ::= SEQUENCE {

srsReceiveAntenna-List SEQUENCE (SIZE(1..maxnoofReceiveAntennas)) OF SrsReceiveAntenna- Item,

...

}

SrsReceiveAntenna-Item ::= SEQUENCE {

<div class="table-wrapper" markdown="block">

srsSymbol-List SEQUENCE (SIZE(1|2|4,...)) OF SrsSymbol-Item,

</div>

...

}

SrsSymbol-Item ::= SEQUENCE {

srsCompressionHeader OCTET STRING (SIZE(1)),

rawSRS OCTET STRING,

...

}

CSI ::= SEQUENCE {

csiUeIdentifier-List SEQUENCE (SIZE(1.. maxnoofUEID)) OF CsiUeIdentifier-Item,

...

}

CsiUeIdentifier-Item ::= SEQUENCE {

ueID UEID,

channelCarryingUCI ENUMERATED {pucch, pusch, ...},

csiReport-List SEQUENCE (SIZE(1.. maxnoofCSIReports)) OF CsiReport-Item,

...

}

CsiReport-Item ::= SEQUENCE {

csiReportConfigID INTEGER,

csiFieldsCsiReport-Part1 BIT STRING,

csiFieldsCsiReport-Part2 BIT STRING OPTIONAL,

...

}

DlRlcBufferStatus ::= SEQUENCE {

dlRlcUeIdentifiers-List SEQUENCE (SIZE(1.. maxnoofUEID)) OF DlRlcUeIdentifiers-Item,

...

}

DlRlcUeIdentifiers-Item ::= SEQUENCE {

ueID UEID,

dlRlcUeBearers-List SEQUENCE (SIZE(1.. maxnoofUEBearers)) OF DlRlcUeBearers-Item,

...

}

DlRlcUeBearers-Item ::= SEQUENCE {

lcID INTEGER (1..32, ...),

dlRlcBufferOccupancy INTEGER,

dlRlcHolTimeToLive INTEGER (0..1032, ...),

...

}

DlPdcpBufferStatus ::= SEQUENCE {

dlPdcpUeIdentifiers-List SEQUENCE (SIZE(1.. maxnoofUEID)) OF DlPdcpUeIdentifiers-Item,

...

}

DlPdcpUeIdentifiers-Item ::= SEQUENCE {

ueID UEID,

dlPdcpUeBearers-List SEQUENCE (SIZE(1.. maxnoofUEBearers)) OF DlPdcpUeBearers-Item,

...

}

DlPdcpUeBearers-Item ::= SEQUENCE {

drbID INTEGER (1..32, ...),

dlPdcpBufferOccupancy INTEGER,

dlPdcpHolTimeToLive INTEGER (0..1032, ...),

...

}

DlHarqStatistics ::= SEQUENCE {

dlHarqUeIdentifier-List SEQUENCE (SIZE(1.. maxnoofUEID)) OF DlHarqUeIdentifier-Item,

...

}

DlHarqUeIdentifier-Item ::= SEQUENCE { harqUeID UEID,

<div class="table-wrapper" markdown="block">

dlHarqCodeword-List SEQUENCE (SIZE(1|2,...)) OF DlHarqCodeword-Item,

</div>

...

}

DlHarqCodeword-Item ::= SEQUENCE {

dlSu-ACK-Count INTEGER,

dlSu-NACK-Count INTEGER,

dlSu-DTX-Count INTEGER,

dlMu-ACK-Count INTEGER,

dlMu-NACK-Count INTEGER,

dlMu-DTX-Count INTEGER,

...

}

LogicalChannelHandlingControl ::= SEQUENCE {

logicalChannelUEID-List SEQUENCE (SIZE(1.. maxnoofUEID)) OF LogicalChannelUEID-Item,

...

}

LogicalChannelUEID-Item ::= SEQUENCE {

ueID UEID,

logicalChanContByNearRTRicToAdd-List SEQUENCE (SIZE(1.. maxnoofLogicalChannels)) OF LogicalChanContByNearRTRicToAdd-Item,

logicalChanContByNearRTRicToRel-List SEQUENCE (SIZE(1.. maxnoofLogicalChannels)) OF LogicalChanContByNearRTRicToRel-Item,

...

}

LogicalChanContByNearRTRicToAdd-Item ::= SEQUENCE { logicalChannelID LogicalChannelID,

startingSlotNumber SlotInfo,

...

}

LogicalChanContByNearRTRicToRel-Item ::= SEQUENCE { logicalChannelID LogicalChannelID,

startingSlotNumber SlotInfo,

...

}

DlSchedulingControl ::= SEQUENCE {

dlSlotToBeScheduled-List SEQUENCE (SIZE(1.. maxnoofScheduledDLSlots)) OF DlSlotToBeScheduled-Item,

...

}

DlSlotToBeScheduled-Item ::= SEQUENCE { slotInfo SlotInfo,

dlGrant-List SEQUENCE (SIZE(1.. maxnoofDLGrants)) OF DlGrant-Item,

pdschSMG-List SEQUENCE (SIZE(1.. maxnoofPdschSMGs)) OF PdschSMG-Item, csiRsPrecodingBand-List SEQUENCE (SIZE(0.. maxnoofCsiRsPrecodingBands)) OF

CsiRsPrecodingBand-Item,

precoder-List SEQUENCE (SIZE(1.. maxnoofPrecoders)) OF Precoder-Item,

...

}

DlGrant-Item ::= SEQUENCE {

grantID INTEGER (1..63, ...),

bwpID INTEGER (0..4, ...) OPTIONAL,

ueID UEID,

logicalChannel-List SEQUENCE (SIZE(1.. maxnoofLogicalChannels)) OF LogicalChannel- Item,

dlControlInfoType CHOICE { dci-10 Dci-10,

dci-11 Dci-11,

semiPersistence NULL,

...

},

...

}

LogicalChannel-Item ::= SEQUENCE {

logicalChannelID LogicalChannelID,

noofBytes-TB1 INTEGER,

noofBytes-TB2 INTEGER OPTIONAL,

...

}

Dci-10 ::= SEQUENCE {

useCsiRnti SEQUENCE {

spsConfigIndex SpsConfigIndex OPTIONAL,

-- C-ifSPSList: This IE shall be present if there are multiple SPS configurations in the SPS-Config IE (3GPP TS 38.331) of the UE. It shall not be present otherwise.

activation ENUMERATED {activate, deactivate},

...

} OPTIONAL,

freqDomainResources INTEGER,

timeDomainResources INTEGER (0..15, ...),

vrbToPrbMapping ENUMERATED {interleaved, ...} OPTIONAL,

mcs INTEGER (0..31, ...),

redundancyVersion INTEGER (0..3, ...),

...

}

Dci-11 ::= SEQUENCE {

useCsiRnti SEQUENCE {

spsConfigIndex SpsConfigIndex OPTIONAL,

-- C-ifSPSList: This IE shall be present if there are multiple SPS configurations in the SPS-Config IE (3GPP TS 38.331) of the UE. It shall not be present otherwise.

...

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
|  | }  carrierIndicator | INTEGER (1..7, ...) | | OPTIONAL,  OPTIONAL, |
| freqDomainResources timeDomainResources vrbToPrbMapping prbBundlingSizeIndicagor mcs-TB1 redundancyVersion-TB1  mcs-TB2 | BIT STRING,  INTEGER (0..15, ...),  ENUMERATED {interleaved, ...} INTEGER (0..1, ...),  INTEGER (0..31, ...),  INTEGER (0..3, ...),  INTEGER (0..31, ...) | | OPTIONAL,  OPTIONAL, |
| redundancyVersion-TB2 antennaPorts  transmissionConfigIndication | INTEGER (0..3, ...)  BIT STRING (SIZE(4..6)),  INTEGER (0..7, ...) | | OPTIONAL,  OPTIONAL, |
| } | srsRequest dmrsSequenceInit  ... | BIT STRING (SIZE(2..3)) INTEGER (0..1), | | OPTIONAL, |
| PdschSMG-Item ::= SEQUENCE { | | | | |
| precoderID | | INTEGER | (0..63, ...), |  |
| smgProirity | | INTEGER | (0..31, ...) | OPTIONAL, |
| startRB | | INTEGER, |  |  |
| noofRBs | | INTEGER, |  |  |
| startSymbol | | INTEGER, |  |  |
| noofSymbols | | INTEGER, |  |  |
| ... | |  |  |  |
| } |  |  |  |  |

</div>

CsiRsPrecodingBand-Item ::= SEQUENCE {

precoderID INTEGER (0..63, ...),

ueid UEID,

nzpCsiRsResourceID INTEGER (0..191, ...),

startRB INTEGER,

noofRBs INTEGER,

...

}

Precoder-Item ::= SEQUENCE { compressionInformation SEQUENCE {

precoderCompressionHeader OCTET STRING,

precoderCompressionParam OCTET STRING,

...

} OPTIONAL,

precoderCoeff-List SEQUENCE (SIZE(1.. maxnoofPrecoderCoefficients)) OF PrecoderCoeff- Item,

...

}

PrecoderCoeff-Item ::= SEQUENCE {

precoderCoeff-I INTEGER,

precoderCoeff-Q INTEGER,

...

}

DlSchedulingControlOutcome ::= SEQUENCE { receivedTimstamp ReceivedTimestamp,

processingTimeMargin INTEGER (-32767..32767),

scheduledSlotOutcome-List SEQUENCE (SIZE(1.. maxnoofScheduledDLSlots)) OF DlScheduledSlotOutcome-Item,

...

}

DlScheduledSlotOutcome-Item ::= SEQUENCE { slotInfo SlotInfo,

dlGrantOutome-List SEQUENCE (SIZE(1.. maxnoofDLGrants)) OF DlGrantOutcome-Item, additionalDlAllocation-List SEQUENCE (SIZE(0.. maxnoofDLGrants)) OF AdditionalDlAllocation-

Item,

csiRsPrecodingBandsNotExecuted-List SEQUENCE (SIZE(0.. maxnoofCsiRsPrecodingBands)) OF CsiRsPrecodingBandsNotExecuted-Item,

...

}

DlGrantOutcome-Item ::= SEQUENCE {

grantID INTEGER (1..63, ...),

executionLevel CHOICE {

fullyExecuted NULL,

notFullyExecuted SEQUENCE {

scheduledLogicalChannelOutcome-List SEQUENCE (SIZE(1.. maxnoofLogicalChannels)) OF ScheduledLogicalChannelOutcome-Item,

...

},

...

}

}

ScheduledLogicalChannelOutcome-Item ::= SEQUENCE { logicalChannelID LogicalChannelID,

noofBytesScheduled INTEGER,

cause INTEGER,

...

}

AdditionalDlAllocation-Item ::= SEQUENCE {

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| ueid | UEID | OPTIONAL, |
| logicalChannelID | LogicalChannelID | OPTIONAL, |
| noofBytesScheduled | INTEGER, |  |
| startSymbol | INTEGER | OPTIONAL, |
| noofSymbols | INTEGER | OPTIONAL, |
| startRB | INTEGER | OPTIONAL, |
| noofRBs | INTEGER | OPTIONAL, |
| ... |  |  |

</div>

}

CsiRsPrecodingBandsNotExecuted-Item ::= SEQUENCE { csiRsPrecodingBandID INTEGER (0..63, ...),

cause INTEGER,

...

}

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

-- E2SM-LLC Service Model IEs

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

-- Event Trigger OCTET STRING contents

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

E2SM-LLC-EventTrigger ::= SEQUENCE {

ric-eventTrigger-formats CHOICE {

eventTrigger-Format1 E2SM-LLC-EventTrigger-Format1,

eventTrigger-Format2 E2SM-LLC-EventTrigger-Format2,

...

},

...

}

E2SM-LLC-EventTrigger-Format1 ::= SEQUENCE {

message-List SEQUENCE (SIZE(1..maxnoofLLIs)) OF E2SM-LLC-EventTrigger-Format1- Item,

globalAssociatedUEInfo EventTrigger-UE-Info OPTIONAL,

...

}

E2SM-LLC-EventTrigger-Format1-Item ::= SEQUENCE {

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| ric-eventTriggerCondition-ID  lowerLayersInfoType | RIC-EventTriggerCondition-ID,  LowerLayers-Info-Type, |  |
| associatedUEInfo | EventTrigger-UE-Info | OPTIONAL, |
| logicalOR | LogicalOR | OPTIONAL, |
| ... |  |  |
| } |  |  |

</div>

E2SM-LLC-EventTrigger-Format2 ::= SEQUENCE {

reportingPeriod INTEGER (1.. 65535),

associatedUEInfo EventTrigger-UE-Info OPTIONAL,

...

}

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

-- Action Definition OCTET STRING contents

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

E2SM-LLC-ActionDefinition ::= SEQUENCE {

ric-Style-Type RIC-Style-Type, ric-actionDefinition-formats CHOICE {

actionDefinition-Format1 E2SM-LLC-ActionDefinition-Format1, actionDefinition-Format2 E2SM-LLC-ActionDefinition-Format2,

...

},

...

}

E2SM-LLC-ActionDefinition-Format1 ::= SEQUENCE { lowerLayersInfoType LowerLayers-Info-Type,

...

}

E2SM-LLC-ActionDefinition-Format2 ::= SEQUENCE {

measurementToReport-List SEQUENCE (SIZE(1.. maxnoofMeasurementsToReport)) OF MeasurementToReport-Item,

...

}

MeasurementToReport-Item ::= SEQUENCE {

lowerLayers-Meas-Type LowerLayers-Meas-Type,

...

}

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

-- Indication Header OCTET STRING contents

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\* E2SM-LLC-IndicationHeader ::= SEQUENCE {

ric-indicationHeader-formats CHOICE {

indicationHeader-Format1 E2SM-LLC-IndicationHeader-Format1,

...

},

...

}

E2SM-LLC-IndicationHeader-Format1 ::= SEQUENCE {

ric-eventTriggerCondition-ID RIC-EventTriggerCondition-ID OPTIONAL,

...

}

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

-- Indication Message OCTET STRING contents

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

E2SM-LLC-IndicationMessage ::= SEQUENCE {

ric-indicationMessage-formats CHOICE {

indicationMessage-Format1 E2SM-LLC-IndicationMessage-Format1, indicationMessage-Format2 E2SM-LLC-IndicationMessage-Format2,

...

},

...

}

E2SM-LLC-IndicationMessage-Format1 ::= SEQUENCE { slotTimeStamp SlotTimeStamp,

lowerLayersInfoType CHOICE { sRS SRS,

cSI CSI,

...

},

...

}

E2SM-LLC-IndicationMessage-Format2 ::= SEQUENCE {

lowerLayersMeasurement-List SEQUENCE (SIZE(1.. maxnoofMeasurements)) OF LowerLayersMeasurement-Item,

...

}

LowerLayersMeasurement-Item ::= SEQUENCE { slotTimeStamp SlotTimeStamp,

lowerLayersMeasurementType CHOICE { dlRlcBufferStatus DlRlcBufferStatus,

dlPdcpBufferStatus DlPdcpBufferStatus,

dlHarqStatistics DlHarqStatistics,

slotTimeStamp NULL,

...

},

...

}

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

-- Control Header OCTET STRING contents

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

E2SM-LLC-ControlHeader ::= SEQUENCE {

ric-controlHeader-formats CHOICE {

controlHeader-Format1 E2SM-LLC-ControlHeader-Format1,

...

},

...

}

E2SM-LLC-ControlHeader-Format1 ::= SEQUENCE {

ric-StyleType RIC-Style-Type,

ric-ControlAction-ID RIC-ControlAction-ID,

...

}

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

-- Control Message OCTET STRING contents

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\* E2SM-LLC-ControlMessage ::= SEQUENCE {

ric-controlMessage-formats CHOICE {

controlMessage-Format1 E2SM-LLC-ControlMessage-Format1,

...

},

...

}

E2SM-LLC-ControlMessage-Format1 ::= SEQUENCE { controlType CHOICE {

logicalChannelHandlingControl LogicalChannelHandlingControl, dlSchedulingControl DlSchedulingControl,

...

},

...

}

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

-- Control Outcome OCTET STRING contents

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

E2SM-LLC-ControlOutcome ::= SEQUENCE {

ric-controlOutcome-formats CHOICE {

controlOutcome-Format1 E2SM-LLC-ControlOutcome-Format1,

...

},

...

}

E2SM-LLC-ControlOutcome-Format1 ::= SEQUENCE { controlType CHOICE {

logicalChannelHandling ReceivedTimestamp,

dlSchedulingParameters DlSchedulingControlOutcome,

...

},

...

}

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

-- RAN Function Definition IEs

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\* E2SM-LLC-RANFunctionDefinition ::= SEQUENCE{

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| ranFunction-Name | RANfunction-Name, |  |
| ranFunctionDefinition-EventTrigger | RANFunctionDefinition-EventTrigger | OPTIONAL, |
| ranFunctionDefinition-Report | RANFunctionDefinition-Report | OPTIONAL, |
| ranFunctionDefinition-Control | RANFunctionDefinition-Control | OPTIONAL, |
| ... |  |  |

</div>

}

-- Event Trigger

RANFunctionDefinition-EventTrigger ::= SEQUENCE {

ric-EventTriggerStyle-List SEQUENCE (SIZE(1..maxnoofRICStyles)) OF RANFunctionDefinition- EventTrigger-Style-Item,

...

}

RANFunctionDefinition-EventTrigger-Style-Item ::= SEQUENCE { ric-EventTriggerStyle-Type RIC-Style-Type,

ric-EventTriggerStyle-Name RIC-Style-Name,

ric-EventTriggerFormat-Type RIC-Format-Type,

...

}

-- Report

RANFunctionDefinition-Report ::= SEQUENCE {

ric-ReportStyle-List SEQUENCE (SIZE(1..maxnoofRICStyles)) OF RANFunctionDefinition- Report-Item,

...

}

RANFunctionDefinition-Report-Item ::= SEQUENCE {

ric-ReportStyle-Type RIC-Style-Type,

ric-ReportStyle-Name RIC-Style-Name, ric-SupportedEventTriggerStyle-Type RIC-Style-Type, ric-ReportActionFormat-Type RIC-Format-Type, ric-IndicationHeaderFormat-Type RIC-Format-Type, ric-IndicationMessageFormat-Type RIC-Format-Type,

...

}

-- Control

RANFunctionDefinition-Control ::= SEQUENCE {

ric-ControlStyle-List SEQUENCE (SIZE(1..maxnoofRICStyles)) OF RANFunctionDefinition- Control-Item,

...

}

RANFunctionDefinition-Control-Item ::= SEQUENCE {

ric-ControlStyle-Type RIC-Style-Type,

ric-ControlStyle-Name RIC-Style-Name,

ric-ControlAction-List SEQUENCE (SIZE(1..maxnoofControlAction)) OF RANFunctionDefinition-Control-Action-Item OPTIONAL,

ric-ControlHeaderFormat-Type RIC-Format-Type, ric-ControlMessageFormat-Type RIC-Format-Type,

ric-CallProcessIDFormat-Type RIC-Format-Type OPTIONAL, ric-ControlOutcomeFormat-Type RIC-Format-Type,

...

}

RANFunctionDefinition-Control-Action-Item ::= SEQUENCE {

ric-ControlAction-ID RIC-ControlAction-ID,

ric-ControlAction-Name RIC-ControlAction-Name,

...

} END

-- ASN1STOP

## Message transfer syntax

E2SM-LLC shall use the ASN.1 Basic Packed Encoding Rules (BASIC-PER) Aligned Variant as transfer syntax, as specified in Recommendation ITU-T X.691 [17].

# Handling of unknown, unforeseen and erroneous protocol data

Clause 10 of TS 36.413 [18] is applicable for the purposes of the present document.

# Annex (informative): Change history

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Date** | **Revision** | **Description** |
| 2024.06.19 | 00.00.01 | Initial template approval at W3#227 |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Date** | **Revision** | **Description** |
| 2024.07.24 | 00.00.02 | Addition of CR <COT-2024.06.28-WG3-CR-0008-E2SM-LLC-Template-Cleanup-  v01.docx> approved at WG3#230 |
| 2024.08.14 | 00.00.03 | Addition of CR < COT-2024.07.19-WG3-CR-0009-E2SM-LLC-Clauses-3-4-5-8.2.2-  v03.docx> approved at WG3#234 |
| 2024.10.16 | 00.00.04 | Addition of CR < COT-2024.08.22-WG3-CR-0010-E2SM-LLC-Support-REPORT-Service-  Style-1-LLI-v03> approved at WG3#239 |
| 2024.11.13 | 00.00.05 | Addition of CRs:  <COT-2024.10.08-WG3-CR-0012-E2SM-LLC-Support-REPORT-Service-Style-2-Lower-  Layers-Measurements-v03>  <COT-2024.10.08-WG3-CR-0013-E2SM-LLC-Support-CONTROL-Service-Style-1-  Logical-Channel-Handling-v03>  <COT-2024.10.14-WG3-CR-0014-E2SM-LLC-Support-CONTROL-Service-Style-2-  Scheduling-Parameters-v04>  <COT-2024.10.14-WG3-CR-0015-E2SM-LLC-Clauses-6.1-7.1-7.2-7.9-ClauseVoids-v03>  approved at Montreal F2F meeting 31/10/2024. |
| 2024.11.26 | 00.00.06 | Addition of CRs:  < COT-2024.11.04-WG3-CR-0016-E2SM-LLC-Add-RIC-Call\_Process-ID-to-Control-  Function-Definition-v02> approved at WG3#244  < COT-2024.11.04-WG3-CR-0017-E2SM-LLC-Clauses-8.4-8.5-9-v03> approved at WG3#245 |
| 2024.12.03 | 00.00.07 | Correction of typos |
| **2024.12.04** | **01.00** | **Initial version** |

</div>
---

- View in [GitHub Mode]({{site.github_page_url}}/O-RAN.WG3.TS.E2SM-LLC-R004-v01.00.docx.md).
- Go back to [Table of Contents]({{site.baseurl}}/).
- Download the [Original Document]({{site.download_url}}/O-RAN.WG3.TS.E2SM-LLC-R004-v01.00.docx).
