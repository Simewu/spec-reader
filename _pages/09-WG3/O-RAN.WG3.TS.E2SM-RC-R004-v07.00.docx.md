---
title: O-RAN.WG3.TS.E2SM-RC-R004-v07.00.docx.md
author: O-RAN Alliance, WG3
layout: post
---

- View in [GitHub Mode]({{site.github_page_url}}/O-RAN.WG3.TS.E2SM-RC-R004-v07.00.docx.md).
- Go back to [Table of Contents]({{site.baseurl}}/).
- Download the [Original Document]({{site.download_url}}/O-RAN.WG3.TS.E2SM-RC-R004-v07.00.docx).

---

* toc
{:toc}

---

![webwxgetmsgimg (7).jpeg]({{site.baseurl}}/assets/images/9c69df009b87.jpg)ORAN.WG3.TS.E2SM-RC-R004-v07.00

*Technical Specification*

**O-RAN Work Group 3 (WG-3) Near-Real-time RAN Intelligent Controller**

**E2 Service Model (E2SM), RAN Control**

Copyright (C) 2025 by the O-RAN ALLIANCE e.V.

The copying or incorporation into any other work of part or all of the material available in this specification in any form without the prior written permission of O-RAN ALLIANCE e.V. is prohibited, save that you may print or download extracts of the material of this specification for your personal use, or copy the material of this specification for the purpose of sending to individual third parties for their information provided that you acknowledge O-RAN ALLIANCE as the source of the material and that you inform the third party that these conditions apply to them and that they must comply with them.

O-RAN ALLIANCE e.V., Buschkauler Weg 27, 53347 Alfter, Germany Register of Associations, Bonn VR 11238, VAT ID DE321720189

"(C) 2019. 3GPP(TM) TSs and TRs are the property of ARIB, ATIS, CCSA, ETSI, TSDSI, TTA and TTC who jointly own the copyright in them. They are subject to further modifications and are therefore provided to you "as is" for information purposes only. Further use is strictly prohibited."

"(C) 2020. 3GPP(TM) TSs and TRs are the property of ARIB, ATIS, CCSA, ETSI, TSDSI, TTA and TTC who jointly own the copyright in them. They are subject to further modifications and are therefore provided to you "as is" for information purposes only. Further use is strictly prohibited."

Contents

Foreword 7

Modal verbs terminology 7

1. Scope 8
2. References 9
   1. Normative references 9
   2. Informative references 10
3. Definitions and Abbreviations 10
   1. Terms 10
   2. Abbreviations 10
4. General 12
   1. Procedure Specification Principles 12
   2. Forwards and Backwards Compatibility 12
   3. Specification Notations 12
   4. Void 13
5. E2SM Services 14
6. RAN Function Service Model Description 15
   1. RAN Function Overview 15
   2. RAN Function exposure services 15
      1. REPORT service 15
      2. INSERT service 15
      3. CONTROL service 16
      4. POLICY service 16
      5. QUERY service 17
   3. REPORT service description 17
   4. INSERT service description 17
   5. CONTROL service description 18
   6. POLICY service description 18
      1. Overview 18
      2. Policy approach "Control" 18
      3. Policy Approach "Offset" 19
   7. QUERY service description 19
7. RAN Function Description 20
   1. RAN Function Definition 20
   2. RAN Function name 20
   3. RIC Event Trigger Definition IE styles 21
      1. RIC Event Trigger Definition IE style list 21
      2. RIC Event Trigger Definition IE style 1: Message Event 21
      3. RIC Event Trigger Definition IE style 2: Call Process Breakpoint 21
      4. RIC Event Trigger Definition IE style 3: E2 Node Information Change 23
      5. RIC Event Trigger Definition IE style 4: UE Information Change 23
   4. Supported RIC REPORT Services 24
      1. REPORT Service style list 24
      2. REPORT Service Style 1: Message Copy 24
      3. REPORT Service Style 2: Call Process Outcome 25
      4. REPORT Service Style 3: E2 Node Information 25
      5. REPORT Service Style 4: UE Information 26
   5. Supported RIC INSERT Services 27
      1. INSERT Service style list 27
      2. INSERT Service Style 1: Radio Bearer Control Request 27
      3. INSERT Service Style 2: Radio Resource Allocation Control Request 29
      4. INSERT Service Style 3: Connected Mode Mobility Control Request 30
      5. INSERT Service Style 4: Radio Access Control Request 31
      6. INSERT Service Style 5: Dual Connectivity Control Request 32
      7. INSERT Service Style 6: Carrier Aggregation Control Request 33
      8. INSERT Service Style 7: Idle Mode Mobility Control Request 34
      9. INSERT Service Style 255: Multiple Actions Control Request 35
   6. Supported RIC CONTROL Services 36
      1. CONTROL Service Style Types 36
      2. CONTROL Service Style 1: Radio Bearer Control 37
      3. CONTROL Service Style 2: Radio Resource Allocation Control 39
      4. CONTROL Service Style 3: Connected Mode Mobility Control 41
      5. CONTROL Service Style 4: Radio Access Control 42
      6. CONTROL Service Style 5: Dual Connectivity Control 44
      7. CONTROL Service Style 6: Carrier Aggregation Control 45
      8. CONTROL Service Style 7: Idle Mode Mobility Control 47
      9. CONTROL Service Style 8: UE information and assignment 48
      10. CONTROL Service Style 255: Multiple Actions Control 49
      11. CONTROL Service Style 9: Measurement Reporting Configuration Control 50
      12. CONTROL Service Style 10: Beamforming Configuration Control 52
   7. Supported RIC POLICY Services 53
      1. POLICY Service style list 53
      2. POLICY Service Style 1: Radio Bearer Policy 54
      3. POLICY Service Style 2: Radio Resource Allocation Policy 55
      4. POLICY Service Style 3: Connected Mode Mobility Policy 56
      5. POLICY Service Style 4: Radio Access Policy 57
      6. POLICY Service Style 5: Dual Connectivity (DC) Policy 57
      7. POLICY Service Style 6: Carrier Aggregation (CA) Policy 58
      8. POLICY Service Style 7: Idle Mode Mobility Policy 59
      9. POLICY Service Style 8: Measurement Reporting Configuration Policy 59
      10. POLICY Service Style 9: Beamforming Configuration Policy 60
   8. Supported RIC QUERY Services 61
      1. QUERY Service style list 61
      2. QUERY Service Style 1: E2 Node Information Query 61
      3. QUERY Service Style 2: UE Information Query 61
   9. Supported RIC Service Styles and E2SM IE Formats 62
8. RAN Parameter assignments 64
   1. Approach 64
   2. RAN parameters for Event Trigger 64
      1. Common RAN Parameters 64
      2. RAN Parameters for Call Process Breakpoint 115
      3. RAN Parameters for UE Identification 167
      4. RAN Parameters for Cell Identification 169
      5. UE Events 169
   3. RAN parameters for REPORT services 169
      1. RAN Parameters for Report Service Style 1 169
      2. RAN Parameters for Report Service Style 2 171
      3. RAN Parameters for Report Service Style 3 171
      4. RAN Parameters for Report Service Style 4 172
   4. RAN parameters for INSERT services 174
      1. Approach 174
      2. Radio Bearer Control request 174
      3. Radio Resource Allocation Control request 174
      4. Connected Mode Mobility Control Request 175
      5. Radio Access Control request 175
      6. Dual Connectivity Control request 175
      7. Carrier Aggregation Control request 176
      8. Idle Mode Mobility Control request 176
      9. Common RAN Parameters for INSERT Service styles 176
      10. Indication Semantics Description for interpretation by the RIC 176
   5. RAN Parameters for Control Actions 177
      1. Approach 177
      2. Radio Bearer Control 178
      3. Radio Resource Allocation Control 187
      4. Connected Mode Mobility Control 196
      5. Radio Access Control 203
      6. Dual Connectivity Control 212
      7. Carrier Aggregation Control 223
      8. Idle Mode Mobility Control 225
      9. UE identification, information and assignment 226
      10. Measurement Reporting Configuration Control 228
      11. Beamforming Configuration Control 271
   6. RAN parameters for POLICY services 275
      1. Approach 275
      2. A Common RAN Parameters for POLICY services 276
      3. Radio Bearer Policy 277
      4. Radio Resource Allocation Policy 279
      5. Connected Mode Mobility Policy 281
      6. Radio Access Policy 286
      7. Dual Connectivity Policy 288
      8. Carrier Aggregation Policy 291
      9. Idle Mode Mobility Policy 293
      10. Measurement Reporting Configuration Policy 294
      11. Beamforming Configuration Policy 296
   7. RAN parameters for QUERY services 301
      1. RAN Parameters for Query Service Style 1 301
      2. RAN Parameters for Query Service Style 2 303
9. Elements for E2SM Service Model 303
   1. General 303
   2. Message Functional Definition and Content 303
      1. Messages for RIC Functional procedures 303
      2. Messages for RIC Global Procedures 326
   3. Information Element definitions 335
      1. General 335
      2. RAN Function Name 335
      3. RIC Style Type 335
      4. RIC Style Name 335
      5. RIC Format Type 335
      6. Control Action ID 335
      7. Control Action Name 335
      8. RAN Parameter ID 335
      9. RAN Parameter Name 336
      10. UE ID 336
      11. RAN Parameter Value Type 337
      12. RAN Parameter Structure 337
      13. RAN Parameter List 338
      14. RAN Parameter Value 338
      15. Call Process Type ID 338
      16. Insert Indication ID 338
      17. Insert Indication Name 338
      18. RAN Call Process ID 339
      19. Call Process Type Name 339
      20. Policy Action 339
      21. Event Trigger Condition ID 339
      22. Event Trigger ID for UE 339
      23. Event Trigger ID for UE Event 340
      24. Event Trigger ID for Cell 340
      25. Logical OR 340
      26. Event Trigger UE Information 340
      27. Event Trigger Cell Information 341
      28. Event Trigger UE Event Information 341
      29. RAN Parameter Conditional Criteria Definition 342
      30. RAN Parameter Test 342
      31. RAN Parameter Test Condition 342
      32. Network Interface Type 343
      33. Network Interface Identifier 343
      34. Network Interface Message ID 343
      35. RRC Message ID 343
      36. Cell Global ID 343
      37. RRC State 344
      38. Neighbour Relation Information 345
      39. Serving Cell PCI 346
      40. Serving Cell ARFCN 346
      41. NR CGI 346
      42. NR PCI 346
      43. NR TAC 346
      44. NR Frequency Info 346
      45. E-UTRA CGI 346
      46. E-UTRA PCI 346
      47. E-UTRA TAC 346
      48. E-UTRA ARFCN 346
      49. Call Process Breakpoint ID 346
      50. Call Process Breakpoint Name 347
      51. RAN Parameter Definition 347
      52. Associated UE Information 347
      53. UE Filter ID 348
      54. UE Group ID 348
      55. Entity Filter ID 348
      56. UE Group Definition 349
      57. Partial UE ID 349
      58. Policy Condition ID 349
      59. PLMN Identity 349
      60. Serving Cell Configuration Common 349
   4. Information Element Abstract Syntax (with ASN.1) 350
      1. General 350
      2. Information Element Definitions 350
   5. Message transfer syntax 370
10. Handling of Unknown, Unforeseen and Erroneous Protocol Data 370

Annex A (Informative) 371

Examples on IE Contents 371

* 1. Introduction 371
  2. Connected mode mobility based on UE measurement report 371
     1. Assumptions 371
     2. Solution using RIC Services Insert and Control 371
     3. Solution using RIC Service Policy ("Offset" based approach) 376

Revision History 381

History 385

# Foreword

This Technical Specification (TS) has been produced by WG3 of the O-RAN Alliance.

The contents of the present document are subject to continuing work within O-RAN and may change following formal O-RAN approval. Should the O-RAN Alliance modify the contents of the present document, it will be re-released by O- RAN with an identifying change of version date and an increase in version number as follows:

version xx.yy.zz where:

xx: the first digit-group is incremented for all changes of substance, i.e. technical enhancements, corrections, updates, etc. (the initial approved document will have xx=01). Always 2 digits with leading zero if needed.

yy: the second digit-group is incremented when editorial only changes have been incorporated in the document.

Always 2 digits with leading zero if needed.

zz: the third digit-group included only in working versions of the document indicating incremental changes during the editing process. External versions never include the third digit-group. Always 2 digits with leading zero if needed.

# Modal verbs terminology

In the present document "**shall**", "**shall not**", "**should**", "**should not**", "**may**", "**need not**", "**will**", "**will not**", "**can**" and "**cannot**" are to be interpreted as described in clause 3.2 of the O-RAN Drafting Rules (Verbal forms for the expression of provisions).

"**must**" and "**must not**" are **NOT** allowed in O-RAN deliverables except when used in direct citation.

# Scope

The present document specifies the E2 Service Model (E2SM) for the Near RT RIC RAN Control interaction.

# References

## Normative references

References are either specific (identified by date of publication and/or edition number or version number) or

non-specific. For specific references, only the cited version applies. For non-specific references, the latest version of the referenced document (including any amendments) applies.

NOTE 1: While any hyperlinks included in this clause were valid at the time of publication, O-RAN cannot guarantee their long-term validity.

NOTE 2: In the case of a reference to a 3GPP document (including a GSM document), a non-specific reference implicitly refers to the latest version of that document in 3GPP Release 18.

The following referenced documents are necessary for the application of the present document.

1. 3GPP TR 21.905: "Vocabulary for 3GPP Specifications".
2. O-RAN Working Group 3, Near-Real-time RAN Intelligent Controller, Architecture & E2 General Aspects and Principles (E2GAP)
3. ORAN Working Group 3, Near-Real-time RAN Intelligent Controller, E2 Application Protocol (E2AP).
4. O-RAN Working Group 3, Near-Real-time RAN Intelligent Controller, E2 Service Model (E2SM)
5. 3GPP TR 25.921: "Guidelines and principles for protocol description and error handling".
6. ITU-T Recommendation X.680 (2002-07): "Information technology - Abstract Syntax Notation One (ASN.1): Specification of basic notation".
7. ITU-T Recommendation X.681 (2002-07): "Information technology - Abstract Syntax Notation One (ASN.1): Information object specification".
8. ITU-T Recommendation X.691 (2002-07): "Information technology - ASN.1 encoding rules - Specification of Packed Encoding Rules (PER) "
9. Reserved
10. TS 38.410: "NG-RAN; NG general aspects and principles".
11. TS 38.413: "NG-RAN; NG Application Protocol (NGAP)".
12. Reserved
13. TS 36.413: "E-UTRAN; S1 Application Protocol (S1AP)".
14. TS 38.420: "NG-RAN; Xn general aspects and principles".
15. TS 38.423: "NG-RAN; Xn Application Protocol (XnAP)".
16. TS 36.420: "E-UTRAN; X2 general aspects and principles".
17. TS 36.423: "E-UTRAN; X2 Application Protocol (X2AP)".
18. TS 38.470: "NG-RAN; F1 general aspects and principles".
19. TS 38.473: "NG-RAN; F1 Application Protocol (F1AP)".
20. TS 38.460: "NG-RAN; E1 general aspects and principles".
21. TS 37.483: "NG-RAN; E1 Application Protocol (E1AP)".
22. TS 38.331: "NR; Radio Resource Control (RRC) Protocol Specification".
23. TS 36.331: "E-UTRA; Radio Resource Control (RRC) Protocol Specification".
24. TS 38.323: "NR; Packet Data Convergence Protocol (PDCP) specification".
25. TS 38.322: "NR; Radio Link Control (RLC) protocol specification".
26. TS 38.321: "NR; Medium Access Control (MAC) protocol specification".
27. TS 25.321: "Medium Access Control (MAC) protocol specification".
28. TS 28.552: "Management and orchestration 5G performance measurements".
29. Reserved
30. IETF RFC 5905 (2010-06): "Network Time Protocol Version 4: Protocol and Algorithms Specification"
31. TS 37.340: "E-UTRA and NR Multiconnectivity Stage 2".
32. O-RAN Working Group 3, Use Case Requirements (UCR)
33. O-RAN Working Group 1, Massive MIMO Use Cases Technical Report
34. O-RAN.WG4.CUS.0-R003-v13, "O-RAN Working Group 4, Control, User and Synchronization Plane Specification"
35. TS 28.541: "5G; Management and orchestration; 5G Network Resource Model (NRM); Stage 2 and stage 3".
36. TS 28.214: "NR; Physical layer procedures for data".
37. TS 38.912: "Study on New Radio (NR) access technology".

## Informative references

References are either specific (identified by date of publication and/or edition number or version number) or

non-specific. For specific references, only the cited version applies. For non-specific references, the latest version of the referenced document (including any amendments) applies.

NOTE: While any hyperlinks included in this clause were valid at the time of publication, O-RAN cannot guarantee their long-term validity.

The following referenced documents are not necessary for the application of the present document, but they assist the user with regard to a particular subject area.

# Definitions and Abbreviations

## Terms

For the purposes of the present document, the terms given in 3GPP TR 23.905 [1], O-RAN WG1.OAD [18], O-RAN WG3.E2GAP [2], O-RAN.WG3.E2SM [4] and the following apply:

**SpCell**: as defined in TS 37.340 [31].

## Abbreviations

For the purposes of the present document, the following abbreviations apply.

O-CU O-RAN Central Unit

O-CU-CP O-RAN Central Unit - Control Plane O-CU-UP O-RAN Central Unit - User Plane

O-DU O-RAN Distributed Unit

Near-RT RIC Near-real-time RAN Intelligent Controller RC RAN Control

# General

## Procedure Specification Principles

The principle for specifying the procedure logic is to specify the functional behavior of the terminating node exactly and completely. Any rule that specifies the behavior of the originating node shall be possible to be verified with information that is visible within the system.

The following specification principles have been applied for the procedure text in clause 8:

* The procedure text discriminates between:
  1. Functionality which "shall" be executed.

The procedure text indicates that the receiving node "shall" perform a certain function Y under a certain condition. If the receiving node supports procedure X but cannot perform functionality Y requested in the REQUEST message of a Class 1 EP, the receiving node shall respond with the message used to report unsuccessful outcome for this procedure, containing an appropriate cause value.

* 1. Functionality which "shall, if supported" be executed.

The procedure text indicates that the receiving node "shall, if supported," perform a certain function Y under a certain condition. If the receiving node supports procedure X, but does not support functionality Y, the receiving node shall proceed with the execution of the EP, possibly informing the requesting node about the not supported functionality.

* Any required inclusion of an optional IE in a response message is explicitly indicated in the procedure text. If the procedure text does not explicitly indicate that an optional IE shall be included in a response message, the optional IE shall not be included. For requirements on including *Criticality Diagnostics* IE, see clause 10.

## Forwards and Backwards Compatibility

The forwards and backwards compatibility of the protocol is assured by a mechanism where all current and future messages, and IEs or groups of related IEs, include ID and criticality fields that are coded in a standard format that will not be changed in the future. These parts can always be decoded regardless of the standard version.

## Specification Notations

For the purposes of the present document, the following notations apply:

Service when referring to a Service in the specification the **SERVICE NAME** is written with upper case characters and in bold followed by the word "service", e.g. **REPORT** service.

Procedure When referring to an elementary procedure in the specification the Procedure Name is written with the first letters in each word in upper case characters followed by the word "procedure", e.g.

Handover Preparation procedure.

Message When referring to a message in the specification the MESSAGE NAME is written with all letters in upper case characters followed by the word "message", e.g. HANDOVER REQUEST message.

IE When referring to an information element (IE) in the specification the *Information Element Name* is written with the first letters in each word in upper case characters and all letters in Italic font followed by the abbreviation "IE", e.g. *E-RAB ID* IE.

Value of an IE When referring to the value of an information element (IE) in the specification the "Value" is written as it is specified in the specification enclosed by quotation marks, e.g. "Value".

## Void

# E2SM Services

As defined in E2 General Aspects and Principles O-RAN WG3.E2GAP [1], a given RAN Function offers a set of services to be exposed over the E2 (**REPORT**, **INSERT**, **CONTROL** and/or **POLICY**) using O-RAN WG3.E2AP [3] defined procedures. Each of the E2AP Procedures listed in table 5-1 contains specific E2 Node RAN Function dependent Information Elements (IEs).

Table 5-1: Relationship RAN Function specific E2AP Information elements and E2AP Procedures

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **RAN Function specific E2AP Information Elements** | **E2AP Information Element reference** | **Related E2AP Procedures** |
| *RIC Event Trigger Definition* IE | O-RAN WG3.E2AP [3] Clause 9.2.9 | RIC Subscription |
| *RIC Action Definition* IE | O-RAN WG3.E2AP [3] Clause 9.2.12 | RIC Subscription |
| *RIC Indication Header* IE | O-RAN WG3.E2AP [3] Clause 9.2.17 | RIC Indication |
| *RIC Indication Message* IE | O-RAN WG3.E2AP [3] Clause 9.2.16 | RIC Indication |
| *RIC Call Process ID* IE | O-RAN WG3.E2AP [3] Clause 9.2.18 | RIC Indication RIC Control |
| *RIC Control Header* IE | O-RAN WG3.E2AP [3] Clause 9.2.20 | RIC Control |
| *RIC Control Message* IE | O-RAN WG3.E2AP [3] Clause 9.2.19 | RIC Control |
| *RIC Control Outcome IE* | O-RAN WG3.E2AP [3] Clause 9.2.25 | RIC Control |
| *RAN Function Definition* IE | O-RAN WG3.E2AP [3] Clause 9.2.23 | E2 Setup  RIC Service Update |
| *RIC Query Header IE* | O-RAN WG3.E2AP [3] Clause 9.2.36 | RIC Query |
| *RIC Query Definition IE* | O-RAN WG3.E2AP [3] Clause 9.2.37 | RIC Query |
| *RIC Query Outcome IE* | O-RAN WG3.E2AP [3] Clause 9.2.38 | RIC Query |
| *Service Layer Cause* IE | O-RAN WG3.E2AP [3] clause 9.2.1 | RIC Subscription  RIC Subscription modification RIC Indication  RIC Control RIC Query Error Indication E2 Setup  RIC Service Update |

</div>

All of these RAN Function specific E2AP IEs are defined in O-RAN WG3.E2AP [3] as "OCTET STRING".

The purpose of this specification is to define the contents of these fields for the specific RAN function "RAN Control (RC)".

# RAN Function Service Model Description

## RAN Function Overview

For the purposes of this E2 Service Model, E2SM-RC, the E2 Node terminating the E2 Interface is assumed to host one or more instances of the RAN Function "RAN Control" which performs the following functionalities:

* E2 REPORT services used to expose RAN control and UE context related information
* E2 INSERT services used to suspend RAN control related call processes
* E2 CONTROL services used to resume or initiate RAN control related call processes, modify RAN configuration and/or E2 service-related UE context information
* E2 POLICY services used to modify the behaviour of RAN control related processes
* E2 QUERY services used to request and retrieve RAN and/or UE related information
* Service layer error reporting

This E2SM specification provides a set of RAN Function exposure services described in clause 6.2 and has been prepared with the assumption that the same E2SM may be used to describe either a single RAN Function in the E2 Node handling all RAN control related call processes or more than one RAN Function in the E2 Node with each instance handling a subset of the RAN control related call processes on the E2 Node.

## RAN Function exposure services

### REPORT service

The "RAN Control" RAN Function provides selective support of the following **REPORT** services:

* Copy of Complete message (from Network Interface or RRC), used for monitoring POLICY services, data gathering (to populate the Near-RT RIC UE-NIB and/or ML services data pipeline), etc.
* Call process outcome with associated information on UE context and/or RAN status information, used for monitoring [CONTROL and] POLICY services, data gathering (to populate the Near-RT RIC UE-NIB and/or ML services data pipeline), etc.
* E2 Node Information and Cell related Information, used for monitoring of E2 Node and Cell configuration changes, triggering POLICY deletion, changing notifications (to reset Near-RT RIC optimization services), etc..
* UE Information, used for monitoring of UE information changes, triggering E2 Control, location tracking, etc. NOTE: Only the UE with user consent can be configured to report location information.

### INSERT service

The "RAN Control" RAN Function provides selective support of the following **INSERT** services: Fundamental level:

* Radio Bearer Control request, used for requesting the RIC to control DRB QoS modification, QoS flow to DRB (re)mapping, Logical channel (re)configuration, Radio bearer admission control, Split bearer and PDCP duplication control, etc.
* Radio Resource Allocation Control request, used for requesting the RIC to control Discontinuous Reception (DRX), Scheduling request (SR), Semi-Persistent Scheduling (SPS), Configured Grant, Channel Quality Indicator (CQI) table, Slice level PRB quota, etc.
* Connected Mode Mobility Control request, used for requesting the RIC to control operations of Handover (HO), Conditional handover (CHO), Dual Active Protocol Stack (DAPS) HO, etc.
* Radio Access Control request, used for requesting the RIC to control parameters related to RACH back-off, RRC connection reject, RRC connection release, Access barring, UE admission, etc.
* Dual Connectivity (DC) Control request, used for requesting the RIC to control operations of Dual Connectivity (DC) including Change of bearer termination point (MN or SN) and/or bearer types, etc.
* Carrier Aggregation (CA) Control request, used for requesting the RIC to control operations of Carrier Aggregation (CA) involving secondary cell re-selection.
* Idle Mode Mobility Control request, used for requesting the RIC to control intra-frequency, inter-frequency, inter-RAT cell reselection priority, idle timers, etc.

Integrated level:

* Multiple Actions Control request, used for requesting the RIC to command multiple actions of the selected fundamental level INSERT services.

### CONTROL service

The "RAN Control" RAN Function provides selective support of the following **CONTROL** services: Fundamental level:

* Radio Bearer Control, used for DRB QoS modification, QoS flow to DRB (re)mapping, Logical channel (re)configuration, Radio bearer admission control, Split bearer and PDCP duplication control, etc.
* Radio Resource Allocation Control, used to control Discontinuous Reception (DRX), Scheduling request (SR), Semi-Persistent Scheduling (SPS), Configured Grant, Channel Quality Indicator (CQI) table, Slice level PRB quota, etc.
* Connected Mode Mobility Control, used to control operations of Handover (HO), Conditional handover (CHO), Dual Active Protocol Stack (DAPS) HO, etc.
* Radio Access Control, used for modification of RACH back-off, RRC connection reject, RRC connection release, Access barring, UE admission, etc.
* Dual Connectivity (DC) Control, used to control operations of Dual Connectivity (DC) including Change of bearer termination point (MN or SN) and/or bearer types, etc.
* Carrier Aggregation (CA) Control, used to control operations of Carrier Aggregation (CA).
* Idle Mode Mobility Control, used for modification of intra-frequency, inter-frequency, inter-RAT cell reselection priority, idle timers, etc.
* UE identification, information and assignment: used to assign UE to RAN UE group, to obtain information on UE, and to complete UE identification based on partial information.
* Measurement Report (MR) Configuration Control, used to control configuration of RRC measurement objects, reporting objects, etc.
* Beamforming Configuration Control, used to control configuration of Non-GoB Beamforming Mode.

Integrated level:

* Multiple Actions Control, used to command multiple actions of the selected fundamental level CONTROL services in one message.

### POLICY service

The "RAN Control" RAN Function provides selective support of the following **POLICY** services:

* Radio Bearer Policy, used to modify the behaviour of call processes related to DRB QoS control, QoS flow to DRB mapping, Logical channel configuration, Radio bearer admission control, Split bearer and PDCP duplication control, etc.
* Radio Resource Allocation Policy, used to modify the behaviour of call processes related to DRX, SR, SPS, Configured Grant, CQI table, Slice level PRB quota, etc.
* Connected Mode Mobility Policy, used to modify the behaviour of call processes related to HO, CHO, DAPS HO, etc. for both serving and target RAN nodes.
* Radio Access Policy, used to modify the behaviour of call processes related to RACH back-off, RRC connection reject, RRC connection release, Access barring, UE admission, etc.
* Dual Connectivity (DC) Policy, used to modify the behaviour of call processes related to DC related operations for both master and secondary RAN nodes, Change of bearer termination point (MN or SN) and/or bearer types, etc.
* Carrier Aggregation (CA) Policy, used to modify the behaviour of call processes related to CA related operations for both primary and secondary cells.
* Idle Mode Mobility Policy, used to modify the behaviour of call processes related to intra-frequency, inter- frequency, inter-RAT cell reselection priority, inactivity timers, etc.
* Measurement Report (MR) Configuration Policy, used to configure policy for RRC measurement objects, reporting objects, etc.
* Beamforming Configuration Policy, used to configure policy for Non-GoB and GoB Beamforming Mode.

### QUERY service

The "RAN Control" RAN Function provides support of the following **QUERY** services:

* E2 Node related Information retrieval between Near-RT RIC and E2 Node for any data required at Near-RT RIC
* UE related Information retrieval between Near-RT RIC and E2 Node for any data required at Near-RT RIC

## REPORT service description

The E2SM-RC REPORT service requirements defined in Clause 6.2.1 are offered using a set of REPORT Styles. All REPORT styles are implemented using a set of IEs for Action Definition, RIC Indication Header and RIC Indication Message and have specific Event Trigger approach. For each Report style, a single RAN Parameter table is used to specify the required information to be reported.

The following REPORT styles are supported:

* Message copy: This REPORT style is initiated by "Message Event" Event Trigger and is used to report complete NI or RRC message along with UE associated information when the event trigger conditions are satisfied.
* Call Process Outcome: This REPORT style is initiated by the corresponding "Call Process Breakpoint" Event Trigger and is used to report on the outcome of a call process providing information on current, and in certain cases previous, UE or E2 Node information depending upon the nature of the target call process.
* E2 Node Information: This REPORT style is initiated by "E2 Node Information Change" Event Trigger and is used to report cell related and E2 Node related information upon event trigger conditions are satisfied.
* UE information: This REPORT style is initiated by "UE Information Change" Event Trigger and is used to report UE related information and UE state variables upon the event trigger conditions are satisfied.

## INSERT service description

The E2SM-RC INSERT service requirements defined in Clause 6.2.2 are offered using a set of INSERT Styles. Each style corresponds to a set of "INSERT Indications", where each "INSERT Indication" deals with a specific functionality and has a set of associated RAN parameters, provided in a mapping table. All INSERT Service styles are implemented using a set of IEs that constitute "Action Definition", "RIC Indication Header" and "RIC Indication Message" to deliver RAN Control-related INSERT services. Each INSERT service style is associated with a specific "Event Trigger"

approach. An "INSERT Indication" is used to request the RIC to control a functionality associated with the respective INSERT service style, and to set or modify the values of one or more associated RAN parameters.

As an example, upon the arrival of an RRC Measurement Report in the E2 node due to the occurrence of an A3 event pertaining to a UE (which constitutes the event trigger), the E2 node can send a message to the RIC using the "Connected Mode Mobility Control Request" INSERT service style and the "Handover Control Request" INSERT Indication along with the "target cell ID" parameter. This RIC should then accept/deny the "Handover Control Request", and if it accepts, it should set the value of the "target cell ID" parameter and send a CONTROL action back to the E2 Node. Up until then, the E2 node suspends the ongoing call processing for the UE.

## CONTROL service description

The E2SM-RC CONTROL service requirements defined in Clause 6.2.3 are offered using a set of CONTROL Styles. Each style corresponds to a set of "CONTROL Action", where each "CONTROL Action" deals with a specific functionality and has a set of associated RAN parameters, provided in a mapping table. All CONTROL Service styles are implemented using a set of IEs constituting a "RIC Control Request Header" and a "RIC Control Request Message" to deliver RAN Control-related CONTROL services and the optional "RIC Control Outcome" to carry control process outcome information from the E2 Node. A "CONTROL Action" containing one or more RAN parameters and their associated values can either be sent from the RIC, either asynchronously to the E2 node or as a response to a previous "INSERT Indication" from the E2 node.

Referring to the previous example in Clause 6.4, the RIC sends a "CONTROL action" that accepts/denies the incoming "INSERT Indication" requesting for "Handover Control", along with the value of the "Target Primary Cell". As another example, the RIC can also asynchronously send a "CONTROL action" asking the E2 node to configure the UE in Carrier Aggregation mode and setup one or more secondary cells to the UE, whose values are assigned by the RIC via the "CONTROL action".

## POLICY service description

### Overview

The E2SM-RC POLICY service requirements defined in Clause 6.2.4 are offered using a set of POLICY Styles. Each style is implemented using multiple "Policy Approach" strategies, each with a specific methodology defined to use the E2AP IE "Action Definition" to deliver RAN Control related POLICY services.

The following Policy Approaches are defined:

* Control: POLICY for a given Style and Action ID is defined as a single case of a specific Policy condition with the corresponding Policy Action defined using the same data structure as CONTROL which would be used to replace default RAN behaviour.
* Offset: POLICY for a given Style and Action ID is defined as a set of different cases applicable for a range of different Policy conditions with the corresponding Policy Action defined using the dedicated data structure defined for POLICY which would be used to modify default RAN behaviour.

### Policy approach "Control"

The "control" Policy Approach is similar to the CONTROL service, with static conditions and actions in the RIC Subscription used to select an appropriate CONTROL Action. When a set of Policy conditions are satisfied, then E2 Node is instructed to execute a Policy Action with a set of supplementary or default set of RAN parameters.

A single Policy Action shall be a result of execution of multiple policy conditions.

* Each Policy Condition is defined using a combination of RAN Parameters and conditional tests associated with UE and Call process related information.
* Each Policy Action is defined with a single Policy Action ID (command) which instructs E2 Node to perform a certain action when the conditions are satisfied. The Policy Action ID shall be supplemented with a set of RAN Parameters which may be used to provide information on default values to E2 Node. The Policy Decision indicates to the E2 Node, whether to accept or reject a RRM function, when the Policy conditions are met.

Examples include:

* Connected mode mobility policy, Handover Execution: Message Arrival breakpoint event trigger is defined to initiate the Policy service. On the arrival of A3 Measurement Report, the Policy service kicks in. Policy service installs a set of Policy Conditions like RSRP > 'x' db + Target Node Load < 'x' value + Number of successful HO to target Node > 'x' value. When these Policy conditions are satisfied, then perform Policy Action - "Execute HO" defined in the CONTROL service in Clause 6.5. The Policy Action may be provided as a standalone Policy Action ID "Execute HO" without any RAN parameters. As an alternative, Policy Action "Execute HO" may be supplemented with default RAN parameters like Handover only QCI 5 and 9 bearers.
* Carrier Aggregation Policy, CA Release decision: A call process breakpoint event trigger is defined to initiate the POLICY service. The call process breakpoint shall define conditions for Buffer occupancy. A call process breakpoint event shall be triggered when the Buffer Occupancy (BO) < 'x' KB. In this scenario, the event trigger satisfies the Policy condition. Hence there is no need to define a Policy condition in the Policy service, When the BO < 'x' KB kicks in, then Policy Action shall instruct E2 Node to "Release Scell".

### Policy Approach "Offset"

The "offset" Policy Approach is based on the design assumption that the *Policy Action* IE is used to carry one or more RAN Parameters that are used to modify default E2 Node behaviour via the addition of an "offset" to be applied to given target threshold or other parameter used in the target call process.

The applicable Policy Action is dependent upon a set of Policy Conditions and a given POLICY service may support one or more Policy conditions and so provide a targeted Policy Action for a range of different specific cases, each defined using a unique Policy condition where:

* Each Policy Condition is defined using a combination of RAN Parameters and conditional tests associated with UE and Call process related information. The first positive match in a list of Policy conditions is used to select the corresponding Policy Action.
* Each Policy Action is defined using a list of RAN Parameters of data type INTEGER or REAL which may to used directly for default values of type INTEGER or REAL (i.e. Default+Offset) and indirectly to for default values of type ENUMERATED (i.e. select value in list that is Offset before or after default value).

Examples include:

* Connected mode mobility policy, Handover decision: A call process breakpoint event trigger is defined to initiate the POLICY service from within the call process handling UE measurement reports related to handover decisions for a specific target Slice and primary cell currently subject to Traffic Steering guidance. The Policy conditions list of RAN Parameters supports the definition of different A3 measurement threshold criteria offset values to be applied to UEs with a specific combination of slice ID, active QoS bearers, velocity and throughput and subject to overall E2 Node load and cell level load balancing requirements. Handover is accepted if the reported A3 measurement is greater than the default A3 measurement threshold+offset.
* Carrier Aggregation Policy, CA release decision: A call process breakpoint event trigger is defined to initiate the POLICY service from within the call process related to Carrier Aggregation (CA) release decisions for a specific target Slice currently subject to QoE guidance. The Policy conditions list of RAN Parameters supports the definition of different CA release threshold criteria offset values to be applied to UEs with a specific combination of slice ID, active QoS bearers, velocity and throughput and subject to overall E2 Node load and cell level load balancing requirements. CA release is initiated if the UE throughput is less than the default UE throughput threshold+offset.

## QUERY service description

The E2SM-RC QUERY service requirements defined in Clause 6.2.5 are offered using a set of QUERY Styles. All QUERY styles are implemented using a set of IEs for RIC Query Header, RIC Query Definition and RIC Query Outcome. For each Query style, a single RAN Parameter table is used to specify the required information to be requested and responded.

# RAN Function Description

## RAN Function Definition

The E2AP [3] procedures E2 Setup and RIC Service Update are used to transport the *RAN Function Definition* IE.

For a specific RAN Function declared using E2SM-RC, the *RAN Function Definition* IE, defined in clause 9.2.2, shall report the following information:

* RAN Function name along with associated information on E2SM definition
* Event trigger styles list along with the corresponding encoding type for each associated E2AP IE.
* RIC **REPORT** Service styles list along with the corresponding encoding type for each associated E2AP IE.
* RIC **INSERT** Service styles list along with the corresponding encoding type for each associated E2AP IE.
* RIC **CONTROL** Service styles list along with the corresponding encoding type for each associated E2AP IE.
* RIC **POLICY** Service styles list along with the corresponding encoding type for each associated E2AP IE.
* RIC **QUERY** Service styles list along with the corresponding encoding type for each associated E2AP IE.

For the case where *RAN Function Definition* IE, defined in clause 9.2.2, is present in the E2 SETUP REQUEST message the IE shall provide a complete list of all Styles, Actions and associated Formats and RAN Parameter for all supported RIC services reflecting the current status of the RAN Function.

For the case where *RAN Function Definition* IE, defined in clause 9.2.2, is present in the RIC SERVICE UPDATE message within the E2AP *RAN Functions Added List* IE, the IE shall provide a complete list of all Styles, Actions and associated Formats and RAN Parameter for all supported RIC services for the newly added RAN Function with a new RAN Function ID.

For the case where *RAN Function Definition* IE, defined in clause 9.2.2, is present in the RIC SERVICE UPDATE message within the E2AP *RAN Functions Modified List* IE, the IE shall provide a complete list of all the Styles, Actions and associated Formats and RAN Parameter for all supported RIC services including both modified and unchanged information for an existing RAN Function.

## RAN Function name

RAN Function Short Name "ORAN-E2SM-RC" RAN Function name description "RAN Control"

RAN Function Instance, required when and if E2 Node exposes more than one instance of a RAN Function based on this E2SM.

## RIC Event Trigger Definition IE styles

### RIC Event Trigger Definition IE style list

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **RIC**  **Style Type** | **Style Name** | **Supported RIC Service Style** | | | **Style Description** |
| **Report** | **Insert** | **Policy** |
| 1 | Message Event | 1 | - | 1-7 | Triggering conditions are based on arrival or departure of network interface message or RRC message. |
| 2 | Call Process Breakpoint | 2 | 1-7 | 1-8 | Triggering conditions are based on call process breakpoint. |
| 3 | E2 Node Information  Change | 3 | - | - | Triggering conditions are based on change of E2 Node or cell related  configuration information. |
| 4 | UE Information Change | 4 | - | 9 | Triggering conditions are based on change of UE Information. |

</div>

### RIC Event Trigger Definition IE style 1: Message Event

This *RIC Event Trigger Definition* IE style is used to detect a specific Network Interface or RRC message event in E2 Node. The detection can be based on only for incoming or outgoing message. The E2 Node can also be configured to detect multiple messages simultaneously and to trigger only when all the configured message events happen or for any logical combination of message events.

Each message event configured can be further conditioned to be associated only for a certain UE or group of UEs as indicated by the *Associated UE Info* IE if included, or only for some specific UE events defined in Clause 8.1.5 as indicated by the *Associated UE Event* IE if included. In case that the *Global Associated UE Info* IE is included, the information is applied uniformly to all the message events configured and the IE shall override any *Associated UE Info* IE included for some message events.

For each message event configured, Event Trigger Condition ID is assigned so that E2 Node can reply to Near-RT RIC in the RIC INDICATION message to inform which event(s) are the cause for triggering.

This *RIC Event Trigger Definition* IE style uses *RIC Event Trigger Definition* IE Format 1 (9.2.1.1.1).

### RIC Event Trigger Definition IE style 2: Call Process Breakpoint

This *RIC Event Trigger Definition* IE style is used to detect a call process in E2 Node based on a specified call process identifier and breakpoint identifier. The call process and breakpoint configured for event triggering can also be conditioned to be associated with a certain E2 Node related information.

The following table specifies the supported call process types, call breakpoints, the associated RAN Parameters for possible E2 Node related conditioning for event triggering, as well as the supported INSERT or POLICY services.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| **Call Process Type ID** | **Call Process Type** | **Call Break- point ID** | **Call Breakpoint Name** | **Associate d RAN**  **Paramete rs** | **Supporte d INSERT**  **Service Styles** | **Supporte d POLICY**  **Service Styles** | **Supporte d REPORT**  **Service Styles** | **Descriptio n** |
| 1 | UE  Context Manage ment | 1 | UE Context Setup | 8.1.2.1.1 | 1,2,3,4,6,7 | 1,2,3,4,6,7  ,8 | 2 | TS 38.470  [18] clause  5.2.3 and  TS 38.410  [10] clause  5.3. |
| 2 | UE Context Modification | 8.1.2.1.2 |
| 3 | UE Context Release | 8.1.2.1.3 |
| 2 | Bearer Context Manage ment | 1 | Bearer  Context Setup | 8.1.2.2.1 | 1,4,5,6 | 1,4,5,6,8 | 2 | TS 38.460  [20] clause  5.1.2 |
| 2 | Bearer Context | 8.1.2.2.2 |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
|  |  |  | Modification |  |  |  |  |  |
| 3 | Bearer Context Release | 8.1.2.2.3 |
| 3 | Mobility Manage ment | 1 | Handover Preparation | 8.1.2.3.1 | 3 | 3,8 | 2 | TS 38.420  [14] clause  5.2.2 and  TS 38.410  [10] clause  5.4. It also handles the F1AP:  Mobility Manageme nt aspects of the *UE Context Manageme nt* procedure from TS  38.470 and  TS 38.473 |
| 2 | Handover Cancel | 8.1.2.3.2 |
| 3 | Handover Resource Allocation | 8.1.2.3.3 |
| 4 | Multi- RAT  Dual Connecti vity Manage ment | 1 | SN Addition | 8.1.2.4.1 | 5 | 5,8 | 2 | TS 38.420  [14] clause  5.2.3 and  TS 36.420  [16]  clauses  5.2.1.5 and  5.2.1.6 |
| 2 | SN  Modification and Release | 8.1.2.4.2 |
| 5 | Radio Resource Control Manage ment | 1 | RRC CG-  Config Information Transfer | 8.1.2.5.1 | 1-7 | 1-7 | 2 | TS 38.470  [18] clause  5.2.4, TS  38.331 [22]. |
| 2 | RRC Cell Group  Config Transfer | 8.1.2.5.2 |
| 3 | RRC  Measureme nt Configuratio  n | 8.1.2.5.3 | NA | 8 | 2 |
| 6 | PDU  Session Manage ment | 1 | PDU  Session Resource  Setup | 8.1.2.6.1 | 1,3,4,5 | 1,3,4,5,8 | 2 | TS 38.410  [10] clause  5.5 |
| 2 | PDU  Session  Resource Modification | 8.1.2.6.2 |
| 3 | PDU  Session Resource Release | 8.1.2.6.3 |

</div>

Table 7.3.3-1: RIC Event Trigger Definition IE style 2 - Supported Call Processes and associated RAN Parameters

Each event configured can be further conditioned to be associated only for a certain UE or group of UEs as indicated by the *Associated UE Info* IE if included.

This *RIC Event Trigger Definition* IE style uses *E2SM-RC Event Trigger Definition Format 2* IE (9.2.1.1.2).

### RIC Event Trigger Definition IE style 3: E2 Node Information Change

This *RIC Event Trigger Definition* IE style is used to detect E2 Node related information change from the subscribed E2 Node. The E2 Node can also be configured to detect multiple changes simultaneously and to trigger only when all the configured changes happen or for any logical combination of the configured changes.

In this version of E2SM-RC specification, the following E2 Node related information changes are supported for event triggering.

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **E2 Node**  **Information Change ID** | **E2 Node Information Change Type** | **Description** |
| 1 | Cell Configuration Change | Triggered when any serving cell's context information defined by  the *Served Cell Information* IE in TS 38.473 [19] clause 9.3.1.10 has changed. |
| 2 | Cell Neighbour Relation Change | Triggered when any serving cell's neighbour relation information defined by Clause 9.3.38 has changed. |
| 3 | Slice Configuration Change | Triggered when slice configuration in any serving cell has changed. |
| 4 | MIB Change | Triggered when the MIB in any serving cell has changed |
| 5 | Serving Cell Config Common Change | Triggered when any Serving Cell Config Common information defined by Section 8.2.3 in any serving cell has changed |

</div>

Table 7.3.4-1: RIC Event Trigger Definition IE style 3 - Supported E2 Node information changes

Each E2 Node information change configured can also be conditioned to be associated with a specific cell or group of cells for event triggering, as indicated by the *Associated Cell Info* IE if included.

For each information change configured for event triggering, Event Trigger Condition ID is also assigned so that E2 Node can reply to Near-RT RIC in the RIC INDICATION message to inform which event(s) are the cause for triggering.

This *RIC Event Trigger Definition* IE style uses *E2SM-RC Event Trigger Definition Format 3* IE (9.2.1.1.3).

### RIC Event Trigger Definition IE style 4: UE Information Change

This *RIC Event Trigger Definition* IE style is used to detect UE Context related information change from the subscribed E2 Node. The E2 Node can also be configured to detect multiple changes simultaneously and to trigger only when all the configured changes happen or for any logical combination of the configured changes.

In this version of E2SM-RC specification, the supported UE Context information changes for event triggering are

* RRC state change
* UE identifier change (based on UE ID defined in Clause 9.3.10)
* RLC/PDCP state variable or MAC state variable change (based on RAN Parameters defined in Clauses 8.1.1.4 and 8.1.1.8)
* L2 MAC scheduler-related changes (e.g. MIMO transmission mode state change for the UE, etc.)
* UE context info change

For UE identifier change, the following cases are supported for event triggering.

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **UE Identifier Change ID** | **UE Identifier Change Type** | **Description** |
| 1 | New UE Connected | Triggered when new UE ID is assigned for a new UE connected. |
| 2 | UE Handed Over | Triggered when new UE ID is assigned due to HO from another node. |
| 3 | UE ID Changed | Triggered when any content of the assigned UE ID (based on the definition of UE ID in Clause 9.3.10) has changed. |
| 4 | UE ID Removed | Triggered when a UE is released, and its UE ID is removed. |

</div>

Table 7.3.5-1: RIC Event Trigger Definition IE style 4 - Supported UE Information changes

The detection for each UE information change configured can be based on for any UEs, or only for a certain UE or group of UEs as indicated by the *Associated UE Info* IE if included.

For each information change configured, Event Trigger Condition ID is assigned so that E2 Node can reply to Near-RT RIC in the RIC INDICATION message to inform which event(s) are the cause for triggering.

This *RIC Event Trigger Definition* IE style uses *E2SM-RC Event Trigger Definition Format 4* IE (9.2.1.1.4).

## Supported RIC REPORT Services

### REPORT Service style list

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **RIC Style Type** | **Style Name** | **Style Description** |
| 1 | Message copy | This style is used to report a copy of complete Network Interface or RRC message. |
| 2 | Call Process Outcome | This style is used to report the outcome of an ongoing call process. |
| 3 | E2 Node Information | This style is used to report E2 Node information, Serving Cell Configuration and Neighbour Relation related information. |
| 4 | UE Information | This style is used to report the UE related information like PDCP, RLC, MAC UE state variables and RRC UE State. |

</div>

### REPORT Service Style 1: Message Copy

#### REPORT Service Style description

This **REPORT** Service style provides the complete copy of a Network Interface or RRC message to be carried as a transparent container in the *RIC Indication Message* IE.

This **REPORT** service style may also be used to report UE and E2 Node specific information associated with the Network Interface/RRC messages as provided in Clause 8.2.1 RAN Parameters. Examples include reporting of UEID to Near-RT RIC when UE attaches to the E2 Node or when the UEID changes during Xn Handover, UE events like Secondary Cell addition, Arrival of A3 Measurement Report (see Clause 8.1.5 for the list of UE events).

This **REPORT** Service style is initiated by Event Trigger style 1: Message Event.

* + - 1. REPORT Service *RIC Action Definition* IE contents

The Action Definition for this service style is used to request E2 Node to report a copy of NI and/or RRC message and may be used to report UE and E2 Node specific information. The action definition indicates which related UE and E2 Node information is to be reported along with the NI or RRC message that triggers this report service.

This **REPORT** Service style uses the *E2SM-RC Action Definition Format 1* IE (9.2.1.2.1). The supported Parameters for this format are provided in Clause 8.2.1*.*

* + - 1. REPORT Service *RIC Indication Header* IE contents

This **REPORT** Service style uses the *E2SM-RC Indication Header Format 1* IE (9.2.1.3.1)

* + - 1. REPORT Service *RIC Indication Message* IE contents

The **REPORT** Service *RIC Indication Message* IE carries the complete Network Interface or RRC message as transparent containers. The *RIC Indication Message* IE may also carry UE and E2 Node specific information related to the Network Interface or RRC message as provided in Clause 8.2.1.

This **REPORT** Service style uses the *E2SM-RC Indication Message Format 1* IE (9.2.1.4.1). The supported Parameters for this message format are provided in Clause 8.2.1.

### REPORT Service Style 2: Call Process Outcome

#### REPORT Service Style description

This **REPORT** Service style provides the outcome of a target call process related mechanism to be carried in the *RIC Indication Message* IE along with an associated *RIC Indication Header* IE providing information related event trigger conditions.

This **REPORT** Service style is initiated by Event Trigger style 2: Call Process Breakpoint.

* + - 1. REPORT Service *RIC Action Definition* IE contents

The Action Definition for this service style is used to request an E2 Node to report call process outcome information including UE specific information. The Action Definition indicates which related UE information is to be reported related to the outcome of the event that triggers this report service.

This **REPORT** Service style uses the *E2SM-RC Action Definition Format 1* IE (9.2.1.2.1). The supported Parameters for this message format are provided in Clause 8.2.2.

* + - 1. REPORT Service *RIC Indication Header* IE contents

This **REPORT** Service style uses the *E2SM-RC Indication Header Format 1* IE (9.2.1.3.1).

* + - 1. REPORT Service *RIC Indication Message* IE contents

The **REPORT** Service *RIC Indication Message* IE carries the UE specific information as a result of call process outcome. The Parameters supporting UE specific information is provided in Clause 8.2.2.

This **REPORT** Service style uses the *E2SM-RC Indication Message Format 2* IE (9.2.1.4.2). The supported Parameters for this message format are provided in Clause 8.2.2.

### REPORT Service Style 3: E2 Node Information.

#### REPORT Service Style description

This **REPORT** Service style provides essential RAN control related E2 Node Configuration Information that is not provided by E2AP [3]. The information is carried in the *RIC Indication Message* IE along with an associated *RIC Indication Header* IE providing information related event trigger conditions. The required information to be provided is controlled using the associated *RIC Action Definition* IE parameters.

This **REPORT** Service style provides information related to:

* + - * + Serving Cell configuration
        + Neighbour Relation Information

whenever the corresponding event trigger for change in information content is satisfied. With every change in the information content of the Neighbour Relation Information, complete list of Neighbour relation table of the affected serving cell is sent to Near-RT RIC with indication on the modified information.

This **REPORT** Service style is initiated by Event Trigger style 3: E2 Node Information Change.

* + - 1. REPORT Service *RIC Action Definition* IE contents

The Action Definition for this service style indicates the E2 Node related information requested by Near-RT RIC.

The **REPORT** Service style uses the *E2SM-RC Action Definition Format 1* IE (9.2.1.2.1). The supported Parameters for this format are provided in Clause 8.2.3*.*

With every change in the information content of the Neighbour Relation Information pertaining to any cell in the E2 node (event trigger), the *RIC Action Definition* IE from the Near-RT RIC instructs the E2 node to send the complete list of Neighbour relation table for the impacted cell.

* + - 1. REPORT Service *RIC Indication Header* IE contents

This **REPORT** Service style uses the *E2SM-RC Indication Header Format 1* IE (9.2.1.3.1).

* + - 1. REPORT Service *RIC Indication Message* IE contents

The **REPORT** Service *RIC Indication Message* IE carries the E2 node related information as subscribed by the *RIC Action Definition* IE.

This **REPORT** Service style uses the *E2SM-RC Indication Message Format 3* IE (9.2.1.4.3). The mapping of RAN parameters configured in the *RIC Action Definition* IE to the reported IEs in the *RIC Indication Message* IE Format 3 is provided in the semantics description of the IEs.

### REPORT Service Style 4: UE Information

#### REPORT Service Style description

This **REPORT** Service style provides UE related Information. The information is carried in the *RIC Indication Message* IE along with an associated *RIC Indication Header* IE providing information related event trigger conditions. The required information to be provided is controlled using the associated *RIC Action Definition* IE parameters.

This **REPORT** Service style enables the E2 Node to report on a per UE basis:

* + - * + L2 UE State variable values including

PDCP UE State variables

RLC UE State variables

MAC UE variables.

* + - * + L3 UE State variable values including

RRC State

UE ID Information

* + - * + UE ID change information including

Current UE ID

Old UE ID

NI or RRC message which triggered the UE ID change

- UE context related information

This **REPORT** Service style is initiated by Event Trigger style 4: UE Information Change.

* + - 1. REPORT Service *RIC Action Definition* IE contents

The Action Definition for this service style indicates the set of UE information parameters to be reported when event trigger to report is satisfied.

The **REPORT** Service style uses the *E2SM-RC Action Definition Format 1* IE (9.2.1.2.1). The supported Parameters for this message format are provided in Clause 8.2.4*.*

* + - 1. REPORT Service *RIC Indication Header* IE contents

This **REPORT** Service style uses the *E2SM-RC Indication Header Format 1* IE (9.2.1.3.1).

* + - 1. REPORT Service *RIC Indication Message* IE contents

The **REPORT** Service *RIC Indication Message* IE carries the requested UE related information.

This **REPORT** Service style uses the *E2SM-RC Indication Message Format 2* IE (9.2.1.4.2). The supported Parameters for this message format are provided in Clause 8.2.4.

## Supported RIC INSERT Services

### INSERT Service style list

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **RIC Style Type** | **Style Name** | **Style Description** |
| 1 | Radio Bearer Control Request | Used to request modification of the configuration of Radio Bearer Control (RBC) related parameters.  Belongs to Fundamental level INSERT Services. |
| 2 | Radio Resource Allocation Control Request | Used to request modification of the configuration of Radio Resource Allocation control related parameters.  Belongs to Fundamental level INSERT Services. |
| 3 | Connected Mode Mobility Control Request | Used to request initiation of a connected mode mobility procedure (Handover or Conditional Handover), optionally with Dual Active Protocol Stack (DAPS), for a specific UE towards either a target cell (for HO) or a list of candidate cells (for CHO).  Belongs to Fundamental level INSERT Services. |
| 4 | Radio Access Control Request | Used to request modification of radio access related functions for controlling UE access to cells.  Belongs to Fundamental level INSERT Services. |
| 5 | Dual Connectivity Control Request | Used to request initiation of dual connectivity (DC) mechanisms Belongs to Fundamental level INSERT Services. |
| 6 | Carrier Aggregation Control Request | Used to request initiation of carrier aggregation (CA) mechanisms Belongs to Fundamental level INSERT Services. |
| 7 | Idle Mode Mobility Control Request | Used to request modification of idle mode mobility related functions in order to control UE re-selection of cells  Belongs to Fundamental level INSERT Services. |
| 255 | Multiple Actions Control Request | Used to request multiple parallel actions of the selected fundamental level INSERT Service style(s).  Belongs to Integrated level INSERT Services. |

</div>

Apart from the individual set of RAN parameters associated with each INSERT Service style and INSERT Indication name as described in Clauses 7.5.2 to 7.5.8, there is also a common set of RAN parameters for all INSERT service styles as elucidated in Clause 8.3.9.

### INSERT Service Style 1: Radio Bearer Control Request

#### INSERT Service Style description

This **INSERT** Service style provides a mechanism to initiate request to the RIC for controlling the functionalities of a radio bearer related process pertaining to a UE using the *RIC Indication Message* IE and associated *RIC Indication*

*Header* IE. The E2 node sends a *RIC Indication* message to the near-RT RIC and the ongoing call process is suspended at the E2 node until the E2 node hears back from the RIC. The optional *RIC Call Process ID* IE is used by the E2 node to match a *RIC Control Request* message to a *RIC Indication* message, following which the E2 node can resume the suspended call processing for the UE.

Applications of this service include:

* Request for DRB QoS Modification, to tune DRB level QoS related parameters to meet the QoS optimization targets.
* Request for QoS Flow (re)mapping, to adjust the mapping relationship between QoS flows and DRBs.
* Request for Logical channel (re)configuration
* Request for Radio Bearer Admission Control, to configure DRB admission control such as reject or release may be applied.
* Request for Split bearer and PDCP duplication control

This Insert style supports the following *Indication* services, each service listed below with a corresponding *Indication*

ID. The RAN parameters, associated with each Insert Indication service, are listed in the sections shown below.

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **Indication ID** | **Indication Name** | **Insert Indication description** | **Associated RAN**  **Parameters** |
| 1 | DRB QoS  Configuration request | To request the configuration of DRB QoS profile | 8.3.2.1 |
| 2 | QoS flow mapping configuration request | To request the multiplexing of QoS flows to a DRB (addition, modification, deletion | 8.3.2.2 |
| 3 | Logical channel configuration request | To request the LCID configuration of a DRB | 8.3.2.3 |
| 4 | Radio admission control request | To request radio admission control of a UE | 8.3.2.4 |
| 5 | DRB termination control request | To request a change in the bearer termination point | 8.3.2.5 |
| 6 | DRB split ratio control request | To request the split ratio of a DRB to be controlled across its RLC entities | 8.3.2.6 |
| 7 | PDCP  Duplication control request | To request controlling the activation or de-activation of PDCP duplication for a DRB and control/configure the number of legs or RLC entities for the DRB | 8.3.2.7 |

</div>

* + - 1. INSERT Service *RIC Action Definition* IE contents

This **INSERT** Service style uses the *E2SM-RC Action Definition Format 3* IE (9.2.1.2.3). This Insert style deals with the supported *Indication* services, each service with a corresponding *Indication* ID listed in Clause 7.5.2.1. The RAN parameters, associated with each Insert *RIC Indication* service, are included by the E2 node in the *RIC Indication* message. Via the *RIC Indication* message, the E2 node seeks the near-RT RIC to accept or deny the request raised by the E2 node and to accordingly set the values for the associated RAN parameters by the RIC via the control action in the ensuing *RIC Control Request* message from the RIC.

* + - 1. INSERT Service *RIC Indication Header* IE contents

This **INSERT** Service style uses *E2SM-RC Indication header Format 2* IE (9.2.1.3.2). The *RIC Indication Header* IE has the UE ID, the *Insert* Service Style ID and the corresponding *Insert* Indication ID.

* + - 1. INSERT Service *RIC Indication Message* IE contents

This **INSERT** Service style uses *E2SM-RC Indication Message Format 5* IE (9.2.1.4.5). The *RIC Indication Message* IE includes a sequence of associated RAN parameters for which the E2 node seeks the near-RT RIC to accept/deny the request raised by the E2 node and accordingly set the values for the associated RAN parameters, via the control action in the ensuing *RIC Control Request* IE.

* + - 1. INSERT Service *RIC Call Process ID* IE contents

This **INSERT** Service style uses *E2SM-RC Call Process ID Format 1* IE (9.2.1.5.1).

### INSERT Service Style 2: Radio Resource Allocation Control Request

#### INSERT Service Style description

This **INSERT** Service style provides a mechanism to initiate request to the RIC for controlling the allocation of radio resources to the UE using the *RIC Indication Message* IE and associated *RIC Indication Header* IE. The E2 node sends a *RIC Indication* message to the near-RT RIC and the ongoing call process is suspended at the E2 node until the E2 node hears back from the RIC. The optional *RIC Call Process ID* IE is used by the E2 node to match a *RIC Control Request* message to a *RIC Indication* message, following which the E2 node can resume the suspended call processing for the UE.

Applications of this service include:

* + - * + Request for Discontinuous Reception (DRX) control
        + Request for Scheduling request (SR) control
        + Request for Semi-Persistent Scheduling (SPS) control
        + Request for Configured Grant control
        + Request for Channel Quality Indicator (CQI) table
        + Request for Slice level PRB quota

This Insert style supports the following *Indication* services, each service listed below with a corresponding *Indication*

ID. The RAN parameters, associated with each Insert Indication service, are listed in the sections shown below.

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **Indication ID** | **Indication Name** | **Insert Indication description** | **Associated RAN**  **Parameters** |
| 1 | DRX parameter configuration request | To request the configuration of DRX parameters | 8.3.3.1 |
| 2 | SR periodicity configuration request | To request the configuration of SR periodicity parameters | 8.3.3.2 |
| 3 | SPS parameters configuration request | To request the configuration of SPS parameters | 8.3.3.3 |
| 4 | Configured grant control request | To request the configuration of uplink grants to the UE | 8.3.3.4 |
| 5 | CQI table configuration request | To request the configuration of CQI table. | 8.3.3.5 |
| 6 | Slice-level PRB quota request | To request setting the slice-specific PRB quota | 8.3.3.6 |

</div>

* + - 1. INSERT Service *RIC Action Definition* IE contents

This **INSERT** Service style uses the *E2SM-RC Action Definition Format 3* IE (9.2.1.2.3). The Insert style deals with the supported *Indication* services, each service with a corresponding *Indication* ID listed in Clause 7.5.3.1. The RAN parameters, associated with each Insert *Indication* service, are included by the E2 node in the *RIC Indication* message. Via the *RIC Indication* message, the E2 node seeks the near-RT RIC to accept or deny the request raised by the E2 node and to accordingly set the values for the associated RAN parameters by the RIC via the control action in the ensuing *RIC Control Request* message from the RIC.

* + - 1. INSERT Service *RIC Indication Header* IE contents

This **INSERT** Service style uses *E2SM-RC Indication Header Format 2* IE (9.2.1.3.2). The *RIC Indication Header* IE has the UE ID, the *Insert* Service Style ID and the corresponding *Insert* Indication ID.

* + - 1. INSERT Service *RIC Indication Message* IE contents

This **INSERT** Service style uses *E2SM-RC Indication Message Format 5* IE (9.2.1.4.5). The *RIC Indication Message* IE includes a sequence of associated RAN parameters for which the E2 node seeks the near-RT RIC to accept/deny the request raised by the E2 node and accordingly set the values for the associated RAN parameters, via the control action in the ensuing *RIC Control Request* IE.

* + - 1. INSERT Service *RIC Call Process ID* IE contents

This **INSERT** Service style uses *E2SM-RC Call Process ID Format 1* IE (9.2.1.5.1).

### INSERT Service Style 3: Connected Mode Mobility Control Request

#### INSERT Service Style description

This **INSERT** Service style provides a mechanism to initiate request for controlling the handover and mobility management of the UE using the *RIC Indication Message* IE and associated *RIC Indication Header* IE. The E2 node sends a *RIC Indication* message to the near-RT RIC and the ongoing call process is suspended at the E2 node until the E2 node hears back from the RIC. The optional *RIC Call Process ID* IE is used by the E2 node to match a *RIC Control Request* message to a *RIC Indication* message, following which the E2 node can resume the suspended call processing for the UE.

Applications of this service include:

* + - * + Request for Handover (HO) initiation for a selected UE towards a target cell
        + Request for Conditional handover (CHO) initiation for a selected UE towards a list of candidate cell(s)
        + Request for Handover (HO) initiation with Dual Active Protocol Stack (DAPS) for a selected UE towards a target cell

This Insert style supports the following *Indication* services, each service listed below with a corresponding *Indication*

ID. The RAN parameters, associated with each Insert Indication service, are listed in the sections shown below.

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **Indication ID** | **Indication Name** | **Insert Indication description** | **Associated RAN parameters** |
| 1 | Handover Control request | To request the handover of the primary cell and subsequent secondary cell reselection | 8.3.4.1 |
| 2 | Conditional Handover Control request | To request the conditional handover involving target primary cells | 8.3.4.2 |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| 3 | DAPS (Dual Active Protocol Stack) Handover Control request | To request the dual active protocol stack handover involving the target primary cell. | 8.3.4.3 |

</div>

* + - 1. INSERT Service *RIC Action Definition* IE contents

This **INSERT** Service style uses the *E2SM-RC Action Definition Format 3* IE (9.2.1.2.3). The Insert style deals with the supported *Indication* services, each service with a corresponding *Indication* ID listed in Clause 7.5.4.1. The RAN parameters, associated with each Insert *RIC Indication* service, are included by the E2 node in the *RIC Indication* message. Via the *RIC Indication* message, the E2 node seeks the near-RT RIC to accept or deny the request raised by the E2 node and to accordingly set the values for the associated RAN parameters by the RIC via the control action in

the ensuing *RIC Control Request* message from the RIC.

* + - 1. INSERT Service *RIC Indication Header* IE contents

This **INSERT** Service style uses *E2SM-RC Indication Header Format 2* IE (9.2.1.3.2). The *RIC Indication Header* IE has the UE ID, the *Insert* Service Style ID and the corresponding *Insert* Indication ID.

* + - 1. INSERT Service *RIC Indication Message* IE contents

This **INSERT** Service style uses *E2SM-RC Indication Message Format 5* IE (9.2.1.4.5). The *RIC Indication Message* IE includes a sequence of associated RAN parameters for which the E2 node seeks the near-RT RIC to accept/deny the request raised by the E2 node and accordingly set the values for the associated RAN parameters, via the control action in the ensuing *RIC Control Request* IE.

* + - 1. INSERT Service *RIC Call Process ID* IE contents

This **INSERT** Service style uses *E2SM-RC Call Process ID Format 1* IE (9.2.1.5.1).

### INSERT Service Style 4: Radio Access Control Request

#### INSERT Service Style description

This **INSERT** Service style provides a mechanism to initiate request for controlling the radio access of the UE using the *RIC Indication Message* IE and associated *RIC Indication Header* IE. The E2 node sends a *RIC Indication* message to the near-RT RIC and the ongoing call process is suspended at the E2 node until the E2 node hears back from the RIC. The optional *RIC Call Process ID* IE is used by the E2 node to match a *RIC Control Request* message to a *RIC Indication* message, following which the E2 node can resume the suspended call processing for the UE.

Applications of this service include:

* + - * + Request for configuring RACH back-off
        + Request for UE admission
        + Request for RRC connection reject
        + Request for RRC connection release Request for Access barring

This Insert style supports the following *Indication* services, each service listed below with a corresponding *Indication*

ID. The RAN parameters, associated with each Insert Indication service, are listed in the sections shown below.

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **Indication ID** | **Indication Name** | **Insert Indication Description** | **Associated RAN Parameters** |
| 1 | UE Admission Control request | To request UE admission control. | 8.3.5.1 |
| 2 | RACH backoff control request | To request control of RACH backoff parameters | 8.3.5.2 |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| 3 | Access barring control request | To request access barring configuration parameters configuration | 8.3.5.3 |
| 4 | RRC  connection release | To request release of an RRC connection for a UE | 8.3.5.4 |
| 5 | RRC  connection reject | To request rejection of an RRC connection for a UE | 8.3.5.5 |

</div>

* + - 1. INSERT Service *RIC Action Definition* IE contents

This **INSERT** Service style uses the *E2SM-RC Action Definition Format 3* IE (9.2.1.2.3). The Insert style deals with the supported *Indication* services, each service with a corresponding *Indication* ID listed in Clause 7.5.5.1. The RAN parameters, associated with each Insert *Indication* service, are included by the E2 node in the *RIC Indication* message. Via the *RIC Indication* message, the E2 node seeks the near-RT RIC to accept or deny the request raised by the E2 node and to accordingly set the values for the associated RAN parameters by the RIC via the control action in the ensuing *RIC Control Request* message from the RIC.

* + - 1. INSERT Service *RIC Indication Header* IE contents

This **INSERT** Service style uses *E2SM-RC Indication Header Format 2* IE (9.2.1.3.2). The *RIC Indication Header* IE has the UE ID, the *Insert* Service Style ID and the corresponding *Insert* Indication ID.

* + - 1. INSERT Service *RIC Indication Message* IE contents

This **INSERT** Service style uses *E2SM-RC Indication Message Format 5* IE (9.2.1.4.5). The *RIC Indication Message* IE includes a sequence of associated RAN parameters for which the E2 node seeks the near-RT RIC to accept/deny the request raised by the E2 node and accordingly set the values for the associated RAN parameters, via the control action in the ensuing *RIC Control Request* IE.

* + - 1. INSERT Service *RIC Call Process ID* IE contents

This **INSERT** Service style uses *E2SM-RC Call Process ID Format 1* IE (9.2.1.5.1).

### INSERT Service Style 5: Dual Connectivity Control Request

#### INSERT Service Style description

This **INSERT** Service style provides a mechanism to initiate request for controlling the dual connectivity of the UE using the *RIC Indication Message* IE and associated *RIC Indication Header* IE. The E2 node sends a *RIC Indication* message to the near-RT RIC and the ongoing call process is suspended at the E2 node until the E2 node hears back from the RIC. The optional *RIC Call Process ID* IE is used by the E2 node to match a *RIC Control Request* message to a *RIC Indication* message, following which the E2 node can resume the suspended call processing for the UE.

Applications of this service include:

* + - * + Request for Dual connectivity (EN-DC, MR-DC or NR-NR DC) initiation for a selected UE towards a target secondary cell (PScell)
        + Request for Secondary cell change for a selected UE towards a target secondary cell (PScell)
        + Request for Dual connectivity (EN-DC, MR-DC or NR-NR DC) modification for a selected UE
        + Request for Dual connectivity (EN-DC, MR-DC or NR-NR DC) release initiation for a selected UE
        + Request for Change of bearer termination point (MN or SN) and/or bearer types for a selected UE

This Insert style supports the following *Indication* services, each service listed below with a corresponding *Indication*

ID. The RAN parameters, associated with each Insert Indication service, are listed in the sections shown below.

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **Indication ID** | **Indication Name** | **Insert Indication Description** | **Associated RAN**  **parameters** |
| 1 | DC Secondary Node  Addition Control request | To request secondary node addition for dual connectivity | 8.3.6.1 |
| 2 | DC Secondary Node Modification and Release Control  request | To request modification of secondary node for DC | 8.3.6.2 |
| 3 | DC PSCell Change control request | To request PSCell change of a UE within a secondary node or to another secondary node | 8.3.6.3 |
| 4 | DC Secondary  Node Change Control request | To request changing the secondary node of a UE for DC | 8.3.6.4 |
| 5 | DC DRB  termination control request | To request a change in the bearer termination point | 8.3.2.5 |

</div>

* + - 1. INSERT Service *RIC Action Definition* IE contents

This **INSERT** Service style uses the *E2SM-RC Action Definition Format 3* IE (9.2.1.2.3). The Insert style deals with the supported *Indication* services, each service with a corresponding *Indication* ID listed in Clause 7.5.6.1. The RAN parameters, associated with each Insert *Indication* service, are included by the E2 node in the *RIC Indication* message. Via the *RIC Indication* message, the E2 node seeks the near-RT RIC to accept or deny the request raised by the E2 node and to accordingly set the values for the associated RAN parameters by the RIC via the control action in the ensuing *RIC Control Request* message from the RIC.

* + - 1. INSERT Service *RIC Indication Header* IE contents

This **INSERT** Service style uses *E2SM-RC Indication Header Format 2* IE (9.2.1.3.2). The *RIC Indication Header* IE has the UE ID, the *Insert* Service Style ID and the corresponding *Insert* Indication ID.

* + - 1. INSERT Service *RIC Indication Message* IE contents

This **INSERT** Service style uses *E2SM-RC Indication Message Format 5* IE (9.2.1.4.5). The *RIC Indication Message* IE includes a sequence of associated RAN parameters for which the E2 node seeks the near-RT RIC to accept/deny the request raised by the E2 node and accordingly set the values for the associated RAN parameters, via the control action in the ensuing *RIC Control Request* IE.

* + - 1. INSERT Service *RIC Call Process ID* IE contents

This **INSERT** Service style uses *E2SM-RC Call Process ID Format 1* IE (9.2.1.5.1).

### INSERT Service Style 6: Carrier Aggregation Control Request

#### INSERT Service Style description

This **INSERT** Service style provides a mechanism to initiate request for controlling the carrier aggregation of the UE using the *RIC Indication Message* IE and associated *RIC Indication Header* IE. The E2 node sends a *RIC Indication* message to the near-RT RIC and the ongoing call process is suspended at the E2 node until the E2 node hears back from the RIC. The optional *RIC Call Process ID* IE is used by the E2 node to match a *RIC Control Request* message to a *RIC Indication* message, following which the E2 node can resume the suspended call processing for the UE.

Applications of this service include:

* + - * + Request for Carrier Aggregation (CA) initiation for a selected UE towards a target secondary cell or cells
        + Request for Carrier Aggregation (CA) modification for a selected UE, or Secondary cell change for a selected UE towards a target secondary cell or cells
        + Request for Carrier Aggregation (CA) release initiation for a selected UE

This Insert style supports the following *Indication* services, each service listed below with a corresponding *Indication*

ID. The RAN parameters, associated with each Insert Indication service, are listed in the sections shown below.

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **Indication ID** | **Indication Name** | **Insert Indication Description** | **Associated RAN**  **parameters** |
| 1 | CA Secondary Cell Addition Control request | To request control of the secondary cell addition for a UE | 8.3.7.1 |
| 2 | CA Secondary Cell Modification and Release Control  request | To request control of the modification and release of secondary cells for a UE | 8.3.7.2 |

</div>

* + - 1. INSERT Service *RIC Action Definition* IE contents

This **INSERT** Service style uses the *E2SM-RC Action Definition Format 3* IE (9.2.1.2.3). The Insert style deals with the supported *Indication* services, each service with a corresponding *Indication* ID listed in Clause 7.5.7.1. The RAN parameters, associated with each Insert *Indication* service, are included by the E2 node in the *RIC Indication* message. Via the *RIC Indication* message, the E2 node seeks the near-RT RIC to accept or deny the request raised by the E2 node and to accordingly, set the values for the associated RAN parameters by the RIC via the control action in the ensuing *RIC Control Request* message from the RIC.

* + - 1. INSERT Service *RIC Indication Header* IE contents

This **INSERT** Service style uses *E2SM-RC Indication Header Format 2* IE (9.2.1.3.2). The *RIC Indication Header* IE has the UE ID, the *Insert* Service Style ID and the corresponding *Insert* Indication ID.

* + - 1. INSERT Service *RIC Indication Message* IE contents

This **INSERT** Service style uses *E2SM-RC Indication Message Format 5* IE (9.2.1.4.5). The *RIC Indication Message* IE includes a sequence of associated RAN parameters for which the E2 node seeks the near-RT RIC to accept/deny the request raised by the E2 node and accordingly set the values for the associated RAN parameters, via the control action in the ensuing *RIC Control Request* IE**.**

* + - 1. INSERT Service *RIC Call Process ID* IE contents

This **INSERT** Service style uses *E2SM-RC Call Process ID Format 1* IE (9.2.1.5.1).

### INSERT Service Style 7: Idle Mode Mobility Control Request

#### INSERT Service Style description

This **INSERT** Service style provides a mechanism to initiate request for controlling the idle mode mobility of the UE using the *RIC Indication Message* IE and associated *RIC Indication Header* IE. The E2 node sends a *RIC Indication* message to the near-RT RIC and the ongoing call process is suspended at the E2 node until the E2 node hears back from the RIC. The optional *RIC Call Process ID* IE is used by the E2 node to match a *RIC Control Request* message to a *RIC Indication* message, following which the E2 node can resume the suspended call processing for the UE.

Applications of this service include:

* + - * + Intra-frequency, inter-frequency, inter-RAT cell reselection priority
        + Idle timers

This Insert style supports the following *Indication* services, each service listed below with a corresponding *Indication*

ID. The RAN parameters, associated with each Insert Indication service, are listed in the sections shown below.

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **Indication ID** | **Indication Name** | **Insert Indication Description** | **Associated RAN**  **parameters** |
| 1 | Cell re-selection priority request | To request assignment of cell re-selection priorities for a UE during idle mode (RRC\_IDLE) | 8.3.8.1 |

</div>

* + - 1. INSERT Service *RIC Action Definition* IE contents

This **INSERT** Service style uses the *E2SM-RC Action Definition Format 3* IE (9.2.1.2.3). The Insert style deals with the supported *Indication* services, each service with a corresponding *Indication* ID listed in Clause 7.5.8.1. The RAN parameters, associated with each Insert *Indication* service, are included by the E2 node in the *RIC Indication* message. Via the *RIC Indication* message, the E2 node seeks the near-RT RIC to accept or deny the request raised by the E2 node and to accordingly, set the values for the associated RAN parameters by the RIC via the control action in the ensuing *RIC Control Request* message from the RIC.

* + - 1. INSERT Service *RIC Indication Header* IE contents

This **INSERT** Service style uses *E2SM-RC Indication Header Format 2* IE (9.2.1.3.2). The *RIC Indication Header* IE has the UE ID, the *Insert* Service Style ID and the corresponding *Insert* Indication ID.

* + - 1. INSERT Service *RIC Indication Message* IE contents

This **INSERT** Service style uses *E2SM-RC Indication Message Format 5* IE (9.2.1.4.5). The *RIC Indication Message* IE includes a sequence of associated RAN parameters for which the E2 node seeks the near-RT RIC to accept/deny the request raised by the E2 node or accordingly set the values for the associated RAN parameters, via the control action in the ensuing *RIC Control Request* IE**.**

* + - 1. INSERT Service *RIC Call Process ID* IE contents

This **INSERT** Service style uses *E2SM-RC Call Process ID Format 1* IE (9.2.1.5.1).

### INSERT Service Style 255: Multiple Actions Control Request

#### INSERT Service Style description

This **INSERT** Service style provides a mechanism which contains multiple Insert Indication actions of the selected fundamental level INSERT Service style(s), in order to initiate request to the Near-RT RIC for controlling multiple actions of the supporting functionalities related to the corresponding fundamental level CONTROL Service style(s). If at least one of the embedded Insert Indications is not admitted by E2 node, then the E2 node shall declare the INSERT Action as failed.

* + - 1. INSERT Service *RIC Action Definition* IE contents

This **INSERT** Service style uses the *E2SM-RC Action Definition Format 4* IE (9.2.1.2.4).

For each Insert Indication action, the corresponding *Insert Indication ID* IE and the associated RAN parameters follow the definitions of the selected fundamental level INSERT Service style indicated by the *Requested Insert Style* IE.

* + - 1. INSERT Service *RIC Indication Header* IE contents

This **INSERT** Service style uses *E2SM-RC Indication Header Format 3* IE (9.2.1.3.3).

The *RIC Indication Header* IE may contain the *UE ID* IE, to indicate to the Near-RT RIC that this INSERT indication is only for that specific UE.

* + - 1. INSERT Service *RIC Indication Message* IE contents

This **INSERT** Service style uses *E2SM-RC Indication Message Format 6* IE (9.2.1.4.6).

For each Insert Indication action, the corresponding *Insert Indication ID* IE and the associated RAN parameters follow the definitions of the selected fundamental level INSERT Service style indicated by the *Indicated Insert Style* IE.

* + - 1. INSERT Service *RIC Call Process ID* IE contents

This **INSERT** Service style uses *E2SM-RC Call Process ID Format 1* IE (9.2.1.5.1).

## Supported RIC CONTROL Services

### CONTROL Service Style Types

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **RIC Style Type** | **Style Name** | **Style Description** |
| 1 | Radio Bearer control | Used to modify the configuration the Radio Bearer Control (RBC) related parameters and/or behaviours at the E2 Node for a specific UE or a UE group.  Belongs to Fundamental level CONTROL Services. |
| 2 | Radio resource allocation control | Used to modify the configuration the Radio Resource Allocation control related parameters and/or behaviours at the E2 Node for a specific E2 Node, cell, slice, UE and/or QoS  Belongs to Fundamental level CONTROL Services. |
| 3 | Connected mode mobility control | Used to initiate a connected mode mobility procedure (Handover or Conditional Handover), optionally with Dual Active Protocol Stack (DAPS), for a specific UE towards either a target cell (for HO) or a list of candidate cells (for CHO)  Belongs to Fundamental level CONTROL Services. |
| 4 | Radio access control | Used to modify Radio access related functions used to control UE access to cells  Belongs to Fundamental level CONTROL Services. |
| 5 | Dual connectivity (DC) control | Used to initiate Dual connectivity (DC) mechanisms Belongs to Fundamental level CONTROL Services. |
| 6 | Carrier Aggregation (CA) control | Used to initiate Carrier Aggregation (CA) mechanisms Belongs to Fundamental level CONTROL Services. |
| 7 | Idle mode mobility control | Used to modify Idle mode mobility related functions used to control UE reselection of cells  Belongs to Fundamental level CONTROL Services. |
| 8 | UE identification, information and assignment | Used for *Explicit UE list* assignment, UE information report generation and to complete UE identification. These services are used to support other RIC services.  Belongs to Fundamental level CONTROL Services. |
| 9 | Measurement Reporting Configuration control | Used to control the measurement report configuration for a given UE or a group of UEs. |
| 10 | Beamforming Configuration control | Used to control beamforming configuration for a specific UE. |
| 255 | Multiple Actions Control | Used for multiple actions of the selected fundamental level CONTROL Service style(s).  Belongs to integrated level CONTROL Services. |

</div>

Each of the Control Service styles 1-10 listed above points to adopt the following common features:

* Control Action ID: The index ID for the individual control action under a given Control Service style.
* Control Action Name: Indicates the functionality of the E2 node which is controlled by Near-RT RIC
* Control Action Description: Describes the control action and functionality of the receiving E2 Node.
* Associated RAN parameters: Identifies the RAN parameters to be controlled by Near-RT RIC pertaining to the given control action and used in the optional RIC Control Outcome to carry information.

The Control Service style 255 supports multiple parallel actions configured per *RIC Control Request* message by reusing the control actions and the associated RAN parameters defined in the selected fundamental level Control Service style(s).

The details of the individual Control Service styles are provided in subsequent sections.

The CONTROL Service supports UE-specific control actions and UE group-specific control actions. In the case of a UE group-based control action, the control action is defined for a group of UEs, and the individual entities of each UE (such as DRBs, QoS flows, etc.) in the group that match the entity filter condition, shall be subject to the control action.

### CONTROL Service Style 1: Radio Bearer Control

#### CONTROL Service Style description

This **CONTROL** Service style provides a mechanism to initiate or resume a radio bearer control related process using the *RIC Control Message* IE and associated *RIC Control Header* IE and the optional *RIC Call Process ID* IE used when resuming a call process following a previous INSERT service. The corresponding INSERT service is service style 1 covered in Clause 7.5.2.

Applications of this service include:

* + - * + DRB QoS Modification, to tune DRB level QoS related parameters to meet the QoS optimization targets.
        + QoS Flow (re)mapping, to adjust the mapping relationship between QoS flows and DRBs.
        + Logical channel (re)configuration
        + Radio Bearer Admission Control, to configure DRB admission control such as reject or release may be applied
        + Split bearer and PDCP duplication control

The supported RAN control actions and the corresponding RAN parameters are as follows.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **Control Action ID** | **Control Action Name** | **Control Action description** | **Is UE group- based control action**  **allowed** | **Associated RAN**  **Parameters** |
| 1 | DRB QoS  Configuration | To control the configuration of the QoS profile of a DRB or a set of DRBs | YES | 8.4.2.1 |
| 2 | QoS flow mapping  configuration | To control the multiplexing of QoS flows to a DRB (addition, modification, deletion | FFS | 8.4.2.2 |
| 3 | Logical channel  configuration | To control the LCID configuration of a DRB or a set of DRBs | YES | 8.4.2.3 |
| 4 | Radio admission control | To control radio admission of a UE | FFS | 8.4.2.4 |
| 5 | DRB  termination control | To control the change in bearer termination point | FFS | 8.4.2.5 |
| 6 | DRB split ratio control | To control the split ratio of a DRB across its RLC entities | FFS | 8.4.2.6 |
| 7 | PDCP  Duplication control | To control activation or de-activation of PDCP duplication for a DRB or a set of DRBs, and control/configure the number of legs or RLC entities for the DRB(s) | YES | 8.4.2.7 |

</div>

* + - 1. CONTROL Service *RIC Control Header* IE contents

This **CONTROL** Service *RIC Control Header* IE has the *UE ID* IE, the *Control* Service Style ID, the *Control Action ID* IE and the *RIC Control Decision* IE that indicates whether the RIC accepts or rejects the INDICATION request from the previous incoming INSERT indication, if any (with matching *RAN Call Process ID* IE), from the E2 node.

This **CONTROL** style uses *E2SM-RC Control Header Format 1* IE (9.2.1.6.1).

For UE group-based CONTROL action, this CONTROL style uses the *E2SM-RC Control Header Format 3* IE (9.2.1.6.3), where the *RIC Control Header* IE has the *UE Group ID* IE for identifying the UE group, the *UE Group Definition* IE for defining the UE group, along with the *RIC Style Type* IE and the *Control Action ID* IE.

* + - 1. CONTROL Service *RIC Control Message* IE contents

This **CONTROL** Service *RIC Control Message* IE contains the sequence of RAN parameters, associated with a given Control Action within this Control Service style, controlled by the near-RT RIC along with the values for these parameters, as set by the RIC.

This **CONTROL** style uses *E2SM-RC Control Message Format 1* IE (9.2.1.7.1).

If there is a previous INSERT Indication Request to the RIC, then the corresponding Control Action ID used by the RIC for the ensuing CONTROL Request message is the one that matches the Insert Indication ID, among the ones provided in the table shown in Clause 7.6.2.1. It is to be noted that the control action "Radio admission control" (corresponding to control action ID 4) is used only as a response to an incoming INSERT indication with the corresponding service style and indication request ID and cannot be used asynchronously without a previous INSERT indication.

For UE group-based CONTROL action, this CONTROL style uses the *E2SM-RC Control Message Format 3* IE (9.2.1.7.3). The *RIC Control Message* IE includes the list of filter definitions for identifying the relevant RAN entities of the UE group, given by the *Entity Filter Definition* IE in the *List of entity filters* IE, along with the identifier of the entity filter given by the *Entity Filter ID* IE, for which the control action is applicable. The sequence of RAN parameters controlled by the Near-RT RIC for the entities of the UEs in the group, corresponding to each entity filter, is given by the *List of RAN control parameters for the matching entities* IE.

* + - 1. CONTROL Service *RIC Call Process ID* IE contents

This **CONTROL** Service *RIC Call Process ID* IE contains identifier used by the Near-RT RIC to allow the RAN Function to match the outgoing **INSERT** Service message with a subsequent incoming **CONTROL** Service message.

This **CONTROL** Service style uses *E2SM-RC Call Process ID Format 1* IE (9.2.1.5.1).

* + - 1. CONTROL Service *RIC Control Outcome* IE contents

This **CONTROL** Service *RIC Control Outcome* IE contains a transparent container that is used to carry the outcome of processing the incoming *RIC Control Request* message. However, this does not reflect the outcome of the call processing upon receiving the message.

This **CONTROL** style uses *E2SM-RC Control Outcome Format 1* IE (9.2.1.8.1).

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **RAN**  **Parameter ID** | **RAN Parameter Name** | **RAN Parameter Type** | **Parameter Description** |
| 1 | ReceivedTimestamp | OCTET STRING (SIZE(8)) | Time RIC Control Request message received by RAN Function over E2 interface.  Carries UTC time encoded as the 64-bit timestamp format as defined in Clause 6 of IETF RFC 5905 [30] containing both seconds and fraction parts. |

</div>

### CONTROL Service Style 2: Radio Resource Allocation Control

#### CONTROL Service Style description

This **CONTROL** Service style provides a mechanism to initiate or resume a radio resource allocation control related process using the *RIC Control Message* IE and associated *RIC Control Header* IE and the optional *RIC Call Process ID* IE used when resuming a call process following a previous INSERT service. The corresponding INSERT service is service style 2 covered in Clause 7.5.3.

Applications of this service include:

* + - * + Discontinuous Reception (DRX) control
        + Scheduling request (SR) control
        + Semi-Persistent Scheduling (SPS) control
        + Configured Grant control
        + Channel State Information (CSI) report configuration control
        + Slice level PRB quota
        + Sounding Reference Signal (SRS) configuration control
        + CSI resource configuration control
        + DMRS-Downlink configuration control

The supported RAN control actions and the corresponding RAN parameters are as follows.

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **Control Action**  **ID** | **Control Action Name** | **Control Action description** | **Associated RAN**  **Parameters** |
| 1 | DRX  parameter configuration | To control the configuration of DRX parameters | 8.4.3.1 |
| 2 | SR periodicity configuration | To control the configuration of SR periodicity parameters | 8.4.3.2 |
| 3 | SPS  parameters configuration | To control the configuration of SPS parameters | 8.4.3.3 |
| 4 | Configured grant control | To control the configuration of uplink grants to the UE | 8.4.3.4 |
| 5 | CSI reports configuration | To control the configuration of CSI reports. | 8.4.3.5 |
| 6 | Slice-level PRB quota | To control the radio resource management policy for slice-specific PRB quota allocation | 8.4.3.6 |
| 7 | DMRS-  Downlink configuration | To control the configuaration of DMRS for PDSCH | 8.4.3.7 |
| 8 | SRS  Configuration | To control the configuration of the SRS transmissions | 8.4.3.8 |
| 9 | CSI Resource Configuration | To control the configuration of the CSI resources | 8.4.3.9 |

</div>

* + - 1. CONTROL Service *RIC Control Header* IE contents

This **CONTROL** Service *RIC Control Header* IE has the *UE ID* IE, the *Control* Service Style ID, the *Control Action ID* IE and the *RIC Control Decision* IE that indicates whether the RIC accepts or rejects the INDICATION request from the previous incoming INSERT indication, if any (with matching *RAN Call Process ID* IE), from the E2 node.

This **CONTROL** style uses *E2SM-RC Control Header Format 1* IE (9.2.1.6.1).

* + - 1. CONTROL Service *RIC Control Message* IE contents

This **CONTROL** Service *RIC Control Message* IE contains the sequence of RAN parameters, associated with a given Control Action within this Control Service style, controlled by the near-RT RIC along with the values for these parameters, as set by the RIC.

This **CONTROL** style uses *E2SM-RC Control Message Format 1* IE (9.2.1.7.1).

If there is a previous INSERT Indication Request to the RIC, then the corresponding Control Action ID used by the RIC for the ensuing CONTROL Request message is the one that matches the Insert Indication ID, among the ones provided in the table shown in Clause 7.6.3.1.

* + - 1. CONTROL Service *RIC Call Process ID* IE contents

This **CONTROL** Service *RIC Call Process ID* IE contains identifier used by the Near-RT RIC to allow the RAN Function to match the outgoing **INSERT** Service message with a subsequent incoming **CONTROL** Service message.

This **CONTROL** Service style uses *E2SM-RC Call Process ID Format 1* IE (9.2.1.5.1).

* + - 1. CONTROL Service *RIC Control Outcome* IE contents

This **CONTROL** Service *RIC Control Outcome* IE contains a transparent container that is used to carry the outcome of processing the incoming *RIC Control Request* message. However, this does not reflect the outcome of the call processing upon receiving the message.

This **CONTROL** style uses *E2SM-RC Control Outcome Format 1* IE (9.2.1.8.1).

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **RAN**  **Parameter ID** | **RAN Parameter Name** | **RAN Parameter Type** | **Parameter Description** |
| 1 | ReceivedTimestamp | OCTET STRING (SIZE(8)) | Time RIC Control Request message received by RAN Function over E2 interface.  Carries UTC time encoded as the 64-bit timestamp format as defined in Clause 6 of IETF RFC 5905 [30] containing both seconds and fraction parts. |

</div>

### CONTROL Service Style 3: Connected Mode Mobility Control

#### CONTROL Service Style description

This **CONTROL** Service style provides a mechanism to initiate or resume a connected mode mobility control related process using the *RIC Control Message* IE and associated *RIC Control Header* IE and the optional *RIC Call Process ID* IE used when resuming a call process following a previous INSERT service. The corresponding INSERT service is service style 3 covered in Clause 7.5.4.

Applications of this service include:

* + - * + Handover (HO) initiation for a selected UE towards a target cell
        + Conditional handover (CHO) initiation for a selected UE towards a list of candidate cell(s)
        + Handover (HO) initiation with Dual Active Protocol Stack (DAPS) for a selected UE towards a target cell The supported RAN control actions and the corresponding RAN parameters are as follows.

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **Control**  **Action ID** | **Control Action Name** | **Control Action description** | **Associated RAN parameters** |
| 1 | Handover Control | To control the handover of the primary cell and subsequent secondary cell reselection | 8.4.4.1 |
| 2 | Conditional Handover  Control | To control the conditional handover involving target primary cells | 8.4.4.2 |
| 3 | DAPS (Dual Active Protocol Stack) Handover Control | To control the DAPS handover of the UE between source cell and target cell | 8.4.4.3 |

</div>

* + - 1. CONTROL Service *RIC Control Header* IE contents

This **CONTROL** Service *RIC Control Header* IE has the *UE ID* IE, the *Control* Service Style ID, the *Control Action ID* IE and the *RIC Control Decision* IE that indicates whether the RIC accepts or rejects the INDICATION request from the previous incoming INSERT indication, if any (with matching *RAN Call Process ID* IE), from the E2 node.

This **CONTROL** style uses *E2SM-RC Control Header Format 1* IE (9.2.1.6.1).

* + - 1. CONTROL Service *RIC Control Message* IE contents

This **CONTROL** Service *RIC Control Message* IE contains the sequence of RAN parameters, associated with a given Control Action within this Control Service style, controlled by the near-RT RIC along with the values for these parameters, as set by the RIC.

This **CONTROL** style uses *E2SM-RC Control Message Format 1* IE (9.2.1.7.1).

If there is a previous INSERT Indication Request to the RIC, then the corresponding Control Action ID used by the RIC for the ensuing CONTROL Request message is the one that matches the Insert Indication ID, among the ones provided in the table shown in Clause 7.6.4.1.

* + - 1. CONTROL Service *RIC Call Process ID* IE contents

This **CONTROL** Service *RIC Call Process ID* IE contains identifier used by the Near-RT RIC to allow the RAN Function to match the outgoing **INSERT** Service message with a subsequent incoming **CONTROL** Service message.

This **CONTROL** Service style uses *E2SM-RC Call Process ID Format 1* IE (9.2.1.5.1).

* + - 1. CONTROL Service *RIC Control Outcome* IE content

This **CONTROL** Service *RIC Control Outcome* IE contains a transparent container that is used to carry the outcome of processing the incoming *RIC Control Request* message. However, this does not reflect the outcome of the call processing upon receiving the message.

This **CONTROL** style uses *E2SM-RC Control Outcome Format 1* IE (9.2.1.8.1).

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **RAN**  **Parameter ID** | **RAN Parameter Name** | **RAN Parameter Type** | **Parameter Description** |
| 1 | ReceivedTimestamp | OCTET STRING (SIZE(8)) | Time RIC Control Request message received by RAN Function over E2 interface.  Carries UTC time encoded as the 64-bit timestamp format as defined in Clause 6 of IETF RFC 5905 [30] containing both seconds and  fraction parts. |

</div>

### CONTROL Service Style 4: Radio Access Control

#### CONTROL Service Style description

This **CONTROL** Service style provides a mechanism to initiate or resume a radio access control related process using the *RIC Control Message* IE and associated *RIC Control Header* IE and the optional *RIC Call Process ID* IE used when resuming a call process following a previous INSERT service. The corresponding INSERT service is service style 4 covered in Clause 7.5.5.

Applications of this service include:

* + - * + RACH back-off
        + RRC connection reject
        + RRC connection release
        + Access barring
        + UE admission

The supported RAN control actions and the corresponding RAN parameters are as follows.

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **Control Action ID** | **Control Action Name** | **Control Action Description** | **Associated RAN Parameters** |
| 1 | UE Admission Control | To control UE admission. | 8.4.5.1 |
| 2 | RACH backoff control | To control RACH backoff parameters | 8.4.5.2 |
| 3 | Access barring control | To control access barring configuration parameters | 8.4.5.3 |
| 4 | RRC  Connection Release control | To control release of RRC connection of the UE | 8.4.5.4 |
| 5 | RRC  Connection Reject control | To reject RRC connection request of the UE | 8.4.5.5 |

</div>

* + - 1. CONTROL Service *RIC Control Header* IE contents

This **CONTROL** Service *RIC Control Header* IE has the *UE ID* IE, the *Control* Service Style ID, the *Control Action ID* IE and the *RIC Control Decision* IE that indicates whether the RIC accepts or rejects the INDICATION request from the previous incoming INSERT indication, if any (with matching *RAN Call Process ID* IE), from the E2 node.

This **CONTROL** style uses *E2SM-RC Control Header Format 1* IE (9.2.1.6.1).

* + - 1. CONTROL Service *RIC Control Message* IE contents

This **CONTROL** Service *RIC Control Message* IE contains the sequence of RAN parameters, associated with a given Control Action within this Control Service style, controlled by the near-RT RIC along with the values for these parameters, as set by the RIC.

This **CONTROL** style uses *E2SM-RC Control Message Format 1* IE (9.2.1.7.1).

If there is a previous INSERT Indication Request to the RIC, then the corresponding Control Action ID used by the RIC for the ensuing CONTROL Request message is the one that matches the Insert Indication ID, among the ones provided in the table shown in Clause 7.6.5.1. However, the control action "RRC Connection Reject control" (corresponding to control action ID 5) can also be used to handle an incoming INSERT Indication Request corresponding to service style 4 that uses Indication request ID 1 (that corresponds to UE Admission Control Request). It is also to be noted that the control action "UE admission control" (corresponding to control action ID 1) is used only as a response to an incoming INSERT indication with the corresponding service style and indication request ID and cannot be used asynchronously without a previous INSERT indication.

* + - 1. CONTROL Service *RIC Call Process ID* IE contents

This **CONTROL** Service *RIC Call Process ID* IE contains identifier used by the Near-RT RIC to allow the RAN Function to match the outgoing **INSERT** Service message with a subsequent incoming **CONTROL** Service message.

This **CONTROL** Service style uses *E2SM-RC Call Process ID Format 1* IE (9.2.1.5.1).

* + - 1. CONTROL Service *RIC Control Outcome* IE contents

This **CONTROL** Service *RIC Control Outcome* IE contains a transparent container that is used to carry the outcome of processing the incoming *RIC Control Request* message. However, this does not reflect the outcome of the call processing upon receiving the message.

This **CONTROL** style uses *E2SM-RC Control Outcome Format 1* IE (9.2.1.8.1).

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **RAN**  **Parameter ID** | **RAN Parameter Name** | **RAN Parameter Type** | **Parameter Description** |
| 1 | ReceivedTimestamp | OCTET STRING (SIZE(8)) | Time RIC Control Request message received by RAN Function over E2 interface.  Carries UTC time encoded as the 64-bit timestamp format as defined in Clause 6 of IETF RFC 5905 [30] containing both seconds and  fraction parts. |

</div>

### CONTROL Service Style 5: Dual Connectivity Control

#### CONTROL Service Style description

This **CONTROL** Service style provides a mechanism to initiate or resume a dual connectivity control related process using the *RIC Control Message* IE and associated *RIC Control Header* IE and the optional *RIC Call Process ID* IE used when resuming a call process following a previous INSERT service. The corresponding INSERT service is service style 5 covered in Clause 7.5.6.

Applications of this service include:

* + - * + Dual connectivity (EN-DC, MR-DC or NR-NR DC) initiation for a selected UE towards a target secondary cell (PScell)
        + Secondary cell change for a selected UE towards a target secondary cell (PScell)
        + Dual connectivity (EN-DC, MR-DC or NR-NR DC) modification for a selected UE
        + Dual connectivity (EN-DC, MR-DC or NR-NR DC) release initiation for a selected UE
        + Change of bearer termination point (MN or SN) and/or bearer types for a selected UE The supported RAN control actions and the corresponding RAN parameters are as follows.

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **Control Action ID** | **Control Action Name** | **Control Action Description** | **Associated RAN**  **parameters** |
| 1 | DC Secondary Node  Addition Control | To control secondary node addition for dual connectivity | 8.4.6.1 |
| 2 | DC Secondary Node Modification and release  Control | To control modification and release of secondary node for DC | 8.4.6.2 |
| 3 | DC PSCell Change control | To control PSCell change of a UE within a secondary node or to another secondary node | 8.4.6.3 |
| 4 | DC Secondary  Node Change Control | To control changing the secondary node of a UE for DC | 8.4.6.4 |

</div>

* + - 1. CONTROL Service *RIC Control Header* IE contents

This **CONTROL** Service *RIC Control Header* IE has the *UE ID* IE, the *Control* Service Style ID, the *Control Action ID* IE and the *RIC Control Decision* IE that indicates whether the RIC accepts or rejects the INDICATION request from the previous incoming INSERT indication, if any (with matching *RAN Call Process ID* IE), from the E2 node.

This **CONTROL** style uses *E2SM-RC Control Header Format 1* IE (9.2.1.6.1).

* + - 1. CONTROL Service *RIC Control Message* IE contents

This **CONTROL** Service *RIC Control Message* IE contains the sequence of RAN parameters, associated with a given Control Action within this Control Service style, controlled by the near-RT RIC along with the values for these parameters, as set by the RIC.

This **CONTROL** style uses *E2SM-RC Control Message Format 1* IE (9.2.1.7.1).

If there is a previous INSERT Indication Request to the RIC, then the corresponding Control Action ID used by the RIC for the ensuing CONTROL Request message is the one that matches the Insert Indication ID, among the ones provided in the table shown in Clause 7.6.6.1.

* + - 1. CONTROL Service *RIC Call Process ID* IE contents

This **CONTROL** Service *RIC Call Process ID* IE contains identifier used by the Near-RT RIC to allow the RAN Function to match the outgoing **INSERT** Service message with a subsequent incoming **CONTROL** Service message.

This **CONTROL** Service style uses *E2SM-RC Call Process ID Format 1* IE (9.2.1.5.1).

* + - 1. CONTROL Service *RIC Control Outcome* IE contents

This **CONTROL** Service *RIC Control Outcome* IE contains a transparent container that is used to carry the outcome of processing the incoming *RIC Control Request* message. However, this does not reflect the outcome of the call processing upon receiving the message.

This **CONTROL** style uses *E2SM-RC Control Outcome Format 1* IE (9.2.1.8.1).

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **RAN**  **Parameter ID** | **RAN Parameter Name** | **RAN Parameter Type** | **Parameter Description** |
| 1 | ReceivedTimestamp | OCTET STRING (SIZE(8)) | Time RIC Control Request message received by RAN Function over E2 interface.  Carries UTC time encoded as the 64-bit timestamp format as defined in Clause 6 of IETF  RFC 5905 [30] containing both seconds and fraction parts. |

</div>

### CONTROL Service Style 6: Carrier Aggregation Control

#### CONTROL Service Style description

This **CONTROL** Service style provides a mechanism to initiate or resume a carrier aggregation control related process using the *RIC Control Message* IE and associated *RIC Control Header* IE and the optional *RIC Call Process ID* IE used when resuming a call process following a previous INSERT service. The corresponding INSERT service is service style 6 covered in Clause 7.5.7.

Applications of this service include:

* + - * + Carrier Aggregation (CA) initiation for a selected UE towards a target secondary cell or cells
        + Secondary cell change for a selected UE towards a target secondary cell or cells
        + Carrier Aggregation (CA) modification for a selected UE
        + Carrier Aggregation (CA) release initiation for a selected UE

The supported RAN control actions and the corresponding RAN parameters are as follows.

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **Control Action**  **ID** | **Control Action Name** | **Control Action Description** | **Associated RAN**  **parameters** |
| 1 | CA Secondary Cell Addition  Control | To control secondary cell addition for a UE | 8.4.7.1 |
| 2 | CA Secondary Cell Modification  Control | To control modification and release of secondary cells for a UE | 8.4.7.2 |

</div>

* + - 1. CONTROL Service *RIC Control Header* IE contents

This **CONTROL** Service *RIC Control Header* IE has the *UE ID* IE, the *Control* Service Style ID, the *Control Action ID* IE and the *RIC Control Decision* IE that indicates whether the RIC accepts or rejects the INDICATION request from the previous incoming INSERT indication, if any (with matching *RAN Call Process ID* IE), from the E2 node.

This **CONTROL** style uses *E2SM-RC Control Header Format 1* IE (9.2.1.6.1).

* + - 1. CONTROL Service *RIC Control Message* IE contents

This **CONTROL** Service *RIC Control Message* IE contains the sequence of RAN parameters, associated with a given Control Action within this Control Service style, controlled by the near-RT RIC along with the values for these parameters, as set by the RIC.

This **CONTROL** style uses *E2SM-RC Control Message Format 1* IE (9.2.1.7.1).

If there is a previous INSERT Indication Request to the RIC, then the corresponding Control Action ID used by the RIC for the ensuing CONTROL Request message is the one that matches the Insert Indication ID, among the ones provided in the table shown in Clause 7.6.7.1.

* + - 1. CONTROL Service *RIC Call Process ID* IE contents

This **CONTROL** Service *RIC Call Process ID* IE contains identifier used by the Near-RT RIC to allow the RAN Function to match the outgoing **INSERT** Service message with a subsequent incoming **CONTROL** Service message.

This **CONTROL** Service style uses *E2SM-RC Call Process ID Format 1* IE (9.2.1.5.1).

* + - 1. CONTROL Service *RIC Control Outcome* IE contents

This **CONTROL** Service *RIC Control Outcome* IE contains a transparent container that is used to carry the outcome of processing the incoming *RIC Control Request* message. However, this does not reflect the outcome of the call processing upon receiving the message.

This **CONTROL** style uses *E2SM-RC Control Outcome Format 1* IE (9.2.1.8.1).

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **RAN**  **Parameter ID** | **RAN Parameter Name** | **RAN Parameter Type** | **Parameter Description** |
| 1 | ReceivedTimestamp | OCTET STRING (SIZE(8)) | Time RIC Control Request message received by RAN Function over E2 interface.  Carries UTC time encoded as the 64-bit timestamp format as defined in Clause 6 of IETF RFC 5905 [30] containing both seconds and fraction parts. |

</div>

### CONTROL Service Style 7: Idle Mode Mobility Control

#### CONTROL Service Style description

This **CONTROL** Service style provides a mechanism to initiate or resume a idle mode mobility control related process using the *RIC Control Message* IE and associated *RIC Control Header* IE and the optional *RIC Call Process ID* IE used when resuming a call process following a previous INSERT service. The corresponding INSERT service is service style 6 covered in Clause 7.5.7.

Applications of this service include:

* + - * + Intra-frequency, inter-frequency, inter-RAT cell reselection priority
        + Idle timers

The supported RAN control actions and the corresponding RAN parameters are as follows.

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **Control Action ID** | **Control Action Name** | **Control Action Description** | **Associated RAN**  **parameters** |
| 1 | Cell re-selection priority control | To assign cell re-selection priorities for a UE during idle mode (RRC\_IDLE) | 8.4.8.1 |

</div>

* + - 1. CONTROL Service *RIC Control Header* IE contents

This **CONTROL** Service *RIC Control Header* IE has the *UE ID* IE, the *Control* Service Style ID, the *Control Action ID* IE and the *RIC Control Decision* IE that indicates whether the RIC accepts or rejects the INDICATION request from the previous incoming INSERT indication, if any (with matching *RAN Call Process ID* IE), from the E2 node.

This **CONTROL** style uses *E2SM-RC Control Header Format 1* IE (9.2.1.6.1).

* + - 1. CONTROL Service *RIC Control Message* IE contents

This **CONTROL** Service *RIC Control Message* IE contains the sequence of RAN parameters, associated with a given Control Action within this Control Service style, controlled by the near-RT RIC along with the values for these parameters, as set by the RIC.

This **CONTROL** style uses *E2SM-RC Control Message Format 1* IE (9.2.1.7.1)

If there is a previous INSERT Indication Request to the RIC, then the corresponding Control Action ID used by the RIC for the ensuing CONTROL Request message is the one that matches the Insert Indication ID, among the ones provided in the table shown in Clause 7.6.8.1.

* + - 1. CONTROL Service *RIC Call Process ID* IE contents

This **CONTROL** Service *RIC Call Process ID* IE contains identifier used by the Near-RT RIC to allow the RAN Function to match the outgoing **INSERT** Service message with a subsequent incoming **CONTROL** Service message.

This **CONTROL** Service style uses *E2SM-RC Call Process ID Format 1* IE (9.2.1.5.1).

* + - 1. CONTROL Service *RIC Control Outcome* IE contents

This **CONTROL** Service *RIC Control Outcome* IE contains a transparent container that is used to carry the outcome of processing the incoming *RIC Control Request* message. However, this does not reflect the outcome of the call processing upon receiving the message.

This **CONTROL** style uses *E2SM-RC Control Outcome Format 1* IE (9.2.1.8.1).

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **RAN**  **Parameter ID** | **RAN Parameter Name** | **RAN Parameter Type** | **Parameter Description** |
| 1 | ReceivedTimestamp | OCTET STRING (SIZE(8)) | Time RIC Control Request message received by RAN Function over E2 interface.  Carries UTC time encoded as the 64-bit timestamp format as defined in Clause 6 of IETF RFC 5905 [30] containing both seconds and  fraction parts. |

</div>

### CONTROL Service Style 8: UE information and assignment

#### CONTROL Service Style description

This **CONTROL** Service style provides a mechanism to both directly and indirectly monitor and control UE information and to add or remove explicit UE assignments to Explicit UE lists.

Applications of this service include:

* + - * + UE to Explicit UE list assignment command: Used to Add or Remove the nominated UE to the *Explicit UE list*

name, also used to request list of supported *Explicit UE list*

* + - * + UE information request: Used to obtain UE information including list of *Explicit UE List* assignments
        + UE identification request: Used to complete UE identification with *Partial UE ID* carried in *RIC Control Header*

IE

The supported RAN control actions and the corresponding RAN parameters are as follows.

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **Control**  **Action ID** | **Control Action Name** | **Control Action Description** | **RAN Parameter assignment** |
| 1 | UE to Explicit UE  list assignment command | - To modify (add, remove, change) the assignment  of a target UE to an Explicit UE list and send list of supported *Explicit UE list* | 8.4.9.1 |
| 2 | UE information request | - To provide information on a UE (including list of assigned Explicit UE List) | 8.4.9.2 |
| 3 | UE identification request | - To complete UE identification about a target UE | 8.4.9.3 |

</div>

* + - 1. CONTROL Service *RIC Control Header* IE contents

This **CONTROL** Service *RIC Control Header* IE contains the *UE ID* IE, *RIC Style Type* IE and *Control Action ID* IE. There is no previous INSERT Indication request from the E2 node for this service style.

Note that for RIC Action ID =1 "UE to Explicit UE list assignment command", the *UE ID* IE in the *RIC Control Header* IE shall be ignored when Assignment command=3 "Send list of supported Explicit UE list" (see clause 8.4.9.1).

This **CONTROL** style uses:

* For the case of Control Action ID =1 "UE to Explicit UE list assignment command" and Control Action ID =2 "UE information request", *E2SM-RC Control Header Format 1* IE (9.2.1.6.1) to be used to identify a specific UE.
* For the case of Control Action 3 "UE identification request", *E2SM-RC Control Header Format 4* IE (9.2.1.6.4) to be used to identify one or more UE matching a Partial UE ID.
  + - 1. CONTROL Service *RIC Control Message* IE contents

This **CONTROL** Service *RIC Control Message* IE contains a list of RAN Parameters used to support the information list of Control actions shown in Clause 7.6.9.1.

This **CONTROL** style uses:

* + - * + For the case of Control Action = 1 "UE to Explicit UE list assignment command", E2SM-RC Control Message Format 1 IE (9.2.1.7.1), to be used to carry a sequence of RAN Parameters with values.
        + For the case of Control Action = 2 "UE information request", *E2SM-RC Control Message Format* 4 IE (9.2.1.7.4), to be used to carry of sequence of RAN Parameter Definitions.
        + For the case of Control Action = 3 "UE identification request", *E2SM-RC Control Message Format* 5 IE (9.2.1.7.5) containing no information, to be used to satisfy E2AP requirements for a mandatory *RIC Control Message* IE.
      1. CONTROL Service *RIC Call Process ID* IE contents

This **CONTROL** Service *RIC Call Process ID* IE is not supported for this CONTROL service style.

* + - 1. CONTROL Service *RIC Control Outcome* IE contents

This **CONTROL** Service *RIC Control Outcome* IE contains a list of RAN Parameters and is used to carry information concerning the outcome of executing the RIC Control Request.

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **Control Action ID** | **Control Action Name** | **Expected information** | **RAN Parameter assignment** |
| 1 | UE to Explicit UE list assignment command | Success case:   * not used (for add/remove/change assignment commands) * list of supported Explicit UE list (for assignment command =3)   Failure case:   * Failure Cause | 8.4.9.1 |
| 2 | UE Information request | Success case: Requested UE information  Failure case: UE not known error | 8.4.9.2 |
| 3 | UE identification request | Success case: List of UE ID matching partial UE ID  Failure case: UE not known error | 8.4.9.3 |

</div>

This **CONTROL** style uses *E2SM-RC Control Outcome Format 3* IE (9.2.1.8.3).

### CONTROL Service Style 255: Multiple Actions Control

#### CONTROL Service Style description

This **CONTROL** Service style provides a mechanism to initiate multiple control actions of the selected fundamental level CONTROL Service style(s) that should be processed in an integrated manner by the E2 Node, i.e. the RIC Control procedure is considered failed if at least one of the indicated control actions is unsuccessfully executed, and RIC CONTROL FAILURE message shall be sent containing the RIC Control Outcome for failed Control Action.

* + - 1. CONTROL Service *RIC Control Header* IE contents

This **CONTROL** style uses *E2SM-RC Control Header Format 2* IE (9.2.1.6.2).

The *RIC Indication Header* IE may contain the *UE ID* IE to indicate to the E2 Node that this control request is only for that specific UE. The *RIC Control Decision* IE may also be included to indicate to the E2 Node whether the Near-RT RIC accepts or rejects the INDICATION request from the previous incoming INSERT indication, if any (with matching *RAN Call Process ID* IE), from the E2 node.

* + - 1. CONTROL Service *RIC Control Message* IE contents

This **CONTROL** style uses *E2SM-RC Control Message Format 2* IE (9.2.1.7.2).

The RAN control actions and the corresponding RAN parameters under a fundamental level Control Service style contained in the *RIC Control Message* IE follows the definitions of the indicated Control Service style.

If this control request is sent as a response to a previous INSERT indication from the E2 node, then the *Control Action ID* IE in the *RIC Control Message* IE is set in accordance with the triggered Insert Indication ID.

* + - 1. CONTROL Service *RIC Call Process ID* IE contents

This **CONTROL** Service style uses *E2SM-RC Call Process ID Format 1* IE (9.2.1.5.1).

The optional *RIC Call Process ID* IE is used when resuming a call process following a previous INSERT indication from the E2 Node.

* + - 1. CONTROL Service *RIC Control Outcome* IE contents

This **CONTROL** style uses *E2SM-RC Control Outcome Format 2* IE (9.2.1.8.2).

For each control action indicated by the *Control Action ID* IE, the associated RAN parameters are used to carry the corresponding processing outcome.

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **RAN**  **Parameter ID** | **RAN Parameter Name** | **RAN Parameter Type** | **Parameter Description** |
| 1 | ReceivedTimestamp | OCTET STRING (SIZE(8)) | Time RIC Control Request message received by RAN Function over E2 interface.  Carries UTC time encoded as the 64-bit timestamp format as defined in Clause 6 of IETF RFC 5905 [30] containing both seconds and  fraction parts. |
| 2 | Cause | OCTET STRING | FFS |

</div>

### CONTROL Service Style 9: Measurement Reporting Configuration Control

#### CONTROL Service Style description

This CONTROL Service style provides a mechanism to add, modify or delete measurement report configuration for the UE to the network using the *RIC Control Message* IE and the *RIC Control Header* IE.

Applications of this service include:

* + - * + Add configuration of measurement objects, reporting objects, measurement gaps, etc. for UE reporting, pertaining to a given UE or a group of UEs
        + Modify configuration of measurement objects, reporting objects, measurement gaps, etc. for UE reporting, pertaining to a given UE or a group of UEs
        + Delete configuration of measurement objects, reporting objects, measurement gaps, etc. for UE reporting, pertaining to a given UE or a group of UEs

The supported RAN control actions and the corresponding RAN parameters are as follows:

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **Control Action**  **ID** | **Control Action Name** | **Control Action description** | **Is UE group- based control**  **action allowed** | **Associated RAN Parameters** |
| 1 | Add MR Configuration | To add configuration of measurement objects, reporting objects, measurement gaps for a given  UE or a group of UEs | YES | 8.4.10.1 |
| 2 | Modify MR Configuration | To modify configuration of measurement objects, reporting objects, measurement gaps for a given UE or a group of UEs | YES | 8.4.10.2 |
| 3 | Delete MR Configuration | To delete configuration of measurement objects, reporting objects, measurement gaps for a given UE or a group of UEs | YES | 8.4.10.3 |

</div>

* + - 1. CONTROL Service *RIC Control Header* IE contents

The CONTROL Service *RIC Control Header* IE has the *UE ID* IE, the *Control Service Style ID* IE, the *Control Action ID* IE. The *RIC Control Decision* IE for this service style is currently not supported for this control service style.

This **CONTROL** style uses *E2SM-RC Control Header Format 1* IE (9.2.1.6.1).

For UE group-based CONTROL action, this CONTROL style uses the *E2SM-RC Control Header Format 3* IE (9.2.1.6.3), where the *RIC Control Header* IE has the *UE Group ID* IE for identifying the UE group, the *UE Group Definition* IE for defining the UE group in terms of one or more associated RAN parameters, along with the *RIC Style Type* IE and the *Control Action ID* IE.

* + - 1. CONTROL Service *RIC Control Message* IE contents

This **CONTROL** Service *RIC Control Message* IE contains the sequence of RAN parameters, associated with a given Control Action within this Control Service style.

This **CONTROL** style uses *E2SM-RC Control Message Format 1* IE (9.2.1.7.1).

For UE group-based CONTROL action, this CONTROL style uses the *E2SM-RC Control Message Format 3* IE (9.2.1.7.3). The *RIC Control Message* IE may optionally include the list of filter definitions for identifying the relevant RAN entities of the UE group, given by the *Entity Filter Definition* IE in the *List of entity filters* IE, along with the identifier of the entity filter given by the *Entity Filter ID* IE, for which the control action is applicable. The sequence of RAN parameters controlled by the Near-RT RIC for the entities of the UEs in the group, corresponding to each entity filter, is given by the *List of RAN control parameters for the matching entities* IE.

If the *UE Group Definition* IE and the *List of entity filters* IE do not point to one or more cells, then the control action is applied to the relevant groups of UEs, as identified by the *UE Group Definition* IE, across all cells within the E2 node.

* + - 1. CONTROL Service *RIC Call Process ID* IE contents

This **CONTROL** Service *RIC Call Process ID* IE is currently not supported for this CONTROL service style.

* + - 1. CONTROL Service *RIC Control Outcome* IE contents

This **CONTROL** Service *RIC Control Outcome* IE is used to carry the outcome of processing the incoming *RIC Control Request* message. The corresponding RAN parameters supported for *RIC Control Outcome* IE are given in Clause 8.4.10.4.

This **CONTROL** style uses *E2SM-RC Control Outcome Format 3* IE (9.2.1.8.3).

If the control action is a UE group-based control action, then the CONTROL style uses the *E2SM-RC Control Outcome Format 1* IE and includes the RAN parameters shown in table 7.6.11.5-1 in the *RIC Control Outcome* IE.

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **RAN**  **Parameter ID** | **RAN Parameter Name** | **RAN Parameter Type** | **Parameter Description** |
| 1 | ReceivedTimestamp | OCTET STRING (SIZE(8)) | Time RIC Control Request message received by RAN Function over E2 interface.  Carries UTC time encoded as the 64-bit timestamp format as defined in Clause 6 of IETF RFC 5905 [30] containing both seconds and  fraction parts. |

</div>

### CONTROL Service Style 10: Beamforming Configuration Control

#### CONTROL Service Style description

This CONTROL Service style provides a mechanism to add, modify or delete beamforming configuration for a UE using the *RIC Control Message* IE and the *RIC Control Header* IE.

Applications of this service include:

* + - * + Configure, reconfigure, or release Non-GoB beamforming mode [32] for a UE
        + Configure, reconfigure, or release GoB beamforming configurations (e.g., PMIs, P2-beam indexes etc.) [32] for a UE

The supported RAN control actions and the corresponding RAN parameters are as follows:

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **Control Action ID** | **Control Action Name** | **Control Action description** | **Associated RAN Parameters** |
| 1 | Non-GoB BF Mode Configuration | To configure, reconfigure, or release Non-GoB beamforming mode  [32] for a UE. The (re)configured Non-GoB BF mode index is the best inferred Non-GoB BF mode index by AI/ML to be used for the UE by the scheduler in E2 Node, for which could be configured  separately for the case of Single User- and/or Multi-user MIMO [32]. | 8.4.11.1 |
| 2 | GoB BF  Configuration | To configure, reconfigure, or release GoB beamforming configuration (e.g., PMIs, P2-beam indexes etc.) for a UE [32]. The (re)configured GoB BF configuration is the best inferred GoB BF  configuration by AI/ML to be used for the UE by the scheduler in E2 Node [32]. | 8.4.11.2 |

</div>

* + - 1. CONTROL Service *RIC Control Header* IE contents

The CONTROL Service *RIC Control Header* IE has the *UE ID* IE, the *Control Service Style ID* IE, the *Control Action ID* IE. The *RIC Control Decision* IE for this service style is currently not supported for this control service style.

This **CONTROL** style uses *E2SM-RC Control Header Format 1* IE (9.2.1.6.1).

* + - 1. CONTROL Service *RIC Control Message* IE contents

This **CONTROL** Service *RIC Control Message* IE contains the sequence of RAN parameters, associated with a given Control Action within this Control Service style.

The corresponding RAN parameters supported for *RIC Control Message* IE are given in Clause 8.4.11. This **CONTROL** style uses *E2SM-RC Control Message Format 1* IE (9.2.1.7.1).

* + - 1. CONTROL Service *RIC Call Process ID* IE contents

This **CONTROL** Service *RIC Call Process ID* IE is currently not supported for this CONTROL service style.

* + - 1. CONTROL Service *RIC Control Outcome* IE contents

This **CONTROL** Service *RIC Control Outcome* IE is currently not supported for this CONTROL service style.

## Supported RIC POLICY Services

### POLICY Service style list

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **RIC Style Type** | **Style Name** | **Style Description** |
| 1 | Radio Bearer Policy | Used to define a policy for modifying the behaviour of Radio Bearer Control (RBC) of call processes for a specific RAN UE Group based on cell, slice, UE list and/or QoS |
| 2 | Radio resource allocation Policy | Used to define a policy for modifying the behaviour of Radio  Resource Allocation control of call processes for a specific RAN UE Group based on cell, slice, UE list and/or QoS |
| 3 | Connected mode mobility Policy | Used to define a policy for modifying the behaviour of connected mode mobility procedure (Handover or Conditional Handover), optionally with Dual Active Protocol Stack (DAPS), call processes  for a specific RAN UE Group based on cell, slice, UE list and/or QoS |
| 4 | Radio access Policy | Used to define a policy for modifying the behaviour of radio access control processes |
| 5 | Dual connectivity (DC) Policy | Used to define a policy for modifying the behaviour of dual  connectivity (DC) call processes for a specific RAN UE Group based on cell, slice, UE list and/or QoS |
| 6 | Carrier Aggregation (CA) Policy | Used to define a policy for modifying the behaviour of carrier aggregation (CA) call processes for a specific RAN UE Group  based on cell, slice, UE list and/or QoS |
| 7 | Idle mode mobility Policy | Used to define a policy for modifying the behaviour of idle mode configuration call processes for a specific RAN UE Group based  on cell, slice and/or UE list. |
| 8 | Measurement Reporting Configuration Policy | Used to define a policy for configuration of measurement objects and reporting objects |
| 9 | Beamforming Configuration Policy | Used to define a policy for beamforming configuration for a specific UE |

</div>

Each of the POLICY Service Styles 1-8 listed above are supported using the following common features:

* Event Trigger: POLICY service is initiated by either Event Trigger style 1: Message Event or Event Trigger style 2: Call process breakpoint.
* Action ID: The index ID for the individual action under a given POLICY Service style.
* Action Name: Indicates the functionality of the E2 node which is controlled by Near-RT RIC
* Action Description: Describes the action and functionality of the receiving E2 Node.
* Associated RAN parameters: Identifies the RAN parameters to be controlled by Near-RT RIC pertaining to the given Policy action, used to define Policy Condition and RAN Imperative Policy.

All **POLICY** Service styles use *E2SM-RC Action Definition Format 2* IE (9.2.1.2.2) which provides the policy conditions and corresponding Policy Action. All of these factors are defined as a sequence of RAN Parameters assigned according to a given Policy Style and Policy Action where:

* *Policy Action ID* is a Policy specific identifier of a specific Action for a specific Policy style.
* *Policy Condition* is a Policy specific condition to select a specific *Policy Action*. *Policy Condition* is described in terms of a list of test conditions concerning UE and E2 Node information selection criteria using RAN

Parameters defined with a *Conditional Criteria Definition*. Default RAN behavior is to be applied to any UE when none of the Policy conditions are met.

* *Policy Action* is encoded in terms of a list of specific RAN Parameters and shall be applied to any UE that meets a specific Policy Condition. Policy Action may contain optional Policy Decision to indicate acceptance or rejection of a RRM function when the Policy Conditions are met.
* *Policy Condition ID* is a *Policy Condition* specific identifier. May be used by E2 Node to identify specific *Policy Condition* item in the list of Policy Conditions defined in the *E2SM-RC Action Definition Format 2* IE. When present, for the case of Offset based policy, the Policy conditions list in the *E2SM-RC Action Definition Format 2* IE shall be assessed in order of the *Policy Condition ID* IE.

The details of the individual POLICY Service Styles and specific Policy Actions are provided in subsequent sections.

### POLICY Service Style 1: Radio Bearer Policy

#### POLICY Service Style description

This **POLICY** Service style provides an Imperative Policy to control execution of a radio bearer control related process.

Applications of this service include:

* + - * + DRB QoS Modification, to tune DRB level QoS related parameters to meet the QoS optimization targets.
        + QoS Flow mapping, to adjust the mapping relationship between QoS flows and DRBs.
        + Logical channel configuration
        + Radio Bearer Admission, to guide DRB admission control algorithms for admission and/or rejection of DRB requests
        + DRB termination
        + DRB Split bearer
        + PDCP duplication control
      1. POLICY Service *RIC Action Definition* IE contents

This **POLICY** Service style uses *E2SM-RC Action Definition Format 2* IE (9.2.1.2.2) using the approach described in Clause 7.7.1.

The supported Policy Actions for this Policy style are as follows:

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **Policy Action ID** | **Policy Action Name** | **Policy Action Description** | **Associated RAN**  **Parameters** |
| 1 | Policy for DRB QoS Configuration | To setup a policy for the configuration of DRB QoS profile | 8.5.2.1 |
| 2 | Policy for QoS flow mapping configuration | To setup a policy for the multiplexing of QoS flows to a DRB (addition, modification, deletion | 8.5.2.2 |
| 3 | Policy for Logical channel (re-) configuration | To setup a policy for the LCID configuration of a DRB | 8.5.2.3 |
| 4 | Policy for Radio admission control | To setup a policy for radio admission control of a UE | 8.5.2.4 |
| 5 | Policy for DRB termination control | To setup a policy for change in the bearer termination point | 8.5.2.5 |
| 6 | Policy for DRB split ratio control | To setup a policy for controlling the split ratio of a DRB across its RLC entities | 8.5.2.6 |
| 7 | Policy for PDCP Duplication control | To setup a policy for controlling the activation or de-activation of PDCP duplication for a DRB and control/configure the number of legs or RLC entities for the DRB | 8.5.2.7 |

</div>

### POLICY Service Style 2: Radio Resource Allocation Policy

#### POLICY Service Style description

This **POLICY** Service style provides an Imperative Policy to control execution of a radio resource allocation control related process.

Applications of this service include:

* + - * + Discontinuous Reception (DRX) control
        + Scheduling request (SR) control
        + Semi-Persistent Scheduling (SPS) control
        + Configured grant
        + Channel Quality Indicator (CQI) table
        + Slice level PRB quota
      1. POLICY Service *RIC Action Definition* IE contents

This **POLICY** Service style uses *E2SM-RC Action Definition Format 2* IE (9.2.1.2.2) using the approach described in Clause 7.7.1.

The supported Policy Actions for this Policy style are as follows:

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **Policy Action**  **ID** | **Policy Action Name** | **Policy Action description** | **Associated RAN**  **Parameters** |
| 1 | Policy for DRX  parameter configuration | To setup a policy for the configuration of DRX parameters | 8.5.3.1 |
| 2 | Policy for SR periodicity  configuration | To setup a policy for the configuration of SR periodicity parameters | 8.5.3.2 |
| 3 | Policy for SPS parameters  configuration | To setup a policy for the configuration of SPS parameters | 8.5.3.3 |
| 4 | Policy for Configured grant control | To setup a policy for the configuration of uplink grants to the UE | 8.5.3.4 |
| 5 | Policy for CQI  table configuration | To setup a policy for the configuration of CQI table. | 8.5.3.5 |
| 6 | Policy for Slice level PRB quota | To setup a policy for the configuration of slice-level PRB quota | 8.5.3.6 |

</div>

### POLICY Service Style 3: Connected Mode Mobility Policy

#### POLICY Service Style description

This **POLICY** Service style provides an Imperative Policy to control execution of a connected mode mobility control related process.

Applications of this service, for both serving and target RAN nodes, include:

* + - * + Handover (HO) or Conditional handover (CHO) mode selection
        + Measurement configuration for handover candidate cell detection (intra-frequency, inter-frequency, inter-RAT)
        + Handover decision and target cell selection
        + Dual Active Protocol Stack (DAPS) usage
      1. POLICY Service *RIC Action Definition* IE contents

This **POLICY** Service style uses *E2SM-RC Action Definition Format 2* IE (9.2.1.2.2) using the approach described in Clause 7.7.1.

The supported Policy Actions for this Policy style are as follows:

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **Policy Action**  **ID** | **Policy Action Name** | **Policy Action description** | **Associated RAN parameters** |
| 1 | Policy for Handover Control | To setup a policy for the handover of the primary cell and subsequent secondary cell reselection | 8.5.4.1 |
| 2 | Policy for Conditional Handover  Control | To setup a policy for the conditional handover involving target primary cells | 8.5.4.2 |
| 3 | Policy for DAPS (Dual Active Protocol Stack)  Handover Control | To setup a policy for the DAPS handover of a UE involving source and target cells. | 8.5.4.3 |

</div>

### POLICY Service Style 4: Radio Access Policy

#### POLICY Service Style description

This **POLICY** Service style provides an Imperative Policy to control execution of a radio access control related process.

Applications of this service include:

* + - * + RACH back-off
        + RRC connection admission
        + RRC connection release
        + Access barring
        + UE Admission
      1. POLICY Service *RIC Action Definition* IE contents

This **POLICY** Service style uses *E2SM-RC Action Definition Format 2* IE (9.2.1.2.2) using the approach described in Clause 7.7.1.

The supported Policy Actions for this Policy style are as follows:

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **Policy Action ID** | **Policy Action Name** | **Policy Action Description** | **Associated RAN Parameters** |
| 1 | Policy for UE Admission Control | To setup a policy for controlling UE admission. | 8.5.5.1 |
| 2 | Policy for  RACH backoff control | To setup a policy for controlling RACH backoff parameters | 8.5.5.2 |
| 3 | Policy for  Access barring control | To setup a policy for controlling access barring configuration parameters | 8.5.5.3 |
| 4 | Policy for RRC  Connection Release control | To setup a policy for controlling the release of RRC connection of the UE | 8.5.5.4 |
| 5 | Policy for RRC Connection  Reject control | To setup a policy for controlling the rejection of RRC connection request of the UE | 8.5.5.5 |

</div>

### POLICY Service Style 5: Dual Connectivity (DC) Policy

#### POLICY Service Style description

This **POLICY** Service style provides an Imperative Policy to control execution of a dual connectivity control related process.

Applications of this service, for both Master and Secondary nodes, include:

* + - * + DC (EN-DC, MR-DC or NR-NR DC) mode selection
        + Measurement configuration for candidate secondary cell detection
        + DC initiation decision (M-NG-RAN or MeNB role)
        + DC change decision (M-NG-RAN or MeNB role)
        + DC addition request acceptance (S-NG-RAN or SgNB role)
        + Target secondary cell selection
        + DC release decision
        + Change of bearer termination point (MN or SN) and/or bearer types
      1. POLICY Service *RIC Action Definition* IE contents

This **POLICY** Service style uses *E2SM-RC Action Definition Format 2* IE (9.2.1.2.2) using the approach described in Clause 7.7.1.

The supported Policy Actions for this Policy style are as follows:

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **Policy**  **Action ID** | **Policy Action Name** | **Policy Action Description** | **Associated RAN**  **parameters** |
| 1 | Policy for DC Secondary Node  Addition Control | To setup a policy for controlling secondary node addition for dual connectivity | 8.5.6.1 |
| 2 | Policy for DC Secondary Node Modification and release  Control | To setup a policy for controlling modification and release of secondary node for DC | 8.5.6.2 |
| 3 | Policy for DC PSCell Change control | To setup a policy for controlling PSCell change of a UE within a secondary node or to another secondary node | 8.5.6.3 |
| 4 | Policy for DC Secondary Node Change  Control | To setup a policy for controlling the change of the secondary node of a UE for DC | 8.5.6.4 |

</div>

### POLICY Service Style 6: Carrier Aggregation (CA) Policy

#### POLICY Service Style description

This **POLICY** Service style provides an Imperative Policy to control execution of a carrier aggregation control related process.

Applications of this service include:

* + - * + Measurement configuration for candidate secondary cell detection
        + CA initiation decision
        + Target secondary cell selection
        + CA release decision
      1. POLICY Service *RIC Action Definition* IE contents

This **POLICY** Service style uses *E2SM-RC Action Definition Format 2* IE (9.2.1.2.2) using the approach described in Clause 7.7.1.

The supported Policy Actions for this Policy style are as follows:

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **Policy Action**  **ID** | **Policy Action Name** | **Policy Action Description** | **Associated RAN**  **parameters** |
| 1 | Policy for CA Secondary Cell Addition  Control | To setup a policy for controlling secondary cell addition for a UE | 8.5.7.1 |
| 2 | Policy for CA Secondary Cell Modification  and Release Control | To setup a policy for controlling the modification and release of secondary cells for a UE | 8.5.7.2 |

</div>

### POLICY Service Style 7: Idle Mode Mobility Policy

#### POLICY Service Style description

This **POLICY** Service style provides an Imperative Policy to control execution of a idle mode mobility control related process.

Applications of this service include:

* + - * + Cell re-selection criteria (intra-frequency, inter-frequency, inter-RAT)
        + Inactivity timer

#### POLICY Service RIC Action Definition IE contents

This **POLICY** Service style uses *E2SM-RC Action Definition Format 2* IE (9.2.1.2.2) using the approach described in Clause 7.7.1.

The supported Policy Actions for this Policy style are as follows:

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **Policy**  **Action ID** | **Policy Action Name** | **Policy Action Description** | **Associated RAN**  **parameters** |
| 1 | Policy for Cell re-  selection priority control | To setup a policy for assigning cell re-selection priorities for a UE during idle mode (RRC\_IDLE) | 8.5.8.1 |

</div>

### POLICY Service Style 8: Measurement Reporting Configuration Policy

#### POLICY Service Style description

This POLICY Service style provides an imperative policy to add, modify or delete measurement report configuration for the UE to the network.

Applications of this service include:

* + - * + Policy to add configuration of measurement objects, reporting objects, measurement gaps, etc.
        + Policy to modify configuration of measurement objects, reporting objects, measurement gaps, etc.
        + Policy to delete configuration of measurement objects, reporting objects, measurement gaps, etc.
      1. POLICY Service *RIC Action Definition* IE contents

This POLICY Service style uses *E2SM-RC Action Definition Format 2* IE (9.2.1.2.2) using the approach described in Clause 7.7.1.

The supported Policy Actions for this Policy style are as follows:

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **Policy Action ID** | **Policy Action Name** | **Policy Action description** | **Associated RAN Parameters** |
| 1 | Policy for MR Configuration addition | To setup a policy for adding configuration of measurement objects, reporting objects, measurement gaps | 8.5.9.1 |
| 2 | Policy for MR  Configuration modification | To setup a policy for modifying configuration of measurement objects, reporting objects, measurement gaps | 8.5.9.2 |
| 3 | Delete MR Configuration | To setup a policy for deleting configuration of measurement objects, reporting objects, measurement gaps | 8.5.9.3 |

</div>

### POLICY Service Style 9: Beamforming Configuration Policy

#### POLICY Service Style description

This **POLICY** Service style provides an imperative policy to add, modify or delete beamforming configuration for a UE.

Applications of this service include:

* + - * + Policy to configure, reconfigure, or release Non-GoB beamforming mode [32] for a UE
        + Policy to configure, reconfigure, or release GoB beamforming configuration [32] for a UE

#### POLICY Service RIC Action Definition IE contents

This **POLICY** Service style uses *E2SM-RC Action Definition Format 2* IE (9.2.1.2.2) using the approach described in Clause 7.7.1.

The supported Policy Actions for this Policy style are as follows:

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **Policy Action ID** | **Policy Action Name** | **Policy Action Description** | **Associated RAN**  **parameters** |
| 1 | Policy for Non-GoB BF Mode Configuration | To setup a policy to configure, reconfigure, or release Non-GoB beamforming mode [32] for a UE. This policy action of (re)configuring or releasing Non-GoB BF mode index is applied only when the corresponding policy condition (if configured) is triggered. The (re)configured Non-GoB BF mode index is the best inferred Non-GoB BF mode index by AI/ML to be used for the UE by the scheduler in the E2 Node, for which could be configured separately for the case of Single User- and/or Multi-  user MIMO [32]. | 8.5.10.1 |
| 2 | Policy for GoB BF Configuration | To setup a policy to configure, reconfigure, or release GoB beamforming configuration (e.g., PMIs, P2-beam indexes etc.) for a UE [32]. This policy action of (re)configuring or releasing GoB BF configuration is applied only when the corresponding policy condition (if configured) is triggered. The (re)configured GoB BF configuration is the best inferred GoB BF configuration by AI/ML to be used for the UE by the scheduler in the E2 Node  [32]. | 8.5.10.2 |

</div>

## Supported RIC QUERY Services

### QUERY Service style list

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **RIC Style Type** | **Style Name** | **Style Description** |
| 1 | E2 Node Information Query | Used to request and respond on information related to E2 Node |
| 2 | UE Information Query | Used to request and respond on information related to UE |

</div>

### QUERY Service Style 1: E2 Node Information Query

#### QUERY Service Style description

This **QUERY** Service style is used to request any data related to E2 Node by Near-RT RIC. E2 Node shall use this service style to respond to the requested information from Near-RT RIC. The data related to the following information, can be requested and responded using this service.

* + - * + Cell Configuration related information
        + Neighbour Relation related information
      1. QUERY Service *RIC Query Header* IE contents

This **QUERY** Service style uses the *E2SM-RC Query Header Format 1* IE (9.2.1.9.1).

* + - 1. QUERY Service *RIC Query Definition* IE contents

The RIC Query Definition for this service style indicates the information type requested by Near-RT RIC.

The **QUERY** Service style uses the *E2SM-RC Query Definition Format 1* IE (9.2.1.10.1). The supported Parameters for this format are provided in Clause 8.6.1.

* + - 1. QUERY Service *RIC Query Outcome* IE contents

This **QUERY** Service style uses the *E2SM-RC Query Outcome Format 1* IE (9.2.1.11.1). The mapping of RAN parameters configured in the *RIC Query Definition* IE to the reported IEs in the *E2SM-RC Query Outcome Format 1* IE is provided in the semantics description of the IEs.

### QUERY Service Style 2: UE Information Query

#### QUERY Service Style description

This **QUERY** Service style is used to request any data related to UE Information by Near-RT RIC. E2 Node shall use this service style to respond to the requested information from Near-RT RIC. The data related to the following information, but not limited to, can be requested and responded using this service.

* + - * + UE Context related information

The reporting may be per UE based depending on the information requested.

* + - 1. QUERY Service *RIC Query Header* IE contents

This **QUERY** Service style uses the *E2SM-RC Query Header Format 1* IE (9.2.1.9.1).

* + - 1. QUERY Service *RIC Query Definition* IE contents

The RIC Query Definition for this service style indicates the information type requested by Near-RT RIC.

The **QUERY** Service style uses the *E2SM-RC Query Definition Format 1* IE (9.2.1.10.1). The supported Parameters for this format are provided in Clause 8.6.2.

* + - 1. QUERY Service *RIC Query Outcome* IE contents

This **QUERY** Service style uses the *E2SM-RC Query Outcome Format 2* IE (9.2.1.11.2). The mapping of RAN parameters configured in the *RIC Query Definition* IE to the reported IEs in the *E2SM-RC Query Outcome Format 2* IE is provided in the semantics description of the IEs.

## Supported RIC Service Styles and E2SM IE Formats

Table 7.9-1, Table 7.9-2 and Table 7.9.3 provide a summary of the E2SM IE Formats defined to support this E2SM specification.

Table 7.9-1: Summary of the E2SM IE Formats defined to support RIC Event Trigger Styles

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **RIC Event Trigger Style** | **RIC Event Trigger Definition**  **Format** |
| Style 1 | 1 |
| Style 2 | 2 |
| Style 3 | 3 |
| Style 4 | 4 |

</div>

Table 7.9-2: Summary of the E2SM IE Formats defined to support RIC Service Styles

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- | --- |
| **RIC**  **Service Style** | **Action Definition Format** | **Indication Header Format** | **Indication Message Format** | **Call Process ID Format** | **Control Header Format** | **Control Message Format** | **Control Outcome Format** |
| **REPORT** | | | | | | |  |
| Style 1 | 1 | 1 | 1 |  |  |  |  |
| Style 2 | 1 | 1 | 2 |  |  |  |  |
| Style 3 | 1 | 1 | 3 |  |  |  |  |
| Style 4 | 1 | 1 | 2 |  |  |  |  |
|  |  |  |  |  |  |  |  |
| **INSERT** | | | | | | |  |
| Style 1 | 3 | 2 | 5 | 1 |  |  |  |
| Style 2 | 3 | 2 | 5 | 1 |  |  |  |
| Style 3 | 3 | 2 | 5 | 1 |  |  |  |
| Style 4 | 3 | 2 | 5 | 1 |  |  |  |
| Style 5 | 3 | 2 | 5 | 1 |  |  |  |
| Style 6 | 3 | 2 | 5 | 1 |  |  |  |
| Style 7 | 3 | 2 | 5 | 1 |  |  |  |
| Style 255 | 4 | 3 | 6 | 1 |  |  |  |
|  |  |  |  |  |  |  |  |
| **CONTROL** | | | | | | |  |
| Style 1 |  |  |  | 1 | 1, 3 | 1, 3 | 1 |
| Style 2 |  |  |  | 1 | 1 | 1 | 1 |
| Style 3 |  |  |  | 1 | 1 | 1 | 1 |
| Style 4 |  |  |  | 1 | 1 | 1 | 1 |
| Style 5 |  |  |  | 1 | 1 | 1 | 1 |
| Style 6 |  |  |  | 1 | 1 | 1 | 1 |
| Style 7 |  |  |  | 1 | 1 | 1 | 1 |
| Style 8 |  |  |  |  | 1, 4 | 1, 2, 3 | 3 |
| Style 9 |  |  |  |  | 1 | 1 | 3 |
| Style 10 |  |  |  |  | 1 | 1 |  |
| Style 255 |  |  |  | 1 | 2 | 2 | 2 |
|  |  |  |  |  |  |  |  |
| **POLICY** | | | | | | |  |
| Style 1 | 2 |  |  |  |  |  |  |
| Style 2 | 2 |  |  |  |  |  |  |
| Style 3 | 2 |  |  |  |  |  |  |
| Style 4 | 2 |  |  |  |  |  |  |
| Style 5 | 2 |  |  |  |  |  |  |
| Style 6 | 2 |  |  |  |  |  |  |
| Style 7 | 2 |  |  |  |  |  |  |
| Style 8 | 2 |  |  |  |  |  |  |
| Style 9 | 2 |  |  |  |  |  |  |
|  |  |  |  |  |  |  |  |

</div>

Table 7.9-3: Summary of the E2SM IE Formats defined to support RIC Service Styles

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **RIC Service Style** | **Query Header**  **Format** | **Query Definition**  **Format** | **Query Outcome**  **Format** |
| **QUERY** | | | |
| Style 1 | 1 | 1 | 1 |
| Style 2 | 1 | 1 | 2 |

</div>

# RAN Parameter assignments

## Approach

The RAN parameters associated with each RIC service described in Clause 7 are listed here in Clause 8. Each RAN parameter belongs to one of the following value types:

* ELEMENT: a singleton variable, which does not have any other associated RAN parameters.
* STRUCTURE: a sequence of RAN parameters, each of which can be either an ELEMENT or a STRUCTURE or a LIST
* LIST: a list of STRUCTURES, where each STRUCTURE is as defined above. The sequence of RAN parameters is the same across all the STRUCTURES within the list.

The corresponding 3GPP standard definitions of these RAN parameters (if available) are referenced in the tables below under the "RAN Parameter Definition" column. These RAN parameters having 3GPP standard definitions are not freshly defined or redefined here.

Note that only those RAN parameters identified as ELEMENT are subject to test conditions by the RIC in the "Event Trigger Definition".

Any RAN parameter within a STRUCTURE or LIST shall not be referenced individually. Hierarchy of a LIST or a STRUCTURE shall be traversed to access any RAN parameter within the LIST or STRUCTURE

Note that a RAN parameter may be associated with as a key where its corresponding *Key Flag* is set to "TRUE". These RAN parameters serve as a reference to other RAN parameters within a structure that may be a part of LIST to enable the E2 Node interpret the scope of RAN parameters that are controlled by Near-RT RIC.

If the "key flag" is specified in the *RIC Event Trigger Definition* IE, then the RAN parameters corresponding to "that specific itemized structure" in the list indexed by the "key flag" are subject to test condition, but if the "key flag" is not mentioned in the *RIC Event Trigger Definition* IE, then the RAN parameters corresponding to "any itemized structure" within the list are subject to test condition.

For e.g., The 'QFI' can be considered a 'key parameter' to identify a QoS flow among the list of flows in a UE-specific PDU session. If the QFI parameter is NOT mentioned and the RIC subscribes to an event pertaining to 5QI 8, then "any QoS flow" in the list of flows of a PDU session for the UE that matches the condition of 5QI being equal to 8 would be covered by this event trigger definition. On the other hand, if the QFI parameter is mentioned in the *RIC Event Trigger Definition* IE, then only that specific QoS flow pertaining to the indicated QFI within the list is covered.

## RAN parameters for Event Trigger

The RAN Parameters pertaining to "Event Trigger" that are used across multiple service styles are listed here. All RAN Parameters defined in clause 8.1 may also be used to define Policy Condition, see also clause 8.5.

### Common RAN Parameters

This section contains the common set of RAN parameters that can be accessed via RAN parameters defined in each service style across multiple services.

#### NR Cell

The following RAN Parameters are associated with the NR cell.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **RAN**  **Parameter ID** | **RAN Parameter** | **RAN**  **Parameter Value Type** | **Key Flag** | **RAN**  **Parameter Definition** | ***Semantics Description*** |
| 10001 | NR CGI | ELEMENT | FALSE | *NR CGI* IE in TS 38.423  [15] Clause  9.2.2.7 |  |
| 10002 | NR PCI | ELEMENT | FALSE | *NR PCI* IE in TS 38.473  [19] Clause  9.3.1.10 |  |
| 10003 | 5GS TAC | ELEMENT | FALSE | *5GS TAC* IE in TS 38.473  [19] Clause  9.3.1.29 |  |
| 10004 | CHOICE *NR-Mode-Info* | STRUCTURE |  |  | *NR-Mode-Info*  IE in TS 38.473  [19] Clause  9.3.1.10 |
| 10005 | >FDD | STRUCTURE |  |  | *FDD* IE in TS  38.473 [19]  Clause 9.3.1.10 |
| 10006 | >>FDD Info | STRUCTURE |  |  | *FDD Info* IE in TS 38.473 [19]  Clause 9.3.1.10 |
| 10007 | >>>UL FreqInfo | STRUCTURE |  |  | *UL FreqInfo* IE in TS 38.473  [19] Clause  9.3.1.10 |
| 10008 | >>>>NR ARFCN | ELEMENT | FALSE | *NR ARFCN*  IE in TS  38.473 [19]  Clause 9.3.1.17 |  |
| 10009 | >>>>Frequency Band List | LIST |  |  | *Frequency Band List* IE in TS 38.473 [19]  Clause 9.3.1.17 |
| 10010 | >>>>>Frequency Band item | STRUCTURE |  |  | *Frequency Band Item* IE in TS 38.473 [19]  Clause 9.3.1.17 |
| 10011 | >>>>>>NR Frequency band | ELEMENT | FALSE | *NR*  *Frequency Band* IE in TS  38.473 [19]  Clause 9.3.1.17 |  |
| 10012 | >>>DL FreqInfo | STRUCTURE |  |  | *DL FreqInfo* IE in TS 38.473  [19] Clause  9.3.1.10 |
| 10013 | >>>>NR ARFCN | ELEMENT | FALSE | *NR ARFCN*  IE in TS  38.473 [19]  Clause 9.3.1.17 |  |
| 10014 | >>>>Frequency Band List | LIST |  |  | *Frequency Band List* IE in TS 38.473 [19]  Clause 9.3.1.17 |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| 10015 | >>>>>Frequency Band item | STRUCTURE |  |  | *Frequency Band Item* IE in TS 38.473 [19]  Clause 9.3.1.17 |
| 10016 | >>>>>>NR Frequency band | ELEMENT | FALSE | *NR*  *Frequency Band* IE in TS  38.473 [19]  Clause 9.3.1.17 |  |
| 10017 | >>>UL Transmission Bandwidth | STRUCTURE |  |  | *Transmission Bandwidth* IE in TS 38.473  [19] Clause  9.3.1.15 |
| 10018 | >>>>NR SCS | ELEMENT | FALSE | *NR SCS* IE in TS 38.473  [19] Clause  9.3.1.15 |  |
| 10019 | >>>>NRB | ELEMENT | FALSE | *NRB* IE in TS  38.473 [19]  Clause 9.3.1.15 |  |
| 10020 | >>>DL Transmission Bandwidth | STRUCTURE |  |  | *Transmission Bandwidth* IE in TS 38.473  [19] Clause  9.3.1.15 |
| 10021 | >>>>NR SCS | ELEMENT | FALSE | *NR SCS* IE in TS 38.473  [19] Clause  9.3.1.15 |  |
| 10022 | >>>>NRB | ELEMENT | FALSE | *NRB* IE in TS  38.473 [19]  Clause 9.3.1.15 |  |
| 10023 | >>>UL Carrier List | LIST |  |  | *UL Carrier List*  IE in TS 38.473  [19] Clause  9.3.1.10 |
| 10024 | >>>>NR Carrier Item | STRUCTURE |  | *NR Carrier Item* IE in TS  38.473 [19]  Clause 9.3.1.137 |  |
| 10025 | >>>>>NR SCS | ELEMENT | FALSE | *NR SCS* IE in TS 38.473  [19] Clause  9.3.1.15 |  |
| 10026 | >>>>>Offset to Carrier | ELEMENT | FALSE | *Offset to Carrier* IE in TS 38.473  [19] Sec 137 |  |
| 10027 | >>>>>Carrier Bandwidth | ELEMENT | FALSE | *Carrier Bandwidth* IE |  |
| 10028 | >>>DL Carrier List | LIST |  |  | *DL Carrier List*  IE in TS 38.473  [19] Clause  9.3.1.10 |
| 10029 | >>>>NR Carrier Item | STRUCTURE |  | *NR Carrier Item* IE in TS  38.473 [19]  Clause 9.3.1.137 |  |
| 10030 | >>>>>NR SCS | ELEMENT | FALSE | *NR SCS* IE in TS 38.473 |  |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
|  |  |  |  | [19] Clause  9.3.1.15 |  |
| 10031 | >>>>>Offset to Carrier | ELEMENT | FALSE | *Offset to Carrier* IE in TS 38.473  [19] Clause  9.3.1.137 |  |
| 10032 | >>>>>Carrier Bandwidth | ELEMENT | FALSE | *Carrier Bandwidth* IE in TS 38.473  [19] Clause  9.3.1.137 |  |
| 10033 | >TDD | STRUCTURE |  |  | *TDD* IE in TS  38.473 [19]  Clause 9.3.1.10 |
| 10034 | >>TDD Info | STRUCTURE |  |  | *TDD Info* IE in TS 38.473 [19]  Clause 9.3.1.10 |
| 10035 | >>>NR FreqInfo | STRUCTURE |  |  |  |
| 10036 | >>>>NR ARFCN | ELEMENT | FALSE | *NR ARFCN*  IE in TS  38.473 [19]  Clause 9.3.1.17 |  |
| 10037 | >>>>Frequency Band List | LIST |  |  | *Frequency Band List* IE in TS 38.473 [19]  Clause 9.3.1.17 |
| 10038 | >>>>>Frequency Band item | STRUCTURE |  |  | *Frequency Band Item* IE in TS 38.473 [19]  Clause 9.3.1.17 |
| 10039 | >>>>>>NR Frequency band | ELEMENT | FALSE | *NR*  *Frequency Band* IE in TS  38.473 [19]  Clause 9.3.1.17 |  |
| 10040 | >>>Transmission Bandwidth | STRUCTURE |  |  | *Transmission Bandwidth* IE in TS 38.473  [19] Clause  9.3.1.15 |
| 10041 | >>>>NR SCS | ELEMENT | FALSE | *NR SCS* IE in TS 38.473  [19] Clause  9.3.1.15 |  |
| 10042 | >>>>NRB | ELEMENT | FALSE | *NRB* IE in TS  38.473 [19]  Clause 9.3.1.15 |  |
| 10043 | >>>Carrier List | LIST |  |  | *Transmission Bandwidth* IE in TS 38.473  [19] Clause  9.3.1.15 |
| 10044 | >>>>NR Carrier Item | STRUCTURE |  | *NR SCS* IE in TS 38.473  [19] Clause  9.3.1.15 |  |
| 10045 | >>>>>NR SCS | ELEMENT | FALSE | *NR SCS* IE in TS 38.473 |  |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
|  |  |  |  | [19] Clause  9.3.1.15 |  |
| 10046 | >>>>>Offset to Carrier | ELEMENT | FALSE | *Offset to Carrier* IE in TS 38.473  [19] Clause  9.3.1.137 |  |
| 10047 | >>>>>Carrier Bandwidth | ELEMENT | FALSE | *Carrier Bandwidth* IE in TS 38.473  [19] Clause  9.3.1.137 |  |
| 10048 | >>>Intended TDD DL-UL Configuration | STRUCTURE |  |  | *Intended TDD DL-UL*  *Configuration*  IE in TS 38.473  [19] Clause  9.3.1.89 |
| 10049 | >>>>NR SCS | ELEMENT | FALSE | *NR SCS* IE in TS 38.473  [19] Clause  9.3.1.89 |  |
| 10050 | >>>>NR Cyclic Prefix | ELEMENT | FALSE | *NR Cyclic Prefix* IE in TS 38.473  [19] Clause  9.3.1.89 |  |
| 10051 | >>>>NR DL-UL Transmission Periodicity | ELEMENT | FALSE | *NR DL-UL*  *Transmission Periodicity* IE in TS 38.473  [19] Clause  9.3.1.89 |  |
| 10052 | >>>>Slot Configuration List | LIST |  |  | *Slot Configuration List* IE in TS  38.473 [19]  Clause 9.3.1.89 |
| 10053 | >>>>>Slot Configuration Item | STRUCTURE |  |  | *Slot Configuration Item* IE in TS  38.473 [19]  Clause 9.3.1.89 |
| 10054 | >>>>>>Slot Index | ELEMENT | TRUE | *Slot Index* IE in TS 38.473  [19] Clause  9.3.1.89 |  |
| 10055 | >>>>>>CHOICE  Symbol Allocation in Slot | STRUCTURE |  | *Symbol Allocation in Slot* IE in TS  38.473 [19]  Clause 9.3.1.89 |  |
| 10056 | >>>>>>>All DL | ELEMENT | FALSE | *All DL* IE in TS 38.473  [19] Clause  9.3.1.89 |  |
| 10057 | >>>>>>>All UL | ELEMENT | FALSE | *All UL* IE in TS 38.473  [19] Clause  9.3.1.89 |  |
| 10058 | >>>>>>>Both DL  and UL | STRUCTURE |  |  | *Both DL and UL* IE in TS  38.473 [19]  Clause |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
|  |  |  |  |  | 9.3.1.89 |
| 10059 | >>>>>>>>Num  ber of DL symbols | ELEMENT | FALSE | *Number of DL symbols* IE in TS 38.473  [19] Clause  9.3.1.89 |  |
| 10060 | >>>>>>>>Num  ber of UL symbols | ELEMENT | FALSE | *Number of UL symbols* IE in TS 38.473  [19] Clause  9.3.1.89 |  |
| 10061 | Count of FDD UL Frequency band list | ELEMENT | FALSE | INTEGER (0..63) |  |
| 10062 | Count of FDD DL Frequency band list | ELEMENT | FALSE | INTEGER (0..63) |  |
| 10063 | Count of FDD UL Carrier list | ELEMENT | FALSE | INTEGER (0..63) |  |
| 10064 | Count of FDD DL Carrier list | ELEMENT | FALSE | INTEGER (0..63) |  |
| 10065 | Count of TDD Frequency band list | ELEMENT | FALSE | INTEGER (0..63) |  |
| 10066 | Count of TDD Carrier list | ELEMENT | FALSE | INTEGER (0..63) |  |
| 10067 | Count of TDD DL-UL Slot Configuration list | ELEMENT | FALSE | INTEGER (0..63) |  |
| 10101 | Reported NR RRC Measurements | STRUCTURE |  |  | *measResult* IE in TS 38.331  [22] |
| 10102 | >Cell Results | STRUCTURE |  |  | *cellResults* IE in TS 38.331  [22] |
| 10103 | >>SSB Results | STRUCTURE |  | 8.1.1.3 | *resultsSSB-*  *Cell* IE in TS  38.331 [22] |
| 10106 | >>CSI-RS Results | STRUCTURE |  | 8.1.1.3 | *resultsCSI-RS- Cell* IE in TS  38.331 [22] |
| 10110 | PM Measurements | STRUCTURE |  |  | *Cell Measurement Result* IE in TS  38.423 [15]  Clause 9.1.3.21 |
| 10111 | >Radio Resource Status | STRUCTURE |  |  | *Radio Resource Status* IE in TS  38.473 [19] |
| 10112 | >>SSB Area Radio Resource Status List | LIST |  |  | *SSB Area Radio Resource Status List* IE in TS 38.473  [19] Clause  9.3.1.129 |
| 10113 | >>>SSB Area Radio Resource Status Item | STRUCTURE |  |  | *SSB Area Radio Resource Status Item* IE in TS 38.473  [19] Clause  9.3.1.129 |
| 10114 | >>>>SSB Index | ELEMENT | TRUE | *SSB Index* IE in TS 38.473  [19] Clause  9.3.1.129 |  |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| 10115 | >>>>SSB Area DL GBR PRB  Usage | ELEMENT | FALSE | *SSB Area DL GBR PRB*  *Usage* IE in TS 38.473  [19] Clause  9.3.1.129 |  |
| 10116 | >>>>SSB Area UL GBR PRB  Usage | ELEMENT | FALSE | *SSB Area UL GBR PRB*  *Usage* IE in TS 38.473  [19] Clause  9.3.1.129 |  |
| 10117 | >>>>SSB Area DL non-GBR PRB Usage | ELEMENT | FALSE | *SSB Area DL non-GBR PRB Usage* IE in TS  38.473 [19]  Clause 9.3.1.129 |  |
| 10118 | >>>>SSB Area UL non-GBR PRB Usage | ELEMENT | FALSE | *SSB Area UL non-GBR PRB Usage* IE in TS  38.473 [19]  Clause 9.3.1.129 |  |
| 10119 | >>>>SSB Area DL Total PRB Usage | ELEMENT | FALSE | *SSB Area DL Total PRB Usage* IE in TS 38.473  [19] Clause  9.3.1.129 |  |
| 10120 | >>>>SSB Area UL Total PRB Usage | ELEMENT | FALSE | *SSB Area UL Total PRB Usage* IE in TS 38.473  [19] Clause  9.3.1.129 |  |
| 10121 | >>>>DL scheduling PDCCH CCE Usage | ELEMENT | FALSE | *DL*  *Scheduling PDCCH CCE*  IE in TS  38.473 [19]  Clause 9.3.1.129 |  |
| 10122 | >>>>UL scheduling PDCCH CCE Usage | ELEMENT | FALSE | *UL*  *Scheduling PDCCH CCE*  IE in TS  38.473 [19]  Clause 9.3.1.129 |  |
| 10123 | >Available DL PRBs in the cell | ELEMENT | FALSE | INTEGER | *DL Total available PRB* IE in TS 28.552  [28] Sec  5.1.1.2.6 |
| 10124 | >Available UL PRBs in the cell | ELEMENT | FALSE | INTEGER | *UL Total available PRB* IE in TS 28.552  [28] Sec  5.1.1.2.8 |
| 10125 | >Number of active DL UEs in the cell | ELEMENT | FALSE | *Number of Active UEs* IE in TS 38.473  [19] Clause  9.3.1.135 |  |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| 10126 | >Number of active UL UEs in the cell | ELEMENT | FALSE | *Number of Active UEs* IE in TS 38.473  [19] Clause  9.3.1.135 |  |
| 10127 | >Composite Available Capacity Group | STRUCTURE |  |  | *Composite Available Capacity Group* IE in TS  38.473 [19]  Clause 9.3.1.130 |
| 10128 | >>Composite Available Capacity Downlink | STRUCTURE |  |  | *Composite Available Capacity* IE in TS 38.473 [19]  Clause 9.3.1.131 |
| 10129 | >>>Cell Capacity Class Value | ELEMENT | FALSE | *Cell Capacity Class Value* IE in TS  38.473 [19]  Clause 9.3.1.132 |  |
| 10130 | >>>Capacity Value | ELEMENT | FALSE | *Capacity Value* IE in TS 38.473  [19] Clause  9.3.1.133 |  |
| 10131 | >>>SSB Area Capacity Value List | LIST |  |  | *SSB Area Capacity Value List* IE in TS  38.473 [19]  Clause 9.3.1.133 |
| 10132 | >>>>SSB Area Capacity Value Item | STRUCTURE |  |  | *SSB Area Capacity Value Item* IE in TS  38.473 [19]  Sec 9.3.1.133 |
| 10133 | >>>>>SSB Index | ELEMENT | TRUE | *SSB Index* IE in TS 38.473  [19] Clause  9.3.1.133 |  |
| 10134 | >>>>>SSB Area Capacity Value | ELEMENT | FALSE | *SSB Area Capacity Value* IE in TS 38.473  [19] Sec  9.3.1.133 |  |
| 10141 | >>Composite Available Capacity Uplink | STRUCTURE |  |  | *Composite Available Capacity* IE in TS 38.473 [19]  Clause 9.3.1.131 |
| 10142 | >>>Cell Capacity Class Value | ELEMENT | FALSE | *Cell Capacity Class Value* IE in TS  38.473 [19]  Clause 9.3.1.132 |  |
| 10143 | >>>Capacity Value | ELEMENT | FALSE | *Capacity Value* IE in TS 38.473  [19] Clause  9.3.1.133 |  |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| 10144 | >>>SSB Area Capacity Value List | LIST |  |  | *SSB Area Capacity Value List* IE in TS  38.473 [19]  Clause 9.3.1.133 |
| 10145 | >>>>SSB Area Capacity Value Item | STRUCTURE |  |  | *SSB Area Capacity Value Item* IE in TS  38.473 [19]  Sec 9.3.1.133 |
| 10146 | >>>>>SSB Index | ELEMENT | TRUE | *SSB Index* IE in TS 38.473  [19] Clause  9.3.1.133 |  |
| 10147 | >>>>>SSB Area Capacity Value | ELEMENT | FALSE | *SSB Area Capacity Value* IE in TS 38.473  [19] Sec  9.3.1.133 |  |
| 10151 | >Slice Available Capacity List | LIST |  |  | *Slice Available Capacity List* IE in TS 38.473  [19] Clause  9.3.1.134 |
| 10152 | >>Slice Available Capacity Item | STRUCTURE |  |  | *Slice Available Capacity Item* IE in TS 38.473  [19] Clause  9.3.1.134 |
| 10153 | >>>PLMN Identity | ELEMENT | FALSE | *PLMN Identity*  IE in TS  38.473 [19]  Clause 9.3.1.14 |  |
| 10154 | >>>S-NSSAI Available Capacity List | LIST |  |  | *S-NSSAI*  *Available Capacity List* IE in TS 38.473  [19] Clause  9.3.1.134 |
| 10155 | >>>>S-NSSAI Available Capacity Item | STRUCTURE |  |  | *S-NSSAI*  *Available Capacity Item* IE in TS 38.473  [19] Clause  9.3.1.134 |
| 10156 | >>>>>S-NSSAI | STRUCTURE | FALSE |  | *S-NSSAI* IE in TS 38.473 [19]  Clause 9.3.1.38 |
| 10160 | >>>>>>SST | ELEMENT | FALSE | *SST* IE in TS  38.473 [19]  Clause 9.3.1.38 |  |
| 10161 | >>>>>>SD | ELEMENT | FALSE | *SD* IE in TS  38.473 [19]  Clause 9.3.1.38 |  |
| 10157 | >>>>>Slice Available Capacity Value Downlink | ELEMENT | FALSE | *Slice Available Capacity Value Downlink* IE in TS 38.473  [19] Clause |  |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
|  |  |  |  | 9.3.1.134 |  |
| 10158 | >>>>>Slice Available Capacity Value Uplink | ELEMENT | FALSE | *Slice Available Capacity Value Uplink* IE in TS  38.473 [19]  Clause 9.3.1.134 |  |
| 10201 | Cell-specific offset | ELEMENT | FALSE | Ocp (or Ocn) IE as defined in TS 38.331  [22] INTEGER |  |
| 10202 | Cell Measurement object specific offset | ELEMENT | FALSE | Ofp (or Ofn) IE as defined in TS 38.331  [22] INTEGER |  |

</div>

#### E-UTRA Cell

The following RAN Parameters are associated with the E-UTRA cell.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **RAN**  **Parameter ID** | **RAN Parameter** | **RAN**  **Parameter Value Type** | **Key Flag** | **RAN**  **Parameter Definition** | ***Semantics Description*** |
| 12001 | E-UTRA CGI | ELEMENT | FALSE | *E-UTRA CGI*  IE in TS  38.423 [15]  Clause 9.2.2.8 |  |
| 12002 | PCI | ELEMENT | FALSE | *PCI* IE in TS  36.423 [15]  within Clause 9.2.8, INTEGER(0..  503,...) |  |
| 12003 | TAC | ELEMENT | FALSE | *TAC* IE in TS  36.423 [15]  within Clause 9.2.8,  OCTET STRING(2) |  |
| 12004 | CHOICE *EUTRA-Mode-Info* | STRUCTURE |  |  | *EUTRA-*  *Mode-Info*  IE in TS  36.423 [17]  Clause 9.2.8 |
| 12005 | >FDD | STRUCTURE |  |  | *FDD* IE in TS 36.423  [17] Clause  9.2.8 |
| 12006 | >>FDD Info | STRUCTURE |  |  | *FDD Info* IE in TS  36.423 [17]  Clause 9.2.8 |
| 12007 | >>>UL EARFCN | STRUCTURE |  |  | *UL EARFCN* IE  in TS  36.423 [17]  Clause 9.2.8 |
| 12008 | >>>>EARFCN | ELEMENT | FALSE | *EARFCN* IE in TS 36.423  [17] Clause  9.2.26 |  |
| 12009 | >>>DL EARFCN | ELEMENT | FALSE |  | *DL EARFCN* IE  in TS  36.423 [17]  Clause 9.2.8 |
| 12010 | >>>>EARFCN | STRUCTURE |  | *EARFCN* IE in TS 36.423  [17] Clause  9.2.26 |  |
| 12011 | >>>UL Transmission Bandwidth | STRUCTURE |  |  | *UL*  *Transmissio n Bandwidth* IE in TS  36.423 [17]  Clause 9.2.8 |
| 12012 | >>>>Transmission Bandwidth | ELEMENT | FALSE | *Transmission Bandwidth* IE in TS 36.423  [17] Clause  9.2.27 |  |
| 12013 | >>>DL Transmission Bandwidth | STRUCTURE |  |  | *DL*  *Transmissio n Bandwidth* IE in TS  36.423 [17] |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
|  |  |  |  |  | Clause 9.2.8 |
| 12014 | >>>>Transmission Bandwidth | ELEMENT | FALSE | *Transmission Bandwidth* IE in TS 36.423  [17] Clause  9.2.27 |  |
| 12015 | >TDD | STRUCTURE |  |  | *TDD* IE in TS 36.423  [17] Clause  9.2.8 |
| 12016 | >>TDD Info | STRUCTURE |  |  | *TDD Info* IE in TS  36.423 [17]  Clause 9.2.8 |
| 12017 | >>>EARFCN | ELEMENT | FALSE | *EARFCN* IE in TS 36.423  [17] Clause  9.2.26 |  |
| 12018 | >>>Transmission Bandwidth | ELEMENT | FALSE | *Transmission Bandwidth* IE in TS 36.423  [17] Clause  9.2.27 |  |
| 12019 | >>>Subframe assignment | ELEMENT | FALSE | *Subframe Assignment* IE in TS  36.423 [17]  Clause 9.2.8 |  |
| 12020 | >>>Special Subframe Info | ELEMENT | FALSE | *Special Subframe Info* IE in TS  36.423 [17]  Clause 9.2.8 |  |
| 12021 | >>>>Special Subframe Patterns | ELEMENT | FALSE | *Special Subframe Patterns* IE in TS 36.423  [17] Clause  9.2.8 |  |
| 12022 | >>>>Cyclic Prefix DL | ELEMENT | FALSE | *Cyclic Prefix DL* IE in TS  36.423 [17]  Clause 9.2.8 |  |
| 12023 | >>>>Cyclic Prefix UL | ELEMENT | FALSE | *Cyclic Prefix UL* IE in TS  36.423 [17]  Clause 9.2.8 |  |
| 12024 | Reported LTE RRC Measurements | STRUCTURE |  | 8.1.1.3 | *MeasResult s* IE in TS  36.331 [23] |
| 12025 | PM Measurements | STRUCTURE |  |  | *CellMeasure mentResultIt em* IE in TS  36.423 [17]  Clause 9.1.2.14 |
| 12026 | >Radio Resource Status | STRUCTURE |  |  | *Radio Resource Status* IE in TS 36.423  [17] Clause  9.2.37 |
| 12027 | >>DL GBR PRB Usage | ELEMENT | FALSE | *DL GBR PRB*  *Usage* IE in TS 36.423  [17] Clause |  |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
|  |  |  |  | 9.2.37 |  |
| 12028 | >>UL GBR PRB Usage | ELEMENT | FALSE | *UL GBR PRB*  *Usage* IE in TS 36.423  [17] Clause  9.2.37 |  |
| 12029 | >>DL non-GBR PRB Usage | ELEMENT | FALSE | *DL non-GBR PRB Usage* IE in TS  36.423 [17]  Clause 9.2.37 |  |
| 12030 | >>UL non-GBR PRB usage | ELEMENT | FALSE | *UL non-GBR PRB Usage* IE in TS  36.423 [17]  Clause 9.2.37 |  |
| 12031 | >>DL Total PRB Usage | ELEMENT | FALSE | *DL Total PRB Usage* IE in TS 36.423  [17] Clause  9.2.37 |  |
| 12032 | >>UL Total PRB Usage | ELEMENT | FALSE | *UL Total PRB Usage* IE in TS 36.423  [17] Clause  9.2.37 |  |
| 12033 | >>DL scheduling PDCCH CCE Usage | ELEMENT | FALSE | *DL*  *scheduling PDCCH CCE*  *Usage* IE in TS 36.423  [17] Clause  9.2.37 |  |
| 12034 | >>UL scheduling PDCCH CCE Usage | ELEMENT | FALSE | *UL*  *scheduling PDCCH CCE*  *Usage* IE in TS 36.423  [17] Clause  9.2.37 |  |
| 12051 | >Composite Available Capacity Group | STRUCTURE |  |  | *Composite Available Capacity Group* IE in TS 36.423  [17] Clause  9.2.44 |
| 12052 | >>Composite Available Capacity Downlink | STRUCTURE |  |  | *Composite Available Capacity Downlink* IE in TS  36.423 [17]  Clause 9.2.45 |
| 12053 | >>>Cell capacity Class Value | ELEMENT | FALSE | *Cell Capacity Class Value* IE in TS  36.423 [17]  Clause 9.2.46 |  |
| 12054 | >>>Capacity Value | ELEMENT | FALSE | *Capacity Value* IE in TS 36.423 |  |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
|  |  |  |  | [17] Clause  9.2.47 |  |
| 12055 | >>Composite Available Capacity Uplink | STRUCTURE |  |  | *Composite Available Capacity Uplink* IE in TS 36.423  [17] Clause  9.2.45 |
| 12056 | >>>Cell capacity Class Value | ELEMENT | FALSE | *Cell Capacity Class Value* IE in TS  36.423 [17]  Clause 9.2.46 |  |
| 12057 | >>>Capacity Value | ELEMENT | FALSE | *Capacity Value* IE in TS 36.423  [17] Clause  9.2.47 |  |
| 12058 | >Available DL PRBs in the cell | ELEMENT | FALSE | INTEGER |  |
| 12059 | >Available UL PRBs in the cell | ELEMENT | FALSE | INTEGER |  |
| 12060 | >Number of active DL UEs in the cell | ELEMENT | FALSE | INTEGER |  |
| 12061 | >Number of active UL UEs in the cell | ELEMENT | FALSE | INTEGER |  |
| 12062 | >ABS Status | STRUCTURE |  |  | *ABS Status*  IE in TS  36.423 [17]  Clause 9.2.58 |
| 12063 | >>DL ABS Status | ELEMENT | FALSE | *DL ABS*  *status* IE in TS 36.423  [17] Clause  9.2.58 |  |
| 12064 | >>CHOICE *Usable ABS Information* | STRUCTURE |  |  | *Usable ABS Information* IE in TS  36.423 [17]  Clause 9.2.58 |
| 12065 | >>>FDD | STRUCTURE |  |  | *FDD* IE in TS 36.423  [17] Clause  9.2.58 |
| 12066 | >>>>Usable ABS Pattern Info | ELEMENT | FALSE | *Usable ABS Pattern Info* IE in TS  36.423 [17]  Clause 9.2.58 |  |
| 12067 | >>>TDD | STRUCTURE |  |  | *TDD* IE in TS 36.423  [17] Clause  9.2.58 |
| 12068 | >>>>Usable ABS Pattern Info | ELEMENT | FALSE | *Usable ABS Pattern Info* IE in TS  36.423 [17]  Clause 9.2.58 |  |
| 12075 | >CSI Report per CSI Process List | LIST |  |  | *CSI Report per CSI Process* IE |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
|  |  |  |  |  | in TS  36.423 [17]  Clause 9.2.79 |
| 12076 | >>CSI Process per CSI Item | STRUCTURE |  |  | *CSI Report per CSI Process Item* IE in TS 36.423  [17] Clause  9.2.79 |
| 12077 | >>>CSI Process Configuration Index | ELEMENT | FALSE | *CSI Process Configuration Index* IE in TS 36.423  [17] Clause  9.2.79 |  |
| 12078 | >>>RI | ELEMENT | FALSE | *RI* IE in TS  36.423 [17]  Clause 9.2.79 |  |
| 12079 | >>>Wideband CQI | STRUCTURE |  |  | *Wideband CQI* IE in TS  36.423 [17]  Clause 9.2.80 |
| 12101 | >>>>Wideband CQI Codeword 0 | ELEMENT | FALSE | *Wideband CQI*  *Codeword 0*  IE in TS  36.423 [17]  Clause 9.2.80 |  |
| 12102 | >>>>CHOICE *Wideband CQI Codeword 1* | STRUCTURE |  |  | *Wideband CQI*  *Codeword 1*  IE in TS  36.423 [17]  Clause 9.2.80 |
| 12103 | >>>>>4-bit CQI | ELEMENT | FALSE | *4-bit CQI* IE in TS 36.423  [17] Clause  9.2.80 |  |
| 12104 | >>>>>3-bit spatial differential CQI | ELEMENT | FALSE | *3-bit spatial differential CQI* IE in TS  36.423 [17]  Clause 9.2.80 |  |
| 12080 | >>>Subband Size | ELEMENT | FALSE | *Subband Size* IE in TS  36.423 [17]  Clause 9.2.79 |  |
| 12081 | >>>Subband CQI List | LIST |  |  | *Subband CQI List* IE in TS  36.423 [17]  Clause 9.2.79 |
| 12082 | >>>>Subband CQI Item | STRUCTURE |  |  | *Subband CQI Item* IE in TS  36.423 [17]  Clause 9.2.79 |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| 12083 | >>>>>Subband CQI Index | ELEMENT | FALSE | *Subband Index* IE in TS 36.423  [17] Clause  9.2.79 |  |
| 12084 | >>>>>Subband CQI | STRUCTURE |  |  | *Subband CQI* IE in TS  36.423 [17]  Clause 9.2.81 |
| 12085 | >>>>>>CHOICE  Subband CQI Codeword 0 | STRUCTURE |  |  | *Subband CQI*  *Codeword 0*  IE in TS  36.423 [17]  Clause 9.2.81 |
| 12086 | >>>>>>>4-bit CQI | ELEMENT | FALSE | *4-bit CQI* IE in TS 36.423  [17] Clause  9.2.81 |  |
| 12087 | >>>>>>>2-bit  subband differential CQI | ELEMENT | FALSE | *2-bit Subband differential CQI* IE in 36.423  Clause 9.2.81 |  |
| 12088 | >>>>>>>2-bit  differential CQI | ELEMENT | FALSE | *2-bit differential CQI* IE in 36.423  Clause 9.2.81 |  |
| 12089 | >>>>>>CHOICE  Subband CQI Codeword 1 | STRUCTURE |  |  | *Subband CQI*  *Codeword 1*  IE in TS  36.423 [17]  Clause 9.2.81 |
| 12090 | >>>>>>>4-bit CQI | ELEMENT | FALSE | *4-bit CQI* IE in TS 36.423  [17] Clause  9.2.81 |  |
| 12091 | >>>>>>>3-bit spatial differential CQI | ELEMENT | FALSE | *3-bit spatial differential CQI* IE in 36.423  Clause 9.2.81 |  |
| 12092 | >>>>>>>2-bit  subband differential CQI | ELEMENT | FALSE | *2-bit Subband differential CQI* IE in 36.423  Clause 9.2.81 |  |
| 12093 | >>>>>>>2-bit  differential CQI | ELEMENT | FALSE | *2-bit differential CQI* IE in 36.423  Clause 9.2.81 |  |

</div>

#### RRC Signal Measurements

The following RAN Parameters are associated with RRC measurements.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **RAN**  **Parameter ID** | **RAN Parameter** | **RAN**  **Parameter Value Type** | **Key Flag** | **RAN Parameter Definition** | **Semantics Description** |
| 12501 | RSRP | ELEMENT | FALSE | *RSRP-Range* IE in TS  38.331 [22] |  |
| 12502 | RSRQ | ELEMENT | FALSE | *RSRQ-Range* IE in TS  38.331 [22] |  |
| 12503 | SINR | ELEMENT | FALSE | *SINR-Range* IE in TS  38.331 [22] |  |

</div>

#### L2 MAC State Variables

The following RAN Parameters are associated with UE-specific L2 MAC state variables.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **RAN**  **Parameter ID** | **RAN Parameter** | **RAN**  **Parameter Value Type** | **Key Flag** | **RAN Parameter Definition** | **Semantics Description** |
| 13001 | Buffer Occupancy | STRUCTURE |  |  | Buffer Occupancy |
|  |  |  | (BO) in number of |
| 13002 | >LCID | ELEMENT | TRUE | INTEGER (0.. 63) | bytes as defined in  TS 25.321 [27] clause |
| 13003 | >BO in Bytes | ELEMENT | FALSE | INTEGER | 8.2.2(c). LCID  indicates logical |
|  |  |  |  |  | channel ID. |
| 13004 | Buffer Status Report | STRUCTURE |  |  | MCE Control |
|  |  |  | Elements as defined |
| 13005 | >Short BSR | ELEMENT | FALSE | OCTET STRING | in TS 38.321 [26] |
|  |  |  |  | (SIZE(1)) | clause 6.1.3. |
| 13006 | >Long BSR | ELEMENT | FALSE | OCTET STRING |  |
| 13007 | >Short Truncated BSR | ELEMENT | FALSE | OCTET STRING |  |
|  |  |  |  | (SIZE(1)) |  |
| 13008 | >Long Truncated BSR | ELEMENT | FALSE | OCTET STRING |  |
| 13009 | >Pre-emptive BSR | ELEMENT | FALSE | OCTET STRING |  |
| 13010 | SCell | STRUCTURE |  |  |  |
|  | Activation/Deactivation |  |  |
| 13011 | >One Octet | ELEMENT | FALSE | OCTET STRING |  |
|  |  |  |  | (SIZE(1)) |  |
| 13012 | >Four Octet | ELEMENT | FALSE | OCTET STRING |  |
|  |  |  |  | (SIZE(4)) |  |
| 13013 | Duplication | ELEMENT | FALSE | OCTET STRING |  |
|  | Activation/Deactivation |  |  | (SIZE(1)) |  |
| 13014 | Duplication RLC | ELEMENT | FALSE | OCTET STRING |  |
|  | Activation/Deactivation |  |  | (SIZE(1)) |  |

</div>

#### NG-RAN Data Radio Bearer

The following RAN Parameters are associated with the NG-RAN data radio bearer.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **RAN**  **Parameter ID** | **RAN Parameter** | **RAN**  **Parameter Value Type** | **Key Flag** | **RAN Parameter Definition** | **Semantics Description** |
| 14001 | 5QI | ELEMENT | FALSE | *5QI* IE in TS 37.483 [21]  Clause 9.3.1.27 or TS  37.483 [21] Clause  9.3.1.28 |  |
| 14002 | Packet Delay Budget | ELEMENT | FALSE | *Packet Delay Budget* IE in TS 37.483 [21] Clause  9.3.1.47 |  |
| 14003 | Packet Error Rate | ELEMENT | FALSE | *Packet Error Rate* IE in TS  37.483 [21] Clause  9.3.1.48 |  |
| 14004 | NG-RAN DRB  Allocation and Retention Priority | STRUCTURE |  |  | *NG-RAN Allocation and Retention Priority* IE in TS 37.483 [21] Clause  9.3.1.29 |
| 14005 | >Priority Level | ELEMENT | FALSE | *Priority Level* IE in TS  37.483 [21] Clause  9.3.1.29 |  |
| 14006 | >Pre-emption Capability | ELEMENT | FALSE | *Pre-emption Capability* IE in TS 37.483 [21] Clause  9.3.1.29 |  |
| 14007 | >Pre-emption Vulnerability | ELEMENT | FALSE | *Pre-emption Vulnerability*  IE in TS 37.483 [21]  Clause 9.3.1.29 |  |
| 14008 | Priority Level of the mapped QoS flows | ELEMENT | FALSE | *Priority Level* IE in TS  37.483 [21] Clause  9.3.1.51 |  |
| 14009 | QoS parameters for GBR flows in NG- RAN Bearer | STRUCTURE |  |  | *GBR QoS Flow Information* IE in TS  37.483 [21] Clause  9.3.1.30 |
| 14010 | >Maximum Flow Bit Rate Downlink | ELEMENT | FALSE | *Bit Rate* IE in TS 37.483  [21] Clause 9.3.1.30 |  |
| 14011 | >Guaranteed Flow Bit Rate Downlink | ELEMENT | FALSE | *Bit Rate* IE in TS 37.483  [21] Clause 9.3.1.30 |  |
| 14012 | >Maximum Packet Loss Rate  Downlink | ELEMENT | FALSE | *Packet Loss Rate* IE in TS  37.483 [21] Clause  9.3.1.30 |  |
| 14013 | >Maximum Flow Bit Rate Uplink | ELEMENT | FALSE | *Bit Rate* IE in TS 37.483  [21] Clause 9.3.1.30 |  |
| 14014 | >Guaranteed Flow Bit Rate Uplink | ELEMENT | FALSE | *Bit Rate* IE in TS 37.483  [21] Clause 9.3.1.30 |  |
| 14015 | >Maximum Packet Loss Rate Uplink | ELEMENT | FALSE | *Packet Loss Rate* IE in TS  37.483 [21] Clause  9.3.1.30 |  |
| 14016 | QoS Monitoring Enable Request | ELEMENT | FALSE | *QoS Monitoring Request*  IE in TS 37.483 [21]  Clause 9.3.1.26 |  |
| 14017 | QoS Monitoring Reporting Frequency | ELEMENT | FALSE | *QoS Monitoring Reporting Frequency* IE in TS  37.483 [21] Clause  9.3.1.26 |  |
| 14018 | QoS Monitoring Disabled | ELEMENT | FALSE | *QoS Monitoring Disabled*  IE in TS 37.483 [21]  Clause 9.3.1.26 |  |
| 14019 | Reflective QoS Mapping | ELEMENT | FALSE | *RDI* IE in TS 37.483 [21]  Clause 9.3.1.26 |  |
| 14101 | List of cell groups to be added | LIST |  |  | *Cell Group To Add* IE in TS 37.483 [21] Clause  9.3.3.11 |
| 14102 | >Cell group item | STRUCTURE |  |  | *Cell Group Item* IE in TS  37.483 [21] Clause  9.3.1.11 |
| 14103 | >>Cell Group ID | ELEMENT | TRUE | *Cell Group ID* IE in TS  37.483 [21] Clause |  |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
|  |  |  |  | 9.3.1.11 |  |
| 14104 | >>Cell Group | STRUCTURE |  | 8.1.1.7 |  |
| 14201 | SDAP  Configuration | STRUCTURE |  |  | *SDAP Configuration* IE in TS 37.483 [21]  Clause 9.3.1.39 |
| 14202 | >PDU Session ID | ELEMENT | TRUE | *PDU-SessionID* IE in TS  38.331 [22] Sec 6 |  |
| 14203 | >Default DRB | ELEMENT | FALSE | *Default DRB* IE in TS  37.483 [21] Clause  9.3.1.39 |  |
| 14210 | >PDU Session | STRUCTURE |  | 8.1.1.16 |  |
| 14301 | PDCP  Configuration | STRUCTURE |  |  | *PDCP Configuration* IE in TS 37.483 [21]  Clause 9.3.1.38 |
| 14302 | >RLC mode | ELEMENT | FALSE | *RLC mode* IE in TS  37.483 [21] Clause  9.3.1.38 |  |
| 14303 | >PDCP Duplication | ELEMENT | FALSE | *PDCP Duplication* IE in TS 37.483 [21] Clause  9.3.1.38 |  |
| 14304 | >UL Data Split Threshold | ELEMENT | FALSE | *UL Data Split Threshold*  IE in TS 37.483 [21]  Clause 9.3.1.43 |  |
| 14305 | >PDCP Re-  establishment | ELEMENT | FALSE | *PDCP Re-establishment*  IE in TS 37.483 [21]  Clause 9.3.1.38 |  |
| 14306 | >PDCP Data Recovery | ELEMENT | FALSE | *PDCP Data Recovery* IE in TS 37.483 [21] Clause  9.3.1.38 |  |
| 14307 | >Out-of-Order Delivery | ELEMENT | FALSE | *Out of Order Delivery* IE in TS 37.483 [21] Clause  9.3.1.38 |  |
| 14308 | >PDCP Status Report Indication | ELEMENT | FALSE | *PDCP Status Report Indication* IE in TS 37.483  [21] Clause 9.3.1.38 |  |
| 14309 | >Number of PDCP duplication | ELEMENT | FALSE | *Additional PDCP duplication Information* IE in TS 37.483 [21] Clause  9.3.1.38 |  |
| 14310 | >UL More than one RLC | STRUCTURE |  |  | *moreThanOneRLC* IE in TS 38.331 [22] Clause 6 |
| 14311 | >>Primary Path | STRUCTURE |  |  | *primaryPath* IE in TS  38.331 [22] Clause 6 |
| 14312 | >>>Cell Group ID | ELEMENT | TRUE | *cellGroup* IE in TS 38.331  [22] Clause 6 |  |
| 14313 | >>>Logical Channel ID | ELEMENT | FALSE | *logicalChannelIdentity* IE in TS 38.331 [22] Sec 6 |  |
| 14314 | >UL More than two RLC | STRUCTURE |  |  | *moreThanTwoRLC- DRB-r16* IE in TS  38.331 [22] Clause 6 |
| 14315 | >>Split Secondary Path | ELEMENT | FALSE | *splitSecondaryPath* IE in TS 38.331 [22] Sec 6 |  |
| 14316 | >>Duplication State | ELEMENT | FALSE | *duplicationState* IE in TS  38.331 [22] Sec 6 |  |
| 14317 | Averaging Window | ELEMENT | FALSE | *Averaging Window IE in TS 37.483 [21] Clause*  *9.3.1.49* |  |
| 14318 | Delay Critical | ELEMENT | FALSE | *Delay Critical IE in TS*  *37.483 [21] Clause*  *9.3.1.28* |  |
| 14319 | Maximum Data Burst Volume | ELEMENT | FALSE | *Maximum Data Burst Volume IE in TS 37.483*  *[21] Clause 9.3.1.50* |  |

</div>

#### QoS flow

The following RAN Parameters are associated with the NG-RAN QoS flow.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **RAN**  **Parameter ID** | **RAN Parameter** | **RAN**  **Parameter Value Type** | **Key Flag** | **RAN Parameter Definition** | **Semantics Description** |
| 15001 | 5QI | ELEMENT | FALSE | *5QI* IE in TS 37.483 [21]  Clause 9.3.1.27 or TS  37.483 [21] Clause  9.3.1.28 |  |
| 15002 | Packet Delay Budget | ELEMENT | FALSE | *Packet Delay Budget* IE in TS 37.483 [21] Clause  9.3.1.47 |  |
| 15003 | Packet Error Rate | ELEMENT | FALSE | *Packet Error Rate* IE in TS  37.483 [21] Clause  9.3.1.48 |  |
| 15004 | NG-RAN DRB  Allocation and Retention Priority | STRUCTURE |  |  | *NG-RAN Allocation and Retention Priority* IE in TS 37.483 [21] Clause  9.3.1.29 |
| 15005 | >Priority Level | ELEMENT | FALSE | *Priority Level* IE in TS  37.483 [21] Clause  9.3.1.29 |  |
| 15006 | >Pre-emption Capability | ELEMENT | FALSE | *Pre-emption Capability* IE in TS 37.483 [21] Clause  9.3.1.29 |  |
| 15007 | >Pre-emption Vulnerability | ELEMENT | FALSE | *Pre-emption Vulnerability*  IE in TS 37.483 [21]  Clause 9.3.1.29 |  |
| 15008 | Priority Level of the mapped QoS flows | ELEMENT | FALSE | *Priority Level* IE in TS  37.483 [21] Clause  9.3.1.51 |  |
| 15009 | QoS parameters for GBR flows in NG- RAN Bearer | STRUCTURE |  |  | *GBR QoS Flow Information* IE in TS  37.483 [21] Clause  9.3.1.30 |
| 15010 | >Maximum Flow Bit Rate Downlink | ELEMENT | FALSE | *Bit Rate* IE in TS 37.483  [21] Clause 9.3.1.30 |  |
| 15011 | >Guaranteed Flow Bit Rate Downlink | ELEMENT | FALSE | *Bit Rate* IE in TS 37.483  [21] Clause 9.3.1.30 |  |
| 15012 | >Maximum Packet Loss Rate  Downlink | ELEMENT | FALSE | *Packet Loss Rate* IE in TS  37.483 [21] Clause  9.3.1.30 |  |
| 15013 | Maximum Flow Bit Rate Uplink | ELEMENT | FALSE | *Bit Rate* IE in TS 37.483  [21] Clause 9.3.1.30 |  |
| 15014 | >Guaranteed Flow Bit Rate Uplink | ELEMENT | FALSE | *Bit Rate* IE in TS 37.483  [21] Clause 9.3.1.30 |  |
| 15015 | >Maximum Packet Loss Rate Uplink | ELEMENT | FALSE | *Packet Loss Rate* IE in TS  37.483 [21] Clause  9.3.1.30 |  |
| 15016 | QoS Monitoring Enable Request | ELEMENT | FALSE | *QoS Monitoring Request*  IE in TS 37.483 [21]  Clause 9.3.1.26 |  |
| 15017 | QoS Monitoring Reporting Frequency | ELEMENT | FALSE | *QoS Monitoring Reporting Frequency* IE in TS  37.483 [21] Clause  9.3.1.26 |  |
| 15018 | QoS Monitoring Disabled | ELEMENT | FALSE | *QoS Monitoring Disabled*  IE in TS 37.483 [21]  Clause 9.3.1.26 |  |
| 15019 | Reflective QoS Mapping | ELEMENT | FALSE | *RDI* IE in TS 37.483 [21]  Clause 9.3.1.26 |  |
| 15020 | Redundant QoS Flow Indicator | ELEMENT | FALSE | *Redundant QoS Flow Indicator* IE in TS 37.483  [21] Clause 9.3.1.74 |  |
| 15021 | Averaging Window | ELEMENT | FALSE | *Averaging Window IE in TS 37.483 [21] Clause*  *9.3.1.49* |  |
| 15022 | Delay Critical | ELEMENT | FALSE | *Delay Critical IE in TS*  *37.483 [21] Clause* |  |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
|  |  |  |  | *9.3.1.28* |  |
| 15023 | Maximum Data Burst Volume | ELEMENT | FALSE | *Maximum Data Burst Volume IE in TS 37.483*  *[21] Clause 9.3.1.50* |  |

</div>

#### Cell Group

The following RAN Parameters are associated with the NR cell group item.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **RAN**  **Parameter ID** | **RAN Parameter** | **RAN**  **Parameter Value Type** | **Key Flag** | **RAN Parameter Definition** | **Semantics Description** |
| 15502 | UL Configuration | ELEMENT | FALSE | *UL Configuration* IE in TS  37.483 [21] Clause  9.3.1.11 |  |
| 15503 | RAT Type | ELEMENT | FALSE | *RAT Type* IE in TS 37.483  [21] Clause 9.3.1.11 |  |
| 15504 | Number of Tunnels | ELEMENT | FALSE | *Number of Tunnels* IE in TS 37.483 [21] Clause  9.3.1.11 |  |

</div>

#### L2 Bearer State Variables

The following RAN Parameters are associated with UE-specific L2 bearer state variables across PDCP, RLC layers.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **RAN**  **Parameter ID** | **RAN Parameter** | **RAN**  **Parameter Value Type** | **Key Flag** | **RAN Parameter Definition** | **Semantics Description** |
| 16001 | PDCP State Variables | STRUCTURE |  |  | PDCP State Variables defined in TS 38.323 [24] clause  7.1. LCID indicates logical channel ID, to pinpoint which PDCP entity. |
| 16002 | >LCID | ELEMENT | TRUE | INTEGER (0.. 63) |
| 16003 | >TX\_Next | ELEMENT | FALSE | INTEGER (0.. 232-1) |
| 16004 | >RX\_Next | ELEMENT | FALSE | INTEGER (0.. 232-1) |
| 16005 | >RX\_Deliv | ELEMENT | FALSE | INTEGER (0.. 232-1) |
| 16006 | >RX\_Reord | ELEMENT | FALSE | INTEGER (0.. 232-1) |
| 16010 | RLC UM State Variables | STRUCTURE |  |  | RLC UM State Variables defined in TS 38.322 [25] clause  7.1. LCID indicates logical channel ID, to pinpoint which RLC UM entity. |
| 16011 | >LCID | ELEMENT | TRUE | INTEGER (0.. 63) |
| 16012 | >TX\_Next | ELEMENT | FALSE | INTEGER (0.. 4095) |
| 16013 | >RX\_Next\_Reassembly | ELEMENT | FALSE | INTEGER (0.. 4095) |
| 16014 | >RX\_Timer\_Trigger | ELEMENT | FALSE | INTEGER (0.. 4095) |
| 16015 | >RX\_Next\_Highest | ELEMENT | FALSE | INTEGER (0.. 4095) |
| 16020 | RLC AM State Variables | STRUCTURE |  |  | RLC AM State Variables defined in TS 38.322 [25] clause  7.1. LCID indicates logical channel ID, to pinpoint which RLC AM entity. |
| 16021 | >LCID | ELEMENT | TRUE | INTEGER (0.. 63) |
| 16022 | >TX\_Next\_Ack | ELEMENT | FALSE | INTEGER (0.. 262143) |
| 16023 | >TX\_Next | ELEMENT | FALSE | INTEGER (0.. 262143) |
| 16024 | >POLL\_SN | ELEMENT | FALSE | INTEGER (0.. 262143) |
| 16025 | >RX\_Next | ELEMENT | FALSE | INTEGER (0.. 262143) |
| 16026 | >RX\_Next\_Status\_Trigger | ELEMENT | FALSE | INTEGER (0.. 262143) |
| 16027 | >RX\_Highest\_Status | ELEMENT | FALSE | INTEGER (0.. 262143) |
| 16028 | >RX\_Next\_Highest | ELEMENT | FALSE | INTEGER (0.. 262143) |

</div>

#### E-RAB QoS Parameters

The following RAN Parameters are associated with E-RAB QoS.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **RAN**  **Parameter ID** | **RAN Parameter** | **RAN**  **Parameter Value Type** | **Key Flag** | **RAN Parameter Definition** | **Semantics Description** |
| 16201 | QCI | ELEMENT | FALSE | *QCI* IE in TS 36.423 [17]  Clause 9.2.9 |  |
| 16202 | Allocation and Retention Priority | STRUCTURE |  |  | *Allocation and Retention Priority* IE in TS 36.423  [17] Clause 9.2.31 |
| 16203 | >Priority Level | ELEMENT | FALSE | *Priority Level* IE in TS  36.423 [17] Clause 9.2.31 |  |
| 16204 | >Pre-emption Capability | ELEMENT | FALSE | *Pre-emption Capability* IE in TS 36.423 [17] Clause  9.2.31 |  |
| 16205 | >Pre-emption Vulnerability | ELEMENT | FALSE | *Pre-emption Vulnerability*  IE in TS 36.423 [17]  Clause 9.2.31 |  |
| 16206 | GBR QoS  Information | STRUCTURE |  |  | *GBR QoS Information* IE in TS 36.423 [17] Clause  9.2.9 |
| 16207 | >E-RAB Maximum Bit Rate Downlink | ELEMENT | FALSE | *Bit Rate* IE in TS 36.423  [17] Clause 9.2.11 | *E-RAB Maximum Bit Rate Downlink* IE in TS  36.423 [17] Clause  9.2.10 |
| 16208 | >E-RAB Maximum Bit Rate Uplink | ELEMENT | FALSE | *Bit Rate* IE in TS 36.423  [17] Clause 9.2.11 | *E-RAB Maximum Bit Rate Uplink* IE in TS  36.423 [17] Clause  9.2.10 |
| 16209 | >E-RAB  Guaranteed Bit Rate Downlink | ELEMENT | FALSE | *Bit Rate* IE in TS 36.423  [17] Clause 9.2.11 | *E-RAB Guaranteed Bit Rate Downlink* IE in TS  36.423 [17] Clause  9.2.10 |
| 16210 | >E-RAB  Guaranteed Bit Rate Downlink | ELEMENT | FALSE | *Bit Rate* IE in TS 36.423  [17] Clause 9.2.11 | *E-RAB Guarnateed Bit Rate Downlink* IE in TS  36.423 [17] Clause  9.2.10 |
| 16211 | Downlink Maximum Packet Loss Rate | ELEMENT | FALSE | *Packet Loss Rate* IE in TS  36.423 [17] Clause  9.2.124 | *Downlink Maximum Packet Loss Rate* IE in TS 36.423 [17] Clause  9.2.10 |
| 16212 | Uplink Maximum Packet Loss Rate | ELEMENT | FALSE | *Packet Loss Rate* IE in TS  36.423 [17] Clause  9.2.124 | *Uplink Maximum Packet Loss Rate* IE in TS  36.423 [17] Clause  9.2.10 |

</div>

#### Connectivity and Mobility Event thresholds

The following RAN Parameters are associated with connectivity and mobility event thresholds, mainly related to A1, A2, A3, A4, A5, A6 events and inter-RAT B1 and B2 events.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **RAN**  **Parameter ID** | **RAN Parameter** | **RAN**  **Parameter Value Type** | **Key Flag** | **RAN Parameter Definition** | **Semantics Description** |
| 16500 | Event AN Trigger Config | STRUCTURE |  |  | *EventTriggerConfig* IE in TS 38.331 [22] |
| 16501 | **>CHOICE *AN Event*** | STRUCTURE |  |  | *eventID* IE in TS  38.331 [22] |
| 16502 | >>A1 Event | STRUCTURE |  |  | *EventA1* IE in TS  38.331 [22] |
| 16503 | >>>A1-  Threshold | STRUCTURE |  | 8.1.1.3 |  |
| 16504 | >>>Hysteresis | ELEMENT | FALSE | *Hysteresis* IE in TS  38.331 [22] |  |
| 16505 | >>RS-Type | ELEMENT | FALSE | *rsType* IE in TS  38.331 [22] |  |
| 16506 | >>A2 Event | STRUCTURE |  |  | *EventA2* IE in TS  38.331 [22] |
| 16507 | >>>A2-  Threshold | STRUCTURE |  | 8.1.1.3 |  |
| 16508 | >>>Hysteresis | ELEMENT | FALSE | *Hysteresis* IE in TS  38.331 [22] |  |
| 16509 | >>>RS-Type | ELEMENT | FALSE | *rsType* IE in TS  38.331 [22] |  |
| 16510 | >>A3 Event | STRUCTURE |  |  | *EventA3* IE in TS  38.331 [22] |
| 16511 | >>>A3-Offset | STRUCTURE |  | 8.1.1.3 |  |
| 16512 | >>>Hysteresis | ELEMENT | FALSE | *Hysteresis* IE in TS  38.331 [22] |  |
| 16513 | >>>RS-Type | ELEMENT | FALSE | *rsType* IE in TS  38.331 [22] |  |
| 16514 | >>A4 Event | STRUCTURE |  |  | *EventA4* IE in TS  38.331 [22] |
| 16515 | >>>A4-  Threshold | STRUCTURE |  | 8.1.1.3 |  |
| 16516 | >>>Hysteresis | ELEMENT | FALSE | *Hysteresis* IE in TS  38.331 [22] |  |
| 16517 | >>>RS-Type | ELEMENT | FALSE | *rsType* IE in TS  38.331 [22] |  |
| 16518 | >>A5 Event | STRUCTURE |  |  | *EventA5* IE in TS  38.331 [22] |
| 16519 | >>>A5-  Threshold1 | STRUCTURE |  | 8.1.1.3 |  |
| 16520 | >>>A5-  Threshold2 | STRUCTURE |  | 8.1.1.3 |  |
| 16521 | >>>Hysteresis | ELEMENT | FALSE | *Hysteresis* IE in TS  38.331 [22] |  |
| 16522 | >>>RS-Type | ELEMENT | FALSE | *rsType* IE in TS  38.331 [22] |  |
| 16523 | >>A6 Event | STRUCTURE |  |  | *EventA6* IE in TS  38.331 [22] |
| 16524 | >>>A6-Offset | STRUCTURE |  | 8.1.1.3 |  |
| 16525 | >>>Hysteresis | ELEMENT | FALSE | *Hysteresis* IE in TS  38.331 [22] |  |
| 16526 | >>>RS-Type | ELEMENT | FALSE | *rsType* IE in TS  38.331 [22] |  |
| 16550 | Event Trigger Config Inter RAT | STRUCTURE |  |  | *EventTriggerConfigInt erRAT* IE in TS  38.331 [22] |
| 16551 | **>CHOICE *Inter-RAT***  ***Event*** | STRUCTURE |  |  | *eventId* IE in TS  38.331 [22] |
| 16552 | >>B1 Event | STRUCTURE |  |  | *eventB1* IE in TS  38.331 [22] |
| 16553 | >>>B1-  Threshold | STRUCTURE |  | 8.1.1.3 |  |
| 16554 | >>>Hysteresis | ELEMENT | FALSE | *Hysteresis* IE in TS  38.331 [22] |  |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| 16555 | >>>RS-Type | ELEMENT | FALSE | *rsType* IE in TS  38.331 [22] |  |
| 16556 | >>B2 Event | STRUCTURE |  |  | *eventB2* IE in TS  38.331 [22] |
| 16557 | >>>B2-  Threshold-NR | STRUCTURE |  | 8.1.1.3 |  |
| 16558 | >>>B2-  Threshold- EUTRA | STRUCTURE |  | 8.1.1.3 |  |
| 16559 | >>>Hysteresis | ELEMENT | FALSE | *Hysteresis* IE in TS  38.331 [22] |  |
| 16560 | >>>RS-Type | ELEMENT | FALSE | *rsType* IE in TS  38.331 [22] |  |

</div>

#### E2 Node

The following RAN Parameters are associated with the E2 node.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **RAN**  **Parameter ID** | **RAN Parameter** | **RAN**  **Parameter Value Type** | **Key Flag** | **RAN Parameter Definition** | **Semantics Description** |
| 17001 | CHOICE E2 Node Component Type | STRUCTURE |  |  | O-RAN WG3  E2AP Clause 9.2.26 |
| 17010 | >NG-RAN gNB | STRUCTURE |  |  | O-RAN WG3  E2AP Clause 9.2.27 |
| 17011 | >>Global gNB ID | STRUCTURE |  |  | TS 38.413  [11] Clause  9.3.1.6 |
| 17012 | >>>PLMN Identity | ELEMENT | FALSE | *PLMN Identity* IE in TS 38.413 [11]  Clause 9.3.3.5 |  |
| 17013 | >>>CHOICE *gNB ID* | STRUCTURE |  |  | *gNB ID* IE in TS 38.413  [11] Clause  9.3.1.6 |
| 17014 | >>>>*gNB ID* | STRUCTURE |  |  | *gNB ID* IE in TS 38.413  [11] Clause  9.3.1.6 |
| 17015 | >>>>>gNB ID | ELEMENT | FALSE | *gNB ID* IE *in* TS  38.413 [11]  Clause 9.3.1.6 |  |
| 17016 | >>List of NR served cells | LIST |  |  | *List of Served Cells NR* IE in TS 38.423  [15] Clause  9.1.3.1 |
| 17017 | >>>Served NR cell item | STRUCTURE |  |  | Individual cell item in the *List of Served Cells*  NR |
| 17028 | >>>>Served NR cell | STRUCTURE |  | *NR Cell* IE in 8.1.1.1 |  |
| 17018 | >>Count of list of NR served cells | ELEMENT | FALSE | INTEGER (1..16384) |  |
| 17019 | >>List of NR neighbour cells | LIST |  |  | *Neighbour Information* IE in TS 38.423  [15] Clause  9.2.2.13 |
| 17020 | >>>NR neighbour cell item | STRUCTURE |  |  | Individual cell item in the *Neighor Information*  IE NR |
| 17031 | >>>>Neighbour NR cell | STRUCTURE |  | *NR Cell* IE in 8.1.1.1 |  |
| 17021 | >>Number of RRC connections | ELEMENT | FALSE | *Number of RRC connections* IE in TS 38.423 [15]  Clause 9.2.2.57 |  |
| 17022 | >>gNB Performance Measurements | STRUCTURE |  | 8.1.1.15 |  |
| 17050 | >en-gNB | STRUCTURE |  |  | O-RAN WG3  E2AP Clause 9.2.27 |
| 17051 | >>Global en-gNB ID | STRUCTURE |  |  | TS 36.423  [17] Clause  9.2.112 |
| 17052 | >>>PLMN Identity | ELEMENT | FALSE | *PLMN Identity* IE in TS 36.423 [17] |  |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
|  |  |  |  | Clause 9.2.4 |  |
| 17053 | >>>CHOICE *en-gNB ID* | STRUCTURE |  | *en-gNB ID* IE in TS 36.423 [17]  Clause 9.2.112 |  |
| 17054 | >>>>*en-gNB ID* | STRUCTURE |  | *en-gNB ID* IE in TS 36.423 [17]  Clause 9.2.112 |  |
| 17055 | >>>>>en-gNB ID | ELEMENT | FALSE | *en-gNB ID* IE in TS 36.423 [17]  Clause 9.2.112 |  |
| 17056 | >>List of served NR cells | LIST |  |  | *List of Served Cells NR* IE in TS 38.423  [15] Clause  9.1.3.1 |
| 17057 | >>>Served NR cell item | STRUCTURE |  |  | Individual cell item in the *List of*  *Served Cells NR* IE |
| 17068 | >>>>Served NR cell | STRUCTURE |  | *NR Cell* IE in 8.1.1.1 |  |
| 17058 | >>Count of list of NR served cells | ELEMENT | FALSE | INTEGER (1..16384) |  |
| 17059 | >>List of NR neighbour cells | LIST |  |  | *Neighbour Information* IE in TS 38.423  [15] Clause  9.2.2.13 |
| 17060 | >>>NR neighbour cell item | STRUCTURE |  |  | Individual cell item in *Neighbour Information*  IE |
| 17065 | >>>>NR neighbour cell | STRUCTURE |  | *NR Cell* IE in 8.1.1.1 |  |
| 17061 | >>gNB Performance Measurements | STRUCTURE |  | 8.1.1.15 | *gNB Measurement s* IE in Sec 8.1.1.15 |
| 17070 | >ng-eNB | STRUCTURE |  |  | O-RAN WG3  E2AP Clause 9.2.27 |
| 17071 | >>ng-eNB ID | STRUCTURE |  |  | *ng-eNB ID* IE TS 38.413  [11] Clause  9.2.2.2 |
| 17072 | >>>PLMN Identity | ELEMENT | FALSE | *PLMN Identity* IE in TS 38.413 [11]  Clause 9.3.1.6 |  |
| 17073 | >>>CHOICE *ng-eNB ID* | STRUCTURE |  |  | *Ng-eNB ID* IE in TS 38.413  [11] Clause  9.2.2.2 |
| 17074 | >>>>Macro *ng-eNB ID* | STRUCTURE |  |  | *Macro ng- eNB ID* IE in TS 38.413  [11] Clause  9.2.2.2 |
| 17075 | >>>>>Macro *ng-eNB ID* | ELEMENT | FALSE | *Macro ng-eNB ID*  IE in TS 38.413  [11] Clause  9.2.2.2 |  |
| 17076 | >>>>Short Macro *ng-eNB ID* | STRUCTURE |  |  | *Short Macro*  *ng-eNB ID* IE in TS 38.413 |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
|  |  |  |  |  | [11] Clause  9.2.2.2 |
| 17077 | >>>>>Short Macro *ng- eNB ID* | ELEMENT | FALSE | *Short Macro ng- eNB ID* IE in TS  38.413 [11]  Clause 9.2.2.2 |  |
| 17078 | >>>>Long Macro *ng-eNB ID* | STRUCTURE |  |  | *Long Macro ng-eNB ID* IE in TS 38.413  [11] Clause  9.2.2.2 |
| 17079 | >>>>>Long Macro *ng- eNB ID* | ELEMENT | FALSE | *Long Macro ng- eNB ID* IE in TS  38.413 [11]  Clause 9.2.2.2 |  |
| 17080 | >>List of E-UTRA served cells | LIST |  |  | *List of Served Cells E-UTRA* IE in TS  38.423 [15]  Clause 9.1.3.1 |
| 17081 | >>>Served E-UTRA cell item | STRUCTURE |  |  | Individual cell item in *List of Served Cells*  *E-UTRA* IE |
| 17092 | >>>>Served E-UTRA cell | STRUCTURE |  | 8.1.1.2 |  |
| 17082 | >>Count of list of E-UTRA served cells | ELEMENT | FALSE | INTEGER (0..16384) |  |
| 17083 | >>List of E-UTRA neighbour cells | LIST |  |  | *Neighbour Information E- UTRA* IE in TS 38.423  [15] Clause  9.2.2.14 |
| 17084 | >>>E-UTRA neighbour cell item | STRUCTURE |  |  | Individual cell item in *Neighbour Information E-*  *UTRA* IE |
| 17095 | >>>>E-UTRA neighbour cell | STRUCTURE |  | 8.1.1.2 |  |
| 17085 | >>Number of RRC connections | ELEMENT | FALSE | *Number of RRC connections* IE in TS 38.423 [15]  Clause 9.2.2.57 |  |
| 17086 | >>eNB Performance Measurements | STRUCTURE |  | 8.1.1.18 |  |
| 17100 | >NG-RAN gNB CU-CP | STRUCTURE |  |  | O-RAN WG3  E2AP Clause 9.2.27 |
| 17101 | >>Global gNB CU-CP ID | STRUCTURE |  |  | TS 38.413  [11] Clause  9.3.1.6 |
| 17102 | >>>PLMN Identity | ELEMENT | FALSE | *PLMN Identity* IE in TS 38.413 [11]  Clause 9.3.3.5 |  |
| 17103 | >>>CHOICE *gNB ID* | STRUCTURE |  |  | *gNB ID* IE in TS 38.413  [11] Clause  9.3.1.6 |
| 17104 | >>>>*gNB ID* | STRUCTURE |  |  | *gNB ID* IE in TS 38.413  [11] Clause  9.3.1.6 |
| 17105 | >>>>>gNB ID | ELEMENT | FALSE | *gNB ID* IE *in* TS  38.413 [11]  Clause 9.3.1.6 |  |
| 17107 | >>List of activated NR cells | LIST |  |  | *Cells to be* |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
|  |  |  |  |  | *Activated List*  IE in TS  38.473 [19]  Clause 9.2.1.10 |
| 17108 | >>>NR cell item | STRUCTURE |  |  | *Cells to be Activated Item* IE in TS  38.473 [19]  Clause 9.2.1.10 |
| 17109 | >>>>NR cell | STRUCTURE |  | *NR Cell* IE in 8.1.1.1 |  |
| 17110 | >>>>Available PLMN List | LIST |  |  | *Available PLMN List* IE in TS 38.473  [19] Clause  9.2.1.10 |
| 17111 | >>>>>PLMN Item | STRUCTURE |  |  | *Available PLMN Item IEs* IE in TS  38.473 [19]  Clause 9.3.1.65 |
| 17112 | >>>>>>PLMN ID | ELEMENT | FALSE | *PLMN Identity* IE in TS 38.413 [11]  Clause 9.3.3.5 |  |
| 17113 | >>List of de-activated NR cells | LIST |  |  | *Cells to be Deactivated List* IE in TS  38.473 [19]  Clause 9.2.1.10 |
| 17114 | >>>NR cell item | STRUCTURE |  |  | Individual cell item in *Cells to be*  *Deactivated List* IE |
| 17515 | >>>>NR cell | STRUCTURE |  | *NR Cell* IE in 8.1.1.1 |  |
| 17115 | >>List of barred NR cells | LIST |  |  | *Cells to be barred List* IE in TS 38.473  [19] Clause  9.2.1.10 |
| 17116 | >>>NR cell item | STRUCTURE |  |  | Individual cell item in *Cells to be barred List* IE |
| 17517 | >>>>NR cell | STRUCTURE |  | *NR Cell* IE in 8.1.1.1 |  |
| 17117 | >>Count of list of NR served cells | ELEMENT | FALSE | INTEGER (0..16384) |  |
| 17118 | >>List of NR neighbour cells | LIST |  |  | *Neighbour Cell Information List* IE in TS  38.473 [19]  Clause 9.2.1.10 |
| 17119 | >>>NR neighbour cell item | STRUCTURE |  |  | Individual Cell Item in *Neighbour Cell Information*  *List* IE |
| 17520 | >>>>NR neighbour cell | STRUCTURE |  | *NR Cell* IE in |  |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
|  |  |  |  | 8.1.1.1 |  |
| 17120 | >>Number of RRC connected UEs | ELEMENT | FALSE | *Number of RRC connections* IE in TS 38.423 [15]  Clause 9.2.2.57 |  |
| 17121 | >>gNB CU-CP Performance Measurements | STRUCTURE |  | 8.1.1.12 |  |
| 17130 | >NG-RAN gNB DU | STRUCTURE |  |  | O-RAN WG3  E2AP Clause 9.2.27 |
| 17132 | >>gNB-DU ID | ELEMENT | FALSE | *gNB-DU ID* IE in TS 38.473 [19]  Clause 9.3.1.9 |  |
| 17133 | >>List of NR served cells | LIST |  |  | *List of Served Cells NR* IE in TS 38.423  [15] Clause  9.1.3.1 |
| 17134 | >>>Served NR cell item | STRUCTURE |  |  | Individual cell item in *List of Served Cells* NR IE |
| 17535 | >>>>Served NR cell | STRUCTURE |  | *NR Cell* IE in 8.1.1.1 |  |
| 17135 | >>gNB DU Measurements | STRUCTURE |  | 8.1.1.14 |  |
| 17140 | >NG-RAN gNB CU-UP | STRUCTURE |  |  | O-RAN WG3  E2AP Clause 9.2.27 |
| 17141 | >>gNB CU-UP ID | ELEMENT | TRUE | *gNB-CU-UP ID*  IE in TS 37.483  [21] Clause  9.3.1.15 |  |
| 17142 | >>gNB CU-UP Capacity | ELEMENT | FALSE | *gNB-CU-UP*  *Capacity* IE in TS  37.483 [21]  Clause 9.3.1.56 |  |
| 17143 | >>gNB CU-UP Performance Measurements | STRUCTURE |  | 8.1.1.13 |  |
| 17150 | >eNB | STRUCTURE |  |  | O-RAN WG3  E2AP Clause 9.2.27 |
| 17151 | >>eNB ID | STRUCTURE |  |  | *eNB ID* IE TS  36.423 [17]  Clause 9.2.2.2 |
| 17152 | >>>PLMN Identity | ELEMENT | FALSE | *PLMN Identity* IE in TS 36.423 [17]  Clause 9.2.4 |  |
| 17153 | >>>CHOICE *eNB ID* | STRUCTURE |  |  | *Global eNB ID*  IE in TS  36.423 [17]  Clause 9.2.22 |
| 17154 | >>>>Macro eNB ID | STRUCTURE |  |  | *Macro eNB ID*  IE in TS  36.423 [17]  Clause 9.2.22 |
| 17155 | >>>>>Macro eNB ID | ELEMENT | FALSE | *Macro eNB ID* IE in TS 36.423 [17]  Clause 9.2.22 |  |
| 17156 | >>>>Home eNB ID | STRUCTURE |  |  | *Home eNB ID*  IE in TS  36.423 [17]  Clause 9.2.22 |
| 17157 | >>>>>Home eNB ID | ELEMENT | FALSE | *Home eNB ID* IE in TS 36.423 [17]  Clause 9.2.22 |  |
| 17158 | >>>>Short Macro eNB ID | STRUCTURE |  |  | *Short Macro* |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
|  |  |  |  |  | *eNB ID* IE in TS 36.423  [17] Clause  9.2.22 |
| 17159 | >>>>>Short Macro eNB ID | ELEMENT | FALSE | *Short Macro eNB ID* IE in TS  36.423 [17]  Clause 9.2.22 |  |
| 17160 | >>>>Long Macro eNB ID | STRUCTURE |  |  | *Long Macro eNB ID* IE in TS 36.423  [17] Clause  9.2.22 |
| 17161 | >>>>>Long Macro eNB ID | ELEMENT | FALSE | *Long Macro eNB ID* IE in TS  36.423 [17]  Clause 9.2.22 |  |
| 17162 | >>List of E-UTRA served cells | LIST |  |  | *List of Served Cells E-UTRA* IE in TS  38.423 [15]  Clause 9.1.3.1 |
| 17163 | >>>Served E-UTRA cell item | STRUCTURE |  |  | Individual cell item in *List of Served Cells E-UTRA* IE |
| 17564 | >>>>Served E-UTRA cell | STRUCTURE |  | 8.1.1.2 |  |
| 17164 | >>Count of list of E-UTRA served cells | ELEMENT | FALSE | INTEGER (0..16384) |  |
| 17165 | >>List of E-UTRA neighbour cells | LIST |  |  | *Neighbour Information E- UTRA* IE in TS 38.423  [15] Clause  9.2.2.14 |
| 17166 | >>>E-UTRA neighbour cell item | STRUCTURE |  |  | Individual cell item in *Neighbour*  *Information E- UTRA* IE |
| 17567 | >>>>E-UTRA neighbour cell | STRUCTURE |  | 8.1.1.2 |  |
| 17167 | >>Number of RRC connected UEs | ELEMENT | FALSE | *Number of RRC connections* IE in TS 38.423 [15]  Clause 9.2.2.57 |  |
| 17168 | >>List of NR neighbour cells | LIST |  |  | *Neighbour Information* IE in TS 38.423  [15] Clause  9.2.2.13 |
| 17169 | >>>NR neighbour cell item | STRUCTURE |  |  | Individual cell item in *Neighbour Information* IE |
| 17570 | >>>>NR neighbour cell | STRUCTURE |  | 8.1.1.1 |  |
| 17170 | >>eNB Performance Measurements | STRUCTURE |  | 8.1.1.18 |  |
| 17200 | TAI Support List | LIST |  |  | *TAI Support List* IE in TS  38.423 [15]  Clause 9.2.3.20 |
| 17201 | >TAI Support Item | STRUCTURE |  |  | *TAI Support Item* IE in TS  38.423 [15]  Clause |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
|  |  |  |  |  | 9.2.3.20 |
| 17202 | >>TAC | ELEMENT | FALSE | *TAC* IE in TS  38.423 [15]  Clause 9.2.2.5 |  |
| 17203 | >>List of Broadcast PLMNs | LIST |  |  | *Broadcast PLMNs* IE in TS 38.423  [15] Clause  9.2.3.20 |
| 17204 | >>>Broadcast PLMN Item | STRUCTURE |  |  | *Broadcast PLMNs* IE in TS 38.423  [15] Clause  9.2.3.20 |
| 17205 | >>>PLMN Identity | ELEMENT | FALSE | *PLMN Identity* IE in TS 38.413 [11]  Clause 9.3.3.5 |  |
| 17206 | >>>TAI Slice Support List | LIST |  |  | *TAI Slice Support List* IE in TS  38.423 [15]  Clause 9.2.3.20 |
| 17207 | >>>>Slice Support Item | STRUCTURE |  |  | *Slice Support Item* IE in TS  38.423 [15]  Clause 9.2.3.20 |
| 17208 | >>>>>S-NSSAI | STRUCTURE |  |  | *S-NSSAI* IE in TS 38.473  [19] Clause  9.3.1.38 |
| 17209 | >>>>>>SST | ELEMENT | TRUE | *SST* IE in TS  38.473 [19]  Clause 9.3.1.38 |  |
| 17210 | >>>>>>SD | ELEMENT | FALSE | *SD* IE in TS  38.473 [19]  Clause 9.3.1.38 |  |
| 17211 | >>>Count of TAI Slice Support List | ELEMENT | FALSE | INTEGER (0..1024) |  |
| 17212 | >>>NR CGI Support List | LIST |  |  | *List of Served Cells NR* IE in TS 38.423  [15] Clause  9.1.3.1 |
| 17213 | >>>>NR CGI Cell  Support Item | STRUCTURE |  |  | Individual cell item in *List of Served Cells*  *NR* IE |
| 17614 | >>>>>NR CGI Cell | STRUCTURE |  | *NR Cell* IE in 8.1.1.1 |  |
| 17214 | >>>E-UTRA CGI Support List | LIST |  |  | *List of Served Cells E-UTRA* IE in TS  38.423 [15]  Clause 9.1.3.1 |
| 17215 | >>>>E-UTRA CGI Cell  Support Item | STRUCTURE |  |  | Individual cell item in *List of*  *Served Cells E-UTRA* IE |
| 17616 | >>>>>E-UTRA CGI | STRUCTURE |  | *E-UTRA Cell* IE in 8.1.1.2 |  |
| 17216 | >>>QoS Parameters Support List | LIST |  |  | *QoS Flow List*  IE in TS  37.483 [21]  Clause |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
|  |  |  |  |  | 9.3.1.12 |
| 17217 | >>>>QoS Parameters Support Item | STRUCTURE |  |  | *QoS Flow Item* IE in TS  37.483 [21]  Clause 9.3.1.12 |
| 17218 | >>>>>CHOICE QoS  Parameters Support Item | STRUCTURE |  |  |  |
| 17219 | >>>>>>NG-RAN  QoS Support Item | STRUCTURE |  | 8.1.1.6 |  |
| 17221 | >>>>>>E-UTRA  QoS Support Item | STRUCTURE |  | 8.1.1.9 |  |
| 17223 | >>Count of list of broadcast PLMNs | ELEMENT | FALSE | INTEGER (0..12) |  |
| 17224 | Count of TAI Support List | ELEMENT | FALSE | INTEGER (0..256) |  |

</div>

#### gNB CU-CP Measurements

The following RAN Parameters are associated with the gNB CU-CP measurements.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **RAN**  **Parameter ID** | **RAN Parameter** | **RAN**  **Parameter Value Type** | **Key Flag** | **RAN Parameter Definition** | **Semantics Description** |
| 18001 | Inter-gNB Handovers | STRUCTURE |  |  | TS 28.552 [28]  Sec 5.1.1.6.1 |
| 18002 | >Number of requested handover operations | ELEMENT | FALSE | INTEGER | TS 28.552 [28]  Sec 5.1.3.7.1.1 |
| 18003 | >Number of successful handover preparations | ELEMENT | FALSE | INTEGER | TS 28.552 [28]  Sec 5.1.3.7.1.2 |
| 18004 | >List of failure causes in handover preparations | LIST |  | *0..<maxnoofcaus es>* | TS 28.552 [28]  Sec 5.1.1.6.1.3 |
| 18005 | >>Failure Cause Item | STRUCTURE |  |  |  |
| 18006 | >>>Failure Cause | ELEMENT | TRUE | *Cause* IE in TS  38.423 [15]  Clause 9.2.3.2 |  |
| 18007 | >>Number of failed handover preparations for the cause | ELEMENT | FALSE | INTEGER | TS 28.552 [28]  Sec 5.1.1.6.1.3 |
| 18008 | >Number of requested handover resource allocations | ELEMENT | FALSE | INTEGER | TS 28.552 [28]  Sec 5.1.1.6.1.4 |
| 18009 | >Number of successful handover resource allocations | ELEMENT | FALSE | INTEGER | TS 28.552 [28]  Sec 5.1.1.6.1.5 |
| 18010 | >List of failure causes | LIST |  | *0..<maxnoofcaus es>* | TS 28.552 [28]  Sec 5.1.1.6.1.6 |
| 18011 | >>Failure Cause Item | STRUCTURE |  |  |  |
| 18012 | >>>Failure Cause | ELEMENT | TRUE | *Cause* IE in TS  38.413 [11]  Clause 9.3.1.2 |  |
| 18013 | >>>Number of failed handover resource allocations for the cause | ELEMENT | FALSE | INTEGER | TS 28.552 [28]  Sec 5.1.1.6.1.6 |
| 18014 | >Number of requested handover executions | ELEMENT | FALSE | INTEGER | TS 28.552 [28]  Sec 5.1.1.6.1.7 |
| 18015 | >Number of successful handover executions | ELEMENT | FALSE | INTEGER | TS 28.552 [28]  Sec 5.1.1.6.1.8 |
| 18016 | >List of failure causes in handover  execution | LIST |  | *0..<maxnoofcaus*  *es>* | TS 28.552 [28]  Sec 5.1.1.6.1.9 |
| 18017 | >>Failure cause Item | STRUCTURE |  |  |  |
| 18018 | >>>Failure Cause | ELEMENT | TRUE | *Cause* IE in TS  38.423 [15]  Clause 9.2.3.2 |  |
| 18019 | >>>Number of failed handover executions for the cause | ELEMENT | FALSE | INTEGER | TS 28.552 [28]  Sec 5.1.1.6.1.9 |
| 18020 | >List of Slices | LIST |  | *0..<maxnoofslice s>* | TS 28.552 [28]  Sec 5.1.1.6.1.10 |
| 18021 | >>Slice Item | STRUCTURE |  |  |  |
| 18022 | >>>S-NSSAI | STRUCTURE |  |  | *S-NSSAI* IE in TS 38.473 [19]  Clause 9.3.1.38 |
| 18023 | >>>>SST | ELEMENT | TRUE | *SST* IE in TS  38.473 [19]  Clause 9.3.1.38 |  |
| 18024 | >>>>SD | ELEMENT | FALSE | *SD* IE in TS  38.473 [19]  Clause 9.3.1.38 |  |
| 18025 | >>>Mean Time of requested handover executions | ELEMENT | FALSE | INTEGER | TS 28.552 [28]  Sec 5.1.1.6.1.10 |
| 18026 | >>>Max Time of requested handover executions | ELEMENT | FALSE | INTEGER | TS 28.552 [28]  Sec 5.1.1.6.1.11 |
| 18031 | >MRO Measurements | STRUCTURE |  |  | TS 28.552 [28]  Sec 5.1.1.25 |
| 18032 | >>Number of too-early handovers | ELEMENT | FALSE | INTEGER | TS 28.552 [28]  Sec 5.1.1.25.1 |
| 18033 | >>Number of too-late handovers | ELEMENT | FALSE | INTEGER | TS 28.552 [28] |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
|  |  |  |  |  | Sec 5.1.1.25.1 |
| 18034 | >>Number of wrong cell handovers | ELEMENT | FALSE | INTEGER | TS 28.552 [28]  Sec 5.1.1.25.1 |
| 18051 | Intra-gNB Handovers | STRUCTURE |  |  | TS 28.552 [28]  Sec 5.1.3.7.1 |
| 18052 | >Number of requested handover executions | ELEMENT | FALSE |  | TS 28.552 [28]  Sec 5.1.1.6.2.1 |
| 18053 | >Number of successful handover executions | ELEMENT | FALSE |  | TS 28.552 [28]  Sec 5.1.1.6.2.2 |
| 18054 | List of UE Context release causes | LIST |  | *0..<maxnoofcaus es>* | TS 28.552 [28]  Sec 5.1.3.5.2 |
| 18055 | >Release Cause Item | STRUCTURE |  |  |  |
| 18056 | >>Release Cause | ELEMENT | TRUE | *Cause* IE in TS  38.473 [19]  Clause 9.3.1.2 |  |
| 18057 | >>Number of UE Context Release Requests | ELEMENT | FALSE | INTEGER | TS 28.552 [28]  Sec 5.1.3.5.2 |
| 18061 | >MRO Measurements | STRUCTURE |  |  | TS 28.552 [28]  Sec 5.1.1.25 |
| 18062 | >>Number of too-early handovers | ELEMENT | FALSE | INTEGER | TS 28.552 [28]  Sec 5.1.1.25.1 |
| 18063 | >>Number of too-late handovers | ELEMENT | FALSE | INTEGER | TS 28.552 [28]  Sec 5.1.1.25.1 |
| 18064 | >>Number of wrong cell handovers | ELEMENT | FALSE | INTEGER | TS 28.552 [28]  Sec 5.1.1.25.1 |
| 18400 | Average normally-released call duration for 5QI 1 QoS flow | ELEMENT | FALSE | INTEGER | TS 28.552 [28]  Sec 5.1.1.24.1 |
| 18071 | Distribution bins for normally-released call duration for 5QI 1 QoS flow | LIST |  | *0..<maxnoofbins*  *>* | TS 28.552 [28]  Sec 5.1.3.8 |
| 18072 | >Distribution bin item | STRUCTURE |  |  |  |
| 18073 | >>Call Duration Bin Value | ELEMENT | FALSE | INTEGER | TS 28.552 [28]  Sec 5.1.3.8 |
| 18074 | >>Number of samples | ELEMENT | FALSE | INTEGER | TS 28.552 [28]  Sec 5.1.3.8 |
| 18450 | Average abnormally-released call duration for 5QI 1 QoS flow | ELEMENT | FALSE | INTEGER | TS 28.552 [28]  Sec 5.1.1.24.2 |
| 18075 | Distribution bins for abnormally- released call duration for 5QI 1 QoS  flow | LIST |  | *0..<maxnoofbins*  *>* | TS 28.552 [28]  Sec 5.1.3.9 |
| 18076 | >Distribution bin item | STRUCTURE |  |  |  |
| 18077 | >>Call Duration Bin Value | ELEMENT | FALSE | INTEGER | TS 28.552 [28]  Sec 5.1.3.9 |
| 18078 | >>Number of samples | ELEMENT | FALSE | INTEGER | TS 28.552 [28]  Sec 5.1.3.9 |
| 18100 | RRC connection related measurements | STRUCTURE |  |  | TS 28.552 [28]  Sec 5.1.1.15 |
| 18101 | >List of attempted RRC connection establishment causes | LIST |  | *0..<maxnoofcaus es>* | TS 28.552 [28]  Sec 5.1.1.15.1 |
| 18102 | >>Attempted RRC connection establishment cause item | STRUCTURE |  |  |  |
| 18103 | >>>Cause | ELEMENT | TRUE | *Cause* IE in TS  38.331 [22] Sec  6.2.2 |  |
| 18104 | >>>Number of attempted RRC connection establishments | ELEMENT | FALSE | INTEGER | TS 28.552 [28]  Sec 5.1.1.15.1 |
| 18111 | >List of successful RRC connection establishment causes | LIST |  | *0..<maxnoofcaus es>* | TS 28.552 [28]  Sec 5.1.1.15.2 |
| 18112 | >>Succesful RRC connection establishment cause item | STRUCTURE |  |  |  |
| 18113 | >>>Cause | ELEMENT | TRUE | *Cause* IE in TS  38.331 [22] Sec  6.2.2 |  |
| 18114 | >>>Number of successful RRC connection establishments | ELEMENT | FALSE | INTEGER | TS 28.552 [28]  Sec 5.1.1.15.2 |
| 18121 | >Number of RRC connection re- establishment attempts | ELEMENT | FALSE | INTEGER | TS 28.552 [28]  Sec 5.1.1.17.1 |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| 18122 | >Successful number of RRC connection re-establishment with UE  context | ELEMENT | FALSE | INTEGER | TS 28.552 [28]  Sec 5.1.1.17.2 |
| 18123 | >Successful number of RRC connection re-establishment without  UE context | ELEMENT | FALSE | INTEGER | TS 28.552 [28]  Sec 5.1.1.17.3 |
| 18131 | >List of RRC connection resuming attempt causes | LIST |  | *0..<maxnoofcaus es>* | TS 28.552 [28]  Sec 5.1.1.18.1 |
| 18132 | >>Cause item | STRUCTURE |  |  |  |
| 18133 | >>>Cause | ELEMENT | TRUE | *Cause* IE in TS  38.331 [22] Sec  6.2.2 |  |
| 18134 | >>>Number of RRC connection resuming attempts | ELEMENT | FALSE | INTEGER | TS 28.552 [28]  Sec 5.1.1.18.1 |
| 18141 | >List of successful RRC connection resuming causes | LIST |  | *0..<maxnoofcaus es>* | TS 28.552 [28]  Sec 5.1.1.18.2 |
| 18142 | >>Cause item | STRUCTURE |  |  |  |
| 18143 | >>>Cause | ELEMENT | TRUE | *Cause* IE in TS  38.331 [22] Sec  6.2.2 |  |
| 18144 | >>>Number of successful RRC connection resuming attempts | ELEMENT | FALSE |  | TS 28.552 [28]  Sec 5.1.1.18.2 |
| 18151 | >List of causes for successful RRC connection resuming with fallback | LIST |  | *0..<maxnoofcaus es>* | TS 28.552 [28]  Sec 5.1.1.18.3 |
| 18152 | >>Cause item | STRUCTURE |  |  |  |
| 18153 | >>>Cause | ELEMENT | TRUE | *Cause* IE in TS  38.331 [22] Sec  6.2.2 |  |
| 18154 | >>>Number of successful RRC connection resuming attempts  with fallback | ELEMENT | FALSE | INTEGER | TS 28.552 [28]  Sec 5.1.1.18.3 |
| 18161 | >Number of RRC connection resuming processes followed by network release | ELEMENT | FALSE | INTEGER | TS 28.552 [28]  Sec 5.1.1.18.4 |
| 18162 | >Number of RRC connection resuming processes followed by network suspension | ELEMENT | FALSE | INTEGER | TS 28.552 [28]  Sec 5.1.1.18.5 |
| 18163 | >Mean number of RRC connections | ELEMENT | FALSE | INTEGER | TS 28.552 [28]  Sec 5.1.1.4.1 |
| 18164 | >Maximum number of RRC connections | ELEMENT | FALSE | INTEGER | TS 28.552 [28]  Sec 5.1.1.4.2 |
| 18165 | >Mean number of stored inactive RRC connections | ELEMENT | FALSE | INTEGER | TS 28.552 [28]  Sec 5.1.1.4.3 |
| 18166 | >Maximum number of stored inactive RRC connections | ELEMENT | FALSE | INTEGER | TS 28.552 [28]  Sec 5.1.1.4.4 |
| 18200 | QoS flow related measurements | STRUCTURE |  |  | TS 28.552 [28]  Sec 5.1.1.13 |
| 18201 | >List of QoS levels | LIST |  | *0..<maxnoofflow s>* | TS 28.552 [28]  Sec 5.1.1.13 |
| 18202 | >>QoS level item | STRUCTURE |  |  |  |
| 18203 | >>>CHOICE QoS level | STRUCTURE |  |  |  |
| 18204 | >>>>5QI | ELEMENT | TRUE | *5QI* IE in TS  38.413 [11]  Clause 9.3.1.28 |  |
| 18205 | >>>>S-NSSAI | STRUCTURE |  |  | *S-NSSAI* IE in TS 38.473 [19]  Clause 9.3.1.38 |
| 18206 | >>>>>SST | ELEMENT | TRUE | *SST* IE in TS  38.473 [19]  Clause 9.3.1.38 |  |
| 18207 | >>>>>SD | ELEMENT | FALSE | *SD* IE in TS  38.473 [19]  Clause 9.3.1.38 |  |
| 18210 | >>>Number of QoS flows attempted to release | ELEMENT | FALSE | INTEGER | TS 28.552 [28]  Sec 5.1.1.13.1.2 |
| 18211 | >>>In-session activity time | ELEMENT | FALSE | INTEGER | TS 28.552 [28] |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
|  |  |  |  |  | Sec 5.1.1.13.2.1 |
| 18212 | >>>Number of QoS flows attempted to setup | ELEMENT | FALSE | INTEGER | TS 28.552 [28]  Sec 5.1.1.13.3.1 |
| 18213 | >>>Number of QoS flows successfully established | ELEMENT | FALSE | INTEGER | TS 28.552 [28]  Sec 5.1.1.13.2.1 |
| 18214 | >>>Number of QoS flows attempted to modify | ELEMENT | FALSE | INTEGER | TS 28.552 [28]  Sec 5.1.1.13.4.1 |
| 18215 | >>>Number of QoS flows successfully modified | ELEMENT | FALSE | INTEGER | TS 28.552 [28]  Sec 5.1.1.13.4.2 |
| 18216 | >>>Number of QoS flows failed to modify | ELEMENT | FALSE | INTEGER | TS 28.552 [28]  Sec 5.1.1.13.4.3 |
| 18250 | DRB related measurements | STRUCTURE |  |  | TS 28.552 [28]  Sec 5.1.1.10 |
| 18251 | >List of QoS levels | LIST |  | *0..<maxnoofflow s>* | TS 28.552 [28]  Sec 5.1.1.10 |
| 18252 | >>QoS level item | STRUCTURE |  |  |  |
| 18253 | >>>CHOICE QoS level | STRUCTURE |  |  |  |
| 18254 | >>>>5QI | ELEMENT | TRUE | *5QI* IE in TS  38.413 [11]  Clause 9.3.1.28 |  |
| 18255 | >>>>S-NSSAI | STRUCTURE |  |  | *S-NSSAI* IE in TS 38.473 [19]  Clause 9.3.1.38 |
| 18256 | >>>>>SST | ELEMENT | TRUE | *SST* IE in TS  38.473 [19]  Clause 9.3.1.38 |  |
| 18257 | >>>>>SD | ELEMENT | FALSE | *SD* IE in TS  38.473 [19]  Clause 9.3.1.38 |  |
| 18258 | >>>Number of DRBs attempted to setup | ELEMENT | FALSE | INTEGER | TS 28.552 [28]  Sec 5.1.1.10.1 |
| 18259 | >>>Number of DRBs successfully setup | ELEMENT | FALSE | INTEGER | TS 28.552 [28]  Sec 5.1.1.10.2 |
| 18260 | >>>Number of released active DRBs | ELEMENT | FALSE | INTEGER | TS 28.552 [28]  Sec 5.1.1.10.3 |
| 18261 | >>>In-session activity time for DRBs | ELEMENT | FALSE | INTEGER | TS 28.552 [28]  Sec 5.1.1.10.4 |
| 18262 | >Total number of DRBs successfully setup aggregated across QoS levels | ELEMENT | FALSE | INTEGER |  |
| 18270 | PDU Session Management | STRUCTURE |  |  | TS 28.552 [28]  Sec 5.1.1.5 |
| 18271 | >List of slices | LIST |  | *0..<maxnoofslice s>* | TS 28.552 [28]  Sec 5.1.1.18.5 |
| 18272 | >>Slice Item | STRUCTURE |  |  |  |
| 18273 | >>>S-NSSAI | STRUCTURE |  |  | *S-NSSAI* IE in TS 38.473 [19]  Clause 9.3.1.38 |
| 18274 | >>>>SST | ELEMENT | TRUE | *SST* IE in TS  38.473 [19]  Clause 9.3.1.38 |  |
| 18275 | >>>>SD | ELEMENT | FALSE | *SD* IE in TS  38.473 [19]  Clause 9.3.1.38 |  |
| 18276 | >>>Number of PDU sessions requested for setup | ELEMENT | FALSE | INTEGER | TS 28.552 [28]  Sec 5.1.1.5.1 |
| 18277 | >>>Number of PDU sessions successfully setup | ELEMENT | FALSE | INTEGER | TS 28.552 [28]  Sec 5.1.1.5.2 |
| 18278 | >>>Number of PDU sessions failed to setup | ELEMENT | FALSE | INTEGER | TS 28.552 [28]  Sec 5.1.1.5.3 |
| 18301 | Inter-system mobility measurements | STRUCTURE |  |  | TS 28.552 [28] |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
|  | between 5GS and EPS |  |  |  | Sec 5.1.1.6.3 |
| 18302 | >Number of requested HO preparations | ELEMENT | FALSE | INTEGER | TS 28.552 [28]  Sec 5.1.1.6.3.1 |
| 18303 | >Number of successful HO preparations | ELEMENT | FALSE | INTEGER | TS 28.552 [28]  Sec 5.1.1.6.3.2 |
| 18304 | >Number of failed HO preparations | ELEMENT | FALSE | INTEGER | TS 28.552 [28]  Sec 5.1.1.6.3.3 |
| 18305 | >Number of requested resource allocations for HO | ELEMENT | FALSE | INTEGER | TS 28.552 [28]  Sec 5.1.1.6.3.4 |
| 18306 | >Number of successful resource allocations for HO | ELEMENT | FALSE | INTEGER | TS 28.552 [28]  Sec 5.1.1.6.3.5 |
| 18307 | >Number of failed resource allocations for HO | ELEMENT | FALSE | INTEGER | TS 28.552 [28]  Sec 5.1.1.6.3.6 |
| 18308 | >Number of requested HO executions | ELEMENT | FALSE | INTEGER | TS 28.552 [28]  Sec 5.1.1.6.3.7 |
| 18309 | >Number of successful HO executions | ELEMENT | FALSE | INTEGER | TS 28.552 [28]  Sec 5.1.1.6.3.8 |
| 18310 | >Number of failed HO executions | ELEMENT | FALSE | INTEGER | TS 28.552 [28]  Sec 5.1.1.6.3.9 |
| 18321 | >MRO measurements | STRUCTURE |  |  | TS 28.552 [28]  Sec 5.1.1.25 |
| 18322 | >>Number of too early handovers | ELEMENT | FALSE | INTEGER | TS 28.552 [28]  Sec 5.1.1.25.2 |
| 18323 | >>Number of too late handovers | ELEMENT | FALSE | INTEGER | TS 28.552 [28]  Sec 5.1.1.25.2 |
| 18324 | >>Number of unnecessary handovers | ELEMENT | FALSE | INTEGER | TS 28.552 [28]  Sec 5.1.1.25.3 |
| 18325 | >>Number of ping-pong handovers | ELEMENT | FALSE | INTEGER | TS 28.552 [28]  Sec 5.1.1.25.4 |

</div>

#### gNB CU-UP Measurements

The following RAN Parameters are associated with gNB CU-UP measurements.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **RAN**  **Parameter ID** | **RAN Parameter** | **RAN**  **Parameter Value Type** | **Key Flag** | **RAN Parameter Definition** | **Semantics Description** |
| 19001 | Packet delay measurements | STRUCTURE |  |  | TS 28.552 [28]  Sec 5.1.3.3  and 5.1.1.1 |
| 19002 | >List of QoS levels | LIST |  |  | TS 28.552 [28]  Sec 5.1.3.3  and 5.1.1.1 |
| 19003 | >>QoS level item | STRUCTURE |  |  | TS 28.552 [28]  Sec 5.1.3.3  and 5.1.1.1 |
| 19004 | >>>CHOICE QoS level | STRUCTURE |  |  | TS 28.552 [28]  Sec 5.1.3.3  and 5.1.1.1 |
| 19005 | >>>>5QI | ELEMENT | TRUE | *5QI* IE in TS  38.413 [11]  Clause 9.3.1.28 |  |
| 19006 | >>>>S-NSSAI | STRUCTURE |  |  | *S-NSSAI* IE in TS 38.473 [19]  Clause 9.3.1.38 |
| 19007 | >>>>>SST | ELEMENT | TRUE | *SST* IE in TS  38.473 [19]  Clause 9.3.1.38 |  |
| 19008 | >>>>>SD | ELEMENT | FALSE | *SD* IE in TS  38.473 [19]  Clause 9.3.1.38 |  |
| 19009 | >>>PDCP re-ordering delay in the UL | ELEMENT | FALSE | INTEGER | TS 28.552 [28]  Sec 5.1.1.1.5 |
| 19010 | >>>Distribution bins for DL packet delay | LIST |  | *0..<maxnoofbins*  *>* | TS 28.552 [28]  Sec 5.1.1.1.6  and 5.1.3.3.4 |
| 19011 | >>>>Distribution bin item | STRUCTURE |  |  |  |
| 19012 | >>>>>DL packet delay bin value | ELEMENT | FALSE | INTEGER | TS 28.552 [28]  Sec 5.1.1.1.6  and 5.1.3.3.4 |
| 19013 | >>>>>Number of samples | ELEMENT | FALSE | INTEGER | TS 28.552 [28]  Sec 5.1.1.1.6  and 5.1.3.3.4 |
| 19021 | >>>Distribution bins for UL packet delay | LIST |  |  | TS 28.552 [28]  Sec 5.1.1.1.7 |
| 19022 | >>>>Distribution bin item | STRUCTURE |  |  | TS 28.552 [28]  Sec 5.1.1.1.7 |
| 19023 | >>>>>DL packet delay bin value | ELEMENT | FALSE | INTEGER | TS 28.552 [28]  Sec 5.1.1.1.7 |
| 19024 | >>>>>Number of samples | ELEMENT | FALSE | INTEGER | TS 28.552 [28]  Sec 5.1.1.1.7 |
| 19051 | >>>UL PDCP SDU Loss Rate | ELEMENT | FALSE | INTEGER | TS 28.552 [28]  Sec 5.1.3.1.1 |
| 19052 | >>>UL F1-U Packet Loss Rate | ELEMENT | FALSE | INTEGER | TS 28.552 [28]  Sec 5.1.3.1.2 |
| 19053 | >>>DL PDCP SDU Drop Rate | ELEMENT | FALSE | INTEGER | TS 28.552 [28]  Sec 5.1.3.2.1 |
| 19054 | >>>Average delay DL | ELEMENT | FALSE | REAL | TS 28.552 [28]  Sec 5.1.3.3.1 |
| 19055 | >>>Average delay DL on F1-U | ELEMENT | FALSE | REAL | TS 28.552 [28]  Sec 5.1.3.3.2 |
| 19056 | >>>Distribution bins for DL packet delay on F1-U | LIST |  |  | TS 28.552 [28]  Sec 5.1.3.3.5 |
| 19057 | >>>>Distribution bin item | STRUCTURE |  |  |  |
| 19058 | >>>>>DL packet delay bin value | ELEMENT | FALSE | INTEGER | TS 28.552 [28]  Sec 5.1.3.3.5 |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| 19059 | >>>>>Number of samples | ELEMENT | FALSE | INTEGER | TS 28.552 [28]  Sec 5.1.3.3.5 |
| 19071 | PDCP data volume Measurement | STRUCTURE |  |  | TS 28.552 [28]  Sec 5.1.3.6 |
| 19072 | >List of QoS levels | LIST |  |  | TS 28.552 [28]  Sec 5.1.3.6 |
| 19073 | >>QoS level item | STRUCTURE |  |  | TS 28.552 [28]  Sec 5.1.3.6 |
| 19074 | >>>CHOICE QoS level | STRUCTURE |  |  | TS 28.552 [28]  Sec 5.1.3.6 |
| 19075 | >>>>5QI | ELEMENT | TRUE | *5QI* IE in TS  38.413 [11]  Clause 9.3.1.28 |  |
| 19076 | >>>>S-NSSAI | STRUCTURE |  |  | *S-NSSAI* IE in TS 38.473 [19]  Clause 9.3.1.38 |
| 19077 | >>>>>SST | ELEMENT | TRUE | *SST* IE in TS  38.473 [19]  Clause 9.3.1.38 |  |
| 19078 | >>>>>SD | ELEMENT | FALSE | *SD* IE in TS  38.473 [19]  Clause 9.3.1.38 |  |
| 19079 | >>>DL PDCP PDU Data  Volume | ELEMENT | FALSE | INTEGER | TS 28.552 [28]  Sec 5.1.3.6.1 |
| 19080 | >>>DL PDCP SDU Data  Volume | ELEMENT | FALSE | INTEGER | TS 28.552 [28]  Sec 5.1.3.6.2 |

</div>

#### gNB DU Measurements

The following RAN Parameters are associated with gNB DU measurements.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **RAN**  **Parameter ID** | **RAN Parameter** | **RAN**  **Parameter Value Type** | **Key Flag** | **RAN Parameter Definition** | **Semantics Description** |
| 20001 | Packet delay measurements | STRUCTURE |  |  | TS 28.552 [28]  Sec 5.1.3.3  and 5.1.1.1 |
| 20002 | >List of QoS levels | LIST |  |  | TS 28.552 [28]  Sec 5.1.3.3  and 5.1.1.1 |
| 20003 | >>QoS level item | STRUCTURE |  |  | TS 28.552 [28]  Sec 5.1.3.3  and 5.1.1.1 |
| 20004 | >>>CHOICE QoS level | STRUCTURE |  |  | TS 28.552 [28]  Sec 5.1.3.3  and 5.1.1.1 |
| 20005 | >>>>5QI | ELEMENT | TRUE | *5QI* IE in TS  38.413 [11]  Clause 9.3.1.28 |  |
| 20006 | >>>>S-NSSAI | STRUCTURE |  |  | *S-NSSAI* IE in TS 38.473 [19]  Clause 9.3.1.38 |
| 20007 | >>>>>SST | ELEMENT | TRUE | *SST* IE in TS  38.473 [19]  Clause 9.3.1.38 |  |
| 20008 | >>>>>SD | ELEMENT | FALSE | *SD* IE in TS  38.473 [19]  Clause 9.3.1.38 |  |
| 20009 | >>>Average delay DL air- interface | ELEMENT | FALSE | REAL | TS 28.552 [28]  Sec 5.1.1.1 |
| 20010 | >>>Average delay UL on over- the-air interface | ELEMENT | FALSE | REAL | TS 28.552 [28]  Sec 5.1.1.1 |
| 20011 | >>>Average RLC packet delay in the UL | ELEMENT | FALSE | REAL | TS 28.552 [28]  Sec 5.1.1.1.4 |
| 20012 | >>>Distribution bins for DL air- interface delay | LIST |  |  | TS 28.552 [28]  Sec 5.1.1.1.2 |
| 20013 | >>>>Distribution bin item | STRUCTURE |  |  | TS 28.552 [28]  Sec 5.1.1.1.2 |
| 20014 | >>>>>Bin value | ELEMENT | FALSE | INTEGER | TS 28.552 [28]  Sec 5.1.1.1.2 |
| 20015 | >>>>>Number of samples | ELEMENT | FALSE | INTEGER | TS 28.552 [28]  Sec 5.1.1.1.2 |
| 20018 | List of NR cells | LIST |  |  | Cell-specific measurements as in TS  28.552 [28]  Sec 5.1.1.2 |
| 20019 | >NR Cell Item | STRUCTURE |  | 8.1.1.1 |  |
| 20020 | >>NR CGI | ELEMENT | TRUE | *NR CGI* IE in TS  38.423 [15]  Clause 9.2.2.7 |  |
| 20021 | >>Radio Resource Utilization | STRUCTURE |  |  | TS 28.552 [28]  Sec 5.1.1.2 |
| 20022 | >>>DL Total PRB Usage | ELEMENT | FALSE | INTEGER | TS 28.552 [28]  Sec 5.1.1.2.1 |
| 20023 | >>>UL Total PRB Usage | ELEMENT | FALSE | INTEGER | TS 28.552 [28]  Sec 5.1.1.2.2 |
| 20024 | >>>Distribution bins for DL Total PRB Usage | LIST |  |  | TS 28.552 [28]  Sec 5.1.1.2.3 |
| 20025 | >>>>Distribution bin item | STRUCTURE |  |  | TS 28.552 [28]  Sec 5.1.1.2.3 |
| 20026 | >>>>>Bin value | ELEMENT | FALSE | INTEGER | TS 28.552 [28]  Sec 5.1.1.2.3 |
| 20027 | >>>>>Number of samples | ELEMENT | FALSE | INTEGER | TS 28.552 [28]  Sec 5.1.1.2.3 |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| 20028 | >>>Distribution bins for UL Total PRB Usage | LIST |  |  | TS 28.552 [28]  Sec 5.1.1.2.4 |
| 20029 | >>>>Distribution bin item | STRUCTURE |  |  | TS 28.552 [28]  Sec 5.1.1.2.4 |
| 20030 | >>>>>Bin value | ELEMENT | FALSE | INTEGER | TS 28.552 [28]  Sec 5.1.1.2.4 |
| 20031 | >>>>>Number of samples | ELEMENT | FALSE | INTEGER | TS 28.552 [28]  Sec 5.1.1.2.4 |
| 20032 | >>>List of QoS levels | LIST |  |  | TS 28.552 [28]  Sec 5.1.1.2.5 |
| 20033 | >>>>QoS level item | STRUCTURE |  |  | TS 28.552 [28]  Sec 5.1.1.2.5 |
| 20034 | >>>>>CHOICE QoS  level | STRUCTURE |  |  | TS 28.552 [28]  Sec 5.1.1.2.5 |
| 20035 | >>>>>>5QI | ELEMENT | TRUE | *5QI* IE in TS  38.413 [11]  Clause 9.3.1.28 |  |
| 20036 | >>>>>>S-NSSAI | STRUCTURE |  |  | *S-NSSAI* IE in TS 38.473 [19]  Clause 9.3.1.38 |
| 20037 | >>>>>>>SST | ELEMENT | TRUE | *SST* IE in TS  38.473 [19]  Clause 9.3.1.38 |  |
| 20038 | >>>>>>>SD | ELEMENT | FALSE | *SD* IE in TS  38.473 [19]  Clause 9.3.1.38 |  |
| 20039 | >>>>>DL PRB used for data traffic | ELEMENT | FALSE | INTEGER | TS 28.552 [28]  Sec 5.1.1.2.5 |
| 20040 | >>>>>UL PRB used for data traffic | ELEMENT | FALSE | INTEGER | TS 28.552 [28]  Sec 5.1.1.2.5 |
| 20041 | >>>DL total available PRB | ELEMENT | FALSE | INTEGER | TS 28.552 [28]  Sec 5.1.1.2.6 |
| 20042 | >>>UL total available PRB | ELEMENT | FALSE | INTEGER | TS 28.552 [28]  Sec 5.1.1.2.8 |
| 20051 | UE Throughput Measurements | STRUCTURE |  |  | TS 28.552 [28]  Sec 5.1.1.3 |
| 20052 | >List of QoS levels | LIST |  |  | TS 28.552 [28]  Sec 5.1.1.3 |
| 20053 | >>QoS level item | STRUCTURE |  |  | TS 28.552 [28]  Sec 5.1.1.3 |
| 20054 | >>>CHOICE QoS level | STRUCTURE |  |  | TS 28.552 [28]  Sec 5.1.1.3 |
| 20055 | >>>>5QI | ELEMENT | TRUE | *5QI* IE in TS  38.413 [11]  Clause 9.3.1.28 |  |
| 20056 | >>>>S-NSSAI | STRUCTURE |  |  | *S-NSSAI* IE in TS 38.473 [19]  Clause 9.3.1.38 |
| 20057 | >>>>>SST | ELEMENT | TRUE | *SST* IE in TS  38.473 [19]  Clause 9.3.1.38 |  |
| 20058 | >>>>>SD | ELEMENT | FALSE | *SD* IE in TS  38.473 [19]  Clause 9.3.1.38 |  |
| 20059 | >>Average DL UE throughput | ELEMENT | FALSE | REAL | TS 28.552 [28]  Sec 5.1.1.3.1 |
| 20060 | >>Average UL UE throughput | ELEMENT | FALSE | REAL | TS 28.552 [28]  Sec 5.1.1.3.3 |
| 20061 | >>Percentage of unrestricted DL UE throughput | ELEMENT | FALSE | INTEGER | TS 28.552 [28]  Sec 5.1.1.3.5 |
| 20062 | >>Percentage of unrestricted UL UE throughput | ELEMENT | FALSE | INTEGER | TS 28.552 [28]  Sec 5.1.1.3.6 |
| 20063 | >>Distribution bins for DL UE throughput | LIST |  |  | TS 28.552 [28]  Sec 5.1.1.3.2 |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| 20064 | >>>Distribution bin item | STRUCTURE |  |  | TS 28.552 [28]  Sec 5.1.1.3.2 |
| 20065 | >>>>Bin value | ELEMENT | FALSE | INTEGER | TS 28.552 [28]  Sec 5.1.1.3.2 |
| 20066 | >>>>Number of samples | ELEMENT | FALSE | INTEGER | TS 28.552 [28]  Sec 5.1.1.3.2 |
| 20067 | >>Distribution bins for UL UE throughput | LIST |  |  | TS 28.552 [28]  Sec 5.1.1.3.4 |
| 20068 | >>>Distribution bin item | STRUCTURE |  |  | TS 28.552 [28]  Sec 5.1.1.3.4 |
| 20069 | >>>>Bin value | ELEMENT | FALSE | INTEGER | TS 28.552 [28]  Sec 5.1.1.3.4 |
| 20070 | >>>>Number of samples | ELEMENT | FALSE | INTEGER | TS 28.552 [28]  Sec 5.1.1.3.4 |
| 20098 | List of NR Cells | LIST |  |  | Cell-specific measurements as in TS  28.552 [28]  Sec 5.1.1.7 |
| 20099 | >NR Cell Item | STRUCTURE |  | 8.1.1.1 |  |
| 20100 | >>NR CGI | ELEMENT | TRUE | *NR CGI* IE in TS  38.423 [15]  Clause 9.2.2.7 |  |
| 20101 | >>TB-related Measurements | STRUCTURE |  |  | TS 28.552 [28]  Sec 5.1.1.7 |
| 20102 | >>>DL initial TBs | STRUCTURE |  |  | TS 28.552 [28]  Sec 5.1.1.7 |
| 20103 | >>>>Total number of DL initial TBs | ELEMENT | FALSE | INTEGER | TS 28.552 [28]  Sec 5.1.1.7.1 |
| 20104 | >>>>Total number of DL QPSK initial TBs | ELEMENT | FALSE | INTEGER | TS 28.552 [28]  Sec 5.1.1.7.1 |
| 20105 | >>>>Total number of DL 16QAM initial TBs | ELEMENT | FALSE | INTEGER | TS 28.552 [28]  Sec 5.1.1.7.1 |
| 20106 | >>>>Total number of DL 64QAM initial TBs | ELEMENT | FALSE | INTEGER | TS 28.552 [28]  Sec 5.1.1.7.1 |
| 20107 | >>>UL initial TBs | STRUCTURE |  |  | TS 28.552 [28]  Sec 5.1.1.7.6 |
| 20108 | >>>>Total number of UL initial TBs | ELEMENT | FALSE | INTEGER | TS 28.552 [28]  Sec 5.1.1.7.6 |
| 20109 | >>>>Total number of UL QPSK initial TBs | ELEMENT | FALSE | INTEGER | TS 28.552 [28]  Sec 5.1.1.7.6 |
| 20110 | >>>>Total number of UL 16QAM initial TBs | ELEMENT | FALSE | INTEGER | TS 28.552 [28]  Sec 5.1.1.7.6 |
| 20111 | >>>>Total number of UL 64QAM initial TBs | ELEMENT | FALSE | INTEGER | TS 28.552 [28]  Sec 5.1.1.7.6 |
| 20121 | >>>Initial error number of DL TBs | STRUCTURE |  |  | TS 28.552 [28]  Sec 5.1.1.7.2 |
| 20122 | >>>>Error number of DL initial TBs | ELEMENT | FALSE | INTEGER | TS 28.552 [28]  Sec 5.1.1.7.2 |
| 20123 | >>>>Error number of DL QPSK initial TBs | ELEMENT | FALSE | INTEGER | TS 28.552 [28]  Sec 5.1.1.7.2 |
| 20124 | >>>>Error number of DL 16QAM initial TBs | ELEMENT | FALSE | INTEGER | TS 28.552 [28]  Sec 5.1.1.7.2 |
| 20125 | >>>>Error number of DL 64QAM initial TBs | ELEMENT | FALSE | INTEGER | TS 28.552 [28]  Sec 5.1.1.7.2 |
| 20126 | >>>Initial error number of UL TBs | STRUCTURE |  |  | TS 28.552 [28]  Sec 5.1.1.7.7 |
| 20127 | >>>>Error number of UL initial TBs | ELEMENT | FALSE | INTEGER | TS 28.552 [28]  Sec 5.1.1.7.7 |
| 20128 | >>>>Error number of UL QPSK initial TBs | ELEMENT | FALSE | INTEGER | TS 28.552 [28]  Sec 5.1.1.7.7 |
| 20129 | >>>>Error number of UL 16QAM initial TBs | ELEMENT | FALSE | INTEGER | TS 28.552 [28]  Sec 5.1.1.7.7 |
| 20130 | >>>>Error number of UL 64QAM initial TBs | ELEMENT | FALSE | INTEGER | TS 28.552 [28]  Sec 5.1.1.7.7 |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| 20131 | >>>DL total TBs | STRUCTURE |  |  | TS 28.552 [28]  Sec 5.1.1.7.3 |
| 20132 | >>>>Total number of DL TBs | ELEMENT | FALSE | INTEGER | TS 28.552 [28]  Sec 5.1.1.7.3 |
| 20133 | >>>>Total number of DL QPSK TBs | ELEMENT | FALSE | INTEGER | TS 28.552 [28]  Sec 5.1.1.7.3 |
| 20134 | >>>>Total number of DL 16QAM TBs | ELEMENT | FALSE | INTEGER | TS 28.552 [28]  Sec 5.1.1.7.3 |
| 20135 | >>>>Total number of DL 64QAM TBs | ELEMENT | FALSE | INTEGER | TS 28.552 [28]  Sec 5.1.1.7.3 |
| 20136 | >>>UL total TBs | STRUCTURE |  |  | TS 28.552 [28]  Sec 5.1.1.7.8 |
| 20137 | >>>>Total number of UL TBs | ELEMENT | FALSE | INTEGER | TS 28.552 [28]  Sec 5.1.1.7.8 |
| 20138 | >>>>Total number of UL QPSK TBs | ELEMENT | FALSE | INTEGER | TS 28.552 [28]  Sec 5.1.1.7.8 |
| 20139 | >>>>Total number of UL 16QAM TBs | ELEMENT | FALSE | INTEGER | TS 28.552 [28]  Sec 5.1.1.7.8 |
| 20140 | >>>>Total number of UL  64QAM TBs | ELEMENT | FALSE | INTEGER | TS 28.552 [28]  Sec 5.1.1.7.8 |
| 20141 | >>>Total error number of DL TBs | STRUCTURE |  |  | TS 28.552 [28]  Sec 5.1.1.7.3 |
| 20142 | >>>>Total error number of DL TBs | ELEMENT | FALSE | INTEGER | TS 28.552 [28]  Sec 5.1.1.7.3 |
| 20143 | >>>>Total error number of DL QPSK TBs | ELEMENT | FALSE | INTEGER | TS 28.552 [28]  Sec 5.1.1.7.3 |
| 20144 | >>>>Total error number of DL 16QAM TBs | ELEMENT | FALSE | INTEGER | TS 28.552 [28]  Sec 5.1.1.7.3 |
| 20145 | >>>>Total error number of DL 64QAM TBs | ELEMENT | FALSE | INTEGER | TS 28.552 [28]  Sec 5.1.1.7.3 |
| 20146 | >>>Total error number of UL TBs | STRUCTURE |  |  | TS 28.552 [28]  Sec 5.1.1.7.9 |
| 20147 | >>>>Total error number of UL TBs | ELEMENT | FALSE | INTEGER | TS 28.552 [28]  Sec 5.1.1.7.9 |
| 20148 | >>>>Total error number of UL QPSK TBs | ELEMENT | FALSE | INTEGER | TS 28.552 [28]  Sec 5.1.1.7.9 |
| 20149 | >>>>Total error number of UL 16QAM TBs | ELEMENT | FALSE | INTEGER | TS 28.552 [28]  Sec 5.1.1.7.9 |
| 20150 | >>>>Total error number of UL 64QAM TBs | ELEMENT | FALSE | INTEGER | TS 28.552 [28]  Sec 5.1.1.7.9 |
| 20151 | >>>Residual error number of DL TBs | STRUCTURE |  |  | TS 28.552 [28]  Sec |
| 20152 | >>>>Residual error number of DL TBs | ELEMENT | FALSE | INTEGER | TS 28.552 [28]  Sec 5.1.1.7.5 |
| 20153 | >>>>Residual error number of DL QPSK TBs | ELEMENT | FALSE | INTEGER | TS 28.552 [28]  Sec 5.1.1.7.5 |
| 20154 | >>>>Residual error number of DL 16QAM TBs | ELEMENT | FALSE | INTEGER | TS 28.552 [28]  Sec 5.1.1.7.5 |
| 20155 | >>>>Residual error number of DL 64QAM TBs | ELEMENT | FALSE | INTEGER | TS 28.552 [28]  Sec 5.1.1.7.5 |
| 20156 | >>>Residual error number of UL TBs | STRUCTURE |  |  | TS 28.552 [28]  Sec 5.1.1.7.10 |
| 20157 | >>>>Residual error number of UL TBs | ELEMENT | FALSE | INTEGER | TS 28.552 [28]  Sec 5.1.1.7.10 |
| 20158 | >>>>Residual error number of UL QPSK TBs | ELEMENT | FALSE | INTEGER | TS 28.552 [28]  Sec 5.1.1.7.10 |
| 20159 | >>>>Total error number of UL 16QAM TBs | ELEMENT | FALSE | INTEGER | TS 28.552 [28]  Sec 5.1.1.7.10 |
| 20160 | >>>>Total error number of UL 64QAM TBs | ELEMENT | FALSE | INTEGER | TS 28.552 [28]  Sec 5.1.1.7.10 |
| 20201 | >>CQI-related measurements | STRUCTURE |  |  | TS 28.552 [28]  Sec 5.1.1.11 |
| 20202 | >>>Distribution bins of CQI values | LIST |  |  | TS 28.552 [28]  Sec 5.1.1.11 |
| 20203 | >>>>Distribution bin item | STRUCTURE |  |  | TS 28.552 [28]  Sec 5.1.1.11 |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| 20204 | >>>>>Bin value | ELEMENT | FALSE | INTEGER | TS 28.552 [28]  Sec 5.1.1.11 |
| 20205 | >>>>>Number of samples | ELEMENT | FALSE | INTEGER | TS 28.552 [28]  Sec 5.1.1.11 |
| 20206 | >>MCS-related measurements | STRUCTURE |  |  | TS 28.552 [28]  Sec 5.1.1.12 |
| 20207 | >>>Distribution bins of PDSCH MCS values | LIST |  |  | TS 28.552 [28]  Sec 5.1.1.12.1 |
| 20208 | >>>>Distribution bin item | STRUCTURE |  |  | TS 28.552 [28]  Sec 5.1.1.12.1 |
| 20209 | >>>>>Bin value | ELEMENT | FALSE | INTEGER | TS 28.552 [28]  Sec 5.1.1.12.1 |
| 20210 | >>>>>Number of samples | ELEMENT | FALSE | INTEGER | TS 28.552 [28]  Sec 5.1.1.12.1 |
| 20211 | >>>Distribution bins of PUSCH MCS values | LIST |  |  | TS 28.552 [28]  Sec 5.1.1.12.2 |
| 20212 | >>>>Distribution bin item | STRUCTURE |  |  | TS 28.552 [28]  Sec 5.1.1.12.2 |
| 20213 | >>>>>Bin value | ELEMENT | FALSE | INTEGER | TS 28.552 [28]  Sec 5.1.1.12.2 |
| 20214 | >>>>>Number of samples | ELEMENT | FALSE | INTEGER | TS 28.552 [28]  Sec 5.1.1.12.2 |
| 20251 | >>Number of active UE measurements | STRUCTURE |  | INTEGER | TS 28.552 [28]  Sec 5.1.1.23 |
| 20252 | >>>List of QoS levels | LIST |  |  | TS 28.552 [28]  Sec 5.1.1.23 |
| 20253 | >>>>QoS level item | STRUCTURE |  |  | TS 28.552 [28]  Sec 5.1.1.23 |
| 20254 | >>>>>CHOICE QoS  level | STRUCTURE |  |  | TS 28.552 [28]  Sec 5.1.1.23 |
| 20255 | >>>>>>5QI | ELEMENT | TRUE | *5QI* IE in TS  38.413 [11]  Clause 9.3.1.28 |  |
| 20256 | >>>>>>S-NSSAI | STRUCTURE |  |  | *S-NSSAI* IE in TS 38.473 [19]  Clause 9.3.1.38 |
| 20257 | >>>>>>>SST | ELEMENT | TRUE | *SST* IE in TS  38.473 [19]  Clause 9.3.1.38 |  |
| 20258 | >>>>>>>SD | ELEMENT | FALSE | *SD* IE in TS  38.473 [19]  Clause 9.3.1.38 |  |
| 20259 | >>>>>Number of active UEs in the DL | ELEMENT | FALSE | INTEGER | TS 28.552 [28]  Sec 5.1.1.23.1 |
| 20260 | >>>>>Maximum number of active UEs in the DL | ELEMENT | FALSE | INTEGER | TS 28.552 [28]  Sec 5.1.1.23.2 |
| 20261 | >>>>>Number of active UEs in the UL | ELEMENT | FALSE | INTEGER | TS 28.552 [28]  Sec 5.1.1.23.3 |
| 20262 | >>>>>Maximum number of active UEs in the UL | ELEMENT | FALSE | INTEGER | TS 28.552 [28]  Sec 5.1.1.23.4 |
| 20271 | Packet level measurements | STRUCTURE |  |  | TS 28.552 [28]  Sec 5.1.3 |
| 20272 | >List of QoS levels | LIST |  |  | TS 28.552 [28]  Sec 5.1.3 |
| 20273 | >>QoS level item | STRUCTURE |  |  | TS 28.552 [28]  Sec 5.1.3 |
| 20274 | >>>CHOICE QoS level | STRUCTURE |  |  | TS 28.552 [28]  Sec 5.1.3 |
| 20275 | >>>>5QI | ELEMENT | TRUE | *5QI* IE in TS  38.413 [11]  Clause 9.3.1.28 |  |
| 20276 | >>>>S-NSSAI | STRUCTURE |  |  | *S-NSSAI* IE in TS 38.473 [19]  Clause 9.3.1.38 |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| 20277 | >>>>>SST | ELEMENT | TRUE | *SST* IE in TS  38.473 [19]  Clause 9.3.1.38 |  |
| 20278 | >>>>>SD | ELEMENT | **FALSE** | *SD* IE in TS  38.473 [19]  Clause 9.3.1.38 |  |
| 20279 | >>>DL F1-U Packet Loss Rate | ELEMENT | FALSE | INTEGER | TS 28.552 [28]  Sec 5.1.3.1.3 |
| 20280 | >>>DL RLC SDU Packet Drop Rate | ELEMENT | FALSE | INTEGER | TS 28.552 [28]  Sec 5.1.3.2.2 |
| 20281 | >>>Average delay DL in gNB- DU | ELEMENT | FALSE | REAL | TS 28.552 [28]  Sec 5.1.3.3.3 |
| 20282 | >>>Distribution bins of DL delay | LIST |  |  | TS 28.552 [28]  Sec 5.1.3.3.6 |
| 20283 | >>>>Distribution bin item | STRUCTURE |  |  | TS 28.552 [28]  Sec 5.1.3.3.6 |
| 20284 | >>>>>Bin value | ELEMENT | FALSE | INTEGER | TS 28.552 [28]  Sec 5.1.3.3.6 |
| 20285 | >>>>>Number of samples | ELEMENT | FALSE | INTEGER | TS 28.552 [28]  Sec 5.1.1.3.6 |
| 20286 | >>>Average IP latency DL | ELEMENT | FALSE | REAL | TS 28.552 [28]  Sec 5.1.3.4.2 |
| 20287 | >>>Distribution bins of DL IP latency | LIST |  |  | TS 28.552 [28]  Sec 5.1.3.4.3 |
| 20288 | >>>>Distribution bin item | STRUCTURE |  |  | TS 28.552 [28]  Sec 5.1.3.4.3 |
| 20289 | >>>>>Bin value | ELEMENT | FALSE | INTEGER | TS 28.552 [28]  Sec 5.1.3.4.3 |
| 20290 | >>>>>Number of samples | ELEMENT | FALSE | INTEGER | TS 28.552 [28]  Sec 5.1.3.4.3 |
| 20291 | Number of UE Context release requested from gNB-DU | ELEMENT | FALSE | INTEGER | TS 28.552 [28]  Sec 5.1.3.5.1 |

</div>

#### gNB Measurements

The following RAN Parameters are associated with the gNB measurements.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **RAN**  **Parameter ID** | **RAN Parameter** | **RAN**  **Parameter Value Type** | **Key Flag** | **RAN**  **Parameter Definition** | **Semantics Description** |
| 20501 | gNB CU-CP Measurements | STRUCTURE |  | 8.1.1.12 | For both UE- and E2 node level  measurements |
| 20502 | gNB CU-UP Measurements | STRUCTURE |  | 8.1.1.13 | For both UE- and E2 node level  measurements |
| 20503 | gNB DU Measurements | STRUCTURE |  | 8.1.1.14 | For both UE- and E2 node level  measurements |

</div>

#### PDU Session

The following RAN Parameters are associated with PDU session.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **RAN**  **Parameter ID** | **RAN Parameter** | **RAN**  **Parameter Value Type** | **Key Flag** | **RAN**  **Parameter Definition** | **Semantics Description** |
| 21001 | S-NSSAI | STRUCTURE |  |  | *S-NSSAI* IE in TS 38.473  [19] Clause  9.3.1.38 |
| 21002 | >SST | ELEMENT | TRUE | *SST* IE in TS  38.473 [19]  Clause 9.3.1.38 |  |
| 21003 | >SD | ELEMENT | FALSE | *SD* IE in TS  38.473 [19]  Clause 9.3.1.38 |  |
| 21004 | PDU Session Aggregate Maximum Bit Rate | STRUCTURE |  |  | *PDU Session Aggregate Maximum Bit Rate* IE in TS  38.413 [11]  Clause 9.3.1.102 |
| 21005 | >PDU Session Aggregate Maximum Bit Rate Downlink | ELEMENT | FALSE | *PDU Session Aggregate Maximum Bit Rate Downlink* IE in TS  38.413 [11]  Clause 9.3.1.102 |  |
| 21006 | >PDU Session Aggregate Maximum Bit Rate Uplink | ELEMENT | FALSE | *PDU Session Aggregate Maximum Bit Rate Uplink* IE in TS 38.413  [11] Clause  9.3.1.102 |  |
| 21008 | >Data Forwarding Not Possible | ELEMENT | FALSE | *Data Forwarding Not Possible* IE in TS  38.413 [11]  Clause 9.3.1.63 |  |
| 21009 | >PDU Session Type | ELEMENT | FALSE | *PDU Session Type* IE in TS  38.413 [11]  Clause 9.3.1.52 |  |
| 21010 | >Network Instance | ELEMENT | FALSE | *Network Instance* IE in TS 38.413 [11]  Clause 9.3.1.113 |  |
| 21011 | >Direct Forwarding Path Availability | ELEMENT | FALSE | *Direct Forwarding Path Availability* IE in TS 38.413  [11] Clause  9.3.1.120 |  |
| 21012 | >Redundant Common Network Instance | ELEMENT | FALSE | *Redundant Common Network Instance* IE in TS 38.413 [11]  Clause |  |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
|  |  |  |  | 9.3.1.120 |  |
| 21013 | >Redundant PDU Session Information | ELEMENT | FALSE | *Redundant PDU Session Information* IE in TS 38.413  [11] Clause  9.3.1.136 |  |

</div>

#### UE Context Information

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **RAN**  **Parameter ID** | **RAN Parameter** | **RAN**  **Parameter Value Type** | **Key Flag** | **RAN**  **Paramete**  **r Definition** | **Semantics Description** |
| 21501 | Master Node | STRUCTURE |  | 8.1.1.11 |  |
| 21502 | >gNB Measurements | STRUCTURE |  | 8.1.1.15 |  |
| 21503 | CHOICE Primary Cell of MCG | STRUCTURE |  |  |  |
| 21504 | >NR Cell | STRUCTURE |  | 8.1.1.1 | For NR SpCell |
| 21505 | >E-UTRA Cell | STRUCTURE |  | 8.1.1.2 | For E-UTRA PCell |
| 21506 | List of Secondary Cells of MCG | LIST |  |  | *Scell To Be Setup List* IE in TS  38.473 [19] clause 9.2.2.1 |
| 21507 | >SCell Item | STRUCTURE |  |  | *Scell To Be Setup Item* IEs IE in TS 38.473 [19] clause  9.2.2.1 |
| 21508 | >>CHOICE SCell | STRUCTURE |  |  |  |
| 21509 | >>>NR Cell | STRUCTURE |  | 8.1.1.1 | For NR SCell |
| 21510 | >>>E-UTRA Cell | STRUCTURE |  | 8.1.1.2 | For E-UTRA SCell |
| 21511 | Secondary Node | STRUCTURE |  | 8.1.1.11 |  |
| 21512 | >gNB Measurements | STRUCTURE |  | 8.1.1.15 |  |
| 21513 | CHOICE Primary Cell of SCG | STRUCTURE |  |  | *PSCell* IE as defined in TS  38.331 [22] or the structure  defined in TS 38.473 [19]  clause 9.2.2.1 |
| 21514 | >NR Cell | STRUCTURE |  | 8.1.1.1 |  |
| 21515 | >E-UTRA Cell | STRUCTURE |  | 8.1.1.2 |  |
| 21516 | List of Secondary Cells of SCG | LIST |  |  | *Scell To Be Setup List* IE in TS  38.473 [19] clause 9.2.2.1 |
| 21517 | >SCell Item | STRUCTURE |  |  | *Scell To Be Setup Item* IEs IE in TS 38.473 [19] clause  9.2.2.1 |
| 21518 | >>CHOICE SCell | STRUCTURE |  |  |  |
| 21519 | >>>NR Cell | STRUCTURE |  | 8.1.1.1 |  |
| 21520 | >>>E-UTRA Cell | STRUCTURE |  | 8.1.1.2 |  |
| 21521 | List of PDU Sessions | LIST |  |  | *PDU Session Resources To Be Setup List* IE in TS 38.423  [15] Clause 9.2.1.1 |
| 21522 | >PDU Session Item | STRUCTURE |  |  | *PDU Session Resources To Be Setup Item* IE in TS 38.423  [15] Clause 9.2.1.1 |
| 21543 | >>PDU Session ID | ELEMENT | TRUE | *PDU*  *Session ID* IE in TS 38.413  [11]  Clause 9.3.1.50 |  |
| 21523 | >>PDU Session | STRUCTURE |  | 8.1.1.16 |  |
| 21524 | >>List of DRBs | LIST |  |  | *DRB to Be Setup List* IE in TS  38.473 [19] Clause 9.2.2.1 |
| 21525 | >>>DRB Item | STRUCTURE |  |  |  |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| 21546 | >>>>DRB ID | ELEMENT | TRUE | *DRB ID* IE  in TS 37.483  [21]  clause 9.3.1.16 |  |
| 21547 | >>>>DRB | STRUCTURE |  | 8.1.1.5 |  |
| 21526 | >>>>List of QoS flows mapped to DRB | LIST |  |  | *QoS Flows Information To Be Setup* IE in TS 37.483 [21]  Clause 9.3.3.2 |
| 21527 | >>>>>QoS  Flow Item | STRUCTURE |  |  |  |
| 21548 | >>>>>>Qo  S Flow Identifier | ELEMENT | TRUE | *QoS Flow Identifier* IE in TS 38.413  [11]  Clause 9.3.1.51 |  |
| 21549 | >>>>>>Qo  S Flow | STRUCTURE |  | 8.1.1.6 |  |
| 21528 | List of Neighbour cells | LIST |  |  | *measResultNeighCells* IE in TS 38.331 [22] |
| 21529 | >Neighbour Cell Item | STRUCTURE |  |  |  |
| 21530 | >>CHOICE Neighbour Cell | STRUCTURE |  |  |  |
| 21531 | >>>NR Cell | STRUCTURE |  | 8.1.1.1 | *MeasResultNR* IE in TS  38.331 [22] |
| 21532 | >>>E-UTRA Cell | STRUCTURE |  | 8.1.1.2 | *MeasResultEUTRA* IE in TS  38.331 [22] |
| 21540 | UE Context Container | ELEMENT | FALSE | OCTET STRING | *The RETRIEVE UE CONTEXT*  *RESPONSE message content in TS 38.423 [15] clause*  *9.1.1.9.* |
| 21541 | SRS Configuration | ELEMENT | FALSE | OCTET STRING | *SRS-Config IE defined in TS*  *38.331 [22].* |
| 21600 | CSI Measurement Configuration | ELEMENT | FALSE | OCTET STRING | *CSI-MeasConfig* IE defined in TS 38.331 [22] |
| 21601 | Measurement Gap Configuration | ELEMENT | FALSE | OCTET STRING | *MeasGapConfig* IE defined in TS 38.331 [22] |
| 21602 | List of BWP Downlink | LIST |  |  | The list of all DL BWPs assigned to a specific UE |
| 21603 | >BWP Downlink Item | STRUCTURE |  |  | *BWP-Downlink* IE in TS  38.331 [22] |
| 21604 | >>BWP ID | ELEMENT | FALSE | *BWP-Id* IE  in TS 38.331  [22] | value of 0 represents the DL Initial BWP |
| 21605 | >>BWP Downlink Common | ELEMENT | FALSE | OCTET STRING | *BWP-DownlinkCommon* IE in TS 38.331 [22] |
| 21606 | >>BWP Downlink Dedicated | ELEMENT | FALSE | OCTET  STRING | *BWP-DownlinkDedicated* IE in  TS 38.331 [22] |
| 21607 | List of active RLC Bearers | LIST |  |  | The list of active RLC bearers of a specific UE |
| 21608 | >RLC Bearer Item | STRUCTURE |  |  |  |
| 21609 | >>Logical Channel ID | ELEMENT | FALSE | *LogicalCh annelIdent ity* IE in TS 38.331  [22]  clause 6 |  |
| 21610 | >>CHOICE Served Radio Bearer |  |  |  |  |
| 21611 | >>>SRB ID | ELEMENT | FALSE | *SRB-*  *Identity* IE |  |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
|  |  |  |  | in TS 38.331  [22]  clause 6 |  |
| 21612 | >>>DRB ID | ELEMENT | FALSE | *DRB-*  *Identity* IE in TS 38.331  [22]  clause 6 |  |
| 21613 | PDSCH Serving Cell Configuration | ELEMENT | FALSE | OCTET STRING | *PDSCH-ServingCellConfig* IE in TS 38.331 [22] |
| 21614 | DRX Configuration | ELEMENT | FALSE | OCTET STRING | *DRX-Config* IE in TS 38.331 [22] |
| 21615 | UE Capabilities | ELEMENT | FALSE | OCTET STRING | *UE-CapabilityRAT- ContainerList* IE in TS 38.331  [22] |

</div>

#### eNB Measurements

Editor's Note: FFS

### RAN Parameters for Call Process Breakpoint

#### Call process type IDs

The RAN Parameters for the Event Trigger style 2 are defined based on the following call process type.

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Call Process Type ID** | **Call Process Type** | **RAN Parameters** |
| 1 | UE Context Management | Defined in Clause 8.1.2.1 |
| 2 | Bearer Context Management | Defined in Clause 8.1.2.2 |
| 3 | Mobility Management | Defined in Clause 8.1.2.3 |
| 4 | Multi-RAT Dual Connectivity Management | Defined in Clause 8.1.2.4 |
| 5 | Radio Resource Control Management | Defined in Clause 8.1.2.5 |
| 6 | PDU Session Management | Defined in Clause 8.1.2.6 |

</div>

#### UE Context Management

The RAN Parameters for the call process type of "UE Context Management" are defined as follows.

###### UE Context Setup

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **RAN**  **Parameter xID** | **RAN Parameter** | **RAN**  **Parameter Value Type** | **Key Flag** | **RAN**  **Parameter Definition** | ***Semantics Description*** |
| 25001 | Primary Cell ID | STRUCTURE |  |  | This is for the primary serving cell of the UE. The structuring of this parameter is based on *Target Cell Global ID* IE in TS  38.423 [15] clause  9.2.3.25 |
| 25002 | >CHOICE *Primary Cell* | STRUCTURE |  |  | The primary cell could either be an NR primary cell or an LTE primary cell.  The structuring is based on*Target Cell* IE in TS 38.423 [15]  clause 9.2.3.25 |
| 25003 | >>NR SpCell | STRUCTURE |  | 8.1.1.1 | *NR Cell* IE in TS  38.423 [15] clause  9.2.3.25 or *SpCell ID*  IE in TS 38.473 [19]  clause 9.2.2.1 |
| 25063 | >>E-UTRA PCell | STRUCTURE |  | 8.1.1.2 | *E-UTRA Cell* IE in TS 38.423 [15]  clause 9.2.3.25 |
| 25004 | List of secondary cells to be setup | LIST |  |  | *Scell To Be Setup List* IE in TS 38.473  [19] clause 9.2.2.1 |
| 25005 | >Secondary cell to be setup Item | STRUCTURE |  |  | *Scell To Be Setup Item* IEs IE in TS  38.473 [19] clause  9.2.2.1 |
| 25006 | >>CHOICE Secondary cell | STRUCTURE |  |  | *Scell To Be Setup Item* IEs IE in TS  38.473 [19] clause  9.2.2.1 |
| 25007 | >>>NR SCell | STRUCTURE |  | 8.1.1.1 |  |
| 25008 | >>>E-UTRA SCell | STRUCTURE |  | 8.1.1.2 |  |
| 25009 | >>>Scell UL Configured | ELEMENT | FALSE | *Cell UL Configured* IE in TS 38.473  [19] clause  9.3.1.33 |  |
| 25010 | Number of secondary cells to be setup | ELEMENT | FALSE | INTEGER (1..32) | Count of list of secondary cells to be  setup |
| 25011 | List of DRBs for setup | LIST |  |  | *DRB to Be Setup List* IE in TS 38.473  [19] clause 9.2.2.1 |
| 25012 | >DRB item for setup | STRUCTURE |  |  | *DRB to Be Setup Item* IE in TS 38.473  [19] clause 9.2.2.1 |
| 25033 | >>DRB ID | ELEMENT | TRUE | *DRB ID* IE in TS 37.483 [21]  clause 9.3.1.16 |  |
| 25034 | >>CHOICE *DRB Type* | STRUCTURE |  |  | The individual DRB could either be an NG-RAN DRB or a  E-UTRA DRB |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| 25035 | >>>NG-RAN DRB | STRUCTURE |  | 8.1.1.5 |  |
| 25036 | >>>E-UTRA DRB | STRUCTURE |  | 8.1.1.9 |  |
| 25013 | >List of QoS flows for setup | LIST |  |  | This is the list of QoS flows multiplexed to an NG-RAN DRB. The  structuring is based on *QoS Flow List* IE in TS 37.483 [21]  Clause 9.3.1.12 |
| 25014 | >>QoS flow Item | STRUCTURE |  |  | *QoS Flow Item* IE in TS 37.483 [21]  Clause 9.3.1.12 |
| 25045 | >>>QoS flow Identifier | ELEMENT | TRUE | *QoS Flow Identifier* IE in TS 37.483 [21]  Clause 9.3.1.24 |  |
| 25046 | >>>QoS flow | STRUCTURE |  | 8.1.1.6 |  |
| 25015 | List of PDU sessions for setup | LIST |  |  | ***PDU Session Resource Setup Request List* IE in TS 38.413 Clause**  **9.2.1.1** |
| 25016 | >PDU Session Item | STRUCTURE |  |  | *PDU Session Resource Setup Item* IE in TS 38.413  Clause 9.2.1.1 |
| 25057 | >>PDU Session ID | ELEMENT | TRUE | *PDU Session ID* IE in TS  38.413 [11]  Clause 9.3.1.50 |  |
| 25058 | >>PDU Session | STRUCTURE |  | 8.1.1.16 |  |
| 25017 | >>List of QoS flows for setup | LIST |  |  | *QoS Flow Setup Request Item* IE in TS 38.413 Clause  9.3.4.1 |
| 25018 | >>>QoS flow Item | STRUCTURE |  |  | *QoS Flow Setup Request Item* IE in TS 38.413 Clause  9.3.4.1 |
| 25019 | >>>>QoS flow Identifier | ELEMENT | TRUE | *QoS Flow Identifier* IE in TS 38.413 [11]  Clause  9.3.1.51 |  |
| 25020 | >>>>QoS flow | STRUCTURE |  | 8.1.1.6 |  |
| 25021 | Number of DRBs for setup | ELEMENT | FALSE | INTEGER (0..64) | Count of list of DRBs for setup |
| 25022 | UE Aggregate Maximum Bit Rate | STRUCTURE |  |  | *UE Aggregate Maximum Bit Rate* IE in TS 36.423 [17]  Clause 9.2.12 |
| 25023 | >UE Aggregate Maximum Bit Rate Downlink | ELEMENT | FALSE | *UE Aggregate Maximum Bit Rate Downlink* IE in TS  36.423 [17]  clause 9.2.12 |  |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| 25024 | >UE Aggregate Maximum Bit Rate Uplink | ELEMENT | FALSE | *UE Aggregate Maximum Bit Rate Uplink* IE in TS 36.423  [17] clause  9.2.12 |  |

</div>

###### UE Context Modification

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **RAN**  **Parameter ID** | **RAN Parameter** | **RAN**  **Parameter Value Type** | **Key Flag** | **RAN**  **Parameter Definition** | ***Semantics Description*** |
| 25101 | Primary Cell ID | STRUCTURE |  |  | This is for the primary serving cell of the UE. The structuring of this parameter is based on *Target Cell Global ID* IE in TS  38.423 [15] clause  9.2.3.25 |
| 25102 | >CHOICE *Primary Cell* | STRUCTURE |  |  | The primary cell could either be an NR primary cell or an LTE primary cell.  The structuring is based on *Target Cell* IE in TS 38.423 [15]  clause 9.2.3.25 |
| 25103 | >>NR SpCell | STRUCTURE |  | 8.1.1.1 | *NR* IE in TS 38.423  [15] clause 9.2.3.25 or *SpCell ID* IE in TS  38.473 [19] clause  9.2.2.1 |
| 25104 | >>E-UTRA PCell | STRUCTURE |  | 8.1.1.2 | *E-UTRA* IE in TS  38.423 [15] clause  9.2.3.25 |
| 25105 | List of secondary cells to be setup | LIST |  |  | *Scell To Be Setup List* IE in TS 38.473  [19] clause 9.2.2.1 |
| 25106 | >Secondary cell to be setup Item | STRUCTURE |  |  | *Scell To Be Setup Item* IEs IE in TS  38.473 [19] clause  9.2.2.1 |
| 25107 | >>CHOICE Secondary cell | STRUCTURE |  |  | *Scell To Be Setup Item* IEs IE in TS  38.473 [19] clause  9.2.2.1 |
| 25108 | >>>NR SCell | STRUCTURE |  | 8.1.1.1 |  |
| 25109 | >>>E-UTRA SCell | STRUCTURE |  | 8.1.1.2 |  |
| 25110 | >>>Scell UL Configured | ELEMENT | FALSE | *Cell UL Configured* IE in TS 38.473  [19] [Q] clause  9.3.1.33 |  |
| 25111 | Number of secondary cells to be setup | ELEMENT | FALSE | INTEGER (1..32) | Count of list of secondary cells to be  setup |
| 25112 | List of Scells to be removed | LIST |  |  | *SCell To Be Removed List* IE in TS 38.473 [19]  clause 9.2.2.7 |
| 25113 | >Scell to be removed Item | STRUCTURE |  |  | *SCell to Be Removed Item IEs* IE in TS 38.473 [19]  clause 9.2.2.7 |
| 25114 | >>CHOICE Secondary cell | STRUCTURE |  |  | A UE can have either NR Cells as secondary cells or E-  UTRA cells as secondary cells. |
| 25115 | >>>NR SCell | STRUCTURE |  | 8.1.1.1 |  |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| 25116 | >>>E-UTRA SCell | STRUCTURE |  | 8.1.1.2 |  |
| 25117 | >>>Scell UL Configured | ELEMENT | FALSE | *Cell UL Configured* IE in TS 38.473  [19] [Q] clause  9.3.1.33 |  |
| 25118 | Number of secondary cells to be removed | ELEMENT | FALSE | INTEGER (1..32) | Count of list of  secondary cells to be removed |
| 25119 | List of DRBs for setup | LIST |  |  | DRB to Be Setup List IE in TS 38.473  [19] clause 9.2.2.1 |
| 25120 | >DRB item for setup | STRUCTURE |  |  | DRB to Be Setup Item IE in TS 38.473  [19] clause 9.2.2.1 |
| 25161 | >>DRB ID | ELEMENT | TRUE | *DRB ID* IE in TS 37.483 [21]  clause 9.3.1.16 |  |
| 25162 | >>CHOICE *DRB Type* | STRUCTURE |  |  | DRB could either be an NG-RAN DRB or a E-UTRA DRB |
| 25163 | >>>NG-RAN DRB | STRUCTURE |  | 8.1.1.5 |  |
| 25164 | >>>E-UTRA DRB | STRUCTURE |  | 8.1.1.9 |  |
| 25121 | >>List of QoS flows for setup | LIST |  |  | This is the list of QoS flows multiplexed to an NG-RAN DRB for  setup. The structuring is based on *QoS Flow List* IE in TS 37.483 [21]  Clause 9.3.1.12 |
| 25122 | >>>QoS flow Item | STRUCTURE |  |  | *QoS Flow Item* IE in TS 37.483 [21]  Clause 9.3.1.12 |
| 25166 | >>>>QoS flow Identifier | ELEMENT | TRUE | *QoS Flow Identifier* IE in TS 37.483 [21]  Clause 9.3.1.24 |  |
| 25167 | >>>>QoS flow | STRUCTURE |  | 8.1.1.6 |  |
| 25123 | List of PDU sessions for setup | LIST |  |  | *PDU Session Resource Setup Request List* IE in TS 38.413 Clause  9.2.1.1 |
| 25124 | >PDU Session Item | STRUCTURE |  |  | *PDU Session Resource Setup Item* IE in TS 38.413  Clause 9.2.1.1 |
| 25175 | >>PDU Session ID | ELEMENT | TRUE | *PDU Session ID* IE in TS  38.413 [11]  Clause 9.3.1.50 |  |
| 25176 | >>PDU Session | STRUCTURE |  | 8.1.1.16 |  |
| 25125 | >>List of QoS flows for setup | LIST |  |  | *QoS Flow Setup Request Item* IE in TS 38.413 Clause  9.3.4.1 |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| 25126 | >>>QoS flow Item | STRUCTURE |  |  | *QoS Flow Setup Request Item* IE in TS 38.413 Clause  9.3.4.1 |
| 25177 | >>>>QoS flow Identifier | ELEMENT | TRUE | *QoS Flow Identifier* IE in TS 38.413 [11]  Clause 9.3.1.51 |  |
| 25178 | >>>>QoS flow | STRUCTURE |  | 8.1.1.6 |  |
| 25127 | List of DRBs to be modified | LIST |  |  | *DRB to Be Setup*  *List* IE in TS 38.473  [19] clause 9.2.2.1 |
| 25128 | >DRB item for modification | STRUCTURE |  | 8.1.1.5 | *DRB to Be Setup*  *Item* IE in TS 38.473  [19] clause 9.2.2.1 |
| 25129 | >>List of QoS flows remapped | LIST |  |  | This is the list of QoS flows remapped to an NG-RAN DRB.  The structuring is based on *QoS Flow List* IE in TS 37.483  [21] Clause 9.3.1.12 |
| 25130 | >>>QoS flow Item | STRUCTURE |  |  | *QoS Flow Item* IE in TS 37.483 [21]  Clause 9.3.1.12 |
| 25181 | >>>>QoS flow Identifier | ELEMENT | TRUE | *QoS Flow Identifier* IE in TS 37.483 [12]  Clause 9.3.1.24 |  |
| 25182 | >>>>QoS flow | STRUCTURE |  | 8.1.1.6 |  |
| 25131 | List of PDU sessions for modification | LIST |  |  | For modification of PDU sessions. The structuring is based on *PDU Session Resource Modify Request List* IE in TS  38.413 Clause  9.2.1.5 |
| 25132 | >PDU Session Item | STRUCTURE |  |  | *PDU Session Resource Modify Request Item* IE in TS 38.413 Clause  9.2.1.5 |
| 25183 | >>PDU Session ID | ELEMENT | TRUE | *PDU Session ID* IE in TS  38.413 [11]  Clause 9.3.1.50 |  |
| 25184 | >>PDU Session | STRUCTURE |  | 8.1.1.16 |  |
| 25133 | >>List of QoS flows remapped | LIST |  |  | Modified list of QoS flows within the PDU Session. Structuring is based on *QoS Flow Add or Modify Request List* IE in TS 38,413 Clause  9.3.4.3 |
| 25134 | >>>QoS flow Item | STRUCTURE |  |  | *QoS Flow Add or Modify Request Item* IE in TS 38.413  Clause 9.3.4.3 |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| 25185 | >>>>QoS flow identifier | ELEMENT | TRUE | *QoS Flow Identifier* IE in TS 38.413 [11]  Clause 9.3.1.51 |  |
| 25186 | >>>>QoS flow | STRUCTURE |  | 8.1.1.6 |  |
| 25135 | Number of DRBs to be modified | ELEMENT | FALSE |  | Count of list of DRBs to be modified |
| 25136 | List of DRBs to be released | LIST |  |  | *DRB To Be*  *Released List* IE in TS 38.473 [19]  Clause 9.2.2.7 |
| 25137 | >DRB item for release | STRUCTURE |  |  | *DRB To Be*  *Released Item* IE in TS 38.473 [19]  Clause 9.2.2.7 |
| 25188 | >>DRB ID | ELEMENT | TRUE | *DRB ID* IE in TS 37.483 [21]  clause 9.3.1.16 |  |
| 25189 | >>CHOICE *DRB Type* | STRUCTURE |  |  | DRB could either be an NG-RAN DRB or  a E-UTRA DRB |
| 25190 | >>>NG-RAN DRB | STRUCTURE |  | 8.1.1.5 |  |
| 25191 | >>>E-UTRA DRB | STRUCTURE |  | 8.1.1.9 |  |
| 25138 | Number of DRBs to be released | ELEMENT | FALSE |  | Count of list of DRBs to be released |
| 25139 | UE Aggregate Maximum Bit Rate | STRUCTURE |  |  | *UE Aggregate Maximum Bit Rate* IE in TS 36.423 [17]  Clause 9.2.12 |
| 25140 | >UE Aggregate Maximum Bit Rate Downlink | ELEMENT | FALSE | *UE Aggregate Maximum Bit Rate Downlink* IE in TS  36.423 [17]  clause 9.2.12 |  |
| 25141 | >UE Aggregate Maximum Bit Rate Uplink | ELEMENT | FALSE | *UE Aggregate Maximum Bit Rate Uplink* IE in TS 36.423  [17] clause  9.2.12 |  |
| 25151 | Target Cell ID | STRUCTURE |  |  | This is for the target cell of the UE for HO. The structuring of this parameter is based on *Target Cell Global ID* IE in TS  38.423 [15] clause  9.2.3.25 |
| 25152 | >CHOICE *Target Cell* | STRUCTURE |  |  | The target cell could either be a target NR primary cell or a target LTE primary cell. The structuring is based on *Target*  *Cell* IE in TS 38.423  [15] clause 9.2.3.25 |
| 25153 | >>Target NR SpCell | STRUCTURE |  | 8.1.1.1 | *NR* IE in TS 38.423  [15] clause 9.2.3.25 |
| 25154 | >>Target E-UTRA PCell | STRUCTURE |  | 8.1.1.2 | *E-UTRA* IE in TS  38.423 [15] clause  9.2.3.25 |

</div>

###### UE Context Release

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **RAN**  **Parameter ID** | **RAN Parameter** | **RAN**  **Parameter Value Type** | **Key Flag** | **RAN**  **Parameter Definition** | ***Semantics Description*** |
| 25201 | List of candidate cells to be cancelled | LIST |  |  | *Candidate Cells To Be Cancelled List* IE in TS 38.473  [19] Clause 9.2.2.4 |
| 25202 | >Candidate cell to be cancelled Item | STRUCTU RE |  |  | *Candidate Cell to be Cancelled Item* IE in TS 38.473  [19] Clause 9.2.2.4 |
| 25203 | >>CHOICE Candidate cell | STRUCTU RE |  |  | *Candidate Cell to be Cancelled Item*  IE in TS 38.473  [19] Clause 9.2.2.4 |
| 25204 | >>>NR SCell | STRUCTU RE |  | 8.1.1.1 |  |
| 25205 | >>>E-UTRA SCell | STRUCTU RE |  | 8.1.1.2 |  |

</div>

#### Bearer Context Management

The RAN Parameters for the call process type of "Bearer Context Management" are defined as follows.

###### Bearer Context Setup

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **RAN**  **Parameter ID** | **RAN Parameter** | **RAN**  **Parameter Value Type** | **Key Flag** | **RAN Parameter Definition** | **Semantics Description** |
| 26101 | DRB ID | ELEMENT | TRUE | *DRB ID* IE in TS 37.483  [21] clause 9.3.1.16 |  |
| 26102 | CHOICE *DRB Type* | STRUCTURE |  |  | DRB could either be an NG-RAN DRB or a  E-UTRA DRB |
| 26103 | >NG-RAN DRB | STRUCTURE |  | 8.1.1.5 |  |
| 26104 | >E-UTRA DRB | STRUCTURE |  | 8.1.1.9 |  |
| 26105 | List of QoS Flows to be setup in DRB | LIST |  |  | This is the list of QoS flows multiplexed to an NG-RAN DRB for setup. The structuring is based on *QoS Flow List* IE in TS 37.483  [21] Clause 9.3.1.12 |
| 26106 | >QoS Flow Item | STRUCTURE |  |  | *QoS Flow Item* IE in TS 37.483 [21] clause  9.3.1.12 |
| 26107 | >>QoS Flow Identifier | ELEMENT | TRUE | *QoS Flow Identifier* IE in TS 37.483 [21] clause  9.3.1.24 |  |
| 26108 | >>QoS Flow | STRUCTURE |  | 8.1.1.6 |  |
| 26109 | Count of list of QoS Flows to be setup in DRB | ELEMENT | FALSE | INTEGER (0..64) |  |
| 26110 | Cell Group List to Add | STRUCTURE |  |  | *CellGroupList* IE in TS 37.483 [21]  Clause 9.3.1.11 |
| 26111 | >Cell Group Item | STRUCTURE |  |  |  |
| 26122 | >>Cell Group ID | ELEMENT | TRUE | *cellGroup* IE in TS 38.331  [22] Clause 6 |  |
| 26123 | >>Cell Group | STRUCTURE |  | 8.1.1.7 |  |
| 26112 | Logical Channel ID | ELEMENT | FALSE | *LogicalChannelIdentity* IE in TS 38.331 [22] clause 6 |  |
| 26113 | Channel Access Priority | ELEMENT | FALSE | *channelAccessPriority* IE in TS 38.331 [22] |  |
| 26114 | L2 Bearer State Information | STRUCTURE |  | 8.1.1.8 |  |
| 26115 | Count of cell group list to be added | ELEMENT | FALSE | INTEGER (0..4) |  |

</div>

###### Bearer Context Modification

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **RAN**  **Parameter ID** | **RAN Parameter** | **RAN**  **Parameter Value Type** | **Key Flag** | **RAN Parameter Definition** | **Semantics Description** |
| 26201 | DRB ID | ELEMENT | TRUE | *DRB ID* IE in TS 37.483  [21] clause 9.3.1.16 |  |
| 26202 | CHOICE *DRB Type* | STRUCTURE |  |  | DRB could either be an NG-RAN DRB or a E-UTRA DRB |
| 26203 | >NG-RAN DRB | STRUCTURE |  | 8.1.1.1 |  |
| 26204 | >E-UTRA DRB | STRUCTURE |  | 8.1.1.2 |  |
| 26205 | Logical Channel ID | ELEMENT | TRUE | *LogicalChannelIdentity*  IE in TS 38.331 [22]  clause 6 |  |
| 26206 | CHOICE RLC-  Config | STRUCTURE |  |  | *RLC-Config* IE in TS  38.331 [22] |
| 26207 | >AM | STRUCTURE |  |  | *am* IE in TS 38.331 [22] |
| 26208 | >>UL AM RLC | STRUCTURE |  |  | *ul-AM-RLC* IE in TS  38.331 [22] |
| 26209 | >>>Poll Retransmit | ELEMENT | FALSE | *t-PollRetransmit* IE in TS  38.331 [22] |  |
| 26210 | >>>Max Retransmissi on Threshold | ELEMENT | FALSE | *maxRetxThreshold* IE in TS 38.331 [22] |  |
| 26211 | >>>Poll PDU | ELEMENT | FALSE | *pollPDU* IE in TS 38.331 [22] |  |
| 26212 | >>>Poll Byte | ELEMENT | FALSE | *pollByte* IE in TS 38.331 [22] |  |
| 26213 | >>DL AM RLC | STRUCTURE |  |  | *dl-AM-RLC* IE in TS  38.331 [22] |
| 26214 | >>>Reassem bly | ELEMENT | FALSE | *t-Reassembly* IE in TS  38.331 [22] |  |
| 26215 | >>>Status Prohibit | ELEMENT | FALSE | *t-StatusProhibit* IE in TS  38.331 [22] |  |
| 26216 | >UM Bi-directional | STRUCTURE |  |  | *um-Bi-Directional* IE in  TS 38.331 [22] |
| 26217 | >>UL UM RLC | ELEMENT | FALSE |  | *UL-UM-RLC* IE in TS  38.331 [22] |
| 26218 | >>DL UM RLC | STRUCTURE |  |  | *DL-UM-RLC* IE in TS  38.331 [22] |
| 26219 | >>>Reassem bly | ELEMENT | FALSE | *t-Reassembly* IE in TS  38.331 [22] |  |
| 26220 | >UM Uni-directional UL | STRUCTURE |  |  | *um-Uni-Directional-UL*  IE in TS 38.331 [22] |
| 26221 | >>UL UM RLC | ELEMENT | FALSE | *ul-UM-RLC* IE in TS  38.331 [22] |  |
| 26222 | >UM Uni-directional DL | ELEMENT | FALSE |  | *um-Uni-Directional-DL*  IE in TS 38.331 [22] |
| 26223 | >DL UM RLC | STRUCTURE |  |  | *dl-UM-RLC* IE in TS  38.331 [22] |
| 26224 | >>Reassembly | ELEMENT | FALSE | *t-Reassembly* IE in TS  38.331 [22] |  |
| 26225 | List of QoS Flows to be setup in DRB | LIST |  |  | *Flow Mapping Information* IE in TS  37.483 [21] clause  9.3.1.26 |
| 26226 | >QoS Flow Item | STRUCTURE |  |  | *QoS Flow Item* IE in TS 37.483 [21] clause  9.3.1.12 |
| 26227 | >>QoS Flow Identifier | ELEMENT | TRUE | *QoS Flow Identifier* IE in TS 37.483 [21] clause  9.3.1.24 |  |
| 26228 | >>QoS Flow | STRUCTURE |  | 8.1.1.6 |  |
| 26229 | List of QoS Flows to be modified in DRB | LIST |  |  | *Flow Mapping*  *Information* IE in TS  37.483 [21] clause |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
|  |  |  |  |  | 9.3.1.26 |
| 26230 | >QoS Flow Item | STRUCTURE |  |  | *QoS Flow Item* IE in TS 37.483 [21] clause  9.3.1.12 |
| 26231 | >>QoS Flow Identifier | ELEMENT | TRUE | *QoS Flow Identifier* IE in TS 37.483 [21] clause  9.3.1.24 |  |
| 26232 | >>QoS Flow | STRUCTURE |  | 8.1.1.6 |  |
| 26233 | List of Cell Groups to Add | LIST |  |  | *Cell Group List* IE in TS 37.483 [21] Clause  9.3.1.11 |
| 26234 | >Cell Group Item | STRUCTURE |  |  |  |
| 26255 | >>Cell Group ID | ELEMENT | TRUE | *cellGroup* IE in TS  38.331 [22] Clause 6 |  |
| 26256 | >>Cell Group | STRUCTURE |  | 8.1.1.7 |  |
| 26235 | List of Cell Groups To Modify/Update | LIST |  |  | *Cell Group List* IE in TS 37.483 [21] Clause  9.3.1.11 |
| 26236 | >Cell Group Item | STRUCTURE |  |  |  |
| 26257 | >>Cell Group ID | ELEMENT | TRUE | *cellGroup* IE in TS  38.331 [22] Clause 6 |  |
| 26258 | >>Cell Group | STRUCTURE |  | 8.1.1.7 |  |
| 26237 | List of Cell Groups To Delete | LIST |  |  | *Cell Group List* IE in TS 37.483 [21] Clause  9.3.1.11 |
| 26238 | >Cell Group Item | STRUCTURE |  |  |  |
| 26259 | >>Cell Group ID | ELEMENT | TRUE | *cellGroup* IE in TS  38.331 [22] Clause 6 |  |
| 26260 | >>Cell Group | STRUCTURE |  | 8.1.1.7 |  |
| 26239 | Logical Channel ID | ELEMENT | FALSE | *LogicalChannelIdentity*  IE in TS 38.331 [22]  clause 6 |  |
| 26240 | Channel Access Priority | ELEMENT | FALSE | *channelAccessPriority* IE in TS 38.331 [22] |  |
| 26241 | L2 State Information | STRUCTURE |  | 8.1.1.8 |  |
| 26242 | Data Report Usage List | LIST |  |  | *Data Usage Report List* IE in TS 37.483  [21] Clause 9.3.1.44 |
| 26243 | >Data Report Usage Item | STRUCTURE |  |  | *Data Report Usage Item* IE in TS 37.483  [21] Clause 9.3.1.44 |
| 26244 | >>Start Timestamp | ELEMENT | FALSE | *Start timestamp* IE in TS  37.483 [21] Clause  9.3.1.44 |  |
| 26245 | >>End Timestamp | ELEMENT | FALSE | *End timestamp* IE in TS  37.483 [21] Clause  9.3.1.44 |  |
| 26246 | >>Usage Count DL | ELEMENT | FALSE | *Usage count DL* IE in TS  37.483 [21] Clause  9.3.1.44 |  |
| 26247 | >>Usage Count UL | ELEMENT | FALSE | *Usage count DL* IE in TS  37.483 [21] Clause  9.3.1.44 |  |

</div>

###### Bearer Context Release

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **RAN**  **Parameter ID** | **RAN Parameter** | **RAN**  **Parameter Value Type** | **Key Flag** | **RAN Parameter Definition** | **Semantics Description** |
| 26301 | DRB ID | ELEMENT | TRUE | *DRB ID* IE in TS 37.483  [21] clause 9.3.1.16 |  |
| 26302 | PDCP DL Count | ELEMENT | FALSE | *PDCP DL Count* IE in TS  37.483 [21] Clause  9.2.2.11 |  |
| 26303 | PDCP UL Count | ELEMENT | FALSE | *PDCP UL Count* IE in TS  37.483 [21] Clause  9.2.2.11 |  |
| 26304 | Release Cause | STRUCTURE |  |  | *Cause* IE in TS 37.483  [21] Clause 9.3.1.2 |
| 26305 | >CHOICE Cause Group | STRUCTURE |  |  | *Cause Group* IE in TS  37.483 [21] Clause  9.3.1.2 |
| 26306 | >>Radio Network Layer | STRUCTURE |  |  | *Radio Network Layer*  IE in TS 37.483 [21]  Clause 9.3.1.2 |
| 26307 | >>>Radio  Network Layer Cause | ELEMENT | FALSE | *Radio Network Layer*  *Cause* IE in TS 37.483  [21] Clause 9.3.1.2 |  |
| 26308 | >>Transport Layer | STRUCTURE |  |  | *Transport Layer* IE in TS 37.483 [21] Clause  9.3.1.2 |
| 26309 | >>>Transport Layer Cause | ELEMENT | FALSE | *Transport Layer Cause*  IE in TS 37.483 [21]  Clause 9.3.1.2 |  |
| 26310 | >>Protocol | STRUCTURE |  |  | *Protocol* IE in TS  37.483 [21] Clause  9.3.1.2 |
| 26311 | >>>Protocol Cause | ELEMENT | FALSE | *Protocol Cause* IE in TS  37.483 [21] Clause  9.3.1.2 |  |
| 26312 | >>Miscellaneous | STRUCTURE |  |  | *Misc* IE in TS 37.483  [21] Clause 9.3.1.2 |
| 26313 | >>>Miscellan eous Cause | ELEMENT | FALSE | *Miscellaneous Cause* IE in TS 37.483 [21] Clause  9.3.1.2 |  |

</div>

#### Mobility Management

The RAN Parameters for the call process type of "Mobility Management" are defined as follows.

###### Handover Preparation

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **RAN**  **Parameter ID** | **RAN Parameter** | **RAN**  **Parameter Value Type** | **Key Flag** | **RAN Parameter Definition** | **Semantics Description** |
| 27101 | Event AN and inter-RAT B1 mobility thresholds | STRUCTURE |  | *Connectivity and Mobility Event Thresholds* IE in  clause 8.1.1.10 |  |
| 27102 | List of Serving cells | LIST |  |  | *MeasResultServM OList* IE in TS  38.331 [22] |
| 27103 | >Serving Cell Item | STRUCTURE |  |  | *MeasResultServM O* IE in TS 38.331  [22] |
| 27104 | >>Serving Cell Index | ELEMENT | TRUE | *servCellID* IE in TS 38.331 [22] |  |
| 27105 | >>CHOICE Serving Cell | STRUCTURE |  |  | *MeasResultServM O* IE in TS 38.331  [22] |
| 27106 | >>>NR Cell | STRUCTURE |  | 8.1.1.1 |  |
| 27107 | >>>E-UTRA Cell | STRUCTURE |  | 8.1.1.2 |  |
| 27108 | >>CHOICE Best  Neighbouring Cell | STRUCTURE |  |  | *measResultBestN*  *eighCell* IE in TS  38.331 [22] |
| 27109 | >>>NR Cell | STRUCTURE |  | 8.1.1.1 |  |
| 27110 | >>>E-UTRA Cell | STRUCTURE |  | 8.1.1.2 |  |
| 27113 | Primary Cell ID | STRUCTURE |  |  | This is for the primary serving cell of the UE. The structuring of this parameter is based on *Target Cell Global ID* IE in TS 38.423 [15]  clause 9.2.3.25 |
| 27114 | >CHOICE *Primary Serving Cell* | STRUCTURE |  |  | The primary cell could either be an NR primary cell or an LTE primary cell. The structuring is based on*Target Cell* IE in TS  38.423 [15] clause  9.2.3.25 |
| 27115 | >>NR SpCell | STRUCTURE |  | 8.1.1.1 | *NR* IE in TS  38.423 [15] clause  9.2.3.25 or *SpCell ID* IE in TS 38.473  [19] clause 9.2.2.1 |
| 27116 | >>LTE E-UTRA PCell | STRUCTURE |  | 8.1.1.2 | *E-UTRA* IE in TS  38.423 [15] clause  9.2.3.25 |
| 27117 | List of Secondary cells | LIST |  |  | *SCell To Be Setup List* IE in TS  38.473 [19]  Clause 9.2.2.1 |
| 27118 | >Secondary Cell Item | STRUCTURE |  |  | *SCell To Be Setup Item IEs* IE in TS  38.473 [19]  Clause 9.2.2.1 |
| 27119 | >>Secondary Cell Index | ELEMENT | FALSE |  | SCellIndex IE in TS 38.473 [19]  Clause 9.2.2.1 |
| 27120 | >>CHOICE Secondary Cell | STRUCTURE |  |  | *SCell To Be Setup Item IEs* IE in TS  38.473 [19]  Clause 9.2.2.1 |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| 27121 | >>>NR Cell | STRUCTURE |  | 8.1.1.1 |  |
| 27122 | >>>E-UTRA Cell | STRUCTURE |  | 8.1.1.2 |  |
| 27123 | List of Neighbour cells | LIST |  |  | *measResultNeigh Cells* IE in TS  38.331 [22] |
| 27124 | >Neighbour Cell Item | STRUCTURE |  |  | *measResultNeigh Cells* IE in TS  38.331 [22] |
| 27125 | >>CHOICE Neighbour Cell | STRUCTURE |  |  | *measResultNeigh Cells* IE in TS  38.331 [22] |
| 27126 | >>>NR Cell | STRUCTURE |  | 8.1.1.1 | *MeasResultNR* IE in TS 38.331 [22] |
| 27127 | >>>E-UTRA Cell | STRUCTURE |  | 8.1.1.2 | *MeasResultEUTR*  *A* IE in TS 38.331 [22] |
| 27128 | Target Primary Cell ID | STRUCTURE |  |  | *Target Cell Global ID* IE in TS 38.423  [15] Clause  9.2.3.25 |
| 27129 | >CHOICE Target Cell | STRUCTURE |  |  | *Target Cell* IE in TS 38.423 [15]  Clause 9.2.3.25 |
| 27130 | >>NR SpCell | STRUCTURE |  | 8.1.1.1 | *NR* IE in TS  38.423 [15]  Clause 9.2.3.25 or  *SpCell ID* IE in TS  38.473 [19] clause  9.2.2.1 |
| 27131 | >>LTE E-UTRA PCell | STRUCTURE |  | 8.1.1.2 | *E-UTRA* IE in TS  38.423 [15]  Clause 9.2.3.25 |
| 27132 | List of Candidate Target cells for conditional HO | LIST |  |  | *Candidate SpCell List* IE in TS  38.473 [19]  Clause 9.2.2.1 |
| 27133 | >Candidate Target cell Item | STRUCTURE |  |  | *Candidate SpCell Item I****E****s* IE in TS  38.473 [19]  Clause 9.2.2.1 |
| 27134 | >>CHOICE Candidate Target Cell | STRUCTURE |  |  | *Target Cell* IE in TS 38.423 [15]  Clause 9.2.3.25 |
| 27135 | >>>NR SpCell candidate | STRUCTURE |  | 8.1.1.1 | *NR* IE in TS  38.423 [15] clause  9.2.3.25 or *SpCell ID* IE in TS 38.473  [19] clause 9.2.2.1 |
| 27136 | >>>LTE E-UTRA PCell  candidate | STRUCTURE |  | 8.1.1.2 | *E-UTRA* IE in TS  38.423 [15] clause  9.2.3.25 |
| 27137 | >>Estimated Arrival Probability | ELEMENT | FALSE | *Estimated Arrival Probability* IE in TS 38.423 [15]  Clause 9.1.1.1 |  |
| 27138 | List of PDU Sessions for Handover | LIST |  |  | This is the list of PDU sessions of the UE that are subject to handover. The structuring is based on *PDU Session Resources To Be Setup List* IE in TS  38.423 [15]  Clause 9.2.1.1 |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| 27139 | >PDU Session Item | STRUCTURE |  |  | *PDU Session Resources To Be Setup Item* IE in TS 38.423 [15]  Clause 9.2.1.1 |
| 27140 | >>PDU Session ID | ELEMENT | TRUE | *PDU Session ID*  IE in TS 38.423  [15] Clause  9.2.3.18 |  |
| 27141 | >>PDU Session | STRUCTURE |  | 8.1.1.16 |  |
| 27142 | >>List of QoS flows in the PDU Session | LIST |  |  | *QoS Flows To Be Setup List* IE in TS  38.423 [15]  Clause 9.2.1.1 |
| 27143 | >>>QoS Flow Item | STRUCTURE |  |  | *QoS Flow To Be Setup Item* IE in TS 38.423 [15]  Clause 9.2.1.1 |
| 27144 | >>>>QoS Flow Identifier | ELEMENT | TRUE | *QoS Flow Identifier* IE in TS  38.423 [15]  Clause 9.2.3.10 |  |
| 27145 | >>>>QoS Flow | STRUCTURE |  | 8.1.1.6 |  |
| 27146 | >>List of DRBs for Handover | LIST |  |  | This is the list of DRBs  corresponding to the PDU session to be handed over. The structuring is based on *DRB to Be Setup List* IE in TS 38.473 [19]  Clause 9.2.2.7 |
| 27147 | >>>DRB Item for Handover | STRUCTURE |  |  | *DRB to Be Setup Item* IE in TS  38.473 [19]  Clause 9.2.2.7 |
| 27148 | >>>>DRB ID | ELEMENT | TRUE | *DRB ID* IE in TS  38.473 [19]  Clause 9.3.1.8 |  |
| 27149 | >>>>CHOICE *DRB*  *Type* | STRUCTURE |  |  |  |
| 27150 | >>>>>NG-RAN DRB | STRUCTURE |  | 8.1.1.5 |  |
| 27151 | >>>>>E-UTRA DRB | STRUCTURE |  | 8.1.1.9 |  |
| 27152 | >>>>List of QoS flows in the DRB | LIST |  |  | *QoS Flows Information To Be Setup* IE in TS  37.483 [21]  Clause 9.3.3.2 |
| 27153 | >>>>>QoS Flow Item | STRUCTURE |  |  | *QoS Flow Item* IE in TS 37.483 [21]  Clause 9.3.1.25 |
| 27154 | >>>>>>QoS  Flow Identifier | ELEMENT | TRUE | *QoS Flow Identifier* IE in TS  37.483 [21]  Clause 9.3.1.24 |  |
| 27155 | >>>>>>QoS  Flow | STRUCTURE |  | 8.1.1.6 |  |
| 27175 | List of DRBs for Handover | LIST |  |  | *DRB to Be Setup List* IE in TS  38.473 [19]  Clause 9.2.2.1 |
| 27176 | >DRB Item for Handover | STRUCTURE |  |  | *DRB to Be Setup Item* IE in TS |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
|  |  |  |  |  | 38.473 [19]  Clause 9.2.2.1 |
| 27177 | >>DRB ID | ELEMENT | TRUE | *DRB ID* IE in TS  38.473 [19]  Clause 9.3.1.8 |  |
| 27178 | >>CHOICE *DRB Type* | STRUCTURE |  |  |  |
| 27179 | >>>NG-RAN DRB | STRUCTURE |  | 8.1.1.5 |  |
| 27180 | >>>E-UTRA DRB | STRUCTURE |  | 8.1.1.9 |  |
| 27181 | >>List of QoS flows in the DRB | LIST |  |  | *QoS Flows Information To Be Setup* IE in TS  37.483 [21]  Clause 9.3.3.2 |
| 27182 | >>>QoS Flow Item | STRUCTURE |  |  | *QoS Flow Item* IE in TS 37.483 [21]  Clause 9.3.1.25 |
| 27183 | >>>>QoS Flow Identifier | ELEMENT | TRUE | *QoS Flow Identifier* IE in TS  37.483 [21]  Clause 9.3.1.24 |  |
| 27184 | >>>>QoS Flow | STRUCTURE |  | 8.1.1.6 |  |

</div>

###### Handover Cancel

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **RAN**  **Parameter ID** | **RAN Parameter** | **RAN**  **Parameter Value Type** | **Key Flag** | **RAN Parameter Definition** | **Semantics Description** |
| 27201 | Event AN and inter-RAT B1 mobility thresholds | STRUCTURE |  | *Connectivity and Mobility Event Thresholds* IE in  clause 8.1.1.10 |  |
| 27209 | List of candidate cells to be cancelled list | LIST |  |  | *Candidate Cells To Be Cancelled List* IE in TS  38.473 [19]  Clause 9.2.2.4 |
| 27210 | >Candidate cell to be cancelled item | STRUCTURE |  |  | *Candidate Cells To Be Cancelled List* IE in TS  38.473 [19]  Clause 9.2.2.4 |
| 27211 | >>Target cell ID | STRUCTURE |  |  | *Target Cell ID* IE in TS 38.473 [19]  Clause 9.2.2.4 |
| 27212 | >>>CHOICE Target cell ID | STRUCTURE |  |  | *Target Cell ID* IE in TS 38.473 [19]  Clause 9.2.2.4 |
| 27213 | >>>>NR Cell | STRUCTURE |  | 8.1.1.1 |  |
| 27214 | >>>>LTE E-UTRA  Cell | STRUCTURE |  | 8.1.1.2 |  |
| 27215 | Cause for canceling HO or CHO | STRUCTURE |  |  | *Cause* IE in TS  38.423 [15]  Clause 9.1.1.6 |
| 27216 | >CHOICE *Cause Group* | STRUCTURE |  |  | *Cause Group* IE in TS 38.423 [15]  Clause 9.2.3.2 |
| 27217 | >>Radio Network Layer | STRUCTURE |  |  | *Radio Network Layer* IE in TS  38.423 [15]  Clause 9.2.3.2 |
| 27218 | >>>Radio Network Layer Cause | ELEMENT | FALSE | *Radio Network Layer Cause* IE in TS  38.423 [15] Clause  9.2.3.2 |  |
| 27219 | >>Transport Layer | STRUCTURE |  |  | *Transport Layer* IE in TS 38.423 [15]  Clause 9.2.3.2 |
| 27220 | >>>Transport Layer Cause | ELEMENT | FALSE | *Transport Layer Cause* IE in TS  38.423 [15] Clause  9.2.3.2 |  |
| 27221 | >>Protocol | STRUCTURE |  |  | *Protocol* IE in TS  38.423 [15]  Clause 9.2.3.2 |
| 27222 | >>>Protocol Cause | ELEMENT | FALSE | *Protocol Cause* IE in TS 38.423 [15]  Clause 9.2.3.2 |  |
| 27223 | >>Misc | STRUCTURE |  |  | *Misc* IE in TS  38.423 [15]  Clause 9.2.3.2 |
| 27224 | >>>Miscellaneous Cause | ELEMENT | FALSE | *Miscellaneous Cause*  IE in TS 38.423 [15]  Clause 9.2.3.2 |  |

</div>

###### Handover Resource Allocation

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **RAN**  **Parameter ID** | **RAN Parameter** | **RAN**  **Parameter Value Type** | **Key Flag** | **RAN Parameter Definition** | **Semantics Description** |
| 27301 | Event AN and inter-RAT B1 mobility thresholds | STRUCTURE |  | *Connectivity and Mobility Event Thresholds* IE in  clause 8.1.1.10 |  |
| 27302 | Handover Type | ELEMENT | FALSE | *Handover Type* IE in TS 38.413 [11]  Clause 9.3.1.22 |  |
| 27303 | List of PDU Sessions for Handover | LIST |  |  | *PDU Session Resources To Be Setup List* IE in TS  38.423 [15]  Clause 9.2.1.1 |
| 27304 | >PDU Session Item | STRUCTURE |  |  | *PDU Session Resources To Be Setup Item* IE in TS 38.423 [15]  Clause 9.2.1.1 |
| 27305 | >>PDU Session ID | ELEMENT | TRUE | *PDU Session ID* IE in TS 38.423 [15]  Clause 9.2.3.18 |  |
| 27306 | >>PDU Session | STRUCTURE |  | 8.1.1.16 |  |
| 27307 | >>List of QoS flows in the PDU Session | LIST |  |  | *QoS Flows To Be Setup List* IE in TS  38.423 [15]  Clause 9.2.1.1 |
| 27308 | >>>QoS Flow Item | LIST |  |  | *QoS Flow To Be Setup Item* IE in TS 38.423 [15]  Clause 9.2.1.1 |
| 27309 | >>>>QoS Flow Identifier | ELEMENT | TRUE | *QoS Flow Identifier* IE in TS 38.423 [15]  Clause 9.2.3.10 |  |
| 27310 | >>>>QoS Flow | STRUCTURE |  | 8.1.1.6 |  |
| 27311 | >>List of DRBs for Handover | LIST |  |  | *DRB to Be Setup List* IE in TS  38.473 [19]  Clause 9.2.2.1 |
| 27312 | >>>DRB Item for Handover | STRUCTURE |  |  | *DRB to Be Setup Item* IE in TS  38.473 [19]  Clause 9.2.2.1 |
| 27313 | >>>>DRB ID | ELEMENT | TRUE | *DRB ID* IE in TS  38.473 [19] Clause  9.3.1.8 |  |
| 27314 | >>>>CHOICE *DRB*  *Type* | STRUCTURE |  |  | *DRB to Be Setup Item* IE in TS  38.473 [19]  Clause 9.2.2.1 |
| 27315 | >>>>>NG-RAN DRB | STRUCTURE |  | 8.1.1.5 |  |
| 27316 | >>>>>E-UTRA DRB | STRUCTURE |  | 8.1.1.9 |  |
| 27317 | >>>>List of QoS flows in the DRB | LIST |  |  | *QoS Flows Information To Be Setup* IE in TS  37.483 [21]  Clause 9.3.3.2 |
| 27318 | >>>>>QoS Flow Item | STRUCTURE |  |  | *QoS Flow Item* IE in TS 37.483 [21]  Clause 9.3.1.25 |
| 27319 | >>>>>>QoS  Flow Identifier | ELEMENT | TRUE | *QoS Flow Identifier* IE in TS 37.483 [21]  Clause 9.3.1.24 |  |
| 27320 | >>>>>>QoS | STRUCTURE |  | 8.1.1.6 |  |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
|  | Flow |  |  |  |  |
| 27321 | List of DRBs for Handover | LIST |  |  | *DRB to Be Setup List* IE in TS  38.473 [19]  Clause 9.2.2.1 |
| 27322 | >DRB Item for Handover | STRUCTURE |  |  | *DRB to Be Setup Item* IE in TS  38.473 [19]  Clause 9.2.2.1 |
| 27323 | >>DRB ID | ELEMENT | TRUE | *DRB ID* IE in TS  38.473 [19] Clause  9.3.1.8 |  |
| 27324 | >>CHOICE *DRB Type* | STRUCTURE |  |  | *DRB to Be Setup Item* IE in TS  38.473 [19]  Clause 9.2.2.1 |
| 27325 | >>>NG-RAN DRB | STRUCTURE |  | 8.1.1.5 |  |
| 27326 | >>>E-UTRA DRB | STRUCTURE |  | 8.1.1.9 |  |
| 27327 | >>List of QoS flows in the DRB | LIST |  |  | *QoS Flows Information To Be Setup* IE in TS  37.483 [21]  Clause 9.3.3.2 |
| 27328 | >>>QoS Flow Item | STRUCTURE |  |  | *QoS Flow Item* IE in TS 37.483 [21]  Clause 9.3.1.25 |
| 27329 | >>>>QoS Flow Identifier | ELEMENT | TRUE | *QoS Flow Identifier* IE in TS 37.483 [21]  Clause 9.3.1.24 |  |
| 27330 | >>>>QoS Flow | STRUCTURE |  | 8.1.1.6 |  |
| 27331 | Allowed S-NSSAI | LIST |  |  | *Allowed S-NSSAI*  IE in TS 38.413  [11] Clause  9.3.1.31 |
| 27332 | >Allowed S-NSSAI Item | STRUCTURE |  |  | *Allowed S-NSSAI Item* IE in TS  38.413 [11]  Clause 9.3.1.31 |
| 27333 | >>S-NSSAI | STRUCTURE |  |  | *S-NSSAI* IE in TS  38.413 [11]  Clause 9.3.1.24 |
| 27334 | >>>SST | ELEMENT | TRUE | *SST* IE in TS 38.413  [11] Clause 9.3.1.24 |  |
| 27335 | >>>SD | ELEMENT | FALSE | *SD* IE in TS 38.413  [11] Clause 9.3.1.24 |  |
| 27336 | Mobility Restriction List | STRUCTURE |  |  | *Mobility Restriction List* IE in TS 38.413 [11]  Clause 9.3.1.85 |
| 27337 | >Serving PLMN | ELEMENT | FALSE | *PLMN Identity* IE in TS 38.413 [11]  Clause 9.3.3.5 |  |
| 27338 | >List of Equivalent PLMNs | LIST |  |  | *Equivalent PLMNs*  IE in TS 38.413  [11] Clause  9.3.1.85 |
| 27339 | >>Equivalent PLMN Item | STRUCTURE |  |  |  |
| 27340 | >>>PLMN Identity | ELEMENT | FALSE | *PLMN Identity* IE in TS 38.413 [11]  Clause 9.3.3.5 |  |
| 27341 | >RAT Restrictions | LIST |  |  | *RAT Restrictions*  IE in TS 38.413  [11] Clause  9.3.1.85 |
| 27342 | >>RAT Restriction Item | STRUCTURE |  |  |  |
| 27343 | >>>PLMN Identity | ELEMENT | FALSE | *PLMN Identity* IE in TS 38.413 [11] |  |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
|  |  |  |  | Clause 9.3.3.5 |  |
| 27344 | >>>RAT Restriction Information | ELEMENT | FALSE | *RAT Restriction Information* IE in TS  38.413 [11] Clause  9.3.1.85 |  |
| 27345 | >Forbidden Area Information | LIST |  |  | *Forbidden Area Information* IE in TS 38.413 [11]  Clause 9.3.1.85 |
| 27346 | >>Forbidden Area | STRUCTURE |  |  | *Forbidden Area Information* IE in TS 38.413 [11]  Clause 9.3.1.85 |
| 27347 | >>>PLMN Identity | ELEMENT | FALSE | *PLMN Identity* IE in TS 38.413 [11]  Clause 9.3.3.5 |  |
| 27348 | >>>List of Forbidden TACs | LIST |  |  | *Forbidden TACs*  IE in TS 38.413  [11] Clause  9.3.1.85 |
| 27349 | >>>>Forbidden TAC Item | STRUCTURE |  |  | *Forbidden TACs*  IE in TS 38.413  [11] Clause  9.3.1.85 |
| 27350 | >>>>>TAC | ELEMENT | FALSE | *TAC* IE in TS 38.413  [11] Clause 9.3.3.10 |  |
| 27351 | >Service Area Information | LIST |  |  | *Service Area Information* IE in TS 38.413 [11]  Clause 9.3.1.85 |
| 27352 | >>Service Area | STRUCTURE |  |  | *Service Area Information* IE in TS 38.413 [11]  Clause 9.3.1.85 |
| 27353 | >>>PLMN Identity | ELEMENT | FALSE | *PLMN Identity* IE in TS 38.413 [11]  Clause 9.3.3.5 |  |
| 27364 | >>>List of allowed TACs | LIST |  |  | *Allowed TACs* IE in TS 38.413 [11]  Clause 9.3.1.85 |
| 27365 | >>>>Allowed TAC Item | STRUCTURE |  |  | *Allowed TACs* IE in TS 38.413 [11]  Clause 9.3.1.85 |
| 27366 | >>>>>TAC | ELEMENT | FALSE | *TAC* IE in TS 38.413  [11] Clause 9.3.3.10 |  |
| 27367 | >>>List of Not allowed TACs | LIST |  |  | *Not Allowed TACs*  IE in TS 38.413  [11] Clause  9.3.1.85 |
| 27368 | >>>>Not Allowed TAC Item | STRUCTURE |  |  | *Not Allowed TACs*  IE in TS 38.413  [11] Clause  9.3.1.85 |
| 27369 | >>>>>TAC | ELEMENT | FALSE | *TAC* IE in TS 38.413  [11] Clause 9.3.3.10 |  |

</div>

#### Multi-RAT Dual Connectivity Management

The RAN Parameters for the call process type of "Multi-RAT Dual Connectivity Management" are defined as follows.

###### SN Addition

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **RAN**  **Parameter ID** | **RAN Parameter** | **RAN**  **Parameter Value Type** | **Key Flag** | **RAN Parameter Definition** | **Semantics Description** |
| 28101 | Event AN and inter-RAT B1 mobility thresholds | STRUCTURE |  | *Connectivity and Mobility Event Thresholds* IE in  clause 8.1.1.10 |  |
| 28102 | Secondary Node | STRUCTURE |  | 8.1.1.11 |  |
| 28103 | CHOICE *PDCP Change Indication* | STRUCTURE |  |  | *PDCP Change Indication* IE in TS 38.423 [15]  Clause 9.2.3.74 |
| 28104 | >From S-NG-RAN Node | STRUCTURE |  |  | *From S-NG- RAN Node* IE in TS 38.423  [15] Clause  9.2.3.74 |
| 28105 | >>Indication from S-NG-RAN node to M-NG-RAN node | ELEMENT | FALSE | *Indication from S-NG-RAN node to M-NG-RAN*  *node* IE in TS  38.423 [15]  Clause 9.2.3.74 |  |
| 28106 | >From M-NG-RAN Node | STRUCTURE |  |  | *From M-NG- RAN Node* IE in TS 38.423  [15] Clause  9.2.3.74 |
| 28107 | >>Indication from M-NG-RAN node to S-NG-RAN node | ELEMENT | FALSE | *Indication from M-NG-RAN node to S-NG-RAN*  *node* IE in TS  38.423 [15]  Clause 9.2.3.74 |  |
| 28108 | Secondary Node UE Aggregate Maximum Bit Rate | STRUCTURE |  |  | *UE Aggregate Maximum Bit Rate* IE in TS  36.423 [17]  Clause 9.2.12 |
| 28109 | >UE Aggregate Maximum Bit Rate Downlink | ELEMENT | FALSE | *UE Aggregate Maximum Bit Rate Downlink* IE in TS 36.423 [17]  clause 9.2.12 |  |
| 28110 | >UE Aggregate Maximum Bit Rate Uplink | ELEMENT | FALSE | *UE Aggregate Maximum Bit Rate Uplink* IE in TS 36.423 [17]  clause 9.2.12 |  |
| 28111 | List of PDU sessions to be added | LIST |  |  | *PDU Session Resources To Be Setup List* IE in TS  38.423 [15]  Clause 9.2.1.1 |
| 28112 | >PDU Session Item | STRUCTURE |  |  | *PDU Session Resources To Be Setup Item* IE in TS  38.423 [15]  Clause 9.2.1.1 |
| 28113 | >>PDU Session ID | ELEMENT | TRUE | *PDU Session ID*  IE in TS 38.423  [15] Clause  9.2.3.18 |  |
| 28114 | >>PDU Session | STRUCTURE |  | 8.1.1.16 |  |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| 28115 | >>CHOICE *PDU Session Setup Info* | STRUCTURE |  |  | *PDU Session Resource Setup Info - SN terminated* IE in TS  38.423 [15]  Clause 9.1.2.5 |
| 28116 | >>>SN terminated PDU session | STRUCTURE |  |  | *PDU Session Resource Setup Info - SN terminated* IE in TS  38.423 [15]  Clause 9.1.2.5 |
| 28118 | >>>>List of QoS flows to be setup | LIST |  |  | *QoS Flows To Be Setup List* IE in TS  38.423 [15]  Clause 9.2.1.1 |
| 28119 | >>>>>QoS flow Item to be setup | STRUCTURE |  |  | *QoS Flow To Be Setup Item* IE in TS  38.423 [15]  Clause 9.2.1.1 |
| 28120 | >>>>>>QoS Flow Identifier | ELEMENT | TRUE | *QoS Flow Identifier* IE in TS  38.423 [15]  Clause 9.2.3.10 |  |
| 28121 | >>>>>>QoS flow | STRUCTURE |  | 8.1.1.6 |  |
| 28122 | >>>>Count of QoS flows to be setup | ELEMENT | FALSE | INTEGER (0..64) |  |
| 28123 | >>>MN terminated PDU session | STRUCTURE |  |  | *PDU Session Resource Setup Info - MN terminated* IE in TS  38.423 [15]  Clause 9.1.2.5 |
| 28125 | >>>>List of DRBs to be setup | LIST |  |  | *DRB to QoS Flow Mapping List* IE in TS  38.423 [15]  Clause 9.2.1.15 |
| 28126 | >>>>>DRB Item to be setup | STRUCTURE |  |  | *DRB to QoS Flow Mapping Item* IE in TS  38.423 [15]  Clause 9.2.1.15 |
| 28127 | >>>>>>DRB ID | ELEMENT | TRUE | *DRB ID* IE in TS  38.423 [15]  Clause 9.2.3.33 |  |
| 28128 | >>>>>>NG-RAN DRB | STRUCTURE |  | 8.1.1.5 |  |
| 28129 | >>>>>>List of QoS flows to be setup | LIST |  |  | *QoS Flows List*  IE in TS  38.423 [15]  Clause 9.2.1.15 |
| 28130 | >>>>>>>QoS flow Item to be setup | STRUCTURE |  |  | *QoS Flow Item*  IE in TS  38.423 [15]  Clause 9.2.1.15 |
| 28131 | >>>>>>>>QoS  Flow Identifier | ELEMENT | TRUE | *QoS Flow Identifier* IE in TS  38.423 [15] |  |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
|  |  |  |  | Clause 9.2.3.10 |  |
| 28132 | >>>>>>>>QoS  Flow | STRUCTURE |  | 8.1.1.6 |  |
| 28133 | >>>>>>Count of list of QoS flows to be setup | ELEMENT | FALSE | INTEGER (0..64) |  |
| 28134 | >>>>Count of list of DRBs to be setup | ELEMENT | FALSE | INTEGER (0..64) |  |
| 28135 | Count of list of PDU sessions to be added | ELEMENT | FALSE | INTEGER (0..256) |  |
| 28136 | List of E-RABs to be added | LIST |  |  | *E-RABs To Be Added List* IE in TS 36.423  [17] Clause  9.1.4.1 |
| 28137 | >E-RAB Item | STRUCTURE |  |  | *E-RABs To Be Added Item* IE in TS 36.423  [17] Clause  9.1.4.1 |
| 28138 | >>E-RAB ID | ELEMENT | TRUE | *E-RAB ID* IE in TS 36.423 [17]  Clause 9.2.23 |  |
| 28139 | >>E-RAB | STRUCTURE |  | 8.1.1.9 |  |
| 28140 | >>EN-DC Resource Configuration | STRUCTURE |  |  | *EN-DC*  *Resource Configuration* IE in TS  36.423 [17]  Clause 9.2.108 |
| 28141 | >>>PDCP at SgNB | ELEMENT | FALSE | *PDCP at SgNB*  IE in TS 36.423  [17] Clause  9.2.108 |  |
| 28142 | >>>MCG resources | ELEMENT | FALSE | *MCG resources*  IE in TS 36.423  [17] Clause  9.2.108 |  |
| 28143 | >>>SCG resources | ELEMENT | FALSE | *SCG resources*  IE in TS 36.423  [17] Clause  9.2.108 |  |
| 28144 | >>CHOICE Resource Configuration | STRUCTURE |  |  | *Resource Configuration* IE in TS  36.423 [17]  Clause 9.1.4.1 |
| 28145 | >>>PDCP present in SN | STRUCTURE |  |  | *PDCP Present in SN* IE in TS  36.423 [17]  Clause 9.1.4.1 |
| 28146 | >>>>Maximum MCG admittable E-RAB Level QoS parameters | STRUCTURE |  | 8.1.1.9 |  |
| 28147 | >>>>RLC Mode | ELEMENT | FALSE | *RLC Mode* IE in TS 36.423 [17]  Clause 9.1.4.1 |  |
| 28148 | >>>>UL Configuration | ELEMENT | FALSE | *UL Configuration*  IE in TS 36.423  [17] Clause  9.1.4.1 |  |
| 28149 | >>>PDCP not present in SN | STRUCTURE |  |  | *PDCP Not*  *Present in SN*  IE in TS  36.423 [17]  Clause 9.1.4.1 |
| 28150 | >>>>Requested SCG E-RAB Level QoS Parameters | STRUCTURE |  | 8.1.1.9 |  |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| 28151 | >>>>RLC Mode | ELEMENT | FALSE | *RLC Mode* IE in TS 36.423 [17]  Clause 9.1.4.1 |  |
| 28152 | >>>>UL Configuration | ELEMENT | FALSE | *UL Configuration*  IE in TS 36.423  [17] Clause  9.1.4.1 |  |
| 28153 | Count of list of E-RABs to be added | ELEMENT | FALSE | INTEGER (0..256) |  |
| 28154 | List of SN-terminated DRBs | LIST |  |  | *Available DRB IDs* IE in TS  38.423 [15]  Clause 9.1.2.1 |
| 28155 | >SN-terminated DRB item | STRUCTURE |  |  |  |
| 28156 | >>DRB ID | ELEMENT | TRUE | *DRB ID* IE in TS  38.423 [15]  Clause 9.2.3.33 |  |
| 28157 | >>CHOICE *DRB Type* | STRUCTURE |  |  |  |
| 28158 | >>>NG-RAN DRB | STRUCTURE |  | 8.1.1.5 |  |
| 28159 | >>>E-UTRA DRB | STRUCTURE |  | 8.1.1.9 |  |
| 28160 | Count of list of SN-terminated DRBs | ELEMENT | FALSE | INTEGER (0..64) |  |
| 28161 | Primary Cell ID | STRUCTURE |  |  | This is for the primary serving cell of the UE. The structuring of this parameter is based on *Target Cell Global ID* IE in TS 38.423 [15]  clause 9.2.3.25 |
| 28162 | >CHOICE Primary Cell | STRUCTURE |  |  | The primary cell could either be an NR primary cell or an LTE primary cell.  The structuring is based on*Target Cell* IE in TS  38.423 [15]  clause 9.2.3.25 |
| 28163 | >>NR SpCell | STRUCTURE |  | 8.1.1.1 | *NR Cell* IE in TS 38.423 [15]  clause 9.2.3.25 or *SpCell ID* IE in TS 38.473  [19] clause  9.2.2.1 |
| 28164 | >>LTE PCell | STRUCTURE |  | 8.1.1.2 | *E-UTRA Cell*  IE in TS  38.423 [15]  clause 9.2.3.25 |

</div>

###### SN Modification and deletion

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **RAN**  **Parameter ID** | **RAN Parameter** | **RAN**  **Parameter Value Type** | **Key Flag** | **RAN Parameter Definition** | **Semantics Description** |
| 28201 | Event AN and inter-RAT B1 mobility thresholds | STRUCTURE |  | *Connectivity and Mobility Event Thresholds* IE in  clause 8.1.1.10 | Event AN and inter-RAT B1 mobility  thresholds |
| 28202 | Secondary Node | STRUCTURE |  | 8.1.1.11 |  |
| 28205 | CHOICE *PDCP Change Indication* | STRUCTURE |  |  | *PDCP Change Indication* IE in TS 38.423 [15]  Clause 9.2.3.74 |
| 28206 | >From S-NG-RAN Node | STRUCTURE |  |  | *From S-NG- RAN Node* IE in TS 38.423  [15] Clause  9.2.3.74 |
| 28207 | >>Indication from S-NG-RAN node to M-NG-RAN node | ELEMENT |  | *Indication from S-NG-RAN node to M-NG-RAN*  *node* IE in TS  38.423 [15]  Clause 9.2.3.74 |  |
| 28208 | >From M-NG-RAN Node | STRUCTURE |  |  | *From M-NG- RAN Node* IE in TS 38.423  [15] Clause  9.2.3.74 |
| 28209 | >>Indication from M-NG-RAN node to S-NG-RAN node | ELEMENT |  | *Indication from M-NG-RAN node to S-NG-RAN*  *node* IE in TS  38.423 [15]  Clause 9.2.3.74 |  |
| 28210 | Secondary Node UE Aggregate Maximum Bit Rate | STRUCTURE |  |  | *UE Aggregate Maximum Bit Rate* IE in TS  36.423 [17]  Clause 9.2.12 |
| 28211 | >UE Aggregate Maximum Bit Rate Downlink | ELEMENT | FALSE | *UE Aggregate Maximum Bit Rate Downlink* IE in TS 36.423 [17]  clause 9.2.12 |  |
| 28212 | >UE Aggregate Maximum Bit Rate Uplink | ELEMENT | FALSE | *UE Aggregate Maximum Bit Rate Uplink* IE in TS 36.423 [17]  clause 9.2.12 |  |
| 28213 | List of PDU sessions to be added | LIST |  |  | *PDU Session Resources To Be Setup List* IE in TS  38.423 [15]  Clause 9.2.1.1 |
| 28214 | >PDU Session Item | STRUCTURE |  |  | *PDU Session Resources To Be Setup Item* IE in TS  38.423 [15]  Clause 9.2.1.1 |
| 28215 | >>PDU Session ID | ELEMENT | TRUE | *PDU Session ID*  IE in TS 38.423  [15] Clause  9.2.3.18 |  |
| 28216 | >>PDU Session | STRUCTURE |  | 8.1.1.16 |  |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| 28217 | >>CHOICE *PDU Session Setup Info* | STRUCTURE |  |  | *PDU Session Resource Setup Info - SN terminated* IE in TS  38.423 [15]  Clause 9.1.2.5 |
| 28218 | >>>SN terminated PDU session | STRUCTURE |  |  | *PDU Session Resource Setup Info - SN terminated* IE in TS  38.423 [15]  Clause 9.1.2.5 |
| 28219 | >>>>List of QoS flows to be setup | LIST |  |  | *QoS Flows To Be Setup List* IE in TS  38.423 [15]  Clause 9.2.1.1 |
| 28220 | >>>>>QoS flow Item to be setup | STRUCTURE |  |  | *QoS Flow To Be Setup Item* IE in TS  38.423 [15]  Clause 9.2.1.1 |
| 28221 | >>>>>>QoS Flow Indicator | ELEMENT | TRUE | *QoS Flow Identifier* IE in TS  38.423 [15]  Clause 9.2.3.10 |  |
| 28222 | >>>>>>QoS flow | STRUCTURE |  | 8.1.1.6 |  |
| 28223 | >>>>Count of QoS flows to be setup | ELEMENT | FALSE | INTEGER (0..64) |  |
| 28224 | >>>MN terminated PDU session | STRUCTURE |  |  | *PDU Session Resource Setup Info - MN terminated* IE in TS  38.423 [15]  Clause 9.1.2.5 |
| 28225 | >>>>List of DRBs to be setup | LIST |  |  | *DRB to QoS Flow Mapping List* IE in TS  38.423 [15]  Clause 9.2.1.15 |
| 28226 | >>>>>DRB Item to be setup | STRUCTURE |  |  | *DRB to QoS Flow Mapping Item* IE in TS  38.423 [15]  Clause 9.2.1.15 |
| 28227 | >>>>>>DRB ID | ELEMENT | TRUE | *DRB ID* IE in TS  38.423 [15]  Clause 9.2.3.33 |  |
| 28228 | >>>>>>NG-RAN DRB | STRUCTURE |  | 8.1.1.5 |  |
| 28229 | >>>>>>List of QoS flows to be setup | LIST |  |  | *QoS Flows List*  IE in TS  38.423 [15]  Clause 9.2.1.15 |
| 28230 | >>>>>>>QoS flow Item to be setup | STRUCTURE |  |  | *QoS Flow Item*  IE in TS  38.423 [15]  Clause 9.2.1.15 |
| 28231 | >>>>>>>>QoS  Flow Indicator | ELEMENT | TRUE | *QoS Flow Indicator* IE in TS  38.423 [15] |  |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
|  |  |  |  | Clause 9.2.3.10 |  |
| 28232 | >>>>>>>>QoS  Flow | STRUCTURE |  | 8.1.1.6 |  |
| 28233 | >>>>>>Count of list of QoS flows to be setup | ELEMENT | FALSE | INTEGER (0..64) |  |
| 28234 | >>>>Count of list of DRBs to be setup | ELEMENT | FALSE | INTEGER (0..64) |  |
| 28235 | Count of list of PDU sessions to be added | ELEMENT | FALSE | INTEGER (0..256) |  |
| 28236 | List of PDU sessions to be modified | LIST |  |  | *PDU Session Resources To Be Setup List* IE in TS  38.423 [15]  Clause 9.2.1.1 |
| 28237 | >PDU Session Item | STRUCTURE |  |  | *PDU Session Resources To Be Setup Item* IE in TS  38.423 [15]  Clause 9.2.1.1 |
| 28238 | >>PDU Session ID | ELEMENT | TRUE | *PDU Session ID*  IE in TS 38.423  [15] Clause  9.2.3.18 |  |
| 28239 | >>PDU Session | STRUCTURE |  | 8.1.1.16 |  |
| 28240 | >>CHOICE *PDU Session Modification Info* | STRUCTURE |  |  |  |
| 28241 | >>>SN terminated PDU session | STRUCTURE |  |  | *PDU Session Resource Setup Info - SN terminated* IE in TS  38.423 [15]  Clause 9.1.2.5 |
| 28242 | >>>>List of QoS flows to be modified | LIST |  |  | *QoS Flows To Be Setup List* IE in TS  38.423 [15]  Clause 9.2.1.1 |
| 28243 | >>>>>QoS flow Item to be modified | STRUCTURE |  |  | *QoS Flow To Be Setup Item* IE in TS  38.423 [15]  Clause 9.2.1.1 |
| 28244 | >>>>>>QoS Flow Indicator | ELEMENT | TRUE | *QoS Flow Identifier* IE in TS  38.423 [15]  Clause 9.2.3.10 |  |
| 28245 | >>>>>>QoS flow | STRUCTURE |  | 8.1.1.6 |  |
| 28246 | >>>>Count of QoS flows to be modified | ELEMENT | FALSE | INTEGER (0..64) |  |
| 28247 | >>>MN terminated PDU session | STRUCTURE |  |  | *PDU Session Resource Setup Info - MN terminated* IE in TS  38.423 [15]  Clause 9.1.2.5 |
| 28248 | >>>>List of DRBs to be modified | LIST |  |  | *DRB to QoS Flow Mapping List* IE in TS  38.423 [15]  Clause 9.2.1.15 |
| 28249 | >>>>>DRB Item to be modified | STRUCTURE |  |  | *DRB to QoS Flow Mapping* |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
|  |  |  |  |  | *Item* IE in TS  38.423 [15]  Clause 9.2.1.15 |
| 28250 | >>>>>>DRB ID | ELEMENT | TRUE | *DRB ID* IE in TS  38.423 [15]  Clause 9.2.3.33 |  |
| 28251 | >>>>>>NG-RAN DRB | STRUCTURE |  | 8.1.1.5 |  |
| 28252 | >>>>>>List of QoS flows to be modified | LIST |  |  | *QoS Flows List*  IE in TS  38.423 [15]  Clause 9.2.1.15 |
| 28253 | >>>>>>>QoS flow Item to be setup | STRUCTURE |  |  | QoS Flow Item IE in TS  38.423 [15]  Clause 9.2.1.15 |
| 28254 | >>>>>>>>QoS  Flow Indicator | ELEMENT | TRUE | *QoS Flow Indicator* IE in TS  38.423 [15]  Clause 9.2.3.10 |  |
| 28255 | >>>>>>>>QoS  Flow | STRUCTURE |  | 8.1.1.6 |  |
| 28256 | >>>>>>Count of list of QoS flows to be setup | ELEMENT | FALSE | INTEGER (0..64) |  |
| 28257 | >>>>Count of list of DRBs to be modified | ELEMENT | FALSE | INTEGER (0..64) |  |
| 28258 | >>MR-DC Usage Information | STRUCTURE |  |  | *MR-DC Usage Information* IE in TS 37.483  [21] Clause  9.3.1.63 |
| 28259 | >>>Secondary RAT Type | ELEMENT | FALSE | *Secondary RAT Type* IE in TS  37.483 [21]  Clause 9.3.1.63 |  |
| 28260 | >>>PDU Session Timed Report List | LIST |  |  | *Data Usage Report List* IE in TS 37.483  [21] Clause  9.3.1.64 |
| 28261 | >>>>MR-DC Data Usage Report Item | STRUCTURE |  |  | *Data Report Usage Item* IE in TS 37.483  [21] Clause  9.3.1.64 |
| 28262 | >>>>>Start Timestamp | ELEMENT | FALSE | *Start timestamp*  IE in TS 37.483  [21] Clause  9.3.1.64 |  |
| 28263 | >>>>>End Timestamp | ELEMENT | FALSE | *End timestamp*  IE in TS 37.483  [21] Clause  9.3.1.64 |  |
| 28264 | >>>>>Usage Count UL | ELEMENT | FALSE | *Usage count DL*  IE in TS 37.483  [21] Clause  9.3.1.64 |  |
| 28265 | >>>>>Usage Count DL | ELEMENT | FALSE | *Usage count DL*  IE in TS 37.483  [21] Clause  9.3.1.64 |  |
| 28266 | >>MR-DC Usage for QoS flows | LIST |  |  | *Data Usage Per QoS Flow*  *List* IE in TS  37.483 [21] |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
|  |  |  |  |  | Clause 9.3.1.63 |
| 28267 | >>>QoS Flow Item | STRUCTURE |  |  | *Data Usage Per QoS Flow Item* IE in TS  37.483 [21]  Clause 9.3.1.63 |
| 28268 | >>>>QoS flow Indicator | ELEMENT | TRUE | *QoS Flow Indicator* IE in TS  37.483 [21]  Clause 9.3.1.24 |  |
| 28269 | >>>>Secondary RAT Type | ELEMENT | FALSE | *Secondary RAT Type* IE in TS  37.483 [21]  Clause 9.3.1.63 |  |
| 28270 | >>>>QoS Flow Timed Report List | LIST |  |  | *Data Usage Report List* IE in TS 37.483  [21] Clause  9.3.1.64 |
| 28271 | >>>>>MR-DC Data Usage Report Item | STRUCTURE |  |  | *Data Report Usage Item* IE in TS 37.483  [21] Clause  9.3.1.64 |
| 28272 | >>>>>>Start Timestamp | ELEMENT | FALSE | *Start timestamp*  IE in TS 37.483  [21] Clause  9.3.1.64 |  |
| 28273 | >>>>>>End timestamp | ELEMENT | FALSE | *End timestamp*  IE in TS 37.483  [21] Clause  9.3.1.64 |  |
| 28274 | >>>>>>Usage Count UL | ELEMENT | FALSE | *Usage count DL*  IE in TS 37.483  [21] Clause  9.3.1.64 |  |
| 28275 | >>>>>>Usage Count DL | ELEMENT | FALSE | *Usage count DL*  IE in TS 37.483  [21] Clause  9.3.1.64 |  |
| 28276 | Count of list of PDU sessions to be modified | ELEMENT | FALSE | INTEGER (0..256) |  |
| 28277 | List of PDU sessions to be released | LIST |  |  | *PDU Session Resources To Be Released List* IE in TS  38.423 [15]  Clause 9.1.2.14 |
| 28278 | >PDU Session Item | STRUCTURE |  |  | *PDU Session List With Cause* IE in TS  38.423 [15]  Clause 9.2.1.26 |
| 28279 | >>PDU Session ID | ELEMENT | TRUE | *PDU Session ID*  IE in TS 38.423  [15] Clause  9.2.3.18 |  |
| 28280 | >>PDU Session | STRUCTURE |  | 8.1.1.16 |  |
| 26281 | >>Release Cause | STRUCTURE |  |  | *Cause* IE in TS  37.483 [21]  Clause 9.3.1.2 |
| 26282 | >>>CHOICE Cause Group | STRUCTURE |  |  | *Cause Group*  IE in TS |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
|  |  |  |  |  | 37.483 [21]  Clause 9.3.1.2 |
| 26283 | >>>>Radio Network Layer | STRUCTURE |  |  | *Radio Network Layer* IE in TS  37.483 [21]  Clause 9.3.1.2 |
| 26284 | >>>>>Radio Network Layer Cause | ELEMENT | FALSE | *Radio Network Layer Cause* IE in TS 37.483 [21]  Clause 9.3.1.2 |  |
| 26285 | >>>>Transport Layer | STRUCTURE |  |  | *Transport Layer* IE in TS  37.483 [21]  Clause 9.3.1.2 |
| 26286 | >>>>>Transport Layer Cause | ELEMENT | FALSE | *Transport Layer Cause* IE in TS  37.483 [21]  Clause 9.3.1.2 |  |
| 26287 | >>>>Protocol | STRUCTURE |  |  | *Protocol* IE in TS 37.483 [21]  Clause 9.3.1.2 |
| 26288 | >>>>>Protocol Cause | ELEMENT | FALSE | *Protocol Cause*  IE in TS 37.483  [21] Clause  9.3.1.2 |  |
| 26289 | >>>>Miscellaneous | STRUCTURE |  |  | *Misc* IE in TS  37.483 [21]  Clause 9.3.1.2 |
| 26290 | >>>>>Miscellaneous Cause | ELEMENT | FALSE | *Miscellaneous Cause* IE in TS  37.483 [21]  Clause 9.3.1.2 |  |
| 28291 | Count of list of PDU sessions to be released | ELEMENT | FALSE | INTEGER (0..256) |  |
| 28292 | List of E-RABs to be added | LIST |  |  | *E-RABs To Be Added List* IE in TS 36.423  [17] Clause  9.1.4.1 |
| 28293 | >E-RAB Item | STRUCTURE |  |  | *E-RABs To Be Added Item* IE in TS 36.423  [17] Clause  9.1.4.1 |
| 28294 | >>E-RAB ID | ELEMENT | TRUE | *E-RAB ID* IE in TS 36.423 [17]  Clause 9.2.23 |  |
| 28295 | >>E-RAB | STRUCTURE |  | 8.1.1.9 |  |
| 28296 | >>EN-DC Resource Configuration | STRUCTURE |  |  | *EN-DC*  *Resource Configuration* IE in TS  36.423 [17]  Clause 9.2.108 |
| 28297 | >>>PDCP at SgNB | ELEMENT |  | *PDCP at SgNB*  IE in TS 36.423  [17] Clause  9.2.108 |  |
| 28298 | >>>MCG resources | ELEMENT |  | *MCG resources*  IE in TS 36.423  [17] Clause  9.2.108 |  |
| 28299 | >>>SCG resources | ELEMENT |  | *SCG resources*  IE in TS 36.423  [17] Clause  9.2.108 |  |
| 28300 | >>CHOICE Resource Configuration | STRUCTURE |  |  | *Resource* |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
|  |  |  |  |  | *Configuration*  IE in TS  36.423 [17]  Clause 9.1.4.1 |
| 28301 | >>>PDCP present in SN | STRUCTURE |  |  | *PDCP Present in SN* IE in TS  36.423 [17]  Clause 9.1.4.1 |
| 28302 | >>>>Maximum MCG  admittable E-RAB Level QoS parameters | STRUCTURE |  | 8.1.1.9 |  |
| 28303 | >>>>RLC Mode | ELEMENT | FALSE | *RLC Mode* IE in TS 36.423 [17]  Clause 9.1.4.1 |  |
| 28304 | >>>>UL Configuration | ELEMENT | FALSE | *UL Configuration*  IE in TS 36.423  [17] Clause  9.1.4.1 |  |
| 28305 | >>>PDCP not present in SN | STRUCTURE |  |  | *PDCP Not*  *Present in SN*  IE in TS  36.423 [17]  Clause 9.1.4.1 |
| 28306 | >>>>Requested SCG E-RAB Level QoS Parameters | STRUCTURE |  | 8.1.1.9 |  |
| 28307 | >>>>RLC Mode | ELEMENT | FALSE | *RLC Mode* IE in TS 36.423 [17]  Clause 9.1.4.1 |  |
| 28308 | >>>>UL Configuration | ELEMENT | FALSE | *UL Configuration*  IE in TS 36.423  [17] Clause  9.1.4.1 |  |
| 28309 | Count of list of E-RABs to be added | ELEMENT | FALSE | INTEGER (0..256) |  |
| 28310 | List of E-RABs to be modified | LIST |  |  | *E-RABs To Be Modified List* IE in TS 36.423  [17] Clause  9.1.4.5 |
| 28311 | >E-RAB Item | STRUCTURE |  |  | *E-RABs To Be Modified Item* IE in TS  36.423 [17]  Clause 9.1.4.5 |
| 28312 | >>E-RAB ID | ELEMENT | TRUE | *E-RAB ID* IE in TS 36.423 [17]  Clause 9.2.23 |  |
| 28313 | >>E-RAB | STRUCTURE |  | 8.1.1.9 |  |
| 28314 | >>EN-DC Resource Configuration | STRUCTURE |  |  | *EN-DC*  *Resource Configuration* IE in TS  36.423 [17]  Clause 9.2.108 |
| 28315 | >>>PDCP at SgNB | ELEMENT |  | *PDCP at SgNB*  IE in TS 36.423  [17] Clause  9.2.108 |  |
| 28316 | >>>MCG resources | ELEMENT |  | *MCG resources*  IE in TS 36.423  [17] Clause  9.2.108 |  |
| 28317 | >>>SCG resources | ELEMENT |  | *SCG resources*  IE in TS 36.423  [17] Clause  9.2.108 |  |
| 28318 | >>CHOICE Resource Configuration | STRUCTURE |  |  | *Resource* |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
|  |  |  |  |  | *Configuration*  IE in TS  36.423 [17]  Clause 9.1.4.1 |
| 28319 | >>>PDCP present in SN | STRUCTURE |  |  | *PDCP Present in SN* IE in TS  36.423 [17]  Clause 9.1.4.1 |
| 28320 | >>>>Maximum MCG  admittable E-RAB Level QoS parameters | STRUCTURE |  | 8.1.1.9 |  |
| 28321 | >>>>RLC Mode | ELEMENT | FALSE | *RLC Mode* IE in TS 36.423 [17]  Clause 9.1.4.1 |  |
| 28322 | >>>>UL Configuration | ELEMENT | FALSE | *UL Configuration*  IE in TS 36.423  [17] Clause  9.1.4.1 |  |
| 28323 | >>>PDCP not present in SN | STRUCTURE |  |  | *PDCP Not*  *Present in SN*  IE in TS  36.423 [17]  Clause 9.1.4.1 |
| 28324 | >>>>Requested SCG E-RAB Level QoS Parameters | STRUCTURE |  | 8.1.1.9 |  |
| 28325 | >>>>RLC Mode | ELEMENT | FALSE | *RLC Mode* IE in TS 36.423 [17]  Clause 9.1.4.1 |  |
| 28326 | >>>>UL Configuration | ELEMENT | FALSE | *UL Configuration*  IE in TS 36.423  [17] Clause  9.1.4.1 |  |
| 28327 | Count of list of E-RABs to be modified | ELEMENT | FALSE | INTEGER (0..256) |  |
| 28328 | List of E-RABs to be released | LIST |  |  | *E-RABs To Be Released List* IE in TS  36.423 [17]  Clause 9.1.4.5 |
| 28329 | >E-RAB Item | STRUCTURE |  |  | *E-RABs To Be Released Item* IE in TS  36.423 [17]  Clause 9.1.4.5 |
| 28330 | >>E-RAB ID | ELEMENT | TRUE | *E-RAB ID* IE in TS 36.423 [17]  Clause 9.2.23 |  |
| 28331 | >>E-RAB | STRUCTURE |  | 8.1.1.9 |  |
| 28332 | >>EN-DC Resource Configuration | STRUCTURE |  |  | *EN-DC*  *Resource Configuration* IE in TS  36.423 [17]  Clause 9.2.108 |
| 28333 | >>>PDCP at SgNB | ELEMENT | FALSE | *PDCP at SgNB*  IE in TS 36.423  [17] Clause  9.2.108 |  |
| 28334 | >>>MCG resources | ELEMENT | FALSE | *MCG resources*  IE in TS 36.423  [17] Clause  9.2.108 |  |
| 28335 | >>>SCG resources | ELEMENT | FALSE | *SCG resources*  IE in TS 36.423  [17] Clause  9.2.108 |  |
| 28336 | >>CHOICE Resource Configuration | STRUCTURE |  |  | *Resource* |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
|  |  |  |  |  | *Configuration*  IE in TS  36.423 [17]  Clause 9.1.4.1 |
| 28337 | >>>PDCP present in SN | STRUCTURE |  |  | *PDCP Present in SN* IE in TS  36.423 [17]  Clause 9.1.4.1 |
| 28338 | >>>>Maximum MCG  admittable E-RAB Level QoS parameters | STRUCTURE |  | 8.1.1.9 |  |
| 28339 | >>>>RLC Mode | ELEMENT | FALSE | *RLC Mode* IE in TS 36.423 [17]  Clause 9.1.4.1 |  |
| 28340 | >>>>UL Configuration | ELEMENT | FALSE | *UL Configuration*  IE in TS 36.423  [17] Clause  9.1.4.1 |  |
| 28341 | >>>PDCP not present in SN | STRUCTURE |  |  | *PDCP Not*  *Present in SN*  IE in TS  36.423 [17]  Clause 9.1.4.1 |
| 28342 | >>>>Requested SCG E-RAB Level QoS Parameters | STRUCTURE |  | 8.1.1.9 |  |
| 28343 | >>>>RLC Mode | ELEMENT | FALSE | *RLC Mode* IE in TS 36.423 [17]  Clause 9.1.4.1 |  |
| 28344 | >>>>UL Configuration | ELEMENT | FALSE | *UL Configuration*  IE in TS 36.423  [17] Clause  9.1.4.1 |  |
| 28345 | Count of list of E-RABs to be released | ELEMENT | FALSE | INTEGER (0..256) |  |
| 28346 | List of SN-terminated DRBs to be modified or released | LIST |  |  | *Additional DRB IDs* IE in TS  38.423 [15]  Clause 9.1.2.5 |
| 28347 | >SN-terminated DRB item | STRUCTURE |  |  | *Additional DRB IDs* IE in TS  38.423 [15]  Clause 9.1.2.5 |
| 28358 | >>DRB ID | ELEMENT | TRUE | *DRB ID* IE in TS  38.423 [15]  Clause 9.2.3.33 |  |
| 28348 | >>CHOICE *DRB Type* | STRUCTURE |  |  | *Additional DRB IDs* IE in TS  38.423 [15]  Clause 9.1.2.5 |
| 28349 | >>>NG-RAN DRB | STRUCTURE |  | 8.1.1.5 |  |
| 28350 | >>>E-UTRA DRB | STRUCTURE |  | 8.1.1.9 |  |
| 28351 | Count of list of SN-terminated DRBs | ELEMENT | FALSE | INTEGER (0..64) |  |
| 28352 | Primary Cell ID | STRUCTURE |  |  | *SpCell ID IE* in TS 38.473 [19]  clause 9.2.2.1 |
| 28353 | >CHOICE Primary Cell | STRUCTURE |  |  | *SpCell ID IE* in TS 38.473 [19]  clause 9.2.2.1 |
| 28354 | >>NR SpCell | STRUCTURE |  | 8.1.1.1 |  |
| 28355 | >>LTE PCell | STRUCTURE |  | 8.1.1.2 |  |

</div>

#### Radio Resource Control Management

The RAN Parameters for the call process type of "Radio Resource Control Management" are defined as follows.

###### RRC CG-Config Information Transfer

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **RAN**  **Parameter ID** | **RAN Parameter** | **RAN**  **Parame ter**  **Value Type** | **Key Flag** | **RAN**  **Parameter Definition** | **Semantics Description** |
| 29001 | CG-ConfigInfo | STRUC TURE |  |  | TS 38.473 [19]  clause 9.3.1.25 |
| 29011 | >MN Candidate Cell List Info | STRUC TURE |  |  | *candidateCellInfo ListMN* IE in TS  38.331 [22] |
| 29012 | >>List of NR Cell Measurements | LIST |  |  | *MeasResultList2 NR* IE in TS  38.331 [22] |
| 29013 | >>>NR Cell Measurement Item | STRUC TURE |  |  | *MeasResult2NR Item* IE in TS  38.331 [22] |
| 29014 | >>>>SSB Frequency | ELEME NT | FALSE | *ssbFrequen*  *cy* IE in TS  38.331 [22] |  |
| 29015 | >>>>CSI-RS Reference Frequency | ELEME NT | FALSE | *refFreqCSI- RS* IE in TS  38.331 [22] |  |
| 29016 | >>>>NR Serving Cell | STRUC TURE |  |  | *measResultServi ngCell* IE in TS  38.331 [22] |
| 29017 | >>>>NR Neighbour Cell Measurement List | LIST |  |  | *measResultNeig hCellListNR* IE in TS 38.331 [22] |
| 29018 | >>>>>NR Neighbour Cell Measurement Item | STRUC TURE |  |  | *measResultNR*  *Item* IE in TS  38.331 [22] |
| 29019 | >>>>>>NR Neighbour Cell | STRUC TURE |  | *NR Cell* in 8.1.1.1 |  |
| 29021 | >SN Candidate Cell List Info | STRUC TURE |  |  | *candidateCellInfo ListMN* IE in TS  38.331 [22] |
| 29022 | >>List of NR Cell Measurements | LIST |  |  | *MeasResultList2 NR* IE in TS  38.331 [22] |
| 29023 | >>>NR Cell Measurement Item | STRUC TURE |  |  | *MeasResult2NR Item* IE in TS  38.331 [22] |
| 29024 | >>>>SSB Frequency | ELEME NT | FALSE | *ssbFrequen cy* IE in TS  38.331 [22] |  |
| 29025 | >>>>CSI-RS Reference Frequency | ELEME NT | FALSE | *refFreqCSI- RS* IE in TS  38.331 [22] |  |
| 29026 | >>>>NR Serving Cell | STRUC TURE |  |  | *measResultServi*  *ngCell* IE in TS  38.331 [22] |
| 29027 | >>>>NR Neighbour Cell Measurement List | LIST |  |  | *measResultNeig*  *hCellListNR* IE in TS 38.331 [22] |
| 29028 | >>>>>NR Neighbour Cell Measurement Item | STRUC TURE |  |  | *measResultNR*  *Item* IE in TS  38.331 [22] |
| 29029 | >>>>>>NR Neighbour Cell | STRUC TURE |  | *NR Cell* in 8.1.1.1 |  |
| 29031 | >SCG Failure Info | STRUC TURE |  |  | *FailureReportSC G* IE in TS  38.331 [22] |
| 29032 | >>Failure Type | ELEME NT | FALSE | *failureType*  IE in TS  38.331 [22] |  |
| 29033 | >>Meas Result SCG Failure | STRUC TURE |  |  | *measResultSCG- Failure* IE in TS |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
|  |  |  |  |  | 38.331 [22] |
| 29034 | >>>Measurement Result List Per Measurement Object | STRUC TURE |  |  | *measResultPerM OList* IE in TS  38.331 [22] |
| 29035 | >>>>List of NR Cell Measurements | LIST |  |  | *MeasResultList2*  *NR* IE in TS  38.331 [22] |
| 29036 | >>>>>NR Cell Measurement Item | STRUC TURE |  |  | *MeasResult2NR*  *Item* IE in TS  38.331 [22] |
| 29037 | >>>>>>SSB Frequency | ELEME NT | FALSE | *ssbFrequen*  *cy* IE in TS  38.331 [22] |  |
| 29038 | >>>>>>CSI-RS Reference Frequency | ELEME NT | FALSE | *refFreqCSI- RS* IE in TS  38.331 [22] |  |
| 29039 | >>>>>>NR Serving Cell | STRUC TURE |  |  | *measResultServi ngCell* IE in TS  38.331 [22] |
| 29040 | >>>>>>>NR Neighbour Cell Measurement List | LIST |  |  | *measResultNeig hCellListNR* IE in TS 38.331 [22] |
| 29041 | >>>>>>>>NR Neighbour Cell Measurement Item | STRUC TURE |  |  | *measResultNR Item* IE in TS  38.331 [22] |
| 29042 | >>>>>>>>NR  Neighbour Cell | STRUC TURE |  | *NR Cell* in 8.1.1.1 |  |
| 29051 | >DRX Info MCG | STRUC TURE |  |  | *drx-InfoMCG* IE in TS 38.331 [22] |
| 29052 | >>DRX Long Cycle Start Offset | ELEME NT | FALSE | *drx- LongCycle StartOffset* IE in TS  38.331 [22] |  |
| 29053 | >>Short DRX | STRUC TURE |  |  | *shortDRX* IE in TS 38.331 [22] |
| 29054 | >>>DRX Short Cycle | ELEME NT | FALSE | *drx- ShortCycle*  IE in TS  38.331 [22] |  |
| 29055 | >>>DRX Short Cycle Timer | ELEME NT | FALSE | *drx- ShortCycle Timer* IE in TS 38.331  [22] |  |
| 29061 | >Measurement Configuration MN | STRUC TURE |  |  | *MeasConfigMN* IE in TS 38.331 [22] |
| 29062 | >>MN Measured Frequencies | LIST |  |  | *measuredFreque*  *nciesMN* IE in TS  38.331 [22] |
| 29063 | >>>NR Frequency Info Item | STRUC TURE |  | *NR-*  *FreqInfo* IE in TS  38.331 [22] |  |
| 29064 | >>>>NR ARFCN | ELEME NT | FALSE | *ARFCN-*  *ValueNR* IE in TS  38.331 [22] |  |
| 29065 | >Secondary Cell Group RB Config | STRUC TURE |  |  | *scg-RB-Config* IE in TS 38.331 [22] |
| 29066 | >>Radio Bearer Config | STRUC TURE |  |  | *RadioBearerConf*  *ig* IE in TS  38.331 [22] |
| 29067 | >>>DRB To Add Modify List | LIST |  |  | *Drb- ToAddModList* IE  in TS 38.331 [22] |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| 29068 | >>>>DRB To Add Modify Item | STRUC TURE |  |  | *DRB-ToAddMod*  IE in TS 38.331 [22] |
| 29069 | >>>>>CHOICE *CN Association* | STRUC TURE |  |  | *cnAssociation* IE in TS 38.331 [22] |
| 29070 | >>>>>>EPS Bearer Identity | ELEME NT | FALSE | *eps- BearerIdent ity* IE in TS  38.331 [22] |  |
| 29071 | >>>>>>SDAP Config | STRUC TURE |  |  | *SDAP-Config* IE in TS 38.331 [22] |
| 29072 | >>>>>>>PDU Session ID | ELEME NT | TRUE | *PDU-*  *SessionID*  IE in TS  38.331 [22] |  |
| 29073 | >>>>>>>PDU Session | STRUC TURE |  | 8.1.1.16 |  |
| 29074 | >>>>>>>Default DRB | ELEME NT | FALSE | *defaultDRB*  IE in TS  38.331 [22] |  |
| 29075 | >>>>>DRB ID | ELEME NT | TRUE | *DRB-*  *Identity* IE  in TS  38.331 [22] |  |
| 29076 | >>>>>CHOICE *DRB Type* | STRUC TURE |  |  | *DRB-ToAddMod*  IE in TS 38.331 [22] |
| 29077 | >>>>>>NG-RAN DRB | STRUC TURE |  | 8.1.1.5 |  |
| 29078 | >>>>>>LTE E-UTRA DRB | STRUC TURE |  | 8.1.1.9 |  |
| 29079 | >>>>>Reestablish PDCP | ELEME NT | FALSE | *reestablish PDCP* IE in TS 38.331  [22] |  |
| 29080 | >>>>>Recover PDCP | ELEME NT | FALSE | *recoverPD CP* IE in TS  38.331 [22] |  |
| 29081 | >>>>>PDCP Config | STRUC TURE |  | *PDCP*  *Configurati on* IE in 8.1.2.2.4 |  |
| 29091 | >Master Cell Group RB Config | STRUC TURE |  |  | *scg-RB-Config* IE in TS 38.331 [22] |
| 29092 | >>Radio Bearer Config | STRUC TURE |  |  | *RadioBearerConf*  *ig* IE in TS  38.331 [22] |
| 29093 | >>>DRB To Add Modify List | LIST |  |  | *Drb- ToAddModList* IE  in TS 38.331 [22] |
| 29094 | >>>>DRB To Add Modify Item | STRUC TURE |  |  | *DRB-ToAddMod*  IE in TS 38.331 [22] |
| 29095 | >>>>>CHOICE *CN Association* | STRUC TURE |  |  | *cnAssociation* IE in TS 38.331 [22] |
| 29096 | >>>>>>EPS Bearer Identity | ELEME NT | FALSE | *eps- BearerIdent ity* IE in TS  38.331 [22] |  |
| 29097 | >>>>>>SDAP Config | STRUC TURE |  |  | *SDAP-Config* IE in TS 38.331 [22] |
| 29098 | >>>>>>>PDU Session ID | ELEME NT | FALSE | *PDU-*  *SessionID*  IE in TS  38.331 [22] |  |
| 29099 | >>>>>>>PDU Session | STRUC TURE |  | 8.1.1.16 |  |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| 29100 | >>>>>>>Default DRB | ELEME NT | FALSE | *defaultDRB*  IE in TS  38.331 [22] |  |
| 29101 | >>>>>>>Reflective QoS | ELEME NT | FALSE | *as- reflectiveQ oS* IE in TS  38.331 [22] |  |
| 29102 | >>>>>DRB ID | ELEME NT | TRUE | *DRB-*  *Identity* IE  in TS  38.331 [22] |  |
| 29103 | >>>>>CHOICE *DRB Type* | STRUC TURE |  |  | *DRB-ToAddMod*  IE in TS 38.331 [22] |
| 29104 | >>>>>>NG-RAN DRB | STRUC TURE |  | 8.1.1.5 |  |
| 29105 | >>>>>>LTE E-UTRA DRB | STRUC TURE |  | 8.1.1.9 |  |
| 29106 | >>>>>Reestablish PDCP | ELEME NT | FALSE | *reestablish PDCP* IE in TS 38.331  [22] |  |
| 29107 | >>>>>Recover PDCP | ELEME NT | FALSE | *recoverPD CP* IE in TS  38.331 [22] |  |
| 29108 | >>>>>PDCP Config | STRUC TURE |  | *PDCP*  *Configurati on* IE in 8.1.2.2.4 |  |
| 29111 | >List of UE Capability RAT Containers | LIST |  |  | *UE-*  *CapabilityRAT- ContainerList* IE in TS 38.331 [22] |
| 29112 | >>UE Capability RAT Container Item | STRUC TURE |  |  | *UE-*  *CapabilityRAT- Container* IE in  TS 38.331 [22] |
| 29113 | >>>RAT Type | ELEME NT | FALSE | *RAT-Type*  IE in TS  38.331 [22] |  |

</div>

###### RRC Cell Group Config Transfer

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **RAN**  **Parameter ID** | **RAN Parameter** | **RAN**  **Parameter Value Type** | **Key Flag** | **RAN**  **Parameter Definition** | **Semantics Description** |
| 29501 | CellGroupConfig | STRUCTURE |  |  | TS 38.473 [19]  clause 9.3.1.25 |
| 29502 | >Cell Group ID | STRUCTURE |  | 8.1.1.7 |  |
| 29503 | >List of RLC Bearers to Add or Modify | LIST |  |  | *rlc- BearerToAddM odList* IE in TS  38.331 [22] |
| 29504 | >>RLC Bearer to Add or Modify Item | STRUCTURE |  |  | *rlc- BearerToAddM*  *odList* IE in TS  38.331 [22] |
| 29505 | >>>Served RLC Radio Bearer | STRUCTURE |  | 8.1.1.5 |  |
| 29506 | >>>RLC Bearer Config | STRUCTURE |  |  | *RLC-*  *BearerConfig*  IE in TS  38.331 [22] |
| 29507 | >>>>Logical Channel Identity | ELEMENT | TRUE | *logicalChann elIdentity* IE in TS 38.331  [22] |  |
| 29508 | >>>>Reestablish RLC | ELEMENT | FALSE | *reestablishR LC* IE in TS  38.331 [22] |  |
| 29509 | >>>>CHOICE *RLC Config* | STRUCTURE |  |  | *RLC-Config* IE in TS 38.331  [22] |
| 29510 | >>>>>AM | STRUCTURE |  |  | *am* IE in TS  38.331 [22] |
| 29511 | >>>>>>UL AM RLC | STRUCTURE |  |  | *ul-AM-RLC* IE in TS 38.331  [22] |
| 29512 | >>>>>>>Poll  Retransmit | ELEMENT | FALSE | *t- PollRetrans*  *mit* IE in TS  38.331 [22] |  |
| 29513 | >>>>>>>Max  Retransmission Threshold | ELEMENT | FALSE | *maxRetxThr eshold* IE in TS 38.331  [22] |  |
| 29514 | >>>>>>>Poll PDU | ELEMENT | FALSE | *pollPDU* IE in TS 38.331  [22] |  |
| 29515 | >>>>>>>Poll Byte | ELEMENT | FALSE | *pollByte* IE in TS 38.331  [22] |  |
| 29516 | >>>>>>DL AM RLC | STRUCTURE |  |  | *dl-AM-RLC* IE in TS 38.331  [22] |
| 29517 | >>>>>>>Reassembly | ELEMENT | FALSE | *t- Reassembly*  IE in TS  38.331 [22] |  |
| 29518 | >>>>>>>Status Prohibit | ELEMENT | FALSE | *t- StatusProhib it* IE in TS  38.331 [22] |  |
| 29519 | >>>>>UM Bi-directional | STRUCTURE |  |  | *um-Bi- Directional* IE in TS 38.331  [22] |
| 29521 | >>>>>>UL UM RLC | ELEMENT | FALSE |  | *UL-UM-RLC* IE in TS 38.331  [22] |
| 29522 | >>>>>>DL UM RLC | STRUCTURE |  |  | *DL-UM-RLC* IE |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
|  |  |  |  |  | in TS 38.331  [22] |
| 29523 | >>>>>>>Reassembly | ELEMENT | FALSE | *t- Reassembly* IE in TS  38.331 [22] |  |
| 29530 | >>>>>UM Uni-directional UL | STRUCTURE |  |  | *um-Uni- Directional-UL* IE in TS  38.331 [22] |
| 29531 | >>>>>>UL UM RLC | ELEMENT | FALSE | *ul-UM-RLC*  IE in TS  38.331 [22] |  |
| 29540 | >>>>>UM Uni-directional DL | STRUCTURE |  |  | *um-Uni- Directional-DL* IE in TS  38.331 [22] |
| 29541 | >>>>>>DL UM RLC | STRUCTURE |  |  | *dl-UM-RLC* IE in TS 38.331  [22] |
| 29542 | >>>>>>>Reassembly | ELEMENT | FALSE | *t- Reassembly* IE in TS  38.331 [22] |  |
| 29551 | >>>>MAC Logical Channel Config | STRUCTURE |  |  |  |
| 29552 | >>>>>Priority | ELEMENT | FALSE | *priority* IE in TS 38.331  [22] Clause  6 |  |
| 29553 | >>>>>Prioritized Bit Rate | ELEMENT | FALSE | *prioritisedBit Rate* IE in TS 38.331  [22] Clause  6 |  |
| 29554 | >>>>>Bucket Size Duration | ELEMENT | FALSE | *bucketSizeD uration* IE in TS 38.331  [22] Clause  6 |  |
| 29555 | >>>>>List of allowed sub- carrier spacing | LIST |  |  | *allowedSCS- List* IE in TS  38.331 [22]  Clause 6 |
| 29556 | >>>>>>Allowed sub- carrier spacing item | STRUCTURE |  |  |  |
| 29557 | >>>>>>>Sub Carrier Spacing | ELEMENT | FALSE | *SubCarrierS pacing* IE in TS 38.331  [22] Clause  6 |  |
| 29558 | >>>>>Max PUSCH Duration | ELEMENT | FALSE | *maxPUSCH- Duration* IE in TS 38.331  [22] Sec 6 |  |
| 29559 | >>>>>Configured Grant Type1 Allowed | ELEMENT |  | *configuredGr antTypeAllo wed* IE in TS  38.331 [22]  Clause 6 |  |
| 29560 | >>>>>Logical Channel Group | ELEMENT | FALSE | *logicalChann elGroup* IE in TS 38.331  [22] |  |
| 29561 | >>>>>Logical Channel SR - Mask | ELEMENT | FALSE | *logicalChann elSR-Mask* IE in TS |  |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
|  |  |  |  | 38.331 [22]  Clause 6 |  |
| 29562 | >>>>>Logical Channel SR - Delay Timer Applied | ELEMENT | FALSE | *logicalChann elSR- DelayTimerA pplied* IE in TS 38.331  [22] Sec 6 |  |
| 29563 | >>>>>Bit Rate Query Prohibit Timer | ELEMENT | FALSE | *bitRateQuer yProhibitTim er* IE in TS  38.331 [22]  Clause 6 |  |
| 29564 | >>>>>Channel Access Priority | ELEMENT | FALSE | *reestablishR LC* IE in TS  38.331 [22] |  |
| 29565 | >>>>>Bit Rate Multiplier | ELEMENT | FALSE | *logicalChann elGroup* IE in TS 38.331  [22] |  |
| 29601 | >List of RLC Bearers to Release | LIST |  |  | *rlc- BearerToRelea seList* IE in TS  38.331 [22] |
| 29602 | >>RLC Bearer to Release Item | STRUCTURE |  |  | *rlc- BearerToRelea seList* IE in TS  38.331 [22] |
| 29603 | >>>Served RLC Radio Bearer | STRUCTURE |  | 8.1.1.5 |  |
| 29604 | >>>Logical Channel Identity | ELEMENT | TRUE | *logicalChann elIdentity* IE in TS 38.331  [22] |  |
| 29651 | >MAC Cell Group Config | STRUCTURE |  |  | *mac- CellGroupConf ig* IE in TS  38.331 [22] |
| 29652 | >>Scheduling Request Config | STRUCTURE |  |  | *schedulingReq uestConfig* IE in TS 38.331  [22] |
| 29654 | >>>List of Scheduling Requests to Add or Modify | LIST |  |  | *schedulingReq uestToAddMod List* IE in TS  38.331 [22] |
| 29655 | >>>>Scheduling Request Item | STRUCTURE |  |  | *SchedulingReq uestToAddMod* IE in TS  38.331 [22] |
| 29656 | >>>>>Scheduling Request ID | ELEMENT | TRUE | *SchedulingR equestId* IE in TS 38.331  [22] |  |
| 29657 | >>>>>SR Prohibit Timer | ELEMENT | FALSE | *sr- ProhibitTime*  *r* IE in TS  38.331 [22] |  |
| 29658 | >>>>>SR Transmission Max | ELEMENT | FALSE | *sr-TransMax*  IE in TS  38.331 [22] |  |
| 29659 | >>>List of Scheduling Requests for release | LIST |  |  | *schedulingReq uestToRelease*  *List* IE in TS  38.331 [22] |
| 29660 | >>>>Scheduling Request Item | STRUCTURE |  |  |  |
| 29661 | >>>>>Scheduling Request ID | ELEMENT | TRUE | *SchedulingR equestId* IE |  |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
|  |  |  |  | in TS 38.331  [22] |  |
| 29662 | >>>>>SR Prohibit Timer | ELEMENT | FALSE | *sr- ProhibitTime r* IE in TS  38.331 [22] |  |
| 29663 | >>>>>SR Transmission Max | ELEMENT | FALSE | *sr-TransMax*  IE in TS  38.331 [22] |  |
| 29675 | >>BSR Config | STRUCTURE |  |  | *bsr-Config* IE in TS 38.331  [22] |
| 29676 | >>>Periodic BSR Timer | ELEMENT | FALSE | *periodicBSR*  *-Timer* IE in TS 38.331  [22] |  |
| 29677 | >>>Retx BSR Timer | ELEMENT | FALSE | *retxBSR- Timer* IE in TS 38.331  [22] |  |
| 29578 | >>>Logical Channel SR Delay Timer | ELEMENT | FALSE | *logicalChann elSR- DelayTimer* IE in TS  38.331 [22] |  |

</div>

###### RRC Measurement Configuration

This Call Process Breakpoint uses RRC related RAN parameters defined in clauses 8.1.1 and 8.4.10.

#### PDU Session Management

The RAN Parameters for the call process type of "PDU Session Management" are defined as follows.

###### PDU Session Resource Setup

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **RAN**  **Parameter ID** | **RAN Parameter** | **RAN**  **Parameter Value Type** | **Key Flag** | **RAN**  **Parameter Definition** | **Semantics Description** |
| 30001 | PDU Session ID | ELEMENT | TRUE | *PDU Session ID* IE in TS  38.413 [11]  Clause 9.3.1.50 |  |
| 30002 | PDU Session | STRUCTURE |  | 8.1.1.16 |  |
| 30003 | List of QoS Flows to be setup | LIST |  |  | *QoS Flow Setup Request List* IE in TS  38.413 [11]  Clause 9.3.4.1 |
| 30004 | >QoS flow setup request item | STRUCTURE |  |  | *QoS Flow Setup Request Item* IE in TS  38.413 [11]  Clause 9.3.4.1 |
| 30005 | >>QoS Flow Identifier | ELEMENT | TRUE | *QoS Flow Identifier* IE in TS 38.413 [11]  Clause 9.3.1.51 |  |
| 30006 | >>QoS flow | STRUCTURE |  | 8.1.1.6 |  |
| 30010 | List of QoS Flows failed to be setup | LIST |  |  | *QoS Flow Failed To Setup List* IE in TS 38.413  [11] Clause  9.3.4.2 |
| 30011 | >QoS flow item failed for setup | STRUCTURE |  |  | *QoS Flow Item* IE in TS  38.413 [11]  Clause 9.3.1.13 |
| 30012 | >>QoS Flow Identifier | ELEMENT | TRUE | *QoS Flow Identifier* IE in TS 38.413 [11]  Clause 9.3.1.51 |  |
| 30013 | >>QoS flow | STRUCTURE |  | 8.1.1.6 |  |
| 30014 | >>Cause | STRUCTURE |  |  | *Cause* IE in TS 38.413  [11] Clause  9.3.1.2 |
| 30015 | >>>CHOICE *Cause group* | STRUCTURE |  |  | *Cause Group*  IE in TS  38.413 [11]  Clause 9.3.1.2 |
| 30016 | >>>>Radio Network Layer | STRUCTURE |  |  | *Radio Network Layer* IE in TS  38.413 [11]  Clause 9.3.1.2 |
| 30017 | >>>>>Radio Network Layer Cause | ELEMENT | FALSE | *Radio Network Layer Cause* IE in TS  38.413 [11]  Clause 9.3.1.2 |  |
| 30018 | >>>>Transport Layer | STRUCTURE |  |  | *Transport* |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
|  |  |  |  |  | *Layer* IE in TS  38.413 [11]  Clause 9.3.1.2 |
| 30019 | >>>>>Transport Layer Cause | ELEMENT | FALSE | *Transport Layer Cause* IE in TS  37.483 [21]  Clause 9.3.1.2 |  |
| 30020 | >>>>NAS | STRUCTURE |  |  | *NAS* IE in TS  38.413 [11]  Clause 9.3.1.2 |
| 30021 | >>>>>NAS Cause | ELEMENT | FALSE | *NAS Cause* IE in TS 38.413  [11] Clause  9.3.1.2 |  |
| 30022 | >>>>Protocol | STRUCTURE |  |  | *Protocol* IE in TS 38.413  [11] Clause  9.3.1.2 |
| 30023 | >>>>>Protocol Cause | ELEMENT | FALSE | *Protocol Cause* IE in TS  38.413 [11]  Clause 9.3.1.2 |  |
| 30024 | >>>>Miscellaneous | STRUCTURE |  |  | *Misc* IE in TS  38.413 [11]  Clause 9.3.1.2 |
| 30025 | >>>>>Miscellaneous Cause | ELEMENT | FALSE | *Miscellaneous Cause* IE in TS  38.413 [11]  Clause 9.3.1.2 |  |
| 30031 | Primary Cell ID | STRUCTURE |  |  | This is for the primary serving cell of the UE. The structuring of this parameter is based on *Target Cell Global ID* IE in TS 38.423  [15] clause  9.2.3.25 |
| 30032 | >CHOICE *Primary Cell* | STRUCTURE |  |  | The primary cell could either be an NR primary cell or an LTE primary cell. The structuring is based on*Target Cell* IE in TS  38.423 [15]  clause 9.2.3.25 |
| 30033 | >>NR SpCell | STRUCTURE |  | 8.1.1.1 | *NR Cell* IE in TS 38.423  [15] clause  9.2.3.25 |
| 30034 | >>E-UTRA PCell | STRUCTURE |  | 8.1.1.2 | *E-UTRA Cell*  IE in TS  38.423 [15] |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
|  |  |  |  |  | clause 9.2.3.25 |

</div>

###### PDU Session Resource Modification

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **RAN**  **Parameter ID** | **RAN Parameter** | **RAN**  **Parameter Value Type** | **Key Flag** | **RAN Parameter Definition** | **Semantics Description** |
| 31001 | PDU Session ID | ELEMENT | TRUE | *PDU Session ID*  IE in TS 38.413  [11] Clause  9.3.1.50 |  |
| 31002 | PDU Session | STRUCTURE |  | 8.1.1.16 |  |
| 31003 | List of QoS Flows to add or modify | LIST |  |  | *QoS Flow Add or Modify Request List IE* in TS 38.413  [11] Clause  9.3.4.3 |
| 31004 | >QoS flow add or modify request item | STRUCTURE |  |  | *QoS Flow Add or Modify Request Item* IE in TS 38.413  [11] Clause  9.3.4.3 |
| 31005 | >QoS Flow Identifier | ELEMENT | TRUE | *QoS Flow Identifier* IE in TS 38.413 [11]  Clause 9.3.1.51 |  |
| 31006 | >>QoS flow | STRUCTURE |  | 8.1.1.6 |  |
|  |  |  |  |  |  |
|  |  |  |  |  |  |
| 31012 | List of QoS Flows failed to be added or modified | LIST |  |  | *QoS Flow Failed To Add or Modify List* IE in TS 38.413  [11] Clause  9.3.4.2 |
| 31013 | >QoS flow item failed to be added or modified | STRUCTURE |  |  | *QoS Flow Item*  IE in TS 38.413  [11] Clause  9.3.1.13 |
| 31014 | >>QoS Flow Identifier | ELEMENT | TRUE | *QoS Flow Identifier* IE in TS 38.413 [11]  Clause 9.3.1.51 |  |
| 31015 | >>QoS flow | STRUCTURE |  | 8.1.1.6 |  |
| 31016 | >>Cause | STRUCTURE |  |  | *Cause* IE in TS  38.413 [11]  Clause 9.3.1.2 |
| 31017 | >>>CHOICE *Cause group* | STRUCTURE |  |  | *Cause Group*  IE in TS 38.413  [11] Clause  9.3.1.2 |
| 31018 | >>>>Radio Network Layer | STRUCTURE |  |  | *Radio Network Layer* IE in TS  38.413 [11]  Clause 9.3.1.2 |
| 31019 | >>>>>Radio Network Layer Cause | ELEMENT | FALSE | *Radio Network Layer Cause* IE in TS 38.413  [11] Clause  9.3.1.2 |  |
| 31020 | >>>>Transport Layer | STRUCTURE |  |  | *Transport Layer*  IE in TS 38.413  [11] Clause  9.3.1.2 |
| 31021 | >>>>>Transport Layer Cause | ELEMENT | FALSE | *Transport Layer Cause* IE in TS  37.483 [21]  Clause 9.3.1.2 |  |
| 31022 | >>>>NAS | STRUCTURE |  |  | *NAS* IE in TS |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
|  |  |  |  |  | 38.413 [11]  Clause 9.3.1.2 |
| 31023 | >>>>>NAS Cause | ELEMENT | FALSE | *NAS Cause* IE in TS 38.413 [11]  Clause 9.3.1.2 |  |
| 31024 | >>>>Protocol | STRUCTURE |  |  | *Protocol* IE in TS 38.413 [11]  Clause 9.3.1.2 |
| 31025 | >>>>>Protocol Cause | ELEMENT | FALSE | *Protocol Cause*  IE in TS 38.413  [11] Clause  9.3.1.2 |  |
| 31026 | >>>>Miscellaneous | STRUCTURE |  |  | *Misc* IE in TS  38.413 [11]  Clause 9.3.1.2 |
| 31027 | >>>>>Miscellaneous Cause | ELEMENT | FALSE | *Miscellaneous Cause* IE in TS  38.413 [11]  Clause 9.3.1.2 |  |
| 31031 | List of QoS Flows to be released | LIST |  |  | *QoS Flow To Release List* IE in TS 38.413  [11] Clause  9.3.4.2 |
| 31032 | >QoS flow item to be released | STRUCTURE |  |  | *QoS Flow Item*  IE in TS 38.413  [11] Clause  9.3.1.13 |
| 31033 | >>QoS Flow Identifier | ELEMENT | TRUE | *QoS Flow Identifier* IE in TS 38.413 [11]  Clause 9.3.1.51 |  |
| 31034 | >>QoS flow | STRUCTURE |  | 8.1.1.6 |  |
| 31035 | >>Cause | STRUCTURE |  |  | *Cause* IE in TS  38.413 [11]  Clause 9.3.1.2 |
| 31036 | >>>CHOICE *Cause group* | STRUCTURE |  |  | *Cause Group*  IE in TS 38.413  [11] Clause  9.3.1.2 |
| 31037 | >>>>Radio Network Layer | STRUCTURE |  |  | *Radio Network Layer* IE in TS  38.413 [11]  Clause 9.3.1.2 |
| 31038 | >>>>>Radio Network Layer Cause | ELEMENT |  | *Radio Network Layer Cause* IE in TS 38.413  [11] Clause  9.3.1.2 |  |
| 31039 | >>>>Transport Layer | STRUCTURE |  |  | *Transport Layer*  IE in TS 38.413  [11] Clause  9.3.1.2 |
| 31040 | >>>>>Transport Layer Cause | ELEMENT | FALSE | *Transport Layer Cause* IE in TS  37.483 [21]  Clause 9.3.1.2 |  |
| 31041 | >>>>NAS | STRUCTURE |  |  | *NAS* IE in TS  38.413 [11]  Clause 9.3.1.2 |
| 31042 | >>>>>NAS Cause | ELEMENT | FALSE | *NAS Cause* IE in TS 38.413 [11]  Clause 9.3.1.2 |  |
| 31043 | >>>>Protocol | STRUCTURE |  |  | *Protocol* IE in TS 38.413 [11]  Clause 9.3.1.2 |
| 31044 | >>>>>Protocol Cause | ELEMENT | FALSE | *Protocol Cause* |  |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
|  |  |  |  | IE in TS 38.413  [11] Clause  9.3.1.2 |  |
| 31045 | >>>>Miscellaneous | STRUCTURE |  |  | *Misc* IE in TS  38.413 [11]  Clause 9.3.1.2 |
| 31046 | >>>>>Miscellaneous Cause | ELEMENT | FALSE | *Miscellaneous Cause* IE in TS  38.413 [11]  Clause 9.3.1.2 |  |
| 31051 | MR-DC Usage Information | STRUCTURE |  |  | *MR-DC Usage Information* IE in TS 37.483  [21] Clause  9.3.1.63 |
| 31052 | >Secondary RAT Type | ELEMENT | FALSE | *Secondary RAT Type* IE in TS  37.483 [21]  Clause 9.3.1.63 |  |
| 31053 | >PDU Session Timed Report List | LIST |  |  | *Data Usage Report List* IE in TS 37.483  [21] Clause  9.3.1.64 |
| 31054 | >>MR-DC Data Usage Report Item | STRUCTURE |  |  | *Data Report Usage Item* IE in TS 37.483  [21] Clause  9.3.1.64 |
| 31055 | >>>Start Timestamp | ELEMENT | FALSE | *Start timestamp*  IE in TS 37.483  [21] Clause  9.3.1.64 |  |
| 31075 | >>>End Timestamp | ELEMENT | FALSE | *End timestamp*  IE in TS 37.483  [21] Clause  9.3.1.64 |  |
| 31056 | >>>Usage Count UL | ELEMENT | FALSE | *Usage count DL*  IE in TS 37.483  [21] Clause  9.3.1.64 |  |
| 31057 | >>>Usage Count DL | ELEMENT | FALSE | *Usage count DL*  IE in TS 37.483  [21] Clause  9.3.1.64 |  |
| 31061 | MR-DC Usage for QoS flows | LIST |  |  | *Data Usage Per QoS Flow List* IE in TS  37.483 [21]  Clause 9.3.1.63 |
| 31062 | >QoS Flow Item | STRUCTURE |  |  | *Data Usage Per QoS Flow Item* IE in TS  37.483 [21]  Clause 9.3.1.63 |
| 31063 | >>QoS flow Identifier | ELEMENT | TRUE | *QoS Flow Identifier* IE in TS 37.483 [21]  Clause 9.3.1.24 |  |
| 31064 | >>Secondary RAT Type | ELEMENT | FALSE | *Secondary RAT Type* IE in TS  37.483 [21] Sec  9.3.1.63 |  |
| 31065 | >>QoS Flow Timed Report List | LIST |  |  | *Data Usage Report List* IE in TS 37.483  [21] Clause |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
|  |  |  |  |  | 9.3.1.64 |
| 31066 | >>>MR-DC Data Usage Report Item | STRUCTURE |  |  | *Data Report Usage Item* IE in TS 37.483  [21] Clause  9.3.1.64 |
| 31067 | >>>>Start Timestamp | ELEMENT | FALSE | *Start timestamp*  IE in TS 37.483  [21] Clause  9.3.1.64 |  |
| 31068 | >>>>End timestamp | ELEMENT | FALSE | *End timestamp*  IE in TS 37.483  [21] Clause  9.3.1.64 |  |
| 31069 | >>>>Usage Count UL | ELEMENT | FALSE | *Usage count DL*  IE in TS 37.483  [21] Clause  9.3.1.64 |  |
| 31070 | >>>>Usage Count DL | ELEMENT | FALSE | *Usage count DL*  IE in TS 37.483  [21] Clause  9.3.1.64 |  |
| 31081 | Primary Cell ID | STRUCTURE |  |  | This is for the primary serving cell of the UE. The structuring of this parameter is based on *Target Cell Global ID* IE in TS 38.423 [15]  clause 9.2.3.25 |
| 31082 | >CHOICE Primary Cell | STRUCTURE |  |  | The primary cell could either be an NR primary cell or an LTE primary cell. The structuring is based on *Target Cell* IE in TS 38.423  [15] clause  9.2.3.25 |
| 31083 | >>NR SpCell | STRUCTURE |  | 8.1.1.1 | *NR Cell* IE in TS 38.423 [15]  clause 9.2.3.25 |
| 31084 | >>E-UTRA PCell | STRUCTURE |  | 8.1.1.2 | *E-UTRA Cell* IE in TS 38.423  [15] clause  9.2.3.25 |

</div>

###### PDU Session Resource Release

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **RAN**  **Parameter ID** | **RAN Parameter** | **RAN**  **Parameter Value Type** | **Key Flag** | **RAN Parameter Definition** | **Semantics Description** |
| 32001 | PDU Session ID | ELEMENT | TRUE | *PDU Session ID*  IE in TS 38.413  [11] Clause  9.3.1.50 |  |
| 32002 | PDU Session | STRUCTURE |  | 8.1.1.16 |  |
| 32011 | Cause | STRUCTURE |  |  | *Cause* IE in TS 38.413  [11] Clause  9.3.1.2 |
| 32012 | >CHOICE *Cause group* | STRUCTURE |  |  | *Cause Group*  IE in TS  38.413 [11]  Clause 9.3.1.2 |
| 32013 | >>Radio Network Layer | STRUCTURE |  |  | *Radio Network Layer* IE in TS  38.413 [11]  Clause 9.3.1.2 |
| 32014 | >>>Radio Network Layer Cause | ELEMENT | FALSE | *Radio Network Layer Cause* IE in TS 38.413 [11]  Clause 9.3.1.2 |  |
| 32015 | >>Transport Layer | STRUCTURE |  |  | *Transport Layer* IE in TS  38.413 [11]  Clause 9.3.1.2 |
| 32016 | >>>Transport Layer Cause | ELEMENT | FALSE | *Transport Layer Cause* IE in TS  37.483 [21]  Clause 9.3.1.2 |  |
| 32017 | >>NAS | STRUCTURE |  |  | *NAS* IE in TS  38.413 [11]  Clause 9.3.1.2 |
| 32018 | >>>NAS Cause | ELEMENT | FALSE | *NAS Cause* IE in TS 38.413 [11]  Clause 9.3.1.2 |  |
| 32019 | >>Protocol | STRUCTURE |  |  | *Protocol* IE in TS 38.413  [11] Clause  9.3.1.2 |
| 32020 | >>>Protocol Cause | ELEMENT | FALSE | *Protocol Cause*  IE in TS 38.413  [11] Clause  9.3.1.2 |  |
| 32021 | >>Miscellaneous | STRUCTURE |  |  | *Misc* IE in TS  38.413 [11]  Clause 9.3.1.2 |
| 32022 | >>>Miscellaneous Cause | ELEMENT | FALSE | *Miscellaneous Cause* IE in TS  38.413 [11]  Clause 9.3.1.2 |  |
| 32031 | MR-DC Usage Information | STRUCTURE |  |  | *MR-DC*  *Usage Information* IE in TS 37.483  [21] Clause  9.3.1.63 |
| 32032 | >Secondary RAT Type | ELEMENT | FALSE | *Secondary RAT Type* IE in TS |  |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- |
|  |  |  |  | 37.483 [21]  Clause 9.3.1.63 | |  |
| 32033 | >PDU Session Timed Report List | LIST |  |  | | *Data Usage Report List* IE in TS 37.483  [21] Clause  9.3.1.64 |
| 32034 | >>MR-DC Data Usage Report Item | STRUCTURE |  |  | | *Data Report Usage Item* IE in TS 37.483  [21] Clause  9.3.1.64 |
| 32035 | >>>Start Timestamp | ELEMENT | FALSE | *Start timestamp*  IE in TS 37.483  [21] Clause  9.3.1.64 | |  |
| 32036 | >>>End Timestamp | ELEMENT | FALSE | *End timestamp*  IE in TS 37.483  [21] Clause  9.3.1.64 | |  |
| 32037 | >>>Usage Count UL | ELEMENT | FALSE | *Usage count DL*  IE in TS 37.483  [21] Clause  9.3.1.64 |  | |
| 32038 | >>>Usage Count DL | ELEMENT | FALSE | *Usage count DL*  IE in TS 37.483  [21] Clause  9.3.1.64 |  | |
| 32041 | MR-DC Usage for QoS flows | LIST |  |  | *Data Usage Per QoS Flow List* IE in TS  37.483 [21]  Clause 9.3.1.63 | |
| 32042 | >QoS Flow Item | STRUCTURE |  |  | *Data Usage Per QoS Flow Item* IE in TS  37.483 [21]  Clause 9.3.1.63 | |
| 32043 | >>QoS flow Identifier | ELEMENT | TRUE | *QoS Flow Identifier* IE in TS 37.483 [21]  Sec 9.3.1.24 |  | |
| 32054 | >>QoS flow | STRUCTURE |  | 8.1.1.6 |  | |
| 32044 | >>Secondary RAT Type | ELEMENT | FALSE | *Secondary RAT Type* IE in TS  37.483 [21]  Clause 9.3.1.63 |  | |
| 32045 | >>QoS Flow Timed Report List | LIST |  |  | *Data Usage Report List* IE in TS 37.483  [21] Clause  9.3.1.64 | |
| 32046 | >>>MR-DC Data Usage Report Item | STRUCTURE |  |  | *Data Report Usage Item* IE in TS 37.483  [21] Clause  9.3.1.64 | |
| 32047 | >>>>Start Timestamp | ELEMENT | FALSE | *Start timestamp*  IE in TS 37.483  [21] Clause  9.3.1.64 |  | |
| 32048 | >>>>End timestamp | ELEMENT | FALSE | *End timestamp*  IE in TS 37.483  [21] Clause  9.3.1.64 |  | |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| 32049 | >>>>Usage Count UL | ELEMENT | FALSE | *Usage count DL*  IE in TS 37.483  [21] Clause  9.3.1.64 |  |
| 32050 | >>>>Usage Count DL | ELEMENT | FALSE | *Usage count DL*  IE in TS 37.483  [21] Clause  9.3.1.64 |  |
| 32061 | Primary Cell ID | STRUCTURE |  |  | This is for the primary serving cell of the UE. The structuring of this parameter is based on *Target Cell Global ID* IE in TS 38.423 [15]  clause 9.2.3.25 |
| 32062 | >CHOICE Primary Cell | STRUCTURE |  |  | The primary cell could either be an NR primary cell or an LTE primary cell.  The structuring is based on *Target Cell* IE in TS 38.423  [15] clause  9.2.3.25 |
| 32063 | >>NR SpCell | STRUCTURE |  | 8.1.1.1 | *NR Cell* IE in TS 38.423 [15]  clause 9.2.3.25 |
| 32064 | >>E-UTRA PCell | STRUCTURE |  | 8.1.1.2 | *E-UTRA Cell*  IE in TS  38.423 [15]  clause 9.2.3.25 |

</div>

### RAN Parameters for UE Identification

The following RAN Parameters are defined for identification of UEs.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **RAN**  **Parameter ID** | **RAN Parameter** | **RAN**  **Parameter Value Type** | **Key Flag** | **RAN Parameter Definition** | **Semantics Description** |
| 35001 | Cell Global ID | STRUCTURE |  |  | To identify UEs associated to a specific cell |
| 35002 | >NR CGI | STRUCTURE |  |  |  |
| 35003 | >>PLMN Identity | ELEMENT | FALSE | Defined in [4]  clause 6.2.3.1. |  |
| 35004 | >>NR Cell Identity | ELEMENT | FALSE | Defined in [4]  clause 6.2.3.7. |  |
| 35005 | >E-UTRA CGI | STRUCTURE |  |  |  |
| 35006 | >>PLMN Identity | ELEMENT | FALSE | Defined in [4]  clause 6.2.3.1. |  |
| 35007 | >>E-UTRA Cell  Identity | ELEMENT | FALSE | Defined in [4]  clause 6.2.3.11. |  |
| 35010 | S-NSSAI | STRUCTURE |  |  | To identify UEs associated to a specific S-NSSAI |
| 35011 | >SST | ELEMENT | FALSE | Defined in [4]  clause 6.2.3.12. |  |
| 35012 | >SD | ELEMENT | FALSE | Defined in [4]  clause 6.2.3.12. |  |
| 35020 | Group ID | STRUCTURE |  |  | To identify UEs associated to  a specific Group ID defined in  [4] clause 6.2.2.7. |
| 35021 | >IRFSP | ELEMENT | FALSE | Defined in [4]  clause 6.2.3.27. |  |
| 35022 | >SPID | ELEMENT | FALSE | Defined in [4]  clause 6.2.3.28. |  |
| 35030 | Explicit UE List ID | ELEMENT | FALSE | Defined in Clause 8.4.9.1. | To identify UEs associated to  a specific Explicit UE List ID defined in Clause 8.4.9.1. |
| 35040 | Core Control Plane ID | STRUCTURE |  |  | To identify UEs associated to a specific Core Control Plane  ID (GUAMI/GUMMEI) defined in [4] clause 6.2.2.8. |
| 35041 | >GUAMI | STRUCTURE |  |  |  |
| 35042 | >>PLMN Identity | ELEMENT | FALSE | Defined in [4]  clause 6.2.3.1. |  |
| 35043 | >>AMF Region ID | ELEMENT | FALSE | Defined in [4]  clause 6.2.3.17. |  |
| 35044 | >>AMF Set ID | ELEMENT | FALSE | Defined in [4]  clause 6.2.3.17. |  |
| 35045 | >>AMF Pointer | ELEMENT | FALSE | Defined in [4]  clause 6.2.3.17. |  |
| 35046 | >GUMMEI | STRUCTURE |  |  |  |
| 35047 | >>PLMN Identity | ELEMENT | FALSE | Defined in [4]  clause 6.2.3.1. |  |
| 35048 | >>MME Group ID | ELEMENT | FALSE | Defined in [4]  clause 6.2.3.18. |  |
| 35049 | >>MME Code | ELEMENT | FALSE | Defined in [4]  clause 6.2.3.18. |  |
| 35050 | QoS ID | STRUCTURE |  |  | To identify UEs associated to a specific QoS (QCI/5QI) defined in [4] clause 6.2.2.9. The criteria is for any  EPS/PDU sessions assigned to a UE. |
| 35051 | >5QI | ELEMENT | FALSE | Defined in [4]  clause 6.2.3.13. |  |
| 35052 | >QCI | ELEMENT | FALSE | Defined in [4]  clause 6.2.3.14. |  |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| 35061 | UE Throughput (DL) | ELEMENT | FALSE | INTEGER | To identify UEs based on Average Total DL Thoughtput (kbit/s) as defined in TS  28.552 [28] clause 5.1.1.3.1 |
| 35062 | UE Throughput (UL) | ELEMENT | FALSE | INTEGER | To identify UEs based on Average Total UL Thoughtput  (kbit/s) as defined in TS  28.552 [28] clause 5.1.1.3.3 |
| 35070 | Beam ID | ELEMENT | FALSE | Defined in [4]  clause 6.2.2.16 | The serving SSB "beam" of the UE |
| 35080 | Explicit UE List assignment list | LIST |  |  | To provide a list of Explicit UE List ID matching condition |
| 35081 | > Explicit UE list ID | ELEMENT | FALSE | Defined in clause 8.4.9.1. |  |
| 35090 | UE ID list | LIST |  |  | To provide a list of UE matching condition |
| 35091 | > UE ID | ELEMENT | FALSE | OCTET STRING | Defined in clause 9.3.10 |

</div>

### RAN Parameters for Cell Identification

The following RAN Parameters are defined for identification of Cells.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **RAN**  **Parameter ID** | **RAN Parameter** | **RAN**  **Parameter Value Type** | **Key Flag** | **RAN Parameter Definition** | **Semantics Description** |
| 36001 | PLMN Identity | ELEMENT | FALSE | Defined in [4]  clause 6.2.3.1. | To identify cells based on PLMN ID |
| 36010 | S-NSSAI | STRUCTURE |  |  | To identify cells based on supported S-NSSAI |
| 36011 | >SST | ELEMENT | FALSE | Defined in [4]  clause 6.2.3.12. |  |
| 36012 | >SD | ELEMENT | FALSE | Defined in [4]  clause 6.2.3.12. |  |

</div>

### UE Events

The following UE Event IDs are defined.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **UE**  **Event ID** | **UE Event Name** | **Message Event in *E2SM-RC Event Trigger Definition Format 1* IE** | **If used in *E2SM-RC Event Trigger Definition Format 1* IE** | **If used in *E2SM-RC Indication Message Format 1* IE** |
| 1 | Carrier Aggregation Initiated | "F1" Network Interface message of "UE Context Setup Request". | Event triggering is only when this message event is by initiating carrier  aggregation. | Indicates that this message event happened due to carrier aggregation. |
| 2 | A3 Measurement Report Reception | "RRC" message of "Measurement Report". | Event triggering is only when this message event  is by A3 event. | Indicates that this message event happened due to A3  event. |

</div>

## RAN parameters for REPORT services

### RAN Parameters for Report Service Style 1

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **RAN Parameter ID** | **RAN Parameter Name** | **RAN**  **Parameter Value Type** | **Key Flag** | **RAN Parameter Definition** | **Semantics Description** |
| 1 | UE Event ID | ELEMENT | FALSE | INTEGER | This shall be used to report the related UE Event ID described in  Clause 8.1.5. |
| 2 | NI Message | ELEMENT | FALSE | OCTET STRING | This shall be used to report Network  Interface Message |
| 3 | RRC Message | ELEMENT | FALSE | OCTET STRING | This shall be used to report RRC Message |
| 4 | UE ID | ELEMENT | FALSE | OCTET STRING | Defined in Clause  9.3.10. This shall be used to report UE ID when the message event configured by the Event Trigger Style 1 is set to "RRC Setup Complete message" (UE attach), or "Xn/NG Handover Request" or "F1 UE Context Setup Request" (Intra  gNB HandOver). |
| 5 | Old AMF UE NGAP ID | ELEMENT | FALSE | Defined in [4]  clause 6.2.3.16. | This shall be used to report Old AMF UE NGAP IDwhen the message event configured by Event Trigger Style 1 is set to "Xn Handover Request" and AMF UE NGAP ID is  changed during HO. |
| 6 | Cell Global ID | ELEMENT | FALSE | OCTET STRING | Defined in Clause 9.3.36  This shall be used to report the SpCell ID where the UE  belongs to during reporting. |
| 7 | Beam ID | ELEMENT | FALSE | Defined in [4]  clause 6.2.2.16 | This shall be used to report source beam (last serving beam in the source cell) ID when the message configured by the Event Trigger Style 1 is set to "Xn/X2 Failure Indication" or "Xn/X2 Handover Report" |
| 8 | UE Mobility Failure Cause | ELEMENT | FALSE | ENUMERATED  (HO too early, HO too late, HO wrong cell, HO ping-pong, ...) | This shall be used to report Mobility failure root cause when the message configured by the Event Trigger Style 1 is set to "Xn/X2 Failure Indication" or "Xn/X2 Handover Report". |

</div>

In addition, this report style may use RAN parameters defined in Clause 8.1.1.

### RAN Parameters for Report Service Style 2

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **RAN**  **Parameter ID** | **RAN Parameter Name** | **RAN**  **Parameter Value Type** | **Key Flag** | **RAN Parameter Definition** | **Semantics Description** |
| 1 | Current UE ID | ELEMENT | FALSE | OCTET STRING | Defined in Clause  9.3.10. This shall be used to report UE ID defined at the time of Call Process  Outcome. |
| 2 | Old UE ID | ELEMENT | FALSE | OCTET STRING | Defined in Clause  9.3.10. This shall be used to report the previously assigned UE ID prior to the call  process. |
| 3 | Current RRC State | ELEMENT | FALSE | Defined in Clause 9.3.37. | This shall be used to report the RRC state at the time of Call  Process Outcome. |
| 4 | Old RRC State | ELEMENT | FALSE | Defined in Clause 9.3.37. | This shall be used to report the previous RRC state prior to the  Call Process Outcome. |
| 5 | UE Context Information Container | ELEMENT | FALSE | OCTET STRING | The RETRIEVE UE CONTEXT RESPONSE  message content in TS 38.423 [17]  clause 9.1.1.9. This shall be used to report UE Context  information. |
| 6 | Cell Global ID | ELEMENT | FALSE | OCTET STRING | Defined in Clause 9.3.36  This shall be used to report the SpCell ID where the UE  belongs to during reporting. |
| 7 | UE Information | Defined in Clause 8.1.1.17 | | | |

</div>

### RAN Parameters for Report Service Style 3

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **RAN**  **Parameter ID** | **RAN Parameter Name** | **Semantics Description** |
| 1 | Cell Context Information | *Served Cell Information* IE in TS 38.473 [19] clause  9.3.1.10. This shall be used to report Cell Context information. |
| 2 | Cell Deleted | This shall be used to report deleted cells. The value shall be set to "True" |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
|  |  | for the deleted Cell Global ID. |
| 3 | Neighbour Relation Table | This shall be used to report neighbour relation information of the serving  cells. |
| 4 | MIB | *MIB* IE in TS 38.331 [22]  Clause 6.2.2. This shall be used to report MIB of the  serving cell |
| 5 | Serving Cell Config Common | This shall be used to report common parameters of the serving cell contained in *ServingCellConfigCommon* IE in TS 38.331 [22]  Clause 6.3.2. |

</div>

### RAN Parameters for Report Service Style 4

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- |
| **RAN Parameter Category** | **RAN**  **Parameter ID** | **RAN**  **Parameter Name** | **RAN**  **Parameter**  **Value Type** | **Key Flag** | **RAN**  **Parameter Definition** | **Semantics Description** |
| PDCP UE Variables | Defined in Clause 8.1.1.8 L2 Bearer State Variables for PDCP State Variables | | | | | |
| RLC UM UE Variables | Defined in Clause 8.1.1.8 L2 Bearer State Variables for RLC UM State Variables | | | | | |
| RLC AM UE Variables | Defined in Clause 8.1.1.8 L2 Bearer State Variables for RLC AM State Variables | | | | | |
| MAC Variables | 100 | UL MAC CE | ELEMENT | FALSE | OCTET STRING | This shall be used to report MAC CE Structure as per TS 38.321 [26]  clause 6.1.3 |
| 101 | DL MAC  CE | ELEMENT | FALSE | OCTET  STRING |
| 102 | DL Buffer Occupancy | ELEMENT | FALSE | INTEGER | DL Buffer Occupancy at RLC. Expressed as absolute values in terms of Number of Kilo Bytes  (KB) |
| RRC State | 201 | Current RRC State | ELEMENT | FALSE | Defined in Clause 9.3.37. | This shall be used to report the RRC state before RRC state  change. |
| 202 | RRC State  Changed To | ELEMENT | FALSE | Defined in  Clause 9.3.37. | This shall be used to  report new RRC state upon RRC stage change |
| 203 | RRC  Message | ELEMENT | FALSE | OCTET STRING | This shall be used to report the RRC message  which triggered RRC state change |
| UE Identifier Change | 300 | Old UE ID | ELEMENT | FALSE | OCTET STRING | Defined in Clause 9.3.10. This shall be used to report the old UE ID upon UE ID change  E2 Node shall report any available old NI or RRC interface UE identifier  within the UEID structure. |
| 301 | Current UE ID | ELEMENT | FALSE | OCTET STRING | Defined in Clause 9.3.10. This shall be used to report the UE ID available at the time of  reporting. |
| 302 | NI  Message | ELEMENT | FALSE | OCTET STRING | This shall be used to report the Network Interface message which triggered the UE ID  change . |
| Cell Global ID | 400 | Cell Global ID | ELEMENT | FALSE | OCTET STRING | Defined in Clause 9.3.36. This shall be used to report the SpCell ID  where the UE belongs to during reporting. |
| UE Context Info Change | Defined in Clause 8.1.1.17 UE Context Information related RAN parameters | | | | | |

</div>

## RAN parameters for INSERT services

### Approach

The approach for RAN parameters associated with Insert service is provided in Clause 8.0.

### Radio Bearer Control request

#### DRB QoS Configuration request

The RAN parameters associated with this Insert Indication are listed in Clause 8.4.2.1.

#### QoS flow mapping configuration request

The RAN parameters associated with this Insert Indication are listed in Clause 8.4.2.2.

#### Logical channel configuration request

The RAN parameters associated with this Insert Indication are listed in Clause 8.4.2.3.

#### Radio Bearer Admission Control request

The RAN parameters associated with this Insert Indication are listed in Clause 8.4.2.4.

#### DRB Termination Control request

The RAN parameters associated with this Insert Indication are listed in Clause 8.4.2.5.

#### DRB Split Ratio Control request

The RAN parameters associated with this Insert Indication are listed in Clause 8.4.2.6.

#### PDCP Duplication Control request

The RAN parameters associated with this Insert Indication are listed in Clause 8.4.2.7.

### Radio Resource Allocation Control request

#### DRX Parameter Configuration request

The RAN parameters associated with this Insert Indication are listed in Clause 8.4.3.1.

#### Scheduling Request Parameter Configuration request

The RAN parameters associated with this Insert Indication are listed in Clause 8.4.3.2.

#### Semi-Persistent Scheduling Parameter Configuration request

The RAN parameters associated with this Insert Indication are listed in Clause 8.4.3.3.

#### Configured Grant Configuration request

The RAN parameters associated with this Insert Indication are listed in Clause 8.4.3.4.

#### CQI table configuration request

The RAN parameters associated with this Insert Indication are listed in Clause 8.4.3.5.

#### Slice-level PRB quota allocation request

The RAN parameters associated with this Insert Indication are listed in Clause 8.4.3.6.

### Connected Mode Mobility Control Request

#### Handover Control request

The RAN parameters associated with this Insert Indication are listed in Clause 8.4.4.1.

#### Conditional Handover Control request

The RAN parameters associated with this Insert Indication are listed in Clause 8.4.4.2.

#### DAPS Handover Control request

The RAN parameters associated with this Insert Indication are listed in Clause 8.4.4.3.

### Radio Access Control request

#### UE admission control request

The RAN parameters associated with this Insert Indication are listed in Clause 8.4.5.1.

#### RACH backoff control request

The RAN parameters associated with this Insert Indication are listed in Clause 8.4.5.2.

#### Access barring control request

The RAN parameters associated with this Insert Indication are listed in Clause 8.4.5.3.

#### RRC Connection Release request

The RAN parameters associated with this Insert Indication are listed in Clause 8.4.5.4.

#### RRC Connection Reject request

The RAN parameters associated with this Insert Indication are listed in Clause 8.4.5.5.

### Dual Connectivity Control request

#### DC Secondary Node Addition Control request

The RAN parameters associated with this Insert Indication are listed in Clause 8.4.6.1.

#### DC Secondary Node Modification Control request

The RAN parameters associated with this Insert Indication are listed in Clause 8.4.6.2.

#### PSCell Change cell for Secondary Cell Group Control request

The RAN parameters associated with this Insert Indication are listed in Clause 8.4.6.3.

#### DC Secondary Node Change Control request

The RAN parameters associated with this Insert Indication are listed in Clause 8.4.6.4.

### Carrier Aggregation Control request

#### Secondary cell Addition control request

The RAN parameters associated with this Insert Indication are listed in Clause 8.4.7.1.

#### Secondary cell Modification control request

The RAN parameters associated with this Insert Indication are listed in Clause 8.4.7.2.

### Idle Mode Mobility Control request

#### Cell reselection priority control

The RAN parameters associated with this Insert Indication are listed in Clause 8.4.8.1.

### Common RAN Parameters for INSERT Service styles

The table below shows the set of RAN parameters that are common for all INSERT service styles.

#### UE Context Information

The associated RAN parameters are given in Clause 8.1.1.17.

#### E2 Node Context Information

The associated RAN parameters are given in Clause 8.1.1.11.

### Indication Semantics Description for interpretation by the RIC

The E2 node requests the near-RT RIC for the following services as far as the radio bearer Control request is concerned.

1. In the *RIC Indication Header* IE, the E2 node indicates the *Insert Indication* ID, that is associated with the *Insert Service Style* ID for the radio bearer control request, along with the UE ID, so as to enable the RIC to interpret which Insert Indication service pertaining to which UE is being requested by the E2 node.
2. In the *RIC Indication Message* IE, the E2 node indicates the list of the RAN parameters in the Indication message that it wants to be controlled by the near-RT RIC. If the E2 node does not provide values for these parameters in the *RIC Indication message* IE, then the RIC would set the values for these parameters in the control action sent via the *RIC Control Request* message, along with its decision to accept/deny the request raised by the E2 node (indicated in the *RIC Indication Header* IE). If the RAN parameter indicated by the E2 node is an ELEMENT, the RIC would set the value for the parameter in its *RIC Control Request* message. If the indicated RAN parameter is a STRUCTURE but if the E2 node does not list any constituent RAN parameter of the STRUCTURE, then the RIC would set the values for all the constituent RAN parameters of the STRUCTURE. If the parameter is a LIST, then:
   1. If the E2 node also indicates the *Key* RAN parameter pertaining to the itemized STRUCTURE in the LIST, then the RIC would set the values for all constituent RAN parameters within the structure, pointed by the key.
   2. If the E2 node does not indicate the *Key* RAN parameter pertaining to the itemized STRUCTURE in the LIST, then the RIC would set the values for all constituent RAN parameters within each itemized STRUCTURE, whose *key* RAN parameter is identified by the RIC.
3. If the E2 node provides values for these parameters in the *RIC Indication message* IE, then the RIC would set the values only for those indicated parameters for which it would choose to replace the values already set by the E2 node. It also communicates its decision to accept/deny the request raised by the E2 node for the DRB.
4. Any RAN parameter identified as a *key* shall always carry a value set by the E2 node, if the E2 node expects the RIC to control the parameters pertaining to the STRUCTURE pointed by the E2 node. The value of this *key* RAN parameter is an index that points to the entire STRUCTURE, and hence the value of the *key* RAN parameter cannot be modified by the near-RT RIC. Without indicating the value for the *key* RAN parameter, the RIC would not control the parameters associated with the structure indexed by the *key*.

Note that the RIC can only set the values for those RAN parameters identified as ELEMENT when they are indicated by the E2 node; however, these RAN parameters can be contained with a STRUCTURE or within an itemized STRUCTURE in a LIST. Also, if the *DRB ID* key parameter is not present for any DRB in the *RIC Indication Message* IE, then the RIC would discard the *RIC Indication* message. And the E2 node would have to set values based on its default radio resource management policies upon time out, and continue with the ongoing call processing. Hence, indicating the *DRB ID* IE for the DRB(s) is a pre-requisite for the RIC to act on the Insert indication via its *RIC Control Request* message.

## RAN Parameters for Control Actions

### Approach

The approach for RAN parameters associated with Control service is provided in Clause 8.0.

In the case of CONTROL action for UE group-based control (using E2SM-RC *Control Header Format* 3 and E2SM- RC *Control Message Format* 3), since the control action can be applied as a whole on multiple UEs constituting the group, the RAN parameters, whose *key flag* value is set to "true", shall not be used here, since they are only used for UE-specific entities. Instead, as provided in E2SM-RC *Control Message Format 3*, the *Entity Filter Definition* IE (from E2SM-RC *Control Message Format* 3 in Clause 9.2.1.7.3) is used to define the entity filter and specify the corresponding set of filtering conditions towards determining the relevant entities (such as DRBs, QoS flows, etc.) pertaining to the UE group for which the control action is applicable. Each entity filter is identified by the *Entity Filter ID* IE. There may be more than one entity for the same UE group, whose associated RAN parameters can be controlled by the RIC using a single RIC CONTROL REQUEST message with the same *Control Action ID* IE. The control parameters, specific to a given set of entities, corresponding to the *Entity Filter ID* IE, are assigned values by the RIC. The list of all entity filters for the UE group are mentioned in *List of entity filters* IE. The control parameters are identified by the *List of RAN control Parameters for the matching entities* IE in E2SM-RC *Control Message Format* 3 (in Clause 9.2.1.7.3) and correspond to each *Entity Filter ID* IE. The control action is then applied (based on the approach in Clause 8.0) individually on all the applicable entities (e.g., all the applicable DRBs) pertaining to the UE group, subject to the filtering criteria.

For e.g., if PDCP duplication needs to be activated on all DRBs corresponding to 5QI 82 for the URLLC slice (SST 2) and if the number of duplicate PDCP paths needs to be set to 3, then the *Entity Filter Definition* IE in E2SM-RC Control Message Format 3 (Sec 9.2.1.7.3) can be used to specify conditions that can match all DRBs pertaining to the 5QI of 82, and the *List of RAN control parameters for the matching entities* IE can be used to indicate the PDCP duplication configuration parameters, which shall later be applied by the E2 node individually on all the applicable DRBs across the corresponding UEs of the URLLC slice that constitute the UE group.

The UE group control action may also be entity-agnostic. That is, the control action may not pertain to specific entities of the UEs, but may apply to the UEs as a whole. The *List of entity filters* IE is therefore optional.

As an example, if A3 offset needs to be set to 4 dB for all UEs with NR-CGI "xyz" as their primary SpCell, the control action in this case is entity-agnostic, as the control action shall be applied on all UEs with NR-CG "xyz" as their SpCell, irrespective of their entities.

Thus, if the control action is entity agnostic, then the *List of entity filters* IE is not present and the *List of RAN control parameters* IE is used to indicate the control parameters for the control action applied on the UE group.

In the *E2SM-RC Control Header Format 3* IE shown in Clause 9.2.1.6.3, the *UE Group ID* IE and the *UE Group Definition* IE are used to uniquely identify and define the logical grouping of the UEs based on the list of RAN parameters from Clause 8.1.3, respectively. The *RIC Style Type* IE is used to refer to the RIC Control Service Style type and the *Control Action ID* IE is used to refer to a given control action within the RIC Control Service Style type.

### Radio Bearer Control

#### DRB QoS Configuration

Upon receiving the *RIC Control Request* message, the E2 node shall invoke procedures related to DRB QoS Configuration, such as *Bearer Context Management*, *UE Context Management*, *RRC Message Transfer*, etc. and include the IEs corresponding to one or more of parameters described below in the related interface messages. If the *DRB ID* is missing in the *RIC Control Request* message, the E2 node will send a *RIC Control Failure*.

In the case of UE group-based control action, where the relevant entities include more than one DRB subject to QoS configuration, the above procedures are individually invoked for each applicable DRB pertaining to each individual UE of the group.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **RAN**  **Parameter ID** | **RAN Parameter** | **RAN**  **Parameter Value Type** | **Key Flag** | **RAN Parameter Definition** | **Semantics Description** |
| 1 | DRB ID | ELEMENT | TRUE | *DRB ID* IE in TS 37.483  [21] Clause 9.3.1.16 |  |
| 2 | 5QI | ELEMENT | FALSE | *5QI* IE in TS 37.483 [21]  Clause 9.3.1.27 or TS  37.483 [21] Clause  9.3.1.28 |  |
| 3 | Packet Delay Budget | ELEMENT | FALSE | *Packet Delay Budget* IE in TS 37.483 [21] Clause  9.3.1.47 |  |
| 4 | Packet Error Rate | STRUCTURE |  |  | *Packet Error Rate* IE in TS 37.483 [21]  Clause 9.3.1.48 |
| 5 | >Scalar factor | ELEMENT | FALSE | *Scalar* IE in TS 37.483  [21] Clause 9.3.1.48 |  |
| 6 | >Exponent factor | ELEMENT | FALSE | *Exponent* IE in TS 37.483  [21] Clause 9.3.1.48 |  |
| 7 | NG-RAN DRB  Allocation and Retention Priority | STRUCTURE |  |  | *NG-RAN Allocation and Retention Priority* IE in TS 37.483 [21]  Clause 9.3.1.29 |
| 8 | >Priority Level | ELEMENT | FALSE | *Priority Level* IE in TS  37.483 [21] Clause  9.3.1.29 |  |
| 9 | >Pre-emption Capability | ELEMENT | FALSE | *Pre-emption Capability* IE in TS 37.483 [21] Clause  9.3.1.29 |  |
| 10 | >Pre-emption Vulnerability | ELEMENT | FALSE | *Pre-emption Vulnerability*  IE in TS 37.483 [21]  Clause 9.3.1.29 |  |
| 11 | Priority Level of the mapped QoS flows | ELEMENT | FALSE | *Priority Level* IE in TS  37.483 [21] Clause  9.3.1.51 |  |
| 12 | QoS parameters for GBR flows in NG- RAN Bearer | STRUCTURE |  |  | *GBR QoS Flow Information* IE in TS  37.483 [21] Clause  9.3.1.30 |
| 13 | >Maximum Flow Bit Rate Downlink | ELEMENT | FALSE | *Bit Rate* IE in TS 37.483  [21] Clause 9.3.1.30 |  |
| 14 | >Guaranteed Flow Bit Rate Downlink | ELEMENT | FALSE | *Bit Rate* IE in TS 37.483  [21] Clause 9.3.1.30 |  |
| 15 | >Maximum Packet Loss Rate  Downlink | ELEMENT | FALSE | *Packet Loss Rate* IE in TS  37.483 [21] Clause  9.3.1.30 |  |
| 16 | >Maximum Flow Bit Rate Uplink | ELEMENT | FALSE | *Bit Rate* IE in TS 37.483  [21] Clause 9.3.1.30 |  |
| 17 | >Guaranteed Flow Bit Rate Uplink | ELEMENT | FALSE | *Bit Rate* IE in TS 37.483  [21] Clause 9.3.1.30 |  |
| 18 | >Maximum Packet Loss Rate Uplink | ELEMENT | FALSE | *Packet Loss Rate* IE in TS  37.483 [21] Clause  9.3.1.30 |  |
| 19 | QoS Monitoring Enable Request | ELEMENT | FALSE | *QoS Monitoring Request*  IE in TS 37.483 [21]  Clause 9.3.1.26 |  |
| 20 | QoS Monitoring Reporting Frequency | ELEMENT | FALSE | *QoS Monitoring Reporting Frequency* IE in TS  37.483 [21] Clause  9.3.1.26 |  |
| 21 | QoS Monitoring Disabled | ELEMENT | FALSE | *QoS Monitoring Disabled*  IE in TS 37.483 [21]  Clause 9.3.1.26 |  |
| 22 | Reflective QoS Mapping | ELEMENT | FALSE | *RDI* IE in TS 37.483 [21]  Clause 9.3.1.26 |  |

</div>

#### QoS flow mapping configuration

Upon receiving the *RIC Control Request* message, the E2 node shall invoke procedures related to QoS flow mapping Configuration, such as *Bearer Context Management*, *UE Context Management*, *RRC Message Transfer*, etc. and include the IEs corresponding to one or more of parameters described below in the related interface messages. If the *DRB ID* is missing in the *RIC Control Request* message, the E2 node will send a *RIC Control Failure*.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **RAN**  **Parameter ID** | **RAN Parameter** | **RAN**  **Parameter Value Type** | **Key Flag** | **RAN Parameter Definition** | **Semantics Description** |
| 1 | DRB ID | ELEMENT | TRUE | *DRB ID* IE in TS 37.483  [21] Clause 9.3.1.16 |  |
| 2 | List of QoS Flows to be modified in DRB | LIST |  |  | *Flow Mapping Information* IE in TS  37.483 [21] Clause  9.3.1.26 |
| 3 | >QoS Flow Item | STRUCTURE |  |  | *QoS Flow Item* IE in TS 37.483 [21] Clause  9.3.1.12 |
| 4 | >>QoS Flow Identifier | ELEMENT | TRUE | *QoS Flow Identifier* IE in TS 37.483 [21] Clause  9.3.1.24 |  |
| 5 | >>QoS Flow Mapping Indication | ELEMENT | FALSE | *QoS Flow Mapping Indication* IE in TS 37.483  [21] Clause 9.3.1.60 |  |

</div>

#### Logical channel configuration

Upon receiving the *RIC Control Request* message, the E2 node shall invoke procedures related to Logical channel Configuration, such as *RRC Message Transfer*, etc. and include the IEs corresponding to one or more of parameters described below in the related RRC messages. If the *DRB ID* is missing in the *RIC Control Request* message, the E2 node will send a *RIC Control Failure*.

In the case of UE group-based control action, where the relevant entities include more than one DRB subject to LCID configuration, the above procedures are individually invoked for each applicable DRB pertaining to each individual UE of the group.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **RAN**  **Parameter ID** | **RAN Parameter** | **RAN**  **Parameter Value Type** | **Key Flag** | **RAN Parameter Definition** | **Semantics Description** |
| 1 | DRB ID | ELEMENT | TRUE | *DRB-Identity* IE in TS 38.331 [22]  Clause 6 |  |
| 2 | Logical Channel ID | ELEMENT | FALSE | *LogicalChannelIdent ity* IE in TS 38.331  [22] Clause 6 |  |
| 3 | List of cell groups to be added | LIST |  |  | *Cell Group To Add* IE in TS 37.483 [21] Clause  9.3.3.11 |
| 4 | >Cell group item | STRUCTURE |  |  | *Cell Group Item* IE in TS  37.483 [21] Clause  9.3.1.11 |
| 5 | >>Cell Group ID | ELEMENT | TRUE | *Cell Group ID* IE in TS 37.483 [21]  Clause 9.3.1.11 |  |
| 6 | >>UL  Configuration | ELEMENT | FALSE | *UL Configuration* IE in TS 37.483 [21]  Clause 9.3.1.33 |  |
| 7 | List of cell groups to be modified | LIST |  |  | *Cell Group To Modify* IE in TS 37.483 [21] Clause  9.3.1.11 |
| 8 | >Cell group item | STRUCTURE |  |  | *Cell Group Item* IE in TS  37.483 [21] Clause  9.3.1.11 |
| 9 | >>Cell Group ID | ELEMENT | TRUE | *Cell Group ID* IE in TS 37.483 [21]  Clause 9.3.1.11 |  |
| 10 | >>UL  Configuration | ELEMENT | FALSE | *UL Configuration* IE in TS 37.483 [21]  Clause 9.3.1.11 |  |
| 11 | List of cell groups to be removed | LIST |  |  | *Cell Group To Remove* IE in TS 37.483 [21] Clause  9.3.1.11 |
| 12 | >Cell group item | STRUCTURE |  |  | *Cell Group Item* IE in TS  37.483 [21] Clause  9.3.1.11 |
| 13 | >>Cell Group ID | ELEMENT | FALSE | *Cell Group ID* IE in TS 37.483 [21]  Clause 9.3.1.11 |  |
| 14 | Uplink Specific Parameters | STRUCTURE |  |  | *ul-SpecificParameters* IE in TS 38.331 [22] Clause  6 |
| 15 | >Priority | ELEMENT | FALSE | *priority* IE in TS  38.331 [22] Clause  6 |  |
| 16 | >Prioritized Bit rate | ELEMENT | FALSE | *prioritisedBitRate* IE in TS 38.331 [22]  Clause 6 |  |
| 17 | >Bucket Size Duration | ELEMENT | FALSE | *bucketSizeDuration*  IE in TS 38.331 [22]  Clause 6 |  |
| 18 | >List of Allowed Serving Cells | LIST |  |  | *allowedServingCells* IE in TS 38.331 [22] Clause 6 |
| 19 | >>Allowed Serving Cell Item | STRUCTURE |  |  |  |
| 20 | >>>Serving Cell Index | ELEMENT | FALSE | *ServCellIndex* IE in TS 38.331 [22]  Clause 6 |  |
| 21 | >List of Allowed SCS Configuration | LIST |  |  | *allowedSCS-List* IE in TS  38.331 [22] Clause 6 |
| 22 | >>Allowed SCS Configuration Item | STRUCTURE |  |  |  |
| 23 | >>Subcarrier Spacing | ELEMENT | FALSE | *SubCarrierSpacing*  IE in TS 38.331 [22] |  |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
|  | Configuration |  |  | Clause 6 |  |
| 24 | >Maximum PUSCH Duration | ELEMENT | FALSE | *maxPUSCH- Duration* IE in TS  38.331 [22] Sec 6 |  |
| 25 | >Configured Grant Type 1 Allowed | ELEMENT | FALSE | *configuredGrantTyp eAllowed* IE in TS  38.331 [22] Clause  6 |  |
| 26 | >Logical Channel SR - Mask | ELEMENT | FALSE | *logicalChannelSR- Mask* IE in TS  38.331 [22] Clause  6 |  |
| 27 | >Logical Channel SR - Delay Timer Applied | ELEMENT | FALSE | *logicalChannelSR- DelayTimerApplied* IE in TS 38.331 [22]  Sec 6 |  |
| 28 | >Bit Rate Query Prohibit Timer | ELEMENT | FALSE | *bitRateQueryProhibi tTimer* IE in TS  38.331 [22] Clause  6 |  |
| 29 | >RLC re-  establishment | ELEMENT | FALSE | *reestablishRLC* IE in TS 38.331 [22] |  |
| 30 | >Logical Channel Group | ELEMENT | FALSE | *logicalChannelGrou p* IE in TS 38.331 [22] |  |

</div>

#### Radio Bearer Admission Control

Upon receiving the *RIC Control Request* message, the E2 node shall invoke procedures related to Radio Bearer Admission Control, such as *Bearer Context Management*, *UE Context Management*, *RRC Message Transfer*, etc. and include the IEs corresponding to one or more of parameters described below in the related interface messages. If the *DRB ID* is missing in the *RIC Control Request* message, the E2 node will send a *RIC Control Failure*.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **RAN**  **Parameter ID** | **RAN Parameter** | **RAN**  **Parameter Value Type** | **Key Flag** | **RAN Parameter Definition** | **Semantics description** |
| 1 | DRB Identity | ELEMENT | TRUE | *DRB ID* IE in TS  37.483 [21] Clause  9.3.1.16 |  |
| 2 | List of cell groups to be added | LIST |  |  | *Cell Group To Add* IE in TS  37.483 [21] Clause 9.3.3.11 |
| 3 | >Cell group item | STRUCTURE |  |  | *Cell Group Item* IE in TS  37.483 [21] Clause 9.3.1.11 |
| 4 | >>Cell Group ID | ELEMENT | TRUE | *Cell Group ID* IE in TS 37.483 [21]  Clause 9.3.1.11 |  |
| 5 | SDAP  Configuration | STRUCTURE |  |  | *SDAP Configuration* IE in TS 37.483 [21] Clause  9.3.1.39 |
| 6 | >PDU Session ID | ELEMENT | FALSE | *PDU-SessionID* IE in TS 38.331 [22] Sec 6 |  |
| 7 | >Default DRB | ELEMENT | FALSE | *Default DRB* IE in TS  37.483 [21] Clause  9.3.1.39 |  |
| 8 | PDCP  Configuration | STRUCTURE |  |  | *PDCP Configuration* IE in TS 37.483 [21] Clause  9.3.1.38 |
| 9 | >RLC mode | ELEMENT | FALSE | *RLC mode* IE in TS  37.483 [21] Clause  9.3.1.38 |  |
| 10 | >PDCP Duplication | ELEMENT | FALSE | *PDCP Duplication* IE in TS 37.483 [21]  Clause 9.3.1.38 |  |
| 11 | >UL Data Split Threshold | ELEMENT | FALSE | *UL Data Split Threshold* IE in TS  37.483 [21] Clause  9.3.1.43 |  |
| 12 | >PDCP Re-  establishment | ELEMENT | FALSE | *PDCP Re-*  *establishment* IE in TS 37.483 [21]  Clause 9.3.1.38 |  |
| 13 | >PDCP Data Recovery | ELEMENT | FALSE | *PDCP Data Recovery* IE in TS  37.483 [21] Clause  9.3.1.38 |  |
| 14 | >Out-of-Order Delivery | ELEMENT | FALSE | *Out of Order Delivery*  IE in TS 37.483 [21]  Clause 9.3.1.38 |  |
| 15 | >PDCP Status Report Indication | ELEMENT | FALSE | *PDCP Status Report Indication* IE in TS  37.483 [21] Clause  9.3.1.38 |  |
| 16 | >Number of PDCP duplication | ELEMENT | FALSE | *Additional PDCP duplication Information* IE in TS  37.483 [21] Clause  9.3.1.38 |  |
| 17 | >UL More than one RLC | STRUCTURE |  |  | *moreThanOneRLC* IE in TS  38.331 [22] Clause 6 |
| 18 | >>Primary Path | STRUCTURE |  |  | *primaryPath* IE in TS 38.331  [22] Clause 6 |
| 19 | >>>Cell Group ID | ELEMENT | TRUE | *cellGroup* IE in TS  38.331 [22] Clause 6 |  |
| 20 | >>>Logical Channel ID | ELEMENT | FALSE | *logicalChannel* IE in TS 38.331 [22] Sec 6 |  |
| 21 | >UL More than two RLC | STRUCTURE |  |  | *moreThanTwoRLC-DRB-r16*  IE in TS 38.331 [22] Clause  6 |
| 22 | >>Split Secondary Path | ELEMENT | FALSE | *splitSecondaryPath*  IE in TS 38.331 [22] |  |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
|  |  |  |  | Sec 6 |  |
| 23 | >>Duplication State | ELEMENT | FALSE | *duplicationState* IE in TS 38.331 [22] Sec 6 |  |
| 17 | >DL More than one RLC | STRUCTURE |  |  | *moreThanOneRLC* IE in TS  38.331 [22] Clause 6 |
| 18 | >>Primary Path | STRUCTURE |  |  | *primaryPath* IE in TS 38.331  [22] Clause 6 |
| 19 | >>>Cell Group ID | ELEMENT | TRUE | *cellGroup* IE in TS  38.331 [22] Clause 6 |  |
| 20 | >>>Logical Channel ID | ELEMENT | FALSE | *logicalChannel* IE in TS 38.331 [22] Sec 6 |  |
| 21 | >DL More than two RLC | STRUCTURE |  |  | *moreThanTwoRLC-DRB-r16*  IE in TS 38.331 [22] Clause  6 |
| 22 | >>Split Secondary Path | ELEMENT | FALSE | *splitSecondaryPath*  IE in TS 38.331 [22]  Sec 6 |  |
| 23 | >>Duplication State | ELEMENT | FALSE | *duplicationState* IE in TS 38.331 [22] Sec 6 |  |

</div>

#### DRB Termination Control

Upon receiving the *RIC Control Request* message, the E2 node shall invoke procedures related to DRB Termination change, such as *Dual Connectivity Secondary Node Modification (MN/SN initiated)*, *UE Context Management*, *RRC Message Transfer*, etc. and include the IEs corresponding to one or more of parameters described below in the related interface messages. If the *DRB ID* is missing in the *RIC Control Request* message, the E2 node will send a *RIC Control Failure*.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **RAN**  **Parameter ID** | **RAN Parameter** | **RAN**  **Parameter Value Type** | **Key Param** | **RAN Parameter definition** | **Semantics Description** |
| 1 | List of DRBs to be modified to SN-  Termination | LIST |  |  | *DRBs To Be Modified* IE in TS  38.423 [15] Clause 9.2.1.11 |
| 2 | >DRB Item to be modified to SN- Termination | STRUCTURE |  |  | *DRBs To Be Modified Item* IE in TS 38.423 [15] Clause  9.2.1.11 |
| 3 | >>DRB ID | ELEMENT | TRUE | *DRB ID* IE in TS  38.423 [15] Clause  9.2.3.33 |  |
| 4 | >>Logical Channel ID | ELEMENT | FALSE | *LCID* IE in TS  38.423 [15] Clause  9.2.3.70 |  |
| 5 | >>RLC Status | ELEMENT | FALSE | *RLC Status* IE in TS 38.423 [15]  Clause 9.2.3.80 |  |
| 6 | >>List of QoS flows to be modified to SN- Termination | LIST |  |  | *QoS Flows List* IE in TS  38.423 [15] Clause 9.2.1.15 |
| 7 | >>>QoS flow item | STRUCTURE |  |  | *QoS Flow Item* IE in TS  38.423 [15] Clause 9.2.1.15 |
| 8 | >>>>QoS  flow ID | ELEMENT | TRUE | *QoS Flow Identifier*  IE in TS 38.423  [15] Clause  9.2.1.15 |  |
| 9 | >>>>QoS  Flow Mapping Indication | ELEMENT | FALSE | *QoS Flow Mapping Indication* IE in TS  38.423 [15] Clause  9.2.1.15 |  |
| 10 | List of DRBs to be  modified to MN- Termination | LIST |  |  | *DRBs To Be Modified* IE in TS  38.423 [15] Clause 9.2.1.9 |
| 11 | >DRB Item to be  modified to MN- Termination | STRUCTURE |  |  | *DRBs To Be Modified Item* IE in TS 38.423 [15] Clause  9.2.1.9 |
| 12 | >>DRB ID | ELEMENT | TRUE | *DRB ID* IE in TS  38.423 [15] Clause  9.2.3.33 |  |
| 13 | >>Logical Channel ID | ELEMENT | FALSE | *LCID* IE in TS  38.423 [15] Clause  9.2.3.70 |  |
| 14 | >>RLC Status | ELEMENT | FALSE | *RLC Status* IE in TS 38.423 [15]  Clause 9.2.3.80 |  |
| 15 | >>List of QoS flows to be modified to SN-  Termination | LIST |  |  | *QoS Flows List* IE in TS  38.423 [15] Clause 9.2.1.15 |
| 16 | >>>QoS flow item | STRUCTURE |  |  | *QoS Flow Item* IE in TS  38.423 [15] Clause 9.2.1.15 |
| 17 | >>>>QoS  flow Identifier | ELEMENT | TRUE | *QoS Flow Identifier*  IE in TS 38.423  [15] Clause  9.2.3.10 |  |
| 18 | >>>>QoS  Flow Mapping  Indication | ELEMENT | FALSE | *QoS Flow Mapping Indication* IE in TS  38.423 [15] Clause  9.2.1.15 |  |

</div>

#### DRB Split Ratio Control

Upon receiving the *RIC Control Request* message, in the presence of *Downlink PDCP Data Split* IE, the E2 node shall split the downlink PDCP traffic between the Master Node and Secondary Node over the X2/Xn interface based on the recommended ratio. In the presence of *Uplink PDCP Data Split Threshold* IE, the E2 node shall invoke procedures related to DRB Split Ratio Control, such as *Bearer Context Management*, *UE Context Management*, *RRC Message Transfer*, etc. and include the IEs corresponding to one or more of parameters described below in the related interface messages. If the *DRB ID* is missing in the *RIC Control Request* message, the E2 node will send a *RIC Control Failure*.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **RAN**  **Parameter ID** | **RAN Parameter** | **RAN**  **Parameter Value Type** | **Key Flag** | **RAN Parameter Definition** | **Semantics Description** |
| 1 | DRB ID | ELEMENT | TRUE | *DRB ID* IE in TS  37.483 [21] Clause  9.3.1.16 |  |
| 2 | Uplink PDCP Data Split Threshold | ELEMENT | FALSE | *UL Data Split Threshold* IE in TS  37.483 [21] Clause  9.3.1.43 |  |
| 3 | Downlink PDCP Data Split | ELEMENT | FALSE | INTEGER (0..100)  Defined in Clause 9.4.2 | Indicates the percentage of PDCP traffic that the MN has to split with the SN |

</div>

#### PDCP Duplication Control

Upon receiving the *RIC Control Request* message, the E2 node shall invoke procedures related to PDCP Duplication Control, such as *Bearer Context Management*, *UE Context Management*, *RRC Message Transfer*, etc. and include the IEs corresponding to one or more of parameters described below in the related interface messages. If the *DRB ID* is missing in the *RIC Control Request* message, the E2 node will send a *RIC Control Failure*.

In the case of UE group-based control action, where the relevant entities include more than one DRB subject to the PDCP duplication control action, the above procedures are individually invoked for each applicable DRB pertaining to each individual UE of the group.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **RAN**  **Parameter ID** | **RAN Parameter** | **RAN**  **Parameter Value Type** | **Key Flag** | **RAN Parameter Definition** | **Semantics Description** |
| 1 | DRB ID | ELEMENT | TRUE | *DRB ID* IE in TS  37.483 [21] Clause  9.3.1.16 |  |
| 2 | PDCP Duplication | ELEMENT | FALSE | *PDCP Duplication* IE in TS 37.483 [21]  Clause 9.3.1.38 |  |
| 3 | UL More Than One RLC | STRUCTURE |  |  | *moreThanOneRLC* IE in TS 38.331 [22] |
| 4 | >Primary Path | STRUCTURE |  |  | *primaryPath* IE in TS  38.331 [22] Clause 6 |
| 5 | >>Cell Group ID | ELEMENT | TRUE | *cellGroup* IE in TS  38.331 [22] Clause 6 |  |
| 6 | >>Logical Channel ID | ELEMENT | FALSE | *logicalChannel* IE in TS 38.331 [22] Sec 6 |  |
| 7 | UL More Than Two RLC | STRUCTURE |  |  | *moreThanTwoRLC-DRB- r16* IE in TS 38.331 [22]  Clause 6 |
| 8 | >Split Secondary Path | ELEMENT | FALSE | *splitSecondaryPath*  IE in TS 38.331 [22]  Sec 6 |  |
| 9 | >Duplication State | ELEMENT | FALSE | *duplicationState* IE in TS 38.331 [22] Sec 6 |  |
| 10 | PDCP Duplication Activation | ELEMENT | FALSE | *Duplication Activation* IE in TS  37.483 [21] Clause  9.3.1.38 |  |
| 11 | Number of PDCP duplication | ELEMENT | FALSE | *Additional PDCP duplication Information* IE in TS  37.483 [21] Clause  9.3.1.38 |  |

</div>

### Radio Resource Allocation Control

#### DRX Parameter Configuration

Upon receiving the *RIC Control Request* message, the E2 node shall invoke procedures related to DRX Parameter Configuration, such as *UE Context Management*, *RRC Message Transfer*, etc. and include the IEs corresponding to one or more of parameters described below in the related interface messages.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **RAN**  **Parameter ID** | **RAN Parameter** | **RAN**  **Parameter Value Type** | **Key Flag** | **RAN Parameter Definition** | **Semantics Description** |
| 1 | Long DRX Cycle Length | ELEMENT | FALSE | *Long DRX Cycle Length*  IE in TS 38.473 [19]  Clause 9.3.1.24 |  |
| 2 | Short DRX Cycle Length | ELEMENT | FALSE | *Short DRX Cycle Length* IE in TS 38.473  [19] Clause 9.3.1.24 |  |
| 3 | Short DRX Cycle Timer | ELEMENT | FALSE | *Short DRX Cycle Timer*  IE in TS 38.473 [19]  Clause 9.3.1.24 |  |

</div>

#### Scheduling Request Parameter Configuration

Upon receiving the *RIC Control Request* message, the E2 node shall invoke procedures related to Scheduling Request Parameter Configuration, such as *UE Context Management*, *RRC Message Transfer*, etc. and include the IEs corresponding to one or more of parameters described below in the related interface messages. If the *Scheduling Request ID* is missing in the *RIC Control Request* message, the E2 node will send a *RIC Control Failure*.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **RAN**  **Parameter ID** | **RAN Parameter** | **RAN**  **Parameter Value Type** | **Key Param** | **RAN Parameter Definition** | **Semantics Description** |
| 1 | List of Scheduling Requests for  modification | LIST |  |  | *schedulingRequestToAdd ModList* IE in TS 38.331  [22] |
| 2 | >Scheduling Request Item | STRUCTURE |  |  | *SchedulingRequestToAdd Mod* IE in TS 38.331 [22] |
| 3 | >>Scheduling Request ID | ELEMENT | TRUE | *SchedulingRequestId*  IE in TS 38.331 [22] |  |
| 4 | >>SR Prohibit Timer | ELEMENT | FALSE | *sr-ProhibitTimer* IE in TS 38.331 [22] |  |
| 5 | >>SR  Transmission Max | ELEMENT | FALSE | *sr-TransMax* IE in TS  38.331 [22] |  |
| 6 | List of Scheduling Requests for release | LIST |  |  | *schedulingRequestToRele aseList* IE in TS 38.331  [22] |
| 7 | >Scheduling Request Item | STRUCTURE |  |  |  |
| 8 | >>Scheduling Request ID | ELEMENT | TRUE | *SchedulingRequestId*  IE in TS 38.331 [22] |  |

</div>

#### Semi-Persistent Scheduling Parameter Configuration

Upon receiving the *RIC Control Request* message, the E2 node shall invoke procedures related to Scheduling Request Parameter Configuration, such as *RRC Message Transfer*, etc. and include the IEs corresponding to one or more of parameters described below in the related interface messages.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **RAN**  **Parameter ID** | **RAN Parameter** | **RAN**  **Parameter Value Type** | **Key Flag** | **RAN Parameter Definition** | **Semantics Description** |
| 1 | SPS-Config | STRUCTURE |  |  | *SPS-Config* IE in TS  38.331 [22] Clause |
| 2 | >SPS Periodicity | ELEMENT | FALSE | *periodicity* IE in TS  38.331 [22] Clause |  |
| 3 | >Number of HARQ Processes | ELEMENT | FALSE | *nrofHARQ-*  *Processes* IE in TS  38.331 [22] Clause |  |
| 4 | >MCS Table | ELEMENT | FALSE | *mcs-Table* IE in TS  38.331 [22] Clause |  |

</div>

#### Configured Grant Configuration

Upon receiving the *RIC Control Request* message, the E2 node shall invoke procedures related to Scheduling Request Parameter Configuration, such as *RRC Message Transfer*, etc. and include the IEs corresponding to one or more of parameters described below in the related interface messages.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **RAN**  **Parameter ID** | **RAN Parameter** | **RAN**  **Parameter Value Type** | **Key Flag** | **RAN Parameter Definition** | **Semantics Description** |
| 1 | Grant Configuration | STRUCTURE |  |  | *ConfiguredGrantConfig*  IE in 38.331 Clause |
| 2 | >MCS Table | ELEMENT | FALSE | *mcs-Table* IE in TS  38.331 [22] Clause |  |
| 3 | >MCS Table Without Transform Precoder | ELEMENT | FALSE | *Mcs- TableTransformPreco*  *der* IE in TS 38.331  [22] Clause |  |
| 4 | >Resource Allocation | ELEMENT | FALSE | *resourceAllocation* IE in TS 38.331 [22]  Clause |  |
| 5 | >Number of HARQ processes | ELEMENT | FALSE | *nrofHARQ-Processes*  IE in TS 38.331 [22]  Clause |  |
| 6 | >HARQ  retransmissions | ELEMENT | FALSE | *nrofHARQ-Process*  IE in TS 38.331 [22]  Clause |  |
| 7 | >Number of repetitions of HARQ  PDU | ELEMENT | FALSE | *repK* IE in TS 38.331  [22] Clause |  |
| 8 | >Redundancy Version Format | ELEMENT | FALSE | *repK-RV* IE in TS  38.331 [22] Clause |  |
| 9 | >UL Transmission periodicity | ELEMENT | FALSE | *periodicity* IE in TS  38.331 [22] Clause |  |
| 10 | >Configured grant timer | ELEMENT | FALSE | *configuredGrantTimer*  IE in TS 38.331 [22]  Clause |  |
| 11 | >RRC Configured Uplink Grant | STRUCTURE |  |  | *rrc- ConfiguredUplinkGrant* IE in TS 38.331 [22]  Clause |
| 12 | >>Time Domain Offset | ELEMENT | FALSE | *timeDomainOffset* IE in TS 38.331 [22]  Clause |  |
| 13 | >>Time Domain Allocation | ELEMENT | FALSE | *timeDomainAllocation*  IE in TS 38.331 [22]  Clause |  |
| 14 | >>Frequency Domain Allocation | ELEMENT | FALSE | *frequencyDomainAllo*  *cation* IE in TS  38.331 [22] Clause |  |
| 15 | >>Antenna Port | ELEMENT | FALSE | *antennaPort* IE in TS  38.331 [22] Clause |  |
| 16 | >>Precoding and number of layers | ELEMENT | FALSE | *precodingAndNumbe rOfLayers* IE in TS  38.331 [22] Clause |  |
| 17 | >>MCS and TBS | ELEMENT | FALSE | *mcsAndTBS* IE in TS  38.331 [22] Clause |  |
| 18 | >>Path Loss Reference Index | ELEMENT | FALSE | *pathlossReferenceIn*  *dex* IE in TS 38.331 [22] |  |

</div>

#### CSI Report Configuration

Upon receiving the *RIC Control Request* message, the E2 node shall invoke procedures related to CSI Report Configuration, such as *RRC Message Transfer*, etc. and include the IEs corresponding to one or more of parameters described below in the related interface messages. If the *CSI Report Config ID* is missing in the *RIC Control Request* message, the E2 node will send a *RIC Control Failure*.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **RAN**  **Parameter ID** | **RAN Parameter Name** | **RAN**  **Parameter Value Type** | **Key Param** | **RAN Parameter Definition** | **Semantics Description** |
| 1 | List of CSI Report Configurations to Add or Modify | LIST |  |  | *csi- ReportConfigToAddModLi st* IE in TS 38.331 [22]  Clause 6 |
| 2 | >CSI Report Configuration Item | STRUCTURE |  |  | *CSI-ReportConfig* IE in TS 38.331 [22] Clause 6 |
| 3 | >>CSI Report Config ID | ELEMENT | TRUE | *CSI-ReportConfigID*  IE in TS 38.331 [22]  Clause |  |
| 4 | >>Carrier | ELEMENT | FALSE | *ServCellIndex* IE in TS 38.331 [22]  Clause |  |
| 5 | >>CQI-  FormatIndicator | ELEMENT | FALSE | *cqi-FormatIndicator*  IE in TS 38.331 [22]  Clause |  |
| 6 | >>PMI-  FormatIndicator | ELEMENT | FALSE | *pmi-FormatIndicator*  IE in TS 38.331 [22]  Clause |  |
| 7 | >>CQI Table | ELEMENT | FALSE | *cqi-Table* IE in TS  38.331 [22] Clause |  |
| 8 | >>Sub-band size | ELEMENT | FALSE | *subbandSize* IE in TS 38.331 [22]  Clause |  |
| 9 | >>Resources for Channel Measurement | ELEMENT | FALSE | *INTEGER* | resourcesForChannelMea surement IE in TS 38.331  [22] Clause 6 |
| 10 | >>CSI-IM  Resources for Interference | ELEMENT | FALSE | *INTEGER* | csi-IM- ResourcesForInterference IE in TS 38.331 [22]  Clause 6 |
| 11 | >>NZP-CSI-RS  Resources for Interference | ELEMENT | FALSE | *INTEGER* | nzp-CSI-RS-  ResourcesForInterference IE in TS 38.331 [22]  Clause 6 |
| 12 | >>Report Config Type | ELEMENT | FALSE | *OCTET STRING* | reportConfigType IE in TS  38.331 [22] Clause 6 |
| 13 | >>Report Quantity | ELEMENT | FALSE | *OCTET STRING* | reportQuantity IE in TS  38.331 [22] Clause 6 |
| 14 | >>CSI Reporting Band | ELEMENT | FALSE | *OCTET STRING* | csi-ReportingBand IE in TS 38.331 [22] Clause 6 |
| 15 | >>Time Restriction for Channel  Measurements | ELEMENT | FALSE | *INTEGER* | timeRestrictionForChanne lMeasurements IE in TS  38.331 [22] Clause 6 |
| 16 | >>Time Restriction for Interference Measurements | ELEMENT | FALSE | *INTEGER* | timeRestrictionForInterfer enceMeasurements IE in TS 38.331 [22] Clause 6 |
| 17 | >>Codebook Configuration Item | ELEMENT | FALSE | *OCTET STRING* | CodebookConfig IE in TS  38.331 [22] Clause 6 |
| 18 | >>Group Based Beam Reporting | ELEMENT | FALSE | *OCTET STRING* | groupBasedBeamReporti ng IE in TS 38.331 [22]  Clause 6 |
| 19 | List of CSI Report Configurations to Release | LIST |  |  | csi- ReportConfigToReleaseLi st IE in TS 38.331 [22]  Clause 6 |
| 20 | >CSI Report Configuration Item | STRUCTURE |  |  |  |
| 21 | >>CSI Report Config ID | ELEMENT | TRUE | *INTEGER* | CSI-ReportConfigId IE in TS 38.331 [22] Clause 6 |

</div>

#### Slice-level PRB quota

Upon receiving the *RIC Control Request* message, the E2 node allocates slice-specific PRB quota for the indicated S- NSSAI in terms of the maximum PRB allocation ratio, minimum PRB allocation ratio and dedicated PRB allocation ratio for the given slice among the available set of PRBs. If the *S-NSSAI* is missing in the *RIC Control Request* message, the E2 node will send a *RIC Control Failure*.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **RAN**  **Parameter ID** | **RAN Parameter** | **RAN**  **Parameter Value Type** | **Key Flag** | **RAN Parameter Definition** | ***Semantics Description*** |
| **1** | RRM Policy Ratio List | LIST |  | *0..*  *<maxnoofRRMPol icyRatioGroups>* | RRMPolicyRatioL ist in TS 28.541 |
| **2** | >RRM Policy Ratio Group | STRUCTURE |  |  | RRMPolicyRatio in TS 28.541 |
| 3 | >>RRM Policy | STRUCTURE |  |  | RRMPolicy in TS 28.541 |
| 5 | >>RRM Policy Member List | LIST |  | *0..<maxnoofRRM PolicyMembers>* | *RRMPolicyMemb erList* in TS 28.541 |
| 6 | >>>>RRM Policy Member | STRUCTURE |  |  | *RRMPolicyMemb er* in TS 28.541 |
| 7 | >>>>>PLMN Identity | ELEMENT | FALSE | *PLMN Identity* IE in TS 38.473 [19]  Clause 9.3.1.14 |  |
| 8 | >>>>>S-NSSAI | STRUCTURE |  |  | *S-NSSAI* IE in TS  38.473 [19]  Clause 9.3.1.38 |
| 9 | >>>>>>SST | ELEMENT | FALSE | *SST* IE in TS  38.473 [19]  Clause 9.3.1.38 |  |
| 10 | >>>>>>SD | ELEMENT | FALSE | *SD* IE in TS  38.473 [19]  Clause 9.3.1.38 |  |
| 11 | >>Min PRB Policy Ratio | ELEMENT | FALSE | INTEGER (0..100) | rRMPolicyMinRat io IE in TS 28.541 |
| 12 | >>Max PRB Policy Ratio | ELEMENT | FALSE | INTEGER (0..100) | rRMPolicyMaxRa tio IE in TS 28.541 |
| 13 | >>Dedicated PRB Policy Ratio | ELEMENT | FALSE | INTEGER (0..100) | rRMPolicyDedica tedRatio IE in TS 28.541 |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Range bound** | **Explanation** |
| maxnoofRRMPolicyRatioGroups | Maximum no. of RAN parameters supported by RAN Function for a specific Control action. The value is <65535>. |
| maxnoofRRMPolicyMembers | Maximum no. of RAN parameters supported by RAN Function for a specific Control action. The value is <65535> |

</div>

#### DMRS Resource Configuration

*Upon receiving the RIC Control Request message, the E2 node shall invoke procedures related to DMRS Configuration, such as RRC Message Transfer, etc. and include the IEs corresponding to one or more of parameters described below in the related interface messages. If the DMRS-DownlinkConfig is missing in the RIC Control Request message, the E2 node will send a RIC Control Failure.*

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **RAN**  **Parameter ID** | **RAN Parameter** | **RAN**  **Parameter Value Type** | **Key Flag** | **RAN Parameter Definition** | **Semantics Description** |
| 1 | DMRS- | ELEMENT | TRUE | OCTET STRING | *DMRS-*  *DownlinkConfig IE in* |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
|  | DownlinkConfig |  |  |  | *TS 38.331 [22]*  *Clause 6* |

</div>

#### SRS Configuration

Upon receiving the *RIC Control Request* message, the E2 node shall invoke procedures related to SRS Table Configuration, such as *RRC Message Transfer*, etc. and include the IEs corresponding to one or more of parameters described below in the related interface messages. If the *SRS Resource ID* or *SRS Resource Set ID* are missing in the *RIC Control Request* message, the E2 node will send a *RIC Control Failure*.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **RAN**  **Parameter ID** | **RAN Parameter Name** | **RAN**  **Parameter Value Type** | **Key Flag** | **RAN Parameter Definition** | ***Semantics Description*** |
| 1 | List of SRS Resources to Add or Modify | LIST |  |  | *srs- ResourceToAdd ModList* IE in TS  38.331 [22]  Clause 6 |
| 2 | >SRS Resource Item | STRUCTURE |  |  |  |
| 3 | >>SRS Resource | ELEMENT | FALSE | OCTET STRING | *SRS-Resource* IE in TS 38.331 [22]  Clause 6 |
| 4 | List of SRS Resources to Release | LIST |  |  | *srs- ResourceToRele aseList* IE in TS  38.331 [22]  Clause 6 |
| 5 | >SRS Resource Item | STRUCTURE |  |  |  |
| 6 | >>SRS Resource ID | ELEMENT | TRUE | INTEGER | *SRS-ResourceId*  IE in TS 38.331  [22] Clause 6 |
| 7 | List of SRS Resource Sets to Add or Modify | LIST |  |  | *srs- ResourceSetToA ddModList* IE in TS 38.331 [22]  Clause 6 |
| 8 | >SRS Resource Set Item | STRUCTURE |  |  |  |
| 9 | >>SRS Resource Set | ELEMENT | FALSE | OCTET STRING | *SRS-*  *ResourceSet* IE in TS 38.331 [22]  Clause 6 |
| 10 | List of SRS Resource Sets to Release | LIST |  |  | *srs- ResourceSetToR eleaseList* IE in TS 38.331 [22]  Clause 6 |
| 11 | >SRS Resource Set Item | STRUCTURE |  |  |  |
| 12 | >>SRS Resource Set ID | ELEMENT | TRUE | INTEGER | *SRS-*  *ResourceSetId* IE in TS 38.331 [22] |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
|  |  |  |  |  | Clause 6 |

</div>

#### CSI Resource Configuration

Upon receiving the *RIC Control Request* message, the E2 node shall invoke procedures related to CSI Resource Table Configuration, such as *RRC Message Transfer*, etc. and include the IEs corresponding to one or more of parameters described below in the related interface messages. If the *CSI Resource Configuration ID* is missing in the *RIC Control Request* message, the E2 node will send a *RIC Control Failure*.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **RAN**  **Parameter ID** | **RAN Parameter Name** | **RAN**  **Parameter Value Type** | **Key Flag** | **RAN Parameter Definition** | ***Semantics Description*** |
| 1 | List of CSI Resource Configuration to Add or Modify | LIST |  |  | *csi- ResourceConfigT oAddModList* IE in TS 38.331 [22]  Clause 6 |
| 2 | >CSI Resource Configuration Item | STRUCTURE |  |  |  |
| 3 | >>CSI Resource Config | ELEMENT | FALSE | OCTET STRING | *CSI-*  *ResourceConfig*  IE in TS 38.331  [22] Clause 6 |
| 4 | List of CSI Resource Configurations to Release | LIST |  |  | *csi- ResourceConfigT oReleaseList* IE in TS 38.331 [22]  Clause 6 |
| 5 | >CSI Resource Configuration Item | STRUCTURE |  |  |  |
| 6 | >>CSI Resource Configuration ID | ELEMENT | TRUE | INTEGER | *CSI-*  *ResourceConfigI d* IE in TS  38.331 [22]  Clause 6 |
| 7 | NZP CSI-RS Resource Set to Add or Modify | LIST |  |  | *nzp-CSI-RS-*  *ResourceSetToA ddModList* IE in TS 38.331 [22]  Clause 6 |
| 8 | >NZP CSI-RS Resource Set Item |  |  |  |  |
| 9 | >>NZP CSI-RS Resource Set | ELEMENT | FALSE | OCTET STRING | *NZP-CSI-RS-*  *ResourceSet* IE in TS 38.331 [22]  Clause 6 |
| 10 | NZP CSI-RS Resource Set to Release | LIST |  |  | *nzp-CSI-RS-*  *ResourceSetToR eleaseList* IE in TS 38.331 [22]  Clause 6 |
| 11 | >NZP CSI-RS Resource Set Item | STRUCTURE |  |  |  |
| 12 | >>NZP CSI-RS Resource Set ID | ELEMENT |  | INTEGER | *nzp-CSI-RS-*  *ResourceSetId* IE |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
|  |  |  |  |  | in TS 38.331 [22]  Clause 6 |
| 13 | NZP CSI-RS Resource to Add or Modify | LIST |  |  | *nzp-CSI-RS-*  *ResourceToAdd ModList* IE in TS  38.331 [22]  Clause 6 |
| 14 | >NZP CSI-RS Resource Item | STRUCTURE |  |  |  |
| 15 | >>NZP CSI-RS Resource | ELEMENT | FALSE | OCTET STRING | *NZP-CSI-RS-*  *Resource* IE in TS 38.331 [22]  Clause 6 |
| 16 | TCI States to Add or Modify | LIST |  |  | *tci- StatesToAddMod List* IE in TS  38.331 [22]  Clause 6 |
| 17 | >TCI State Item | STRUCTURE |  |  |  |
| 18 | >>TCI State | ELEMENT | FALSE | OCTET STRING | *tci-State* IE in TS  38.331 [22]  Clause 6 |
| 19 | TCI States to Release | LIST |  |  | *tci- StatesToRelease List* IE in TS  38.331 [22]  Clause 6 |
| 20 | >TCI State Item | STRUCTURE |  |  |  |
| 21 | >>TCI State ID | ELEMENT | FALSE | INTEGER | *tci-StateId* IE in TS 38.331 [22]  Clause 6 |
| 22 | NZP CSI-RS Resource to Release | LIST |  |  | *nzp-CSI-RS-*  *ResourceToRele aseList IE in TS*  *38.331 [22]*  *Clause 6* |
| 23 | >NZP CSI-RS Resource Item | STRUCTURE |  |  |  |
| 24 | >>NZP CSI-RS Resource ID | ELEMENT | TRUE | INTEGER | *nzp-CSI-RS-*  *ResourceId* IE in TS 38.331 [22]  Clause 6 |
| 25 | CSI SSB Resource Set to Add or Modify | LIST |  |  | *csi-SSB- ResourceSetToA ddModList IE in TS 38.331 [22]*  *Clause 6* |
| 26 | >CSI SSB Resource Set Item | STRUCTURE |  |  |  |
| 27 | >>CSI SSB Resource | ELEMENT | FALSE | OCTET STRING | *csi-SSB- ResourceSet* IE in TS 38.331 [22]  Clause 6 |
| 28 | CSI SSB Resource Set to Release | LIST |  |  | *csi-SSB- ResourceSetToR* |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
|  |  |  |  |  | *eleaseList IE in TS 38.331 [22]*  *Clause 6* |
| 29 | >CSI SSB Resource Set Item | STRUCTURE |  |  |  |
| 30 | >>CSI SSB Resource Set ID | ELEMENT | FALSE | INTEGER | *csi-SSB- ResourceSetId* IE in TS 38.331 [22]  Clause 6 |
| 31 | CSI-IM Resource Set to Add or Modify | LIST |  |  | *csi-IM- ResourceSetToA ddModList IE in TS 38.331 [22]*  *Clause 6* |
| 32 | >CSI-IM Resource Set Item | STRUCTURE |  |  |  |
| 33 | >>CSI-IM Resource Set | ELEMENT | FALSE | OCTET STRING | *csi-IM- ResourceSet* IE in TS 38.331 [22]  Clause 6 |
| 34 | CSI-IM Resource Set to Release | LIST |  |  | *csi-IM- ResourceSetToR eleaseList IE in TS 38.331 [22]*  *Clause 6* |
| 35 | >CSI-IM Resource Set Item | STRUCTURE |  |  |  |
| 36 | >>CSI SSB Resource Set ID | ELEMENT | FALSE | INTEGER | *csi-IM- ResourceSetId* IE in TS 38.331 [22]  Clause 6 |
| 37 | CSI-IM Resource to Add or Modify | LIST |  |  | *csi-IM- ResourceToAdd ModList IE in TS*  *38.331 [22]*  *Clause 6* |
| 38 | >CSI-IM Resource Item | STRUCTURE |  |  |  |
| 39 | >>CSI-IM Resource | ELEMENT | FALSE | OCTET STRING | *CSI-IM-Resource*  IE in TS 38.331  [22] Clause 6 |
| 40 | CSI-IM Resource to Release | LIST |  |  | *csi-IM- ResourceToRele aseList IE in TS*  *38.331 [22]*  *Clause 6* |
| 41 | >CSI-IM Resource Item | STRUCTURE |  |  |  |
| 42 | >>CSI-IM Resource ID | ELEMENT | FALSE | INTEGER | CSI-IM-  ResourceId IE in TS 38.331 [22]  Clause 6 |

</div>

### Connected Mode Mobility Control

#### Handover Control

Upon receiving the *RIC Control Request* message, in the case of Xn/X2 or NG or inter-RAT handovers, the E2 node shall invoke procedures, such as *Handover Preparation* related to UE Mobility Management, *Bearer Context Modification, UE Context Modification*, *RRC Message Transfer*, etc. In the case of intra-gNB or F1 handover, the E2 node shall invoke procedures, such as *UE Context Modification*, *RRC Message Transfer*, etc. The E2 node includes the IEs corresponding to one or more of parameters described below in the related interface messages. If the *Target Primary Cell ID* IE is missing in the *RIC Control Request* message, the E2 node will send a *RIC Control Failure* message.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **RAN**  **Parameter ID** | **RAN Parameter** | **RAN**  **Parameter Value Type** | **Key Flag** | **RAN Parameter Definition** | **Semantics Description** |
| 1 | Target Primary Cell ID | STRUCTURE |  |  | *Target Cell Global ID* IE in TS 38.423 [15] Clause  9.2.3.25 |
| 2 | >CHOICE Target Cell | STRUCTURE |  |  | *Target Cell* IE in TS  38.423 [15] Clause  9.2.3.25 |
| 3 | >>NR Cell | STRUCTURE |  |  | *NR* IE in TS 38.423 [15]  Clause 9.2.3.25 |
| 4 | >>>NR CGI | ELEMENT | FALSE | *NR CGI* IE in TS  38.423 [15] Clause  9.2.2.7 |  |
| 5 | >>E-UTRA Cell | STRUCTURE |  |  | *E-UTRA* IE in TS 38.423  [15] Clause 9.2.3.25 |
| 6 | >>>E-UTRA CGI | ELEMENT | FALSE | *E-UTRA CGI* IE in TS 38.423 [15]  Clause 9.2.2.8 |  |
| 7 | List of PDU sessions for handover | LIST |  |  | *PDU Session Resources To Be Setup List* IE in TS  38.423 [15] Clause  9.2.1.1 |
| 8 | >PDU session Item for handover | STRUCTURE |  |  | *PDU Session Resources To Be Setup Item* IE in TS 38.423 [15] Clause  9.2.1.1 |
| 9 | >>PDU Session ID | ELEMENT | TRUE | *PDU Session ID* IE in TS 38.423 [15]  Clause 9.2.3.18 |  |
| 10 | >>List of QoS flows in the PDU session | LIST |  |  | *QoS Flows To Be Setup List* IE in TS 38.423 [15]  Clause 9.2.1.1 |
| 11 | >>>QoS flow Item | STRUCTURE |  |  | *QoS Flow To Be Setup Item* IE in TS 38.423 [15]  Clause 9.2.1.1 |
| 12 | >>>>QoS  Flow Identifier | ELEMENT | TRUE | *QoS Flow Identifier*  IE in TS 38.423  [15] Clause  9.2.3.10 |  |
| 13 | List of DRBs for handover | LIST |  |  | *DRB to Be Setup List* IE in TS 38.473 [19] Clause  9.2.2.1 |
| 14 | >DRB item for handover | STRUCTURE |  |  | *DRB to Be Setup Item* IE in TS 38.473 [19] Clause  9.2.2.1 |
| 15 | >>DRB ID | ELEMENT | TRUE | *DRB ID* IE in TS  38.473 [19] Clause  9.3.1.8 |  |
| 16 | >>List of QoS flows in the DRB | LIST |  |  | *QoS Flows Information To Be Setup* IE in TS  37.483 [21] Clause  9.3.3.2 |
| 17 | >>>QoS flow Item | STRUCTURE |  |  | *QoS Flow Item* IE in TS  37.483 [21] Clause  9.3.1.25 |
| 18 | >>>>QoS  flow Identifier | ELEMENT | TRUE | *QoS Flow Identifier*  IE in TS 37.483  [21] Clause  9.3.1.24 |  |
| 19 | List of Secondary cells to be setup | LIST |  |  | *Scell To Be Setup List* IE in TS 38.473 [19] Clause  9.2.2.1 |
| 20 | >Secondary cell Item to be setup | STRUCTURE |  |  | *Scell To Be Setup Item Ies* IE in TS 38.473 [19]  Clause 9.2.2.1 |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| 21 | >>Secondary cell ID | ELEMENT | FALSE | *Scell ID* IE in TS  38.473 [19] Clause  9.2.2.1 |  |

</div>

#### Conditional Handover Control

Upon receiving the *RIC Control Request* message, in the case of Xn/X2 or NG or inter-RAT conditional handovers, the E2 node shall invoke procedures, such as *Handover Preparation* related to UE Mobility Management, *Bearer Context Modification, UE Context Modification*, *RRC Message Transfer*, etc. involving the candidate target cells (note that there is only one *Handover Preparation* in the case of NG or inter-RAT handovers). In the case of intra-gNB or F1 conditional handover, the E2 node shall invoke procedures, such as *UE Context Modification*, *RRC Message Transfer*, etc. The E2 node includes the IEs corresponding to one or more of parameters described below in the related interface messages. If the *Target Cell* IE is missing in the *RIC Control Request* message, the E2 node will send a *RIC Control Failure* message.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **RAN**  **Parameter ID** | **RAN Parameter** | **RAN**  **Parameter Value Type** | **Key Param** | **RAN Parameter Definition** | **Semantics Description** |
| 1 | List of Candidate target primary cells | LIST |  |  | *Candidate SpCell List* IE in TS  38.473 [19] Clause  9.2.2.1 |
| 2 | >Candidate target primary cell item | STRUCTURE |  |  | *Candidate SpCell Item IEs* IE in TS  38.473 [19] Clause  9.2.2.1 |
| 3 | >>CHOICE Target Cell | STRUCTURE |  |  | *Target Cell* IE in TS 38.423 [15]  Clause 9.2.3.25 |
| 4 | >>>NR | STRUCTURE |  |  | *NR* IE in TS  38.423 [15] Clause  9.2.3.25 |
| 5 | >>>>NR CGI | ELEMENT | FALSE | *NR CGI* IE in TS  38.423 [15]  Clause 9.2.2.7 |  |
| 6 | >>>E-UTRA | STRUCTURE |  |  | *E-UTRA* IE in TS  38.423 [15] Clause  9.2.3.25 |
| 7 | >>>>E-UTRA CGI | ELEMENT | FALSE | *E-UTRA CGI* IE in TS 38.423 [15]  Clause 9.2.2.8 |  |
| 8 | >>Estimated Arrival Probability | ELEMENT | FALSE |  |  |
| 9 | List of PDU sessions for handover | LIST |  |  | *PDU Session Resources To Be Setup List* IE in TS  38.423 [15] Clause  9.2.1.1 |
| 10 | >PDU session Item for handover | STRUCTURE |  |  | *PDU Session Resources To Be Setup Item* IE in TS 38.423 [15]  Clause 9.2.1.1 |
| 11 | >>PDU Session ID | ELEMENT | TRUE | *PDU Session ID*  IE in TS 38.423  [15] Clause  9.2.3.18 |  |
| 12 | >>List of QoS flows in the PDU session | LIST |  |  | *QoS Flows To Be Setup List* IE in TS  38.423 [15] Clause  9.2.1.1 |
| 13 | >>>QoS flow Item | STRUCTURE |  |  | *QoS Flow To Be Setup Item* IE in TS 38.423 [15]  Clause 9.2.1.1 |
| 14 | >>>>QoS Flow Identifier | ELEMENT | TRUE | *QoS Flow Identifier* IE in TS  38.423 [15]  Clause 9.2.3.10 |  |
| 15 | Candidate target primary cell global ID for NG handover | STRUCTURE |  |  | *Target Cell ID* IE in TS 38.413 [11]  Clause 9.3.1.73 |
| 16 | >CHOICE *Target Cell* | STRUCTURE |  |  | *Target Cell* IE in TS 38.423 [15]  Clause 9.2.3.25 |
| 17 | >>NR Cell | STRUCTURE |  |  | *NR* IE in TS  38.423 [15] Clause  9.2.3.25 |
| 18 | >>>NR CGI | ELEMENT | FALSE | *NR CGI* IE in TS  38.423 [15]  Clause 9.2.2.7 |  |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| 19 | >>E-UTRA Cell | STRUCTURE |  |  | *E-UTRA* IE in TS  38.423 [15] Clause  9.2.3.25 |
| 20 | >>>E-UTRA CGI | ELEMENT | FALSE | *E-UTRA CGI* IE in TS 38.423 [15]  Clause 9.2.2.8 |  |
| 21 | List of DRBs for handover | LIST |  |  | *DRB To Be Setup List* IE in TS  38.473 [19] Clause  9.2.2.1 |
| 22 | >DRB item for handover | STRUCTURE |  |  | *DRB To Be Setup Item* IE in TS  38.473 [19] Clause  9.2.2.1 |
| 23 | >>DRB ID | ELEMENT | TRUE | *DRB ID* IE in TS  38.473 [19]  Clause 9.3.1.8 |  |
| 24 | >>List of QoS flows in the DRB | LIST |  |  | *Flows Mapped To DRB Item* IE in TS  38.473 [19] Clause  9.2.2.1 |
| 25 | >>>QoS flow Item | STRUCTURE |  |  |  |
| 26 | >>>>QoS flow Identifier | ELEMENT | TRUE | *QoS Flow Identifier* IE in TS  38.473 [19]  Clause 9.3.1.63 |  |
| 27 | List of Secondary cells to be setup | LIST |  |  | *SCell To Be Setup List* IE in TS  38.473 [19] Clause  9.2.2.1 |
| 28 | >Secondary cell Item to be setup | STRUCTURE |  |  | *SCell To Be Setup Item IEs* IE in TS  38.473 [19] Clause  9.2.2.1 |
| 29 | >>Secondary cell ID | ELEMENT | FALSE | *SCell ID* IE in TS  38.473 [19]  Clause 9.2.2.1 |  |

</div>

#### DAPS Handover Control

Upon receiving the *RIC Control Request* message, in the case of Xn/X2 DAPS handovers, the E2 node shall invoke procedures, such as *Handover Preparation* related to UE Mobility Management, *Bearer Context Modification, UE Context Modification*, *RRC Message Transfer*, etc. In the case of intra-gNB or F1 DAPS handover, the E2 node shall invoke procedures, such as *UE Context Modification*, *RRC Message Transfer*, etc. The E2 node includes the IEs corresponding to one or more of parameters described below in the related interface messages. If the *Target Primary Cell ID* IE is missing in the *RIC Control Request* message, the E2 node will send a *RIC Control Failure* message.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **RAN**  **Parameter ID** | **RAN Parameter** | **RAN**  **Parameter Value Type** | **Key Param** | **RAN Parameter Definition** | **Semantics Description** |
| 1 | Target Primary Cell ID | STRUCTURE |  |  | *Target Cell Global ID* IE in TS 38.423 [15]  Clause 9.2.3.25 |
| 2 | >CHOICE *Target Cell* | STRUCTURE |  |  | *Target Cell* IE in TS 38.423 [15]  Clause 9.2.3.25 |
| 3 | >>NR Cell | STRUCTURE |  |  | *NR* IE in TS  38.423 [15]  Clause 9.2.3.25 |
| 4 | >>>NR CGI | ELEMENT | FALSE | *NR CGI* IE in TS  38.423 [15]  Clause 9.2.2.7 |  |
| 5 | >>E-UTRA Cell | STRUCTURE |  |  | *E-UTRA* IE in TS  38.423 [15]  Clause 9.2.3.25 |
| 6 | >>>E-UTRA CGI | ELEMENT | FALSE | *E-UTRA CGI* IE in TS 38.423 [15]  Clause 9.2.2.8 |  |
| 7 | List of DRBs subject to DAPS handover | LIST |  |  | *Source DRB to QoS Flow Mapping List* IE in TS 38.423 [15]  Clause 9.2.1.17 |
| 8 | >DRB item for handover | STRUCTURE |  |  | *DRB to QoS Flow Mapping Item* IE in TS  38.423 [15]  Clause 9.2.1.15 |
| 9 | >>DRB ID | ELEMENT | TRUE | *DRB ID* IE in TS  38.423 [15]  Clause 9.2.3.33 |  |
| 10 | >>List of QoS flows in the DRB | LIST |  |  | *QoS Flows List*  IE in TS 38.423  [15] Clause  9.2.1.15 |
| 11 | >>>QoS flow Item | STRUCTURE |  |  | *QoS Flow Item*  IE in TS 38.423  [15] Clause  9.2.1.15 |
| 12 | >>>>QoS flow Identifier | ELEMENT | TRUE | *QoS Flow Identifier* IE in TS  38.423 [15]  Clause 9.2.3.10 |  |
| 13 | >>>>QoS flow mapping indication | ELEMENT | FALSE | *QoS Flow Identifier* IE in TS  38.423 [15]  Clause 9.2.3.79 |  |
| 14 | List of DRBs subject to handover without DAPS | LIST |  |  | *Source DRB to QoS Flow Mapping List* IE in TS 38.423 [15]  Clause 9.2.1.17 |
| 15 | >DRB item for handover | STRUCTURE |  |  | *DRB to QoS Flow Mapping Item* IE in TS  38.423 [15]  Clause 9.2.1.15 |
| 16 | >>DRB ID | ELEMENT | TRUE | *DRB ID* IE in TS  38.423 [15]  Clause 9.2.3.33 |  |
| 17 | >>List of QoS flows in the DRB | LIST |  |  | *QoS Flows List*  IE in TS 38.423  [15] Clause |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
|  |  |  |  |  | 9.2.1.15 |
| 18 | >>>QoS flow Item | STRUCTURE |  |  | *QoS Flow Item*  IE in TS 38.423  [15] Clause  9.2.1.15 |
| 19 | >>>>QoS flow Identifier | ELEMENT | TRUE | *QoS Flow Identifier* IE in TS  38.423 [15]  Clause 9.2.3.10 |  |
| 20 | >>>>QoS flow mapping indication | ELEMENT | FALSE | *QoS Flow Identifier* IE in TS  38.423 [15]  Clause 9.2.3.79 |  |
| 21 | List of PDU Sessions subject for handover | LIST |  |  | *PDU Session Resources To Setup List* IE in TS 38.423 [15]  Clause 9.2.1.1 |
| 22 | >PDU Session Item | STRUCTURE |  |  | *PDU Session Resources To Be Setup Item* IE in TS 38.423 [15]  Clause 9.2.1.1 |
| 23 | >>PDU Session ID | ELEMENT | TRUE | *PDU Session ID*  IE in TS 38.423  [15] Clause  9.2.1.1 |  |
| 24 | >>List of DRBs subject to DAPS handover | LIST |  |  | *Source DRB to QoS Flow Mapping List* IE in TS 38.423 [15]  Clause 9.2.1.17 |
| 25 | >>>DRB item for handover | STRUCTURE |  |  | *DRB to QoS Flow Mapping Item* IE in TS  38.423 [15]  Clause 9.2.1.15 |
| 26 | >>>>DRB ID | ELEMENT | TRUE | *DRB ID* IE in TS  38.423 [15]  Clause 9.2.3.33 |  |
| 27 | >>>>List of QoS flows in the DRB | LIST |  |  | *QoS Flows List*  IE in TS 38.423  [15] Clause  9.2.1.15 |
| 28 | >>>>>QoS flow Item | STRUCTURE |  |  | *QoS Flow Item*  IE in TS 38.423  [15] Clause  9.2.1.15 |
| 29 | >>>>>>QoS  flow Identifier | ELEMENT | TRUE | *QoS Flow Identifier* IE in TS  38.423 [15]  Clause 9.2.3.10 |  |
| 30 | >>>>>>QoS  flow mapping indication | ELEMENT | FALSE | *QoS Flow Identifier* IE in TS  38.423 [15]  Clause 9.2.3.79 |  |
| 31 | >>List of DRBs subject to handover without DAPS | LIST |  |  | *Source DRB to QoS Flow Mapping List* IE in TS 38.423 [15]  Clause 9.2.1.17 |
| 32 | >>>DRB item for handover | STRUCTURE |  |  | *DRB to QoS Flow Mapping Item* IE in TS  38.423 [15]  Clause 9.2.1.15 |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| 33 | >>>>DRB ID | ELEMENT | TRUE | *DRB ID* IE in TS  38.423 [15]  Clause 9.2.3.33 |  |
| 34 | >>>>List of QoS flows in the DRB | LIST |  |  | *QoS Flows List*  IE in TS 38.423  [15] Clause  9.2.1.15 |
| 35 | >>>>>QoS flow Item | STRUCTURE |  |  | *QoS Flow Item*  IE in TS 38.423  [15] Clause  9.2.1.15 |
| 36 | >>>>>>QoS  flow Identifier | ELEMENT | TRUE | *QoS Flow Identifier* IE in TS  38.423 [15]  Clause 9.2.3.10 |  |
| 37 | >>>>>>QoS  flow mapping Indication | ELEMENT | FALSE | *QoS Flow Identifier* IE in TS  38.423 [15]  Clause 9.2.3.79 |  |

</div>

### Radio Access Control

#### UE admission control

Upon receiving the *RIC Control Request* message, the E2 node shall invoke procedures related to UE admission control, such as *PDU Session Management*, *Bearer Context Management*, *UE Context Management*, *RRC Message Transfer*, etc. and include the IEs corresponding to one or more of parameters described below in the related interface messages.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **RAN**  **Parameter ID** | **RAN Parameter** | **RAN**  **Parameter Value Type** | **Key Flag** | **RAN Parameter Definition** | **Semantics Description** |
| 1 | Primary Cell ID | STRUCTU RE |  |  | *Target Cell Global ID* IE in TS 38.423 [15] clause  9.2.3.25 |
| 2 | >CHOICE *Primary Cell* | STRUCTU RE |  |  | *Target Cell* IE in TS  38.423 [15] clause  9.2.3.25 |
| 3 | >>NR Cell | STRUCTU RE |  |  | *NR* IE in TS 38.423 [15]  Clause 9.2.3.25 |
| 4 | >>>NR CGI | ELEMENT | FALSE | *NR CGI* IE in TS  38.423 [15]  Clause 9.2.2.7 |  |
| 5 | >>E-UTRA Cell | STRUCTU RE |  |  | *E-UTRA* IE in TS 38.423  [15] Clause 9.2.3.25 |
| 6 | >>>E-UTRA CGI | ELEMENT | FALSE | *E-UTRA CGI* IE in TS 38.423 [15]  Clause 9.2.2.8 |  |
| 7 | List of PDU sessions for admission | LIST |  |  | *PDU Session Resources To Be Setup List* IE in TS  38.423 [15] Clause 9.2.1.1 |
| 8 | >PDU session Item for admission | STRUCTU RE |  |  | *PDU Session Resources To Be Setup Item* IE in TS  38.423 [15] Clause 9.2.1.1 |
| 9 | >>PDU Session ID | ELEMENT | TRUE | *PDU Session ID*  IE in TS 38.423  [15] Clause  9.2.3.18 |  |
| 10 | >>List of DRBs for admission | LIST |  |  | *DRB to Be Setup List* IE in TS 38.473 [19] Clause  9.2.2.1 |
| 11 | >>>DRB item for admission | STRUCTU RE |  |  | *DRB to Be Setup Item* IE in TS 38.473 [19] Clause  9.2.2.1 |
| 12 | >>>>DRB ID | ELEMENT | TRUE | *DRB ID* IE in TS  38.473 [19]  Clause 9.3.1.8 |  |
| 13 | >>>>List of QoS flows in the DRB | LIST |  |  | *QoS Flows Information To Be Setup* IE in TS 37.483  [21] Clause 9.3.3.2 |
| 14 | >>>>>QoS  flow Item | STRUCTU RE |  |  | *QoS Flow Item* IE in TS  37.483 [21] Clause  9.3.1.25 |
| 15 | >>>>>>  QoS flow Identifier | ELEMENT | TRUE | *QoS Flow Identifier* IE in TS  37.483 [21]  Clause 9.3.1.24 |  |
| 16 | >>>>>>  QoS flow mapping  indicatio n | ELEMENT | TRUE | *QoS Flow Mapping Indication* IE in TS  37.483 [21]  Clause 9.3.1.60 |  |
| 17 | >>>List of cell groups to be added | LIST |  |  | *Cell Group To Add* IE in TS 37.483 [21] Clause  9.3.3.11 |
| 18 | >>>>Cell group item | STRUCTU RE |  |  | *Cell Group Item* IE in TS  37.483 [21] Clause  9.3.1.11 |
| 19 | >>>>>Cell Group ID | ELEMENT | TRUE | *Cell Group ID* IE in TS 37.483 [21]  Clause 9.3.1.11 |  |
| 20 | >>>SDAP  Configuration | STRUCTU RE |  |  | *SDAP Configuration* IE in TS 37.483 [21] Clause  9.3.1.39 |
| 21 | >>>Default DRB | ELEMENT | FALSE | *Default DRB* IE in |  |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
|  |  |  |  | TS 37.483 [21]  Clause 9.3.1.39 |  |
| 22 | >>>PDCP  Configuration | STRUCTU RE |  |  | *PDCP Configuration* IE in TS 37.483 [21] Clause  9.3.1.38 |
| 23 | >>>RLC mode | ELEMENT | FALSE | *RLC mode* IE in TS 37.483 [21]  Clause 9.3.1.38 |  |
| 24 | >>>PDCP  Duplication | ELEMENT | FALSE | *PDCP Duplication*  IE in TS 37.483  [21] Clause  9.3.1.38 |  |
| 25 | >>>UL Data Split Threshold | ELEMENT | FALSE | *UL Data Split Threshold* IE in TS  37.483 [21]  Clause 9.3.1.43 |  |
| 26 | >>>PDCP Re-  establishment | ELEMENT | FALSE | *PDCP Re-*  *establishment* IE in TS 37.483 [21]  Clause 9.3.1.38 |  |
| 27 | >>>PDCP Data  Recovery | ELEMENT | FALSE | *PDCP Data Recovery* IE in TS  37.483 [21]  Clause 9.3.1.38 |  |
| 28 | >>>Out-of-Order Delivery | ELEMENT | FALSE | *Out of Order Delivery* IE in TS  37.483 [21]  Clause 9.3.1.38 |  |
| 29 | >>>PDCP Status Report Indication | ELEMENT | FALSE | *PDCP Status Report Indication* IE in TS 37.483  [21] Clause  9.3.1.38 |  |
| 30 | >>>Number of PDCP duplication | ELEMENT | FALSE | *Additional PDCP duplication Information* IE in TS 37.483 [21]  Clause 9.3.1.38 |  |
| 31 | >>>UL More than one RLC | STRUCTU RE |  |  | *moreThanOneRLC* IE in TS 38.331 [22] Clause 6 |
| 32 | >>>>Primary Path | STRUCTU RE |  |  | *primaryPath* IE in TS  38.331 [22] Clause 6 |
| 33 | >>>>>Cell Group ID | ELEMENT | TRUE | *cellGroup* IE in TS  38.331 [22]  Clause 6 |  |
| 34 | >>>>>Logic al Channel  ID | ELEMENT | FALSE | *logicalChannel* IE in TS 38.331 [22]  Sec 6 |  |
| 35 | >>>UL More than two RLC | STRUCTU RE |  |  | *moreThanTwoRLC-DRB- r16* IE in TS 38.331 [22]  Clause 6 |
| 36 | >>>>Split Secondary  Path | ELEMENT | FALSE | *splitSecondaryPat h* IE in TS 38.331  [22] Sec 6 |  |
| 37 | >>>>Duplicatio n State | ELEMENT | FALSE | *duplicationState*  IE in TS 38.331  [22] Sec 6 |  |
| 38 | >>>DL More than one RLC | STRUCTU RE |  |  | *moreThanOneRLC* IE in TS 38.331 [22] Clause 6 |
| 39 | >>>>Primary Path | STRUCTU RE |  |  | *primaryPath* IE in TS  38.331 [22] Clause 6 |
| 49 | >>>>>Cell Group ID | ELEMENT | TRUE | *cellGroup* IE in TS  38.331 [22]  Clause 6 |  |
| 50 | >>>>>Logic al Channel  ID | ELEMENT | FALSE | *logicalChannel* IE in TS 38.331 [22]  Sec 6 |  |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| 51 | >>>DL More than two RLC | STRUCTU RE |  |  | *moreThanTwoRLC-DRB- r16* IE in TS 38.331 [22]  Clause 6 |
| 52 | >>>>Split Secondary  Path | ELEMENT | FALSE | *splitSecondaryPat h* IE in TS 38.331  [22] Sec 6 |  |
| 53 | >>>>Duplicatio n State | ELEMENT | FALSE | *duplicationState*  IE in TS 38.331  [22] Sec 6 |  |
| 54 | List of Secondary cells to be setup | LIST |  |  | *Scell To Be Setup List* IE in TS 38.473 [19] Clause  9.2.2.1 |
| 55 | >Secondary cell Item to be setup | STRUCTU RE |  |  | *Scell To Be Setup Item Ies*  IE in TS 38.473 [19]  Clause 9.2.2.1 |
| 56 | >>Secondary cell ID | ELEMENT | FALSE | *Scell ID* IE in TS  38.473 [19]  Clause 9.2.2.1 |  |

</div>

#### RACH backoff control

Upon receiving the *RIC Control Request* message, the E2 node shall invoke procedures related to RACH backoff control, such as *RRC Message Transfer*, etc. and include the IEs corresponding to one or more of parameters described below in the related interface messages.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **RAN**  **Parameter ID** | **RAN Parameter** | **RAN**  **Parameter Value Type** | **Key Flag** | **RAN Parameter Definition** | **Semantics Description** |
| 1 | Common RACH Config Parameters | STRUCTURE |  |  | *RACH-ConfigGeneric*  IE in TS 38.331 [22]  Clause 6 |
| 2 | >PRACH Configuration Index | ELEMENT | FALSE | *prach- ConfigurationIndex* IE in TS 38.331 [22] Sec  6 |  |
| 3 | >Zero correlation Zone Config | ELEMENT | FALSE | *zeroCorrelationZoneC onfig* IE in TS 38.331  [22] Sec 6 |  |
| 4 | >Preamble Received Target Power | ELEMENT | FALSE | *preambleReceivedTar getPower* IE in TS  38.331 [22] Clause 6 |  |
| 5 | >Preamble Transmission Max | ELEMENT | FALSE | *preambleTransMax* IE in TS 38.331 [22] Sec  6 |  |
| 6 | >Power Ramping Step High Priority | ELEMENT | FALSE | *powerRampingStep*  IE in TS 38.331 [22]  Sec 6 |  |
| 7 | >Random Access Response Window | ELEMENT | FALSE | *ra-ResponseWindow*  IE in TS 38.331 [22]  Sec 6 |  |
| 8 | Dedicated RACH Config Parameters | STRUCTURE |  |  | *RACH-*  *ConfigDedicated* IE in TS 38.331 [22]  Clause 6 |
| 9 | >Random Access Prioritization | STRUCTURE |  |  | *RA-Prioritization* IE in TS 38.331 [22] Sec 6 |
| 10 | >>Scaling Factor for Backoff Indicator | ELEMENT | FALSE | *scalingFactorBI* IE in TS 38.331 [22] Sec 6 |  |
| 11 | >>Power Ramping Step High Priority | ELEMENT | FALSE | *powerRampingStepHi ghPriority* IE in TS  38.331 [22] Clause 6 |  |

</div>

#### Access barring control

Upon receiving the *RIC Control Request* message, the E2 node shall invoke procedures related to Access barring control, such as *UE Context Management*, *RRC Message Transfer*, etc. and include the IEs corresponding to one or more of parameters described below in the related interface messages.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **RAN**  **Parameter ID** | **RAN Parameter** | **RAN**  **Parameter Value Type** | **Key Param** | **RAN**  **Parameter Definition** | **Semantics Description** |
| 1 | Unified Access Control Barring Info | STRUCTURE |  |  | *uac-BarringInfo* IE in TS 38.331  [22] Sec 6 |
| 2 | >UAC Barring for Common List | LIST |  |  | *uac-BarringForCommon* IE in TS 38.331 [22] Sec 6 |
| 3 | >>Barring Per Cat | STRUCTURE |  |  | *UAC-BarringPerCat* IE in TS  38.331 [22] Clause 6 |
| 4 | >>>Access Category | ELEMENT | FALSE | *accessCategory*  IE in TS 38.331  [22] Sec 6 |  |
| 5 | >>>Barring Info Set Index | ELEMENT | FALSE | *UAC-*  *BarringInfoSetIn dex* IE in TS  38.331 [22]  Clause 6 |  |
| 6 | >UAC Barring for PLMN List | LIST |  |  | *uac-BarringPerPLMN-List* IE in TS 38.331 [22] Clause 6 |
| 7 | >>UAC-  BarringPerPLMN | STRUCTURE |  |  | *UAC-BarringPerPLMN* IE in TS  38.331 [22] Sec 6 |
| 8 | >>>PLMN Identity | ELEMENT | TRUE | 9.3.59 |  |
| 9 | >>>CHOICE UAC  AC Barring List Type | STRUCTURE |  |  | *Uac-ACBarringListType* IE in TS  38.331 [22] Sec 6 |
| 10 | >>>>UAC  Implicit AC Barring List | LIST |  |  | *uac-ImplicitACBarringList* IE in TS 38.331 [22] Clause 6 |
| 11 | >>>>>UAC  Implicit AC Barring Item | STRUCTURE |  |  |  |
| 12 | >>>>>> UAC  Barring Info Set Index | ELEMENT | FALSE | *UAC-*  *BarringInfoSetIn dex* IE in TS  38.331 [22] Sec  6 |  |
| 13 | >>>>UAC  Explicit AC Barring List | LIST |  |  | *uac-ExplicitACBarringList* IE in TS 38.331 [22] Clause 6 |
| 14 | >>>>>Barri ng Per Cat | STRUCTURE |  |  | *UAC-BarringPerCat* IE in TS  38.331 [22] Clause 6 |
| 15 | >>>>>>  Access Categor y | ELEMENT | FALSE | *accessCategory*  IE in TS 38.331  [22] Sec 6 |  |
| 16 | >>>>>>  Barring Info Set Index | ELEMENT | FALSE | *UAC-*  *BarringInfoSetIn dex* IE in TS  38.331 [22]  Clause 6 |  |
| 17 | >UAC Barring Info Set List | LIST |  |  | *UAC-BarringInfoSetList* IE in TS  38.331 [22] Sec 6 |
| 18 | >>UAC Barring Info Set Item | STRUCTURE |  |  | *UAC-BarringInfoSet* IE in TS  38.331 [22] Clause 6 |
| 19 | >>>UAC Barring Factor | ELEMENT | FALSE | *uac- BarringFactor* IE in TS 38.331  [22] Sec 6 |  |
| 20 | >>>UAC Barring Time | ELEMENT | FALSE | *uac- BarringTime* IE in TS 38.331  [22] Sec 6 |  |
| 21 | >>>UAC Barring For Access Identity | ELEMENT | FALSE | *uac- BarringForAcce*  *ssIdentity* in TS |  |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
|  |  |  |  | 38.331 [22]  Clause 6 |  |
| 22 | >CHOICE Access  Category 1 - Selection Assistance Info | STRUCTURE |  |  | *uac-AccessCategory1-*  *SelectionAssistanceInfo* IE in TS  38.331 [22] Sec 6 |
| 23 | >>PLMN Common | ELEMENT | FALSE | *UAC-*  *AccessCategory 1-*  *SelectAssistanc eInfo* IE in TS  38.331 [22]  Clause 6 |  |
| 24 | >>Individual PLMN List | LIST |  |  | *individualPLMNList* IE in TS  38.331 [22] Clause 6 |
| 25 | >>>PLMN Item | STRUCTURE |  |  |  |
| 26 | >>>>UAC  Access Category 1 Selection Assistance Info | ELEMENT | FALSE | *UAC-*  *AccessCategory 1-*  *SelectAssistanc eInfo* IE in TS  38.331 [22]  Clause 6 |  |
| 27 | Cell Access Control Barring Info | STRUCTURE |  |  |  |
| 28 | > List of Control plmn-Identity | LIST |  |  |  |
| 29 | >> plmn- Identity | ELEMENT |  | *9.3.59* |  |
| 30 | >>List of Control cells | LIST |  |  |  |
| 31 | >>>CHOICE  Cell Type | STRUCTURE |  |  |  |
| 32 | >>>>NR Cell | STRUCTURE |  | *8.1.1.1* | NR IE in TS 38.423 [15] Clause 9.2.3.25 |
| 33 | >>>>>NR CGI | ELEMENT |  | *NR CGI IE in TS 38.423 [15]*  *Clause 9.2.2.7* | Cell Corresponding to same PLMN |
| 34 | >>>>E-  UTRA Cell | STRUCTURE |  | *8.1.1.2* | E-UTRA IE in TS 38.423 [15]  Clause 9.2.3.25 |
| 35 | >>>>>EUTAN CGI | ELEMENT |  | *E-UTRA CGI IE in TS 38.423*  *[15] Clause*  *9.2.2.8* |  |
| 36 | >>>  cellBarred | ELEMENT |  |  | Indicated in the MIB message, applicable to all PLMNs when multiple PLMNs are in SIB1. When set to 'barred', the cell is barred for all UEs including emergency calls. Please refer to  TS 38.331 [22]. |
| 37 | >>>  intraFreqResel ection | ELEMENT |  |  | Indicated in MIB message. It controls cell selection/reselection to intra- frequency cells when the highest-ranked cell is barred or treated as barred by the UE. In the case of multiple PLMNs indicated in SIB1, this field is  common for all PLMNs. Please refer to TS 38.331 [22]. |
| 38 | >>  cellReservedFo rOperatorUse | ELEMENT |  |  | Indicated in SIB1 message, per- PLMN configuration. When set to 'reserved', the cell is treated as a candidate by the UE with |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
|  |  |  |  |  | access identity (i.e.) 11 and 15 operating in their HPLMN/EHPLMN. UEs  assigned to an Access Identity 0, 1, 2 and 12 to 14 shall behave as if the cell status is "barred" for the registered PLMN or the selected PLMN.  Please refer to TS 38.331 [22]. |
| 39 | >>  cellReservedFo rOtherUse |  |  |  | Indicated in SIB1 message, applicable to all PLMNs indicated in SIB1. Please refer to TS 38.331 [22]. |

</div>

#### RRC Connection Release Control

Upon receiving the *RIC Control Request* message, the E2 node shall invoke procedures related to RRC Connection Release control, such as *RRC Message Transfer*, etc. and include the IEs corresponding to one or more of parameters described below in the related interface messages.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **RAN**  **Parameter ID** | **RAN Parameter** | **RAN**  **Parameter Value Type** | **Key Flag** | **RAN Parameter Definition** | **Semantics Description** |
| 1 | CHOICE Redirected Carrier Info | STRUCTURE |  |  | *redirectedCarrierInfo* IE in TS 36.331 [23] |
| 2 | >E-UTRA | STRUCTURE |  | *eutra* IE in TS  36.331 [23] |  |
| 3 | >>EARFCN | ELEMENT | FALSE | *ARFCN-*  *ValueEUTRA* IE in TS 36.331 [23] |  |
| 4 | >NR | STRUCTURE |  | *nr-r15* IE in TS  36.331 [23] |  |
| 5 | >>Carrier Info NR | STRUCTURE |  |  | *CarrierInfoNR-r15* IE in TS  36.331 [23] |
| 6 | >>>Carrier Frequency | ELEMENT | FALSE | *ARFCN-ValueNR-*  *r15* IE in TS  36.331 [23] |  |
| 7 | >>>Subcarrier Spacing SSB | ELEMENT | FALSE | *subcarrierSpacing SSB-r15* IE in TS  36.331 [23] |  |
| 8 | Idle Mode Mobility Control Info | STRUCTURE |  |  | *IdleModeMobilityControlInf o* IE in TS 36.331 [23] |
| 9 | >Frequency Priority List E- UTRA | LIST |  |  | *FreqPriorityListEUTRA* IE in TS 36.331 [23] |
| 10 | >>Frequency Priority Item E-UTRA | STRUCTURE |  |  | *FreqPriorityEUTRA* IE in TS 36.331 [23] |
| 11 | >>>Carrier Frequency | ELEMENT | FALSE | carrierFreq IE in TS 38.331 [22] |  |
| 12 | >>>Cell Reselection Priority | ELEMENT | FALSE | *cellReselectionPri ority* IE in TS  38.331 [22] |  |
| 13 | >>>Cell Reselection Sub Priority | ELEMENT | FALSE | *cellReselectionSu bPriority* IE in TS  38.331 [22] |  |
| 14 | >Frequency Priority List NR | LIST |  |  | *FreqPriorityListNR* IE in TS 38.331 [22] |
| 15 | >>Frequency Priority Item NR | STRUCTURE |  |  | *FreqPriorityNR* IE in TS  38.331 [22] |
| 16 | >>>Carrier Frequency | ELEMENT | FALSE | *carrierFreq* IE in TS 38.331 [22] |  |
| 17 | >>>Cell Reselection Priority | ELEMENT | FALSE | *cellReselectionPri ority* IE in TS  38.331 [22] |  |
| 18 | >>>Cell Reselection Sub Priority | ELEMENT | FALSE | *cellReselectionSu bPriority* IE in TS  38.331 [22] |  |
| 19 | >T-320 timer expiry | ELEMENT | FALSE | *t320* IE in TS  38.331 [22] |  |

</div>

#### RRC Connection Reject Control

Upon receiving the *RIC Control Request* message, the E2 node shall invoke procedures related to RRC Connection Reject, such as *RRC Message Transfer*, etc. and include the IEs corresponding to one or more of parameters described below in the related interface messages.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **RAN**  **Parameter ID** | **RAN Parameter** | **RAN**  **Parameter Value Type** | **Key Flag** | **RAN Parameter Definition** | **Semantics Description** |
| 1 | Wait Time | ELEMENT | FALSE | *waitTime* IE in TS  36.331 [23] |  |
| 2 | Deprioritization Requirement | STRUCTURE |  |  | *deprioritisationReq-r11* IE in TS 36.331 [23] |
| 3 | >Deprioritization Type | ELEMENT | FALSE | *deprioritisationTyp e-r11* IE in TS  36.331 [23] |  |
| 4 | >Deprioritization Timer | ELEMENT | FALSE | *deprioritisationTim*  *er-r11* IE in TS  36.331 [23] |  |
| 5 | RRC Suspend Indication | ELEMENT | FALSE | *rrc- SuspendIndication*  *-r13* IE in TS  36.331 [23] |  |

</div>

### Dual Connectivity Control

#### DC Secondary Node Addition Control

Upon receiving the *RIC Control Request* message, the E2 node shall invoke procedures related to DC Secondary Node Addition Control, such as *Dual Connectivity Secondary Node Addition*, *UE Context Management*, *RRC Message Transfer*, etc. and include the IEs corresponding to one or more of parameters described below in the related interface messages. If the *Secondary Node ID* is missing in the *RIC Control Request* message, the E2 node will send a *RIC Control Failure*.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **RAN**  **Parameter ID** | **RAN Parameter** | **RAN Parameter Value Type** | **Key Flag** | **RAN Parameter Definition** | **Semantics Description** |
| 1 | Secondary Node ID | STRUCTURE |  |  | *Global NG-RAN Node ID* IE in TS  38.423 [15]  Clause 9.2.2.3 |
| 2 | >CHOICE Secondary Node Type | STRUCTURE |  |  |  |
| 3 | >>Secondary Node gNB | STRUCTURE |  |  | *Global ng-eNB ID*  IE in TS 38.423  [15] Clause  9.2.2.1 |
| 4 | >>>PLMN Identity | ELEMENT | FALSE | *PLMN Identity* IE in TS 38.423 [15]  Clause 9.2.2.4 |  |
| 5 | >>>gNB ID | ELEMENT | FALSE | *gNB ID* IE in TS  38.423 [15]  Clause 9.2.2.1 |  |
| 6 | >>Secondary Node ng- eNB | STRUCTURE |  |  | *Global ng-eNB ID*  IE in TS 38.423  [15] Clause  9.2.2.2 |
| 7 | >>>PLMN Identity | ELEMENT | FALSE | *PLMN Identity* IE in TS 38.423 [15]  Clause 9.2.2.4 |  |
| 8 | >>>ng-eNB ID | ELEMENT | FALSE | *Long Macro ng- eNB ID* IE in TS  38.423 [15]  Clause 9.2.2.2 |  |
| 9 | >>Secondary Node en- gNB | STRUCTURE |  |  | *en-gNB* IE in TS  36.423 [17] Sec |
| 10 | >>>PLMN Identity | ELEMENT | FALSE | *PLMN Identity* IE in TS 36.423 [17]  Clause 9.2.4 |  |
| 11 | >>>en-gNB ID | ELEMENT | FALSE | *Global en-gNB ID*  IE in TS 36.423  [17] Clause 9.2.4 |  |
| 12 | List of PDU Sessions to be Added | LIST |  |  | *PDU Session Resources To Be Added List* IE in TS 38.423 [15]  Clause 9.1.2.1 |
| 13 | >PDU Session to be Added Item | STRUCTURE |  |  | *PDU Session Resources To Be Added Item* IE in TS 38.423 [15]  Clause 9.1.2.1 |
| 14 | >>PDU Session ID | ELEMENT | TRUE | *PDU Session ID*  IE in TS 38.423  [15] Clause  9.2.3.18 |  |
| 15 | >>PDU Session Resource Setup Info - SN-Terminated | STRUCTURE |  |  | *PDU Session Resource Setup Info - SN Terminated* IE in TS 38.423 [15]  Clause 9.2.1.5 |
| 16 | >>>QoS Flow To Be Setup List | LIST |  |  | *QoS Flows To Be Setup List* IE in TS  38.423 [15]  Clause 9.2.1.5 |
| 17 | >>>>QoS Flow Item | STRUCTURE |  |  | *QoS Flows To Be Setup Item* IE in TS 38.423 [15]  Clause 9.2.1.5 |
| 18 | >>>>>QoS  Flow | ELEMENT | TRUE | *QoS Flow Identifier* IE in TS |  |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
|  | Identifier |  |  | 38.423 [15]  Clause 9.2.3.10 |  |
| 19 | >>>>>QoS  Flow Mapping Indication | ELEMENT | FALSE | *QoS Flow Mapping Indication* IE in TS 38.423 [15]  Clause 9.2.3.79 |  |
| 20 | >>>Default DRB allowed | ELEMENT | FALSE | *Default DRB Allowed* IE in TS  38.423 [15]  Clause 9.2.3.93 |  |
| 21 | >>PDU Session Resource Setup Info - MN-Terminated | STRUCTURE |  |  | *PDU Session Resource Setup Info - SN Terminated* IE in TS 38.423 [15]  Clause 9.2.1.7 |
| 22 | >>>DRBs To Be  Setup List | STRUCTURE |  |  | *DRBs To Be Setup List* IE in TS  38.423 [15]  Clause 9.2.1.7 |
| 23 | >>>>DRB To Be  Setup Item | STRUCTURE |  |  | *DRBs To Be Setup Item* IE in TS 38.423 [15]  Clause 9.2.1.7 |
| 24 | >>>>>DRB ID | ELEMENT | TRUE | *DRB ID* IE in TS  37.483 [21]  Clause 9.3.1.16 |  |
| 25 | >>>>>QoS  Flow To Be Setup List | LIST |  |  | *QoS Flows To Be Setup List* IE in TS  38.423 [15]  Clause 9.2.1.5 |
| 26 | >>>>>>Q  oS Flow Item | STRUCTURE |  |  | *QoS Flow Item* IE in TS 38.423 [15]  Clause 9.2.3.10 |
| 27 | >>>>  >>>Q  oS Flow Identif  ier | ELEMENT | TRUE | *QoS Flow Identifier* IE in TS  38.423 [15]  Clause 9.2.3.10 |  |
| 28 | >>>>  >>>Q  oS Flow Mappi ng Indica  tion | ELEMENT | FALSE | *QoS Flow Mapping Indication* IE in TS 38.423 [15]  Clause 9.2.3.79 |  |
| 29 | List of SN-terminated DRB IDs | LIST |  |  | *Additional DRB IDs* IE in TS  38.423 [15]  Clause 9.2.1.29 |
| 30 | >SN-Terminated DRB Item | STRUCTURE |  |  |  |
| 31 | >>DRB Identity | ELEMENT | TRUE | *DRB ID* IE in TS  38.473 [19]  Clause 9.3.1.8 |  |
| 32 | List of E-RABs to be Added | LIST |  |  | *E-RABs To Be Added List* IE in TS 36.423 [17]  Clause 9.1.4.1 |
| 33 | >E-RAB to be Added Item | STRUCTURE |  |  | *E-RABs To Be Added Item* IE in TS 36.423 [17]  Clause 9.1.4.1 |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| 34 | >>E-RAB ID | ELEMENT | TRUE | *E-RAB ID* IE in TS 36.423 [17]  Clause 9.2.23 |  |
| 35 | >>EN-DC Resource Configuration | STRUCTURE |  |  | *EN-DC Resource Configuration* IE in TS 36.423 [17]  Clause 9.2.108 |
| 36 | >>>PDCP at SgNB | ELEMENT | FALSE | *PDCP at SgNB*  IE in TS 36.423  [17] Clause  9.2.108 |  |
| 37 | >>>MCG Resources | ELEMENT | FALSE | *MCG resources*  IE in TS 36.423  [17] Clause  9.2.108 |  |
| 38 | >>>SCG Resources | ELEMENT | FALSE | *SCG resources*  IE in TS 36.423  [17] Clause  9.2.108 |  |

</div>

#### DC Secondary Node Modification Control

Upon receiving the *RIC Control Request* message, the E2 node shall invoke procedures related to DC Secondary Node Modification Control, such as *Dual Connectivity Secondary Node Modification*, *UE Context Management*, *RRC Message Transfer*, etc. and include the IEs corresponding to one or more of parameters described below in the related interface messages.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **RAN**  **Parameter ID** | **RAN Parameter** | **RAN**  **Parameter Value Type** | Key  **Flag** | **RAN Parameter Definition** | **Semantics Description** |
| 1 | Secondary Node | STRUCTURE |  |  | *Global NG-RAN Node ID* IE in TS  38.423 [15] Clause  9.2.2.3 |
| 2 | CHOICE Secondary Node Type | STRUCTURE |  |  |  |
| 3 | >Secondary Node gNB | STRUCTURE |  |  | *Global gNB ID* IE in TS 38.423 [15]  Clause 9.2.2.1 |
| 4 | >>PLMN Identity | ELEMENT | FALSE | *PLMN Identity* IE in TS 38.423 [15]  Clause 9.2.2.4 |  |
| 5 | >>gNB ID | ELEMENT | FALSE | *gNB ID* IE in TS  38.423 [15] Clause  9.2.2.1 |  |
| 6 | >Secondary Node ng-eNB | STRUCTURE |  |  | *Global ng-eNB ID*  IE in TS 38.423  [15] Clause 9.2.2.2 |
| 7 | >>PLMN Identity | ELEMENT | FALSE | *PLMN Identity* IE in TS 38.423 [15]  Clause 9.2.2.4 |  |
| 8 | >>ng-eNB ID | ELEMENT | FALSE | *Long Macro ng-eNB ID* IE in TS 38.423  [15] Clause 9.2.2.2 |  |
| 9 | >Secondary Node en-gNB | STRUCTURE |  |  | *en-gNB* IE in TS  36.423 [17] Sec |
| 10 | >>PLMN Identity | ELEMENT | FALSE | *PLMN Identity* IE in TS 36.423 [17]  Clause 9.2.4 |  |
| 11 | >>en-gNB ID | ELEMENT | FALSE | *Global en-gNB ID* IE in TS 36.423 [17]  Clause 9.2.4 |  |
| 12 | List of PDU Session Resources to be modified | LIST |  |  | PDU Session Resources To Be Modified List IE in TS 38.423 [15]  Clause 9.1.2.5 |
| 13 | >PDU Session Resource to be Modified Item | STRUCTURE |  |  | PDU Session Resources To Be Modified Item IE in TS 38.423 [15]  Clause 9.1.2.5 |
| 14 | >>PDU Session ID | ELEMENT | TRUE | *PDU Session ID* IE in TS 38.423 [15]  Clause 9.2.3.18 |  |
| 15 | >>PDU Session Resource Modification Info - SN- Terminated | STRUCTURE |  |  | PDU Session Resource Modification Info - SN Terminated IE in TS 38.423 [15]  Clause 9.2.1.9 |
| 16 | >>>QoS Flows To Be Setup List | LIST |  |  | *QoS Flows To Be Setup List* IE in TS  38.423 [15] Clause  9.2.1.9 |
| 17 | >>>>QoS Flow Item | STRUCTURE |  |  | *QoS Flows To Be Setup Item* IE in TS  38.423 [15] Clause  9.2.1.9 |
| 18 | >>>>>QoS Flow Identifier | ELEMENT | TRUE | *QoS Flow Identifier*  IE in TS 38.423 [15]  Clause 9.2.3.10 |  |
| 19 | >>>>>QoS Flow Mapping | ELEMENT | FALSE | *QoS Flow Mapping Indication* IE in TS |  |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
|  | Indication |  |  | 38.423 [15] Clause  9.2.3.79 |  |
| 20 | >>>>>Redunda  nt QoS Flow Indicator | ELEMENT | FALSE |  |  |
| 21 | >>>QoS Flows To Be Modified List | LIST |  |  | *QoS Flows To Be Modified List* IE in TS 38.423 [15]  Clause 9.2.1.9 |
| 22 | >>>>QoS Flow Item | STRUCTURE |  |  | *QoS Flows To Be Modified Item* IE in TS 38.423 [15]  Clause 9.2.1.9 |
| 23 | >>>>QoS Flow Identifier | ELEMENT | TRUE | *QoS Flow Identifier*  IE in TS 38.423 [15]  Clause 9.2.3.10 |  |
| 24 | >>>>QoS Flow Mapping Indication | ELEMENT | FALSE | *QoS Flow Mapping Indication* IE in TS  38.423 [15] Clause  9.2.3.79 |  |
| 25 | >>>>Redundant QoS Flow Indicator | ELEMENT | FALSE | *Redundant QoS Flow Indicator* IE in TS 38.423 [15]  Clause 9.2.3.118 |  |
| 26 | >>>QoS Flows To Be Released List | LIST |  |  | *QoS Flows To Be Released List* IE in TS 38.423 [15]  Clause 9.2.1.9 |
| 27 | >>>>QoS Flow Item | STRUCTURE |  |  | *QoS Flow With Cause Item* IE in TS 38.423 [15]  Clause 9.2.1.4 |
| 28 | >>>>QoS Flow Identifier | ELEMENT | TRUE | *QoS Flow Identifier*  IE in TS 38.423 [15]  Clause 9.2.3.10 |  |
| 29 | >>>Default DRB allowed | ELEMENT | FALSE | *Default DRB Allowed* IE in TS  38.423 [15] Clause  9.2.3.93 |  |
| 30 | >>PDU Session Resource Modification Info - MN- Terminated | STRUCTURE |  |  | *PDU Session Resource Modification Info - MN Terminated* IE in TS 38.423 [15]  Clause 9.2.1.11 |
| 31 | >>>DRBs to be setup list | LIST |  |  | *DRBs To Be Setup List* IE in TS  38.423 [15] Clause  9.2.1.11 |
| 32 | >>>>DRBs to be setup item | STRUCTURE |  |  | *DRBs To Be Setup Item* IE in TS  38.423 [15] Clause  9.2.1.11 |
| 33 | >>>>>DRB ID | ELEMENT | TRUE | *DRB ID* IE in TS  37.483 [21] Clause  9.3.1.16 |  |
| 34 | >>>>>DRB QoS | STRUCTURE |  |  |  |
| 35 | >>>>>PDCP  Duplication Activation | ELEMENT | TRUE | *Duplication Activation* IE in TS  37.483 [21] Clause  9.2.3.71 |  |
| 36 | >>>>>QoS  Flows Mapped to DRB List | LIST |  |  | *QoS Flows Mapped to DRB List* IE in TS  37.483 [21] Clause  9.2.1.11 |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| 37 | >>>>>>QoS  Flows Mapped to DRB Item | STRUCTURE |  |  | *QoS Flows Mapped To DRB Item* IE in TS  37.483 [21] Clause  9.2.1.11 |
| 38 | >>>>>>>  QoS Flow Identifier | ELEMENT | TRUE | *QoS Flow Identifier*  IE in TS 38.423 [15]  Clause 9.2.3.10 |  |
| 39 | >>>>>>>  QoS Flow Mapping  Indication | ELEMENT | FALSE | *QoS Flow Mapping Indication* IE in TS  38.423 [15] Clause  9.2.3.79 |  |
| 40 | >>>DRBs to be modified list | LIST |  |  | *DRBs To Be Modified List* IE in TS 37.483 [21]  Clause 9.2.1.11 |
| 41 | >>>>DRB to be modified item | STRUCTURE |  |  | *DRBs To Be Modified Item* IE in TS 37.483 [21]  Clause 9.2.1.11 |
| 42 | >>>>>DRB ID | ELEMENT | TRUE | *DRB ID* IE in TS  37.483 [21] Clause  9.3.1.16 |  |
| 43 | >>>>>DRB QoS | STRUCTURE |  |  |  |
| 44 | >>>>>PDCP  Duplication Configuration | ELEMENT | FALSE | *PDCP Duplication Configuration* IE in TS 37.483 [21]  Clause 9.2.3.86 |  |
| 45 | >>>>>PDCP  Duplication Activation | ELEMENT | FALSE | *Duplication Activation* IE in TS  37.483 [21] Clause  9.2.3.71 |  |
| 46 | >>>>>QoS  Flows Mapped to DRB List | LIST |  |  | *Flow Mapping Information* IE in TS 37.483 [21]  Clause 9.3.1.26 |
| 47 | >>>>>>QoS  Flows Mapped to  DRB Item | STRUCTURE |  |  | *QoS Flow Item* IE in TS 37.483 [21]  Clause 9.3.1.25 |
| 48 | >>>>>>>  QoS  Flow Identifier | ELEMENT | TRUE | *QoS Flow Identifier*  IE in TS 38.423 [15]  Clause 9.2.3.10 |  |
| 49 | >>>>>>>  QoS Flow  Mapping Indication | ELEMENT | FALSE | *QoS Flow Mapping Indication* IE in TS  38.423 [15] Clause  9.2.3.79 |  |
| 50 | >>>DRBs to be released list | LIST |  |  | *DRBs To Be Released List* IE in TS 38.423 [15]  Clause 9.2.1.28 |
| 51 | >>>>DRB to be released item | STRUCTURE |  |  | *DRBs To Be Setup Item* IE in TS  38.423 [15] Clause  9.2.1.11 |
| 52 | >>>>>DRB ID | ELEMENT | TRUE | *DRB ID* IE in TS  37.483 [21] Clause  9.3.1.16 |  |
| 53 | List of PDU Session Resources to be deleted | LIST |  |  | *PDU Session Resources To Be Released List* IE in  TS 38.423 [15] |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
|  |  |  |  |  | Clause 9.1.2.5 |
| 54 | >PDU Session Resource to be deleted Item | STRUCTURE |  |  | *PDU Session*  *Resource To Be Released Item* IE |
| 55 | >>PDU Session ID | ELEMENT | TRUE | *PDU Session ID* IE in TS 38.423 [15]  Clause 9.2.3.18 |  |
| 56 | List of E-RABs to be Modified | LIST |  |  | *E-RABs To Be Modified List* IE in TS 36.423 [17]  Clause 9.1.4.5 |
| 57 | >E-RAB to be Modified Item | STRUCTURE |  |  | *E-RAB To Be*  *Modified Item* IE in TS 36.423 [17]  Clause 9.1.4.5 |
| 58 | >>E-RAB ID | ELEMENT | TRUE | *E-RAB ID* IE in TS  36.423 [17] Clause  9.2.23 |  |
| 59 | >>EN-DC Resource Configuration | STRUCTURE |  |  | *EN-DC Resource Configuration* IE in TS 36.423 [17]  Clause 9.2.108 |
| 60 | >>>PDCP at SgNB | ELEMENT | FALSE | *PDCP at SgNB* IE in TS 36.423 [17]  Clause 9.2.108 |  |
| 61 | >>>MCG Resources | ELEMENT | FALSE | *MCG resources* IE in TS 36.423 [17]  Clause 9.2.108 |  |
| 62 | >>>SCG Resources | ELEMENT | FALSE | *SCG resources* IE in TS 36.423 [17]  Clause 9.2.108 |  |
| 63 | List of E-RABs to be Released | LIST |  |  | *E-RABs To Be Released List* IE in TS 36.423 [17]  Clause 9.1.4.5 |
| 64 | >E-RAB to be Released Item | STRUCTURE |  |  | *E-RABs To Be Released Item* IE in TS 36.423 [17]  Clause 9.1.4.5 |
| 65 | >>E-RAB ID | ELEMENT | TRUE | *E-RAB ID* IE in TS  36.423 [17] Clause  9.2.23 |  |

</div>

#### PSCell Change control for Secondary Cell Group

Upon receiving the *RIC Control Request* message, in the case of intra-SN PSCell change, the E2 node shall invoke procedures related to PSCell Change Control, such as *Dual Connectivity Secondary Node Modification*, *UE Context Modification*, *RRC Message Transfer*, etc. In the case of inter-SN PSCell change, the E2 node shall invoke procedures such as *Dual Connectivity Secondary Node Release* (MN/SN-initiated) or *SN Change* (only SN-initiated), *Bearer Context Modification*, *UE Context Modification*, *RRC Message Transfer*, etc. The E2 node then includes the IEs corresponding to one or more of parameters described below in the related interface messages.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **RAN**  **Parameter ID** | **RAN Parameter** | **RAN**  **Parameter Value Type** | **Key Flag** | **RAN Parameter Definition** | **Semantics Description** |
| 1 | Target PSCell ID | STRUCTURE |  |  | *Target Cell Global ID*  IE in TS 38.423 [15]  Clause 9.2.3.25 |
| 2 | >CHOICE Target Cell | STRUCTURE |  |  | *Target Cel*l IE in TS  38.423 [15] Clause  9.2.3.25 |
| 3 | >>NR Cell | STRUCTURE |  |  | *NR* IE in TS 38.423  [15] Clause 9.2.3.25 |
| 4 | >>>NR CGI | ELEMENT | FALSE | *NR CGI* IE in TS  38.423 [15]  Clause 9.2.2.7 |  |
| 5 | >>E-UTRA Cell | STRUCTURE |  |  | *E-UTRA* IE in TS  38.423 [15] Clause  9.2.3.25 |
| 6 | >>>E-UTRA CGI | ELEMENT | FALSE | *E-UTRA CGI* IE in TS 38.423 [15]  Clause 9.2.2.8 |  |
| 7 | Secondary Node ID | STRUCTURE |  |  | *Global NG-RAN Node ID* IE in TS 38.423  [15] Clause 9.2.2.3 |
| 8 | >CHOICE Secondary Node Type | STRUCTURE |  |  |  |
| 9 | >>Secondary Node gNB | STRUCTURE |  |  | *Global gNB ID* IE in TS 38.423 [15]  Clause 9.2.2.1 |
| 10 | >>>PLMN  Identity | ELEMENT | FALSE | *PLMN Identity* IE in TS 38.423 [15]  Clause 9.2.2.4 |  |
| 11 | >>>gNB ID | ELEMENT | FALSE | *gNB ID* IE in TS  38.423 [15]  Clause 9.2.2.1 |  |
| 12 | >>Secondary Node ng-eNB | STRUCTURE |  |  | *Global ng-eNB ID* IE in TS 38.423 [15]  Clause 9.2.2.2 |
| 13 | >>>PLMN  Identity | ELEMENT | FALSE | *PLMN Identity* IE in TS 38.423 [15]  Clause 9.2.2.4 |  |
| 14 | >>>ng-eNB ID | ELEMENT | FALSE | *Long Macro ng- eNB ID* IE in TS  38.423 [15]  Clause 9.2.2.2 |  |
| 15 | >>Secondary Node en-gNB | STRUCTURE |  |  | *en-gNB* IE in TS  36.423 [17] Sec |
| 16 | >>>PLMN  Identity | ELEMENT | FALSE | *PLMN Identity* IE in TS 36.423 [17]  Clause 9.2.4 |  |
| 17 | >>>en-gNB ID | ELEMENT | FALSE | *Global en-gNB ID*  IE in TS 36.423  [17] Clause 9.2.4 |  |
| 18 | PDU Session SN Change Required List | LIST |  |  | *PDU Session SN Change Required List* IE in TS 38.423 [15]  Clause 9.1.2.11 |
| 19 | >PDU Session SN Change Required Item | STRUCTURE |  |  | *PDU Session SN Change Required Item* IE in TS 38.423  [15] Clause 9.1.2.11 |
| 20 | >>PDU Session ID | ELEMENT | TRUE | *PDU Session ID*  IE in TS 38.423  [15] Clause  9.2.3.18 |  |
| 21 | >>List of QoS flows in the PDU session | LIST |  |  | *QoS Flows To Be Setup List* IE in TS  38.423 [15] Clause |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
|  |  |  |  |  | 9.2.1.1 |
| 22 | >>>QoS flow Item | STRUCTURE |  |  | *QoS Flow To Be Setup Item* IE in TS  38.423 [15] Clause  9.2.1.1 |
| 23 | >>>>QoS  Flow Identifier | ELEMENT | TRUE | *QoS Flow Identifier* IE in TS  38.423 [15]  Clause 9.2.3.10 |  |
| 24 | List of DRBs for PSCell handover | LIST |  |  | *DRB to Be Setup List*  IE in TS 38.473 [19]  Clause 9.2.2.1 |
| 25 | >DRB item for PSCell handover | STRUCTURE |  |  | *DRB to Be Setup Item* IE in TS 38.473  [19] Clause 9.2.2.1 |
| 26 | >>DRB ID | ELEMENT | TRUE | *DRB ID* IE in TS  38.473 [19]  Clause 9.3.1.8 |  |
| 27 | >>List of QoS flows in the DRB | LIST |  |  | *QoS Flows Information To Be Setup* IE in TS 37.483  [21] Clause 9.3.3.2 |
| 28 | >>>QoS flow Item | STRUCTURE |  |  | *QoS Flow Item* IE in TS 37.483 [21]  Clause 9.3.1.25 |
| 29 | >>>>QoS  flow Identifier | ELEMENT | TRUE | *QoS Flow Identifier* IE in TS  37.483 [21]  Clause 9.3.1.24 |  |

</div>

#### DC Secondary Node Change Control

Upon receiving the RIC Control Request message, the E2 node shall invoke procedures such as Dual Connectivity Secondary Node Release (MN/SN-initiated) or SN Change (only SN-initiated), Bearer Context Modification, UE Context Modification, RRC Message Transfer, etc. and includes the IEs corresponding to one or more of parameters described below in the related interface messages.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **RAN**  **Parameter ID** | **RAN Parameter** | **RAN**  **Parameter Value Type** | **Key Flag** | **RAN Parameter Definition** | **Semantics Description** |
| 1 | Target PSCell ID | STRUCTURE |  |  | *Target Cell Global ID*  IE in TS 38.423 [15]  Clause 9.2.3.25 |
| 2 | >CHOICE Target Cell | STRUCTURE |  |  | *Target Cell* IE in TS  38.423 [15] Clause  9.2.3.25 |
| 3 | >>NR Cell | STRUCTURE |  |  | *NR* IE in TS 38.423  [15] Clause 9.2.3.25 |
| 4 | >>>NR CGI | ELEMENT | FALSE | *NR CGI* IE in TS  38.423 [15]  Clause 9.2.2.7 |  |
| 5 | >>E-UTRA Cell | STRUCTURE |  |  | *E-UTRA* IE in TS  38.423 [15] Clause  9.2.3.25 |
| 6 | >>>E-UTRA CGI | ELEMENT | FALSE | *E-UTRA CGI* IE in TS 38.423 [15]  Clause 9.2.2.8 |  |
| 7 | Target Secondary Node ID | STRUCTURE |  |  | *Target S-NG-RAN node ID* IE in TS  38.423 [15] Clause  9.1.2.11 |
| 8 | >CHOICE Target Secondary Node Type | STRUCTURE |  |  |  |
| 9 | >>Secondary Node gNB | STRUCTURE |  |  | *Global gNB ID* IE in TS 38.423 [15]  Clause 9.2.2.1 |
| 10 | >>>PLMN  Identity | ELEMENT | FALSE | *PLMN Identity* IE in TS 38.423 [15]  Clause 9.2.2.4 |  |
| 11 | >>>gNB ID | ELEMENT | FALSE | *gNB ID* IE in TS  38.423 [15]  Clause 9.2.2.1 |  |
| 12 | >>Secondary Node ng-eNB | STRUCTURE |  |  | *Global ng-eNB ID* IE in TS 38.423 [15]  Clause 9.2.2.2 |
| 13 | >>>PLMN  Identity | ELEMENT | FALSE | *PLMN Identity* IE in TS 38.423 [15]  Clause 9.2.2.4 |  |
| 14 | >>>ng-eNB ID | ELEMENT | FALSE | *Long Macro ng- eNB ID* IE in TS  38.423 [15]  Clause 9.2.2.2 |  |
| 15 | >>Secondary Node en-gNB | STRUCTURE |  |  | *en-gNB* IE in TS  36.423 [17] Sec |
| 16 | >>>PLMN  Identity | ELEMENT | FALSE | *PLMN Identity* IE in TS 36.423 [17]  Clause 9.2.4 |  |
| 17 | >>>en-gNB ID | ELEMENT | FALSE | *Global en-gNB ID*  IE in TS 36.423  [17] Clause 9.2.4 |  |
| 18 | PDU Session SN Change Required List | LIST |  |  | *PDU Session SN Change Required List* IE in TS 38.423 [15]  Clause 9.1.2.11 |
| 19 | >PDU Session SN Change Required Item | STRUCTURE |  |  | *PDU Session SN Change Required Item* IE in TS 38.423  [15] Clause 9.1.2.11 |
| 20 | >>PDU Session ID | ELEMENT | TRUE | *PDU Session ID*  IE in TS 38.423  [15] Clause  9.2.3.18 |  |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| 21 | >>List of QoS flows in the PDU session | LIST |  |  | *QoS Flows To Be Setup List* IE in TS  38.423 [15] Clause  9.2.1.1 |
| 22 | >>>QoS flow Item | STRUCTURE |  |  | *QoS Flow To Be Setup Item* IE in TS  38.423 [15] Clause  9.2.1.1 |
| 23 | >>>>QoS  Flow Identifier | ELEMENT | TRUE | *QoS Flow Identifier* IE in TS  38.423 [15]  Clause 9.2.3.10 |  |
| 24 | List of DRBs for PSCell handover | LIST |  |  | *DRB to Be Setup List*  IE in TS 38.473 [19]  Clause 9.2.2.1 |
| 25 | >DRB item for PSCell handover | STRUCTURE |  |  | *DRB to Be Setup Item*  IE in TS 38.473 [19]  Clause 9.2.2.1 |
| 26 | >>DRB ID | ELEMENT | TRUE | *DRB ID* IE in TS  38.473 [19]  Clause 9.3.1.8 |  |
| 27 | >>List of QoS flows in the DRB | LIST |  |  | *QoS Flows Information To Be*  *Setup* IE in TS 37.483  [21] Clause 9.3.3.2 |
| 28 | >>>QoS flow Item | STRUCTURE |  |  | *QoS Flow Item* IE in TS 37.483 [21]  Clause 9.3.1.25 |
| 29 | >>>>QoS  flow Identifier | ELEMENT | TRUE | *QoS Flow Identifier* IE in TS  37.483 [21]  Clause 9.3.1.24 |  |

</div>

### Carrier Aggregation Control

#### Secondary cell Addition control

Upon receiving the *RIC Control Request* message, the E2 node shall invoke procedures related to Secondary cell Addition Control, such as *UE Context Management*, *RRC Message Transfer*, etc. and include the IEs corresponding to one or more of parameters described below in the related interface messages.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **RAN**  **Parameter ID** | **RAN Parameter** | **RAN**  **Parameter Value Type** | **Key Flag** | **RAN Parameter Definition** | **Semantics Description** |
| 1 | List of secondary cells to be setup | LIST |  |  | *Scell To Be Setup List* IE in TS 38.473 [19] Clause  9.2.2.1 |
| 2 | >Secondary cell to be setup Item | STRUCTURE |  |  | *Scell To Be Setup Item Ies* IE in TS 38.473 [19]  Clause 9.2.2.1 |
| 3 | >>Scell Cell Global ID | ELEMENT | FALSE | *Scell ID* IE in TS  38.473 [19]  Clause 9.2.2.1 |  |
| 4 | >>Scell UL Configured | ELEMENT | FALSE | *Cell UL Configured* IE in TS 38.473 [19]  Clause 9.3.1.33 |  |
| 5 | List of DRBs to be served using SCells | LIST |  |  | *DRB to Be Setup List* IE in TS 38.473 [19] Clause  9.2.2.1 |
| 6 | >DRB item | STRUCTURE |  |  | *DRB to Be Setup Item* IE in TS 38.473 [19] Clause  9.2.2.1 |
| 7 | >>DRB ID | ELEMENT | TRUE | DRB ID IE in TS  38.473 [19]  Clause 9.3.1.8 |  |
| 8 | >>List of QoS flows in the DRB | LIST |  |  | *QoS Flows Information To Be Setup* IE in TS  37.483 [21] Clause  9.3.3.2 |
| 9 | >>>QoS flow Item | STRUCTURE |  |  | *QoS Flow Item* IE in TS  37.483 [21] Clause  9.3.1.25 |
| 10 | >>>>QoS flow Identifier | ELEMENT | TRUE | *QoS Flow Identifier* IE in TS  37.483 [21]  Clause 9.3.1.24 |  |

</div>

#### Secondary cell Modification control

Upon receiving the *RIC Control Request* message, the E2 node shall invoke procedures related to Secondary cell Modification Control, such as *UE Context Management*, *RRC Message Transfer*, etc. and include the IEs corresponding to one or more of parameters described below in the related interface messages.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **RAN**  **Parameter ID** | **RAN Parameter** | **RAN**  **Parameter Value Type** | **Key Flag** | **RAN Parameter Definition** | **Semantics Description** |
| 1 | List of secondary cells to be setup | LIST |  |  | *Scell To Be Setup List* IE in TS 38.473 [19] Clause  9.2.2.1 |
| 2 | >Secondary cell to be setup Item | STRUCTURE |  |  | *Scell To Be Setup Item Ies*  IE in TS 38.473 [19] Clause  9.2.2.1 |
| 3 | >>Scell Global ID | ELEMENT | FALSE | *Scell ID* IE in TS 38.473  [19] Clause 9.2.2.1 |  |
| 4 | >>Scell UL Configured | ELEMENT | FALSE | *Cell UL Configured* IE in TS 38.473 [19] Clause  9.3.1.33 |  |
| 5 | List of Scells to be removed | LIST |  |  | *SCell To Be Removed List*  IE in TS 38.473 [19] Clause  9.2.2.7 |
| 6 | >Scell to be removed Item | STRUCTURE |  |  | *SCell to Be Removed Item IEs* IE in TS 38.473 [19]  Clause 9.2.2.7 |
| 7 | >>Scell Global ID | ELEMENT | FALSE | *Scell ID* IE in TS 38.473  [19] Clause 9.2.2.1 |  |

</div>

### Idle Mode Mobility Control

#### Cell reselection priority control

Upon receiving the *RIC Control Request* message, the E2 node shall invoke procedures related to cell reselection priority control, such as *RRC Message Transfer*, etc. and include the IEs corresponding to one or more of parameters described below in the related interface messages.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **RAN**  **Parameter ID** | **RAN Parameter** | **RAN**  **Parameter Value Type** | **Key Flag** | **RAN**  **Parameter Definition** | ***Semantics Description*** |
| 1 | Cell Reselection Priorities | STRUCTURE |  |  | *IdleModeMobilityC ontrolInfo* IE in TS  36.331 [23] |
| 2 | >Frequency Priority List E-UTRA | LIST |  |  | *FreqPriorityListEU TRA* IE in TS  38.331 [22] |
| 3 | >>Frequency Priority Item E- UTRA | STRUCTURE |  |  | *FreqPriorityEUTRA* IE in TS 38.331 [22] |
| 4 | >>>Carrier Frequency | ELEMENT | FALSE | *carrierFreq* IE in TS 38.331  [22] |  |
| 5 | >>>Cell Reselection Priority | ELEMENT | FALSE | *cellReselection Priority* IE in  TS 38.331 [22] |  |
| 6 | >>>Cell Reselection Sub Priority | ELEMENT | FALSE | *cellReselection SubPriority* IE in TS 38.331  [22] |  |
| 7 | >Frequency Priority List NR | LIST |  |  | *FreqPriorityListNR* IE in TS 38.331 [22] |
| 8 | >>Frequency Priority Item NR | STRUCTURE |  |  | *FreqPriorityNR* IE in TS 38.331 [22] |
| 9 | >>>Carrier Frequency | ELEMENT | FALSE | *carrierFreq* IE in TS 38.331  [22] |  |
| 10 | >>>Cell Reselection Priority | ELEMENT | FALSE | *cellReselection Priority* IE in  TS 38.331 [22] |  |
| 11 | >>>Cell Reselection Sub Priority | ELEMENT | FALSE | *cellReselection SubPriority* IE in TS 38.331  [22] |  |
| 12 | >T-320 timer expiry | ELEMENT | FALSE | *t320* IE in TS  38.331 [22] |  |

</div>

### UE identification, information and assignment

#### UE to Explicit UE list assignment command

Upon receiving the *RIC Control Request* message, the E2 node shall invoke procedures related to the assignment of a target UE to an Explicit UE List and modify the corresponding Explicit UE List according to the contents of the RIC Control Message based on the following RAN Parameters.

*RIC Control Message* IE contents:

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **RAN**  **Parameter ID** | **RAN Parameter** | **RAN**  **Parameter Value Type** | **Key Flag** | **RAN Parameter Definition** | **Semantics Description** |
| 1 | *Explicit UE list*  identifier | ELEMENT | FALSE | INTEGER | Identifier previously announced by E2 Node Set to 0 or not present when used with assignment  command = 3 |
| 2 | Assignment command | ELEMENT | FALSE | INTEGER | 1= Add UE  2= Remove UE 3= Send list of  supported *Explicit UE list*  4= Change UE assignment |

</div>

Upon processing the procedures related to the assignment of a target UE to an Explicit UE List, the E2 Node shall use the optional *RIC Control Outcome* IE to report the call processing outcome to the Near-RT RIC as a response to the control action:

1. If the outcome is successful

For Assignment command = 1, 2 and 4. Not used

For Assignment command = 3, the following parameters are to be used:

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **RAN**  **Parameter ID** | **RAN Parameter** | **RAN**  **Parameter Value Type** | **Key Flag** | **RAN Parameter Definition** | **Semantics Description** |
| 1001 | List of supported  *Explicit UE list* | LIST |  |  | To provide a list of  Explicit UE List records |
| 1002 | >*Explicit UE list*  information | STRUCTURE |  |  | To provide information on a  specific Explicit UE List record |
| 1003 | >>*Explicit UE list*  identifier | ELEMENT | TRUE | INTEGER | Identifier of Explicit UE List |
| 1004 | >>*Explicit UE list*  name | ELEMENT | FALSE | PRINTABLE STRING | Name of Explicit UE List |
| 1005 | >>*Explicit UE list*  description | ELEMENT | FALSE | PRINTABLE STRING | Text description of Explicit UE list |

</div>

1. If the outcome is not successful

The following RAN Parameters are to be used for all assignment commands:

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **RAN**  **Parameter ID** | **RAN Parameter** | **RAN**  **Parameter Value Type** | **Key Flag** | **RAN Parameter Definition** | **Semantics Description** |
| 1010 | Failure Cause | ELEMENT | FALSE | INTEGER | 0= reserved  1= UE already assigned to Explicit UE list  2 = Explicit UE list not known  3= UEID not known  4 = Other  5 = Explicit UE List not supported |

</div>

#### UE information request

Upon receiving the *RIC Control Request* message, the E2 node shall invoke procedures related to UE information request according to the RAN Parameter IDs listed in the contents of the RIC Control Message E2SM-RC Control Message Format 4 optional *RAN Parameter Definition* IE based on RAN Parameters:

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **RAN Parameter ID** | **RAN**  **Parameter** | **RAN**  **Parameter Value Type** | **Key Flag** | **RAN Parameter Definition** | **Semantics Description** |
| UE information | Defined in clause 8.1.3 RAN Parameters for UE information | | | | |

</div>

Upon processing the procedures related to handling of UE information request, the E2 Node shall use the optional *RIC Control Outcome* IE to report the call processing outcome to the Near-RT RIC as a response to the control action:

1. If the outcome is successful

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- |
| **RAN Parameter Category** | **RAN**  **Parameter ID** | **RAN**  **Parameter Name** | **RAN Parameter Value Type** | **Key Flag** | **RAN**  **Parameter Definition** | **Semantics Description** |
| UE information | Defined in clause 8.1.3 RAN Parameters for UE information | | | | | |

</div>

1. If the outcome is not successful

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- |
| **RAN Parameter Category** | **RAN**  **Parameter ID** | **RAN**  **Parameter Name** | **RAN Parameter Value Type** | **Key Flag** | **RAN**  **Parameter Definition** | **Semantics Description** |
| Failure cause | Defined in clause 8.4.9.1 | | | | | |

</div>

#### UE identification request

Upon receiving the *RIC Control Request* message, the E2 node shall invoke procedures related to UE identification request according to the contents of the *RIC Control Header* IE.

Upon processing the procedures related to handling of UE Identification request, the E2 Node shall use the optional *RIC Control Outcome* IE to report the call processing outcome to the Near-RT RIC as a response to the control action:

1. If the outcome is successful

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- |
| **RAN Parameter Category** | **RAN**  **Parameter ID** | **RAN**  **Parameter Name** | **RAN Parameter Value Type** | **Key Flag** | **RAN**  **Parameter Definition** | **Semantics Description** |
| UE ID list | Defined in clause 8.1.3 RAN Parameters for UE identification for UE ID List | | | | | |

</div>

1. If the outcome is not successful

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- |
| **RAN Parameter Category** | **RAN**  **Parameter ID** | **RAN**  **Parameter Name** | **RAN Parameter Value Type** | **Key Flag** | **RAN**  **Parameter Definition** | **Semantics Description** |
| Failure cause | Defined in clause 8.4.9.1 | | | | | |

</div>

### Measurement Reporting Configuration Control

#### Add MR Configuration

Upon receiving the *RIC Control Request* message with the *Measurement Report Configuration Control* Service Style and the *Add MR Configuration* control action, the E2 node shall invoke relevant RRC procedures to configure

Measurement Report to the UE. E2 Node shall include the IEs corresponding to one or more of RAN parameters described below in the related RRC or NI interface messages.

In the case of UE group-based control action, the above RRC procedure(s) is invoked individually for each individual UE within the group.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **RAN**  **Parameter ID** | **RAN Parameter** | **RAN**  **Parameter Value Type** | **Key Flag** | **RAN**  **Parameter Definition** | **Semantics Description** |
| 1 | List of Measurement Objects to Add | LIST |  |  | *measObjectT oAddModList* IE in TS  38.331 Sec 6 |
| 2 | 1>Measurement Object to Add Item | STRUCTURE |  |  | *MeasObjectT oAddMod* IE in TS 38.331  Sec 6 |
| 3 | 2>MO Sequence ID | ELEMENT | TRUE | INTEGER (1..64) | This is the unique ID used by the RIC for the measurement object it seeks to add via the control  service style. |
| 4 | 2>CHOICE  *MO Type* | STRUCTURE |  |  | *measObject*  IE in TS  38.331 Sec 6 |
| 11 | 3>*NR MO* | STRUCTURE |  |  | *MeasObjectN R* IE in TS  38.331 Sec 6 |
| 12 | 4>SSB Frequency | ELEMENT | TRUE | *ARFCN-*  *ValueNR* IE in TS 38.331  Sec 6 |  |
| 13 | 4>SSB Subcarrier spacing | ELEMENT | FALSE | *subcarrierSpa cing* IE in TS  38.331 Sec 6 |  |
| 14 | 4>SSB Primary MTC | STRUCTURE |  |  | *smtc1* IE in TS 38.331  Sec 6 |
| 15 | 5>CHOICE *Periodicity and Offset* | STRUCTURE |  |  | *periodicityAn dOffset* IE in TS 38.331  Sec 6 |
| 16 | 6>Sub-frame 5 | ELEMENT | FALSE | *sf5* IE in TS  38.331 Sec 6 |  |
| 17 | 6>Sub-frame 10 | ELEMENT | FALSE | *sf10* IE in TS  38.331 Sec 6 |  |
| 18 | 6>Sub-frame 20 | ELEMENT | FALSE | *sf20* IE in TS  38.331 Sec 6 |  |
| 19 | 6>Sub-frame 40 | ELEMENT | FALSE | *sf40* IE in TS  38.331 Sec 6 |  |
| 20 | 6>Sub-frame 80 | ELEMENT | FALSE | *sf80* IE in TS  38.331 Sec 6 |  |
| 21 | 6>Sub-frame 160 | ELEMENT | FALSE | *sf160* IE in TS  38.331 Sec 6 |  |
| 22 | 5>Duration | ELEMENT | FALSE | *duration* IE in TS 38.331  Sec 6 |  |
| 31 | 4>SSB Secondary MTC | STRUCTURE |  |  | *smtc2* IE in TS 38.331  Sec 6 |
| 32 | 5>List of cells | LIST |  |  | *pci-List* IE in TS 38.331  Sec 6 |
| 33 | 6>Cell Item | STRUCTURE |  |  | *physCellID* IE in TS 38.331  Sec 6 |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| 34 | 7>PCI | ELEMENT | TRUE | *physCelIID* IE in TS 38.331  Sec 6 |  |
| 35 | 5>Periodicity | ELEMENT | FALSE | *periodicity* IE in TS 38.331  Sec 6 |  |
| 36 | 4>Reference Frequency CSI - RS | ELEMENT | TRUE | *refFreqCSI- RS* IE in TS  38.331 Sec 6 |  |
| 37 | 4>Reference Signal Config | STRUCTURE |  |  | *referenceSign alConfig* IE in TS 38.331  Sec 6 |
| 38 | 5>SSB Configuration Mobility | STRUCTURE |  |  | *SSB-*  *ConfigMobilit y* IE in TS  38.331 Sec 6 |
| 40 | 6>CHOICE *SSB To*  *Measure for setup* | STRUCTURE |  |  | *SSB-*  *ToMeasure*  IE in TS  38.331 Sec 6 |
| 41 | 7>Short Bitmap | ELEMENT | FALSE | *shortBitmap*  IE in TS  38.331 Sec 6 |  |
| 42 | 7>Medium Bitmap | ELEMENT | FALSE | *mediumBitma p* IE in TS  38.331 Sec 6 |  |
| 43 | 7>Long Bitmap | ELEMENT | FALSE | *longBitmap* IE in TS 38.331  Sec 6 |  |
| 44 | 6>Derive SSB Index From Cell | ELEMENT | FALSE | *deriveSSB- IndexFromCel l* IE in TS  38.331 Sec 6 |  |
| 45 | 6>SS RSSI  Measurement | STRUCTURE |  |  | *ss-RSSI-*  *Measurement*  IE in TS  38.331 Sec 6 |
| 46 | 7>Measurement Slots | ELEMENT | FALSE | *measurement Slots* IE in TS  38.331 Sec 6 |  |
| 47 | 7>End Symbol | ELEMENT | FALSE | *endSymbol* IE in TS 38.331  Sec 6 |  |
| 50 | 6>CSI RS Resource Config Mobility for setup | STRUCTURE |  |  | *csi-rs- ResourceCon figMobility* IE in TS 38.331  Sec 6 |
| 51 | 7>Reference Serving cell Index | ELEMENT | TRUE | *refServellInde*  *x* IE in TS  38.331 Sec 6 |  |
| 52 | 7>Sub carrier spacing | ELEMENT | FALSE | *subcarrierSpa*  *cing* IE in TS  38.331 Sec 6 |  |
| 53 | 7>CSI RS Cell List Mobility | LIST |  |  | *csi-RS- CellList- Mobility* IE in TS 38.331  Sec 6 |
| 54 | 8>CSI RS Cell  Mobility | STRUCTURE |  |  | *CSI-RS-*  *CellMobility*  IE in TS  38.331 Sec 6 |
| 55 | 9>Physical Cell ID | ELEMENT | TRUE | *PhysCellID* IE in TS 38.331  Sec 6 |  |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| 56 | 9>CSI RS  Measurement Bandwidth | STRUCTURE |  |  | *csi-rs- Measurement BW* IE in TS  38.331 Sec 6 |
| 57 | 10>Numbe r of PRBs | ELEMENT | FALSE | *nrofPRBs* IE in TS 38.331  Sec 6 |  |
| 58 | 10>Start PRB | ELEMENT | FALSE | *startPRB* IE in TS 38.331  Sec 6 |  |
| 59 | 9>Density | ELEMENT | FALSE | *density* IE in TS 38.331  Sec 6 |  |
| 60 | 9>CSI RS  Resource List Mobility | LIST |  |  | *csi-rs- ResourceList- Mobility* IE in TS 38.331  Sec 6 |
| 61 | 10>CSI RS  Resource Item Mobility | STRUCTURE |  |  | *CSI-RS-*  *Resource- Mobility* IE in TS 38.331  Sec 6 |
| 62 | 11>CSI RS  Index | ELEMENT | TRUE | *csi-RS-Index*  IE in TS  38.331 Sec 6 |  |
| 63 | 11>CH OICE  *Slot Config* | STRUCTURE |  |  | *slotConfig* IE in TS 38.331  Sec 6 |
| 64 | 12>  ms4 | ELEMENT | FALSE | *ms4* IE in TS  38.331 Sec 6 |  |
| 65 | 12>  ms5 | ELEMENT | FALSE | *ms5* IE in TS  38.331 Sec 6 |  |
| 66 | 12>  ms1 0 | ELEMENT | FALSE | *ms10* IE in TS  38.331 Sec 6 |  |
| 67 | 12>  ms2 0 | ELEMENT | FALSE | *ms20* IE in TS  38.331 Sec 6 |  |
| 68 | 12>  ms4 0 | ELEMENT | FALSE | *ms40* IE in TS  38.331 Sec 6 |  |
| 69 | 11>Ass ociated SSB | STRUCTURE |  |  | *assoiatedSS B* IE in TS  38.331 Sec 6 |
| 70 | 12> SS B  Ind  ex | ELEMENT | TRUE | *ssb-Index* IE in TS 38.331  Sec 6 |  |
| 71 | 12>  Is Qua si  colo colo | ELEMENT | FALSE | *isQuasiColoc ated* IE in TS  38.331 Sec 6 |  |
| 72 | 11>CH OICE  *Freque ncy Domain*  *Allocati on* | STRUCTURE |  |  | *frequencyDo mainAllocatio n* IE in TS  38.331 Sec 6 |
| 73 | 12>  Fre que | ELEMENT | FALSE | *row1* IE in TS  38.331 Sec 6 |  |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
|  | ncy Do mai n Allo cati on Ro  w 1 |  |  |  |  |
| 74 | 12>  Fre que ncy Do mai n Allo cati on Ro  w 2 | ELEMENT | FALSE | *row2* IE in TS  38.331 Sec 6 |  |
| 75 | 11>Firs t OFDM  Symbol in Time  Domain | ELEMENT | FALSE | *firstOFDMSy mbolInTimeD omain* IE in TS 38.331  Sec 6 |  |
| 76 | 11>Seq uence Genera tion  Config | ELEMENT | FALSE | *sequenecGen erationConfig* IE in TS  38.331 Sec 6 |  |
| 77 | 4>Absolute Threshold SSB - Block Consolidation | STRUCTURE |  |  | *absThreshSS*  *-*  *BlocksConsol idation* IE in TS 38.331  Sec 6 |
| 78 | 5>Block Consolidation Threshold RSRP | ELEMENT | FALSE | *RSRP-Range*  IE in TS  38.331 Sec 6 |  |
| 79 | 5>Block Consolidation Threshold RSRQ | ELEMENT | FALSE | *RSRQ-Range*  IE in TS  38.331 Sec 6 |  |
| 80 | 5>Block Consolidation Threshold SINR | ELEMENT | FALSE | *SINR-Range*  IE in TS  38.331 Sec 6 |  |
| 81 | 4>Absolute Threshold CSI RS Consolidation | STRUCTURE |  |  | *absThreshCS I-RS-*  *Consolidation*  IE in TS  38.331 Sec 6 |
| 82 | 5>RS Consolidation Threshold RSRP | ELEMENT | FALSE | *RSRP-Range*  IE in TS  38.331 Sec 6 |  |
| 83 | 5>RS Consoldation Threshold RSRQ | ELEMENT | FALSE | *RSRQ-Range*  IE in TS  38.331 Sec 6 |  |
| 84 | 5>RS Consolidated Threshold SINR | ELEMENT | FALSE | *SINR-Range*  IE in TS  38.331 Sec 6 |  |
| 91 | 4>Number of SS blocks to average | ELEMENT | FALSE | *nrofSS- BlocksToAver age* IE in TS  38.331 Sec 6 |  |
| 92 | 4>Number of CSI RS Resources to average | ELEMENT | FALSE | *nrofCSI-RS- ResouresToA verage* IE in |  |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
|  |  |  |  | TS 38.331  Sec 6 |  |
| 93 | 4>Quantity Config Index | ELEMENT | TRUE | *quantityConfi gIndex* IE in TS 38.331  Sec 6 |  |
| 100 | 4>Q-Offset MO Range Sequence | STRUCTURE |  |  | *offsetMO* IE in TS 38.331  Sec 6 |
| 101 | 5>RSRP Offset SSB | ELEMENT | FALSE | *rsrpOffsetSS B* IE in TS  38.331 Sec 6 |  |
| 102 | 5>RSRQ Offset SSB | ELEMENT | FALSE | *rsrqOffsetSS B* IE in TS  38.331 Sec 6 |  |
| 103 | 5>SINR Offset SSB | ELEMENT | FALSE | *sinrOffsetSSB*  IE in TS  38.331 Sec 6 |  |
| 104 | 5>RSRP Offset CSI RS | ELEMENT | FALSE | *rsrpOffsetCSI*  *-RS* IE in TS  38.331 Sec 6 |  |
| 105 | 5>RSRQ Offset CSI RS | ELEMENT | FALSE | *rsrqOffsetCSI*  *-RS* IE in TS  38.331 Sec 6 |  |
| 106 | 5>SINR Offset CSI RS | ELEMENT | FALSE | *sinrOffsetCSI-*  *RS* IE in TS  38.331 Sec 6 |  |
| 110 | 4>Cells to Add List | LIST |  |  | *CellsToAddM odList* IE in TS 38.331  Sec 6 |
| 111 | 5>Cell to Add Item | STRUCTURE |  |  | *CellsToAdd*  IE in TS  38.331 Sec 6 |
| 112 | 6>Cell to Add - Physical Cell ID | ELEMENT | TRUE | *physCellID* IE in TS 38.331  Sec 6 |  |
| 113 | 6>Cell Individual Offset | STRUCTURE |  |  | *cellIndividual Offset* IE in TS 38.331  Sec 6 |
| 115 | 7>RSRP Offset SSB | ELEMENT | FALSE | *rsrpOffsetSS*  *B* IE in TS  38.331 Sec 6 |  |
| 116 | 7>RSRQ Offset SSB | ELEMENT | FALSE | *rsrqOffsetSS B* IE in TS  38.331 Sec 6 |  |
| 117 | 7>SINR Offset SSB | ELEMENT | FALSE | *sinrOffsetSSB*  IE in TS  38.331 Sec 6 |  |
| 118 | 7>RSRP Offset CSI RS | ELEMENT | FALSE | *rsrpOffsetCSI*  *-RS* IE in TS  38.331 Sec 6 |  |
| 119 | 7>RSRQ Offset CSI RS | ELEMENT | FALSE | *rsrqOffsetCSI*  *-RS* IE in TS  38.331 Sec 6 |  |
| 120 | 7>SINR Offset CSI RS | ELEMENT | FALSE | *sinrOffsetCSI- RS* IE in TS  38.331 Sec 6 |  |
| 125 | 4>Black cells to Add List | LIST |  |  | *blackCellsTo AddModList* IE in TS  38.331 Sec 6 |
| 126 | 5>Black cell to Add Item | STRUCTURE |  |  | *PCI-*  *RangeEleme nt* IE in TS  38.331 Sec 6 |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| 127 | 6>Black cell to Add - Physical Cell Range Index | ELEMENT | TRUE | *PCI-*  *RangeIndex*  IE in TS  38.331 Sec 6 |  |
| 128 | 6>Physical Cell ID - Range | STRUCTURE |  |  | *PCI-Range* IE in TS 38.331  Sec 6 |
| 129 | 7>Physical Cell ID Start | ELEMENT | TRUE | *physCellId* IE in TS 38.331  Sec 6 |  |
| 130 | 7>Physical Cell ID Range | ELEMENT | FALSE | *range* IE in TS 38.331  Sec 6 |  |
| 135 | 4>White cells to Add List | LIST |  |  | *whiteCellsTo AddModList* IE in TS  38.331 Sec 6 |
| 136 | 5>White cell to Add Item | STRUCTURE |  |  | *PCI-*  *RangeEleme*  *nt* IE in TS  38.331 Sec 6 |
| 137 | 6>White cell to Add - Physical Cell Range Index | ELEMENT | TRUE | *PCI-*  *RangeIndex*  IE in TS  38.331 Sec 6 |  |
| 138 | 6>Physical Cell ID - Range | STRUCTURE |  |  | *PCI-Range* IE in TS 38.331  Sec 6 |
| 129 | 7>Physical Cell ID Start | ELEMENT | TRUE | *PhysCellId* IE in TS 38.331  Sec 6 |  |
| 130 | 7>Physical Cell ID Range | ELEMENT | FALSE | *range* IE in TS 38.331  Sec 6 |  |
| 141 | 4>Frequency Band Indicator NR | ELEMENT | TRUE | *freqBandIndic atorNR* IE in TS 38.331  Sec 6 |  |
| 142 | 4>Measurement Cycle Secondary cell | ELEMENT | FALSE | *measCycleS Cell* IE in TS  38.331 Sec 6 |  |
| 151 | 3>*E-UTRA MO* | STRUCTURE |  |  | *MeasObjectE UTRA* IE in TS 38.331  Sec 6 |
| 152 | 4>E-UTRA Carrier Frequency | ELEMENT | TRUE | *carrierFreq* IE in TS 38.331  Sec 6 |  |
| 153 | 4>E-UTRA Allowed Measurement Bandwidth | ELEMENT | FALSE | *allowedMeas Bandwidth* IE in TS 38.331  Sec 6 |  |
| 171 | 4>List of E-UTRA cells to add | LIST |  |  | *cellsToAddM odListEUTRA*  *N* IE in TS  38.331 Sec 6 |
| 172 | 5>E-UTRA Cell to add Item | STRUCTURE |  |  |  |
| 173 | 6>E-UTRA Cell to add | STRUCTURE |  |  | *EUTRA-Cell*  IE in TS  38.331 Sec 6 |
| 174 | 7>E-UTRA PCI to  add | ELEMENT | TRUE | *EUTRA-*  *PhysCellId* IE in TS 38.331  Sec 6 |  |
| 175 | 7>E-UTRA Cell  Individual Offset | ELEMENT | FALSE | *cellIndividual Offset* IE in |  |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
|  |  |  |  | TS 38.331  Sec 6 |  |
| 191 | 4>List of E-UTRA black cells to add | LIST |  |  | *blackCellsTo AddModList* IE in TS  38.331 Sec 6 |
| 192 | 5>E-UTRA black cell to add item | STRUCTURE |  |  |  |
| 193 | 6>E-UTRA black cell to add | STRUCTURE |  |  | *EUTRA-*  *BlackCell* IE in TS 38.331  Sec 6 |
| 194 | 7>E-UTRA Physical Cell ID Range | STRUCTURE |  |  | *EUTRA-*  *PhysCellIdRa nge* IE in TS  38.331 Sec 6 |
| 195 | 8>E-UTRA PCI  Start | ELEMENT | TRUE | *EUTRA-*  *PhysCellId* IE in TS 38.331  Sec 6 |  |
| 196 | 8>E-UTRA PCI  Range | ELEMENT | FALSE | *range* IE in TS 38.331  Sec 6 |  |
| 201 | 4>E-UTRA Presence Antenna Port 1 | ELEMENT | FALSE | *eutra- PresenceAnte nnaPort1* IE in TS 38.331  Sec 6 |  |
| 205 | 4>E-UTRA Q Offset Range | ELEMENT | FALSE | *eutra-Q- OffsetRange*  IE in TS  38.331 Sec 6 |  |
| 210 | 4>Wideband RSRQ Measurement | ELEMENT | FALSE | *widebandRS RQ-Meas* IE in TS 38.331  Sec 6 |  |
| 301 | List of Report Config Objects to Add | LIST |  |  | *ReportConfig ToAddModLis t* IE in TS  38.331 Sec 6 |
| 302 | 1>Report Config Object to Add Item | STRUCTURE |  |  | *ReportConfig ToAddMod* IE in TS 38.331  Sec 6 |
| 303 | 2>Report Config Sequence ID | ELEMENT | TRUE | INTEGER (1..64) | This is the unique ID used by the RIC for the measurement object it seeks to add via the control  service style. |
| 304 | 2>CHOICE *Report Config Type* | STRUCTURE |  |  | *reportConfig*  IE in TS  38.331 Sec 6 |
| 311 | 3>*NR Report Config* | STRUCTURE |  |  | *ReportConfig NR* IE in TS  38.331 Sec 6 |
| 312 | 4>CHOICE *Report Type* | STRUCTURE |  |  | *reportType* IE in TS 38.331  Sec 6 |
| 313 | 5>Periodical Report Config | STRUCTURE |  |  | *PeriodicalRep ortConfig* IE in TS 38.331 |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
|  |  |  |  |  | Sec 6 |
| 314 | 6>NR RS Type | ELEMENT | FALSE | *NR-RS-Type*  IE in TS  38.331 Sec 6 |  |
| 315 | 6>NR Report Interval | ELEMENT | FALSE | *ReportInterval*  IE in TS  38.331 Sec 6 |  |
| 316 | 6>NR Report Amount | ELEMENT | FALSE | *reportAmount*  IE in TS  38.331 Sec 6 |  |
| 317 | 6>Measurement Report Quantity | STRUCTURE |  |  | *MeasReportQ uantity* IE in TS 38.331  Sec 6 |
| 318 | 7>MR RSRP | ELEMENT | FALSE | *rsrp* IE in TS  38.331 Sec 6 |  |
| 319 | 7>MR RSRQ | ELEMENT | FALSE | *rsrq* IE in TS  38.331 Sec 6 |  |
| 320 | 7>MR SINR | ELEMENT | FALSE | *sinr* IE in TS  38.331 Sec 6 |  |
| 321 | 6>Maximum number of Report cells | ELEMENT | FALSE | *maxReportCe lls* IE in TS  38.331 Sec 6 |  |
| 322 | 6>Report Quantity Reference Signal - Indexes | STRUCTURE |  |  | *reportQuantit yRS-Indexes* IE in TS  38.331 Sec 6 |
| 323 | 7>Report Qty RSRP | ELEMENT | FALSE | *rsrp* IE in TS  38.331 Sec 6 |  |
| 324 | 7>Report Qty RSRQ | ELEMENT | FALSE | *rsrq* IE in TS  38.331 Sec 6 |  |
| 325 | 7>Report Qty SINR | ELEMENT | FALSE | *sinr* IE in TS  38.331 Sec 6 |  |
| 326 | 6>Maximum number of reference signals - Indexes to Report | ELEMENT | FALSE | *maxNrofRS- IndexesToRe port* IE in TS  38.331 Sec 6 |  |
| 327 | 6>Include Beam Measurements | ELEMENT | FALSE | *includeBeam Measuremetn*  *s* IE in TS  38.331 Sec 6 |  |
| 328 | 6>Use WhiteCellList | ELEMENT | FALSE | *useWhiteCell List* IE in TS  38.331 Sec 6 |  |
| 331 | 5>Event Trigger Config | STRUCTURE |  |  | *EventTrigger Config* IE in TS 38.331  Sec 6 |
| 332 | 6>CHOICE *Event ID* | STRUCTURE |  |  | *eventide* IE in TS 38.331  Sec 6 |
| 333 | 7>Event A1 | STRUCTURE |  |  | *eventA1* IE in TS 38.331  Sec 6 |
| 334 | 8>A1 Threshold | STRUCTURE |  |  | *a1-Threshold*  IE in TS  38.331 Sec 6 |
| 335 | 9>CHOICE *A1*  *Threshold Type* | STRUCTURE |  |  | *MeasTrigger Quantity* IE in TS 38.331  Sec 6 |
| 336 | 10>A1  Threshold RSRP | ELEMENT | FALSE | *rsrp* IE in TS  38.331 Sec 6 | *RSRP-Range*  IE |
| 337 | 10>A1  Threshold | ELEMENT | FALSE | *rsrq* IE in TS  38.331 Sec 6 | *RSRQ-Range*  IE |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
|  | RSRQ |  |  |  |  |
| 338 | 10>A1  Threshold SINR | ELEMENT | FALSE | *sinr* IE in TS  38.331 Sec 6 | *SINR-Range*  IE |
| 339 | 9>A1 Report On Leave | ELEMENT | FALSE | *reportOnLeav e* IE in TS  38.331 Sec 6 |  |
| 340 | 9>A1  Hysteresis | ELEMENT | FALSE | *hysteresis* IE in TS 38.331  Sec 6 |  |
| 341 | 9>A1 Time to Trigger | ELEMENT | FALSE | *timeToTrigger*  IE in TS  38.331 Sec 6 |  |
| 343 | 7>Event A2 | STRUCTURE |  |  | *eventA2* IE in TS 38.331  Sec 6 |
| 344 | 8>A2 Threshold | STRUCTURE |  |  | *A2-Threshold*  IE in TS  38.331 Sec 6 |
| 345 | 9>CHOICE *A2*  *Threshold Type* | STRUCTURE |  |  | *MeasTrigger Quantity* IE in TS 38.331  Sec 6 |
| 346 | 10>A2  Threshold RSRP | ELEMENT | FALSE | *rsrp* IE in TS  38.331 Sec 6 | *RSRP-Range*  IE |
| 347 | 10>A2  Threshold RSRQ | ELEMENT | FALSE | *rsrq* IE in TS  38.331 Sec 6 | *RSRQ-Range*  IE |
| 348 | 10>A2  Threshold SINR | ELEMENT | FALSE | *sinr* IE in TS  38.331 Sec 6 | *SINR-Range*  IE |
| 349 | 9>A2 Report On Leave | ELEMENT | FALSE | *reportOnLeav*  *e* IE in TS  38.331 Sec 6 |  |
| 350 | 9>A2  Hysteresis | ELEMENT | FALSE | *hysteresis* IE in TS 38.331  Sec 6 |  |
| 351 | 9>A2 Time to Trigger | ELEMENT | FALSE | *timeToTrigger*  IE in TS  38.331 Sec 6 |  |
| 353 | 7>Event A3 | STRUCTURE |  |  | *eventA3* IE in TS 38.331  Sec 6 |
| 354 | 8>A3 Offset | STRUCTURE |  |  | *a3-Threshold*  IE in TS  38.331 Sec 6 |
| 355 | 9>CHOICE *A3*  *Offset Type* | STRUCTURE |  |  | *MeasTrigger QuantityOffse t* IE in TS  38.331 Sec 6 |
| 356 | 10>A3  Threshold RSRP  Offset | ELEMENT | FALSE | *rsrp* IE in TS  38.331 Sec 6 |  |
| 357 | 10>A3  Threshold RSRQ  Offset | ELEMENT | FALSE | *rsrq* IE in TS  38.331 Sec 6 |  |
| 358 | 10>A3  Threshold SINR  Offset | ELEMENT | FALSE | *sinr* IE in TS  38.331 Sec 6 |  |
| 359 | 9>A3 Report On Leave | ELEMENT | FALSE | *reportOnLeav*  *e* IE in TS  38.331 Sec 6 |  |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| 360 | 9>A3  Hysteresis | ELEMENT | FALSE | *hysteresis* IE in TS 38.331  Sec 6 |  |
| 361 | 9>A3 Time to Trigger | ELEMENT | FALSE | *timeToTrigger*  IE in TS  38.331 Sec 6 |  |
| 362 | 9>Use White Cell List | ELEMENT | FALSE | *useWhiteCell List* IE in TS  38.331 Sec 6 |  |
| 363 | 7>Event A4 | STRUCTURE |  |  | *eventA4* IE in TS 38.331  Sec 6 |
| 364 | 8>A4 Threshold | STRUCTURE |  |  | *A4-Threshold*  IE in TS  38.331 Sec 6 |
| 365 | 9>CHOICE *A4*  *Threshold Type* | STRUCTURE |  |  | *MeasTrigger Quantity* IE in TS 38.331  Sec 6 |
| 366 | 10>A4  Threshold RSRP | ELEMENT | FALSE | *rsrp* IE in TS  38.331 Sec 6 | *RSRP-Range*  IE |
| 367 | 10>A4  Threshold RSRQ | ELEMENT | FALSE | *rsrq* IE in TS  38.331 Sec 6 | *RSRQ-Range*  IE |
| 368 | 10>A4  Threshold SINR | ELEMENT | FALSE | *sinr* IE in TS  38.331 Sec 6 | *SINR-Range*  IE |
| 369 | 9>A4 Report On Leave | ELEMENT | FALSE | *reportOnLeav*  *e* IE in TS  38.331 Sec 6 |  |
| 370 | 9>A4  Hysteresis | ELEMENT | FALSE | *hysteresis* IE in TS 38.331  Sec 6 |  |
| 371 | 9>A4 Time to Trigger | ELEMENT | FALSE | *timeToTrigger*  IE in TS  38.331 Sec 6 |  |
| 372 | 9>Use White Cell List | ELEMENT | FALSE | *useWhiteCell List* IE in TS  38.331 Sec 6 |  |
| 375 | 7>Event A5 | STRUCTURE |  |  | *eventA5* IE in TS 38.331  Sec 6 |
| 376 | 8>A5 Threshold 1 | STRUCTURE |  |  | *a5- Threshold1* IE in TS 38.331  Sec 6 |
| 377 | 9>CHOICE *A5*  *Threshold1 Type* | STRUCTURE |  |  | *MeasTrigger Quantity* IE in TS 38.331  Sec 6 |
| 378 | 10>A5  Threshold1 RSRP | ELEMENT | FALSE | *rsrp* IE in TS  38.331 Sec 6 | *RSRP-Range*  IE |
| 379 | 10>A5  Threshold1 1 RSRQ | ELEMENT | FALSE | *rsrq* IE in TS  38.331 Sec 6 | *RSRQ-Range*  IE |
| 380 | 10>A5  Threshold1 SINR | ELEMENT | FALSE | *sinr* IE in TS  38.331 Sec 6 | *SINR-Range*  IE |
| 381 | 9>CHOICE *A5*  *Threshold2 Type* | STRUCTURE |  |  | *a5- Threshold2* IE in TS 38.331  Sec 6 |
| 382 | 10>A5  Threshold2 RSRP | ELEMENT | FALSE | *MeasTrigger Quantity* IE in  TS 38.331 |  |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
|  |  |  |  | Sec 6 |  |
| 379 | 10>A5  Threshold2 RSRQ | ELEMENT | FALSE | *rsrp* IE in TS  38.331 Sec 6 | *RSRP-Range*  IE |
| 380 | 10>A5  Threshold2 SINR | ELEMENT | FALSE | *rsrq* IE in TS  38.331 Sec 6 | *RSRQ-Range*  IE |
| 381 | 9>A5 Report On Leave | ELEMENT | FALSE | *reportOnLeav e* IE in TS  38.331 Sec 6 |  |
| 382 | 9>A5  Hysteresis | ELEMENT | FALSE | *hysteresis* IE in TS 38.331  Sec 6 |  |
| 383 | 9>A5 Time to Trigger | ELEMENT | FALSE | *timeToTrigger*  IE in TS  38.331 Sec 6 |  |
| 384 | 9>Use White Cell List | ELEMENT | FALSE | *useWhiteCell List* IE in TS  38.331 Sec 6 |  |
| 391 | 7>Event A6 | STRUCTURE |  |  | *eventA6* IE in TS 38.331  Sec 6 |
| 392 | 8>A6 Threshold | STRUCTURE |  |  | *A6-Threshold*  IE in TS  38.331 Sec 6 |
| 393 | 9>CHOICE *A6*  *Threshold Type* | STRUCTURE |  |  | *MeasTrigger QuantityOffse*  *t* IE in TS  38.331 Sec 6 |
| 394 | 10>A6  Threshold RSRP  Offset | ELEMENT | FALSE | *rsrp* IE in TS  38.331 Sec 6 |  |
| 395 | 10>A6  Threshold RSRQ  Offset | ELEMENT | FALSE | *rsrq* IE in TS  38.331 Sec 6 |  |
| 396 | 10>A6  Threshold SINR  Offset | ELEMENT | FALSE | *sinr* IE in TS  38.331 Sec 6 |  |
| 397 | 9>A6 Report On Leave | ELEMENT | FALSE | *reportOnLeav e* IE in TS  38.331 Sec 6 |  |
| 398 | 9>A6  Hysteresis | ELEMENT | FALSE | *hysteresis* IE in TS 38.331  Sec 6 |  |
| 399 | 9>A6 Time to Trigger | ELEMENT | FALSE | *timeToTrigger*  IE in TS  38.331 Sec 6 |  |
| 400 | 9>Use White Cell List | ELEMENT | FALSE | *useWhiteCell List* IE in TS  38.331 Sec 6 |  |
| 405 | 5>Report CGI | STRUCTURE |  |  | *ReportCGI* IE in TS 38.331  Sec 6 |
| 406 | 6>Cell to Report CGI | ELEMENT | TRUE | *PhysCellId* IE in TS 38.331  Sec 6 |  |
| 411 | 5>Report SFTD - NR | STRUCTURE |  |  | *ReportSFTD- NR* IE in TS  38.331 Sec 6 |
| 412 | 6>Report SFTD - Measurement | ELEMENT | FALSE | *reportSFTD- Meas* IE in TS  38.331 Sec 6 |  |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| 413 | 6>Report RSRP | ELEMENT | FALSE | *reportRSRP*  IE in TS  38.331 Sec 6 |  |
| 414 | 6>Report SFTD Neigh Meas | ELEMENT | FALSE | *reportSFTD- NeighMeas* IE in TS 38.331  Sec 6 |  |
| 415 | 6>DRX SFTD Neigh  Meas | ELEMENT | FALSE | *drx-SFTD- NeighMeas* IE in TS 38.331  Sec 6 |  |
| 416 | 6>List of cells for which to report SFTD | LIST |  |  | *cellsForWhic hToReportSF*  *TD* IE in TS  38.331 Sec 6 |
| 417 | 7>Cell Item for reporting SFTD | STRUCTURE |  |  |  |
| 418 | 8>Physical Cell Identity | ELEMENT | TRUE | *PhyCellId* IE in TS 38.331  Sec 6 |  |
| 421 | 3>Report Config Inter RAT | STRUCTURE |  |  | *ReportConfigI nterRAT* IE in TS 38.331  Sec 6 |
| 422 | 4>CHOICE *Report Type* | STRUCTURE |  |  | *reportType* IE in TS 38.331  Sec 6 |
| 423 | 5>Periodical Report Config Inter RAT | STRUCTURE |  |  | *PeriodicalRep ortConfigInter*  *RAT* IE in TS  38.331 Sec 6 |
| 431 | 6>Periodical Inter-RAT Report Interval | ELEMENT | FALSE | *reportInterval*  IE in TS  38.331 Sec 6 |  |
| 432 | 6>Periodical Inter-RAT Report Amount | ELEMENT | FALSE | *reportAmount*  IE in TS  38.331 Sec 6 |  |
| 435 | 6>Periodical Inter-RAT Report Quantity | STRUCTURE |  |  | *reportQuantit y* IE in TS  38.331 Sec 6 |
| 436 | 7>Inter-RAT RSRP | ELEMENT | FALSE | *rsrp* IE in TS  38.331 Sec 6 |  |
| 437 | 7>Inter-RAT RSRQ | ELEMENT | FALSE | *rsrq* IE in TS  38.331 Sec 6 |  |
| 438 | 7>Inter-RAT SINR | ELEMENT | FALSE | *sinr* IE in TS  38.331 Sec 6 |  |
| 439 | 6>Maximum number of cells for reporting | ELEMENT | FALSE | *maxReportCe lls* IE in TS  38.331 Sec 6 |  |
| 441 | 5>Event Trigger Config Inter RAT | STRUCTURE |  |  | *EventTrigger ConfigInterR*  *AT* IE in TS  38.331 Sec 6 |
| 442 | 6>CHOICE *Event ID* | STRUCTURE |  |  | *eventId* IE in TS 38.331  Sec 6 |
| 451 | 7>Event B1 | STRUCTURE |  |  | *eventB1* IE in TS 38.331  Sec 6 |
| 452 | 8>B1 Threshold EUTRA | STRUCTURE |  |  | *b1- ThresholdEU TRA* IE in TS  38.331 Sec 6 |
| 453 | 9>E-UTRA RSRP | ELEMENT | FALSE | *RSRP-*  *RangeEUTR A* IE in TS  38.331 Sec 6 |  |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| 454 | 9>E-UTRA RSRQ | ELEMENT | FALSE | *RSRQ-*  *RangeEUTR*  *A* IE in TS  38.331 Sec 6 |  |
| 455 | 9>E-UTRA SINR | ELEMENT | FALSE | *SINR-*  *RangeEUTR A* IE in TS  38.331 Sec 6 |  |
| 456 | 8>Event B1 Report On Leave | ELEMENT | FALSE | *reportOnLeav*  *e* IE in TS  38.331 Sec 6 |  |
| 457 | 8>E-UTRA  Hysteresis | ELEMENT | FALSE | *hystereisis* IE in TS 38.331  Sec 6 |  |
| 458 | 8>E-UTRA Time  To Trigger | ELEMENT | FALSE | *timeToTrigger*  IE in TS  38.331 Sec 6 |  |
| 471 | 7>Event B2 | STRUCTURE |  |  | *eventB2* IE in TS 38.331  Sec 6 |
| 472 | 8>B2 Threshold1 NR | STRUCTURE |  |  | *b2- Threshold1* IE in TS 38.331  Sec 6 |
| 475 | 9>B2  Threshold1 NR RSRP | ELEMENT | FALSE | *RSRP-Range*  IE in TS  38.331 Sec 6 |  |
| 476 | 9>B2  Threshold1 NR RSRQ | ELEMENT | FALSE | *RSRQ-Range*  IE in TS  38.331 Sec 6 |  |
| 477 | 9>B2  Threshold1 NR SINR | ELEMENT | FALSE | *SINR-Range*  IE in TS  38.331 Sec 6 |  |
| 481 | 8>B2 Threshold2 E-UTRA | STRUCTURE |  |  | *b2- Threshold2E UTRA* IE in TS 38.331  Sec 6 |
| 482 | 9>B2  Threshold2 E- UTRA RSRP | ELEMENT | FALSE | *RSRP-*  *RangeEUTR*  *A* IE in TS  38.331 Sec 6 |  |
| 483 | 9>B2  Threshold2 E- UTRA RSRQ | ELEMENT | FALSE | *RSRQ-*  *RangeEUTR A* IE in TS  38.331 Sec 6 |  |
| 484 | 9>B2  Threshold2 E- UTRA SINR | ELEMENT | FALSE | *SINR-*  *RangeEUTR A* IE in TS  38.331 Sec 6 |  |
| 491 | 6>Inter-RAT Reference Signal Type | ELEMENT | FALSE | *rsType* IE in TS 38.331  Sec 6 |  |
| 492 | 6>Inter-RAT Report Interval | ELEMENT | FALSE | *reportInterval*  IE in TS  38.331 Sec 6 |  |
| 493 | 6>Inter-RAT Report Amount | ELEMENT | FALSE | *reportAmount*  IE in TS  38.331 Sec 6 |  |
| 501 | 6>Inter-RAT Report Quantity | STRUCTURE |  |  | *reportQuantit*  *y* IE in TS  38.331 Sec 6 |
| 502 | 7>Inter-RAT Report Quantity RSRP | ELEMENT | FALSE | *rsrp* IE in TS  38.331 Sec 6 |  |
| 503 | 7>Inter-RAT Report Quantity RSRQ | ELEMENT | FALSE | *rsrq* IE in TS  38.331 Sec 6 |  |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| 504 | 7>Inter-RAT Report Quantity SINR | ELEMENT | FALSE | *sinr* IE in TS  38.331 Sec 6 |  |
| 510 | 6>Maximum number of cells to be reported | ELEMENT | FALSE | *maxReportCe lls* IE in TS  38.331 Sec 6 |  |
| 519 | *CHOICE* NR SpCell RSRP Measurement Controlling | STRUCTURE |  |  | *s- MeasureConfi g* IE in TS  38.331 Sec 6 |
| 520 | 1>SSB RSRP | ELEMENT | FALSE | *ssb-RSRP* IE in TS 38.331  Sec 6 |  |
| 521 | 1>CSI RSRP | ELEMENT | FALSE | *csi-RSRP* IE in TS 38.331  Sec 6 |  |
| 525 | Quantity Config | STRUCTURE |  |  | *QuantityConfi g* IE in TS  38.331 Sec 6 |
| 526 | 1>Quantity Config NR List | LIST |  |  | *quantityConfi gNR-List* IE in TS 38.331  Sec 6 |
| 527 | 2>Quantity Config NR | STRUCTURE |  |  | *quantityConfi gNR* IE in TS  38.331 Sec 6 |
| 528 | 3>Quantity Config NR Cell | STRUCTURE |  |  | *quantityConfi gCell* IE in TS  38.331 Sec 6 |
| 529 | 4>SSB Filter Config | STRUCTURE |  |  | *ssb- FilterConfig*  IE in TS  38.331 Sec 6 |
| 530 | 5>SSB Filter Coefficient RSRP | ELEMENT | FALSE | *filterCoefficie ntRSRP* IE in TS 38.331  Sec 6 |  |
| 531 | 5>SSB Filter Coefficient RSRQ | ELEMENT | FALSE | *filterCoefficie ntRSRQ* IE in TS 38.331  Sec 6 |  |
| 532 | 5>SSB Filter Coefficient RS- SINR | ELEMENT | FALSE | *filterCoefficie ntSINR* IE in TS 38.331  Sec 6 |  |
| 533 | 4>CSI RS Filter Config | STRUCTURE |  |  | *csi-RS- FilterConfig* IE in TS  38.331 Sec 6 |
| 534 | 5>CSI RS Filter Coefficient RSRP | ELEMENT | FALSE | *filterCoefficie ntRSRP* IE in TS 38.331  Sec 6 |  |
| 535 | 5>CSI RS Filter Coefficient RSRQ | ELEMENT | FALSE | *filterCoefficie ntRSRQ* IE in TS 38.331  Sec 6 |  |
| 536 | 5>CSI RS Filter Coefficient RS-SINR | ELEMENT | FALSE | *filterCoefficie ntSINR* IE in TS 38.331  Sec 6 |  |
| 541 | 1>Quantity Config E-UTRA | STRUCTURE |  |  | *quantityConfi gEUTRA* IE in TS 38.331  Sec 6 |
| 542 | 2>E-UTRA Filter Coefficient RSRP | ELEMENT | FALSE | *filterCoefficie ntRSRP* IE in TS 38.331 |  |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
|  |  |  |  | Sec 6 |  |
| 543 | 2>E-UTRA Filter Coefficient RSRQ | ELEMENT | FALSE | *filterCoefficie ntRSRQ* IE in TS 38.331  Sec 6 |  |
| 544 | 2>E-UTRA Filter Coefficient RS-SINR | ELEMENT | FALSE | *filterCoefficie ntSINR* IE in TS 38.331  Sec 6 |  |
| 551 | Measurement Gap Config | STRUCTURE |  |  | *MeasGapCon*  *fig* IE in TS  38.331 Sec 6 |
| 552 | 1>Gap FR2 for setup | STRUCTURE |  |  | *gapFR2* IE in TS 38.331  Sec 6 |
| 553 | 2>FR2 Gap Offset | ELEMENT | FALSE | *gapOffset* IE in TS 38.331  Sec 6 |  |
| 554 | 2>FR2 Measurement Gap Length | ELEMENT | FALSE | *mgl* IE in TS  38.331 Sec 6 |  |
| 555 | 2>FR2 Measurement Gap Repetition Period | ELEMENT | FALSE | *mgrp* IE in TS  38.331 Sec 6 |  |
| 556 | 2>FR2 Measurement Gap Timing Analysis | ELEMENT | FALSE | *mgta* IE in TS  38.331 Sec 6 |  |
| 557 | 2>FR2 Reference Serving Cell Indicator | ELEMENT | TRUE | *refServCellIn dicator* IE in TS 38.331  Sec 6 |  |
| 560 | 1>Gap FR1 for setup | STRUCTURE |  |  | *gapFR1* IE in TS 38.331  Sec 6 |
| 561 | 2>FR1 Gap Offset | ELEMENT | FALSE | *gapOffset* IE in TS 38.331  Sec 6 |  |
| 562 | 2>FR1 Measurement Gap Length | ELEMENT | FALSE | *mgl* IE in TS  38.331 Sec 6 |  |
| 563 | 2>FR1 Measurement Gap Repetition Period | ELEMENT | FALSE | *mgrp* IE in TS  38.331 Sec 6 |  |
| 564 | 2>FR1 Measurement Gap Timing Analysis | ELEMENT | FALSE | *mgta* IE in TS  38.331 Sec 6 |  |
| 565 | 2>FR1 Reference Serving Cell Indicator | ELEMENT | TRUE | *refServCellIn dicator* IE in TS 38.331  Sec 6 |  |
| 570 | 1>Gap UE for setup | STRUCTURE |  |  | *gapUE* IE in TS 38.331  Sec 6 |
| 571 | 2>UE Gap Offset | ELEMENT | FALSE | *gapOffset* IE in TS 38.331  Sec 6 |  |
| 572 | 2>UE Measurement Gap Length | ELEMENT | FALSE | *mgl* IE in TS  38.331 Sec 6 |  |
| 573 | 2>UE Measurement Gap Reptition Period | ELEMENT | FALSE | *mgrp* IE in TS  38.331 Sec 6 |  |
| 574 | 2>UE Measurement Gap Timing Analysis | ELEMENT | FALSE | *mgta* IE in TS  38.331 Sec 6 |  |
| 575 | 2>UE Reference Serving Cell Indicator | ELEMENT | TRUE | *refServCellIn dicator* IE in TS 38.331  Sec 6 |  |
| 581 | Measurement Gap Sharing Config | STRUCTURE |  |  | *MeasGapSha ringConfig* IE in TS 38.331  Sec 6 |
| 582 | 1>Gap Sharing FR2 for setup | ELEMENT | FALSE | *gapFR2* IE in TS 38.331 |  |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
|  |  |  |  | Sec 6 |  |
| 583 | 1>Gap Sharing FR1 for setup | ELEMENT | FALSE | *gapFR1* IE in TS 38.331  Sec 6 |  |
| 584 | 1>Gap Sharing UE for setup | ELEMENT | FALSE | *gapUE* IE in TS 38.331  Sec 6 |  |

</div>

#### Modify MR Configuration

Upon receiving the *RIC Control Request* message with the *Measurement Report Configuration Control* Service Style and the *Modify MR Configuration* control action, the E2 node shall invoke RRC procedures related to MR Configuration, include the IEs corresponding to one or more of parameters described below in the related NI interface messages or RRC message.

In the case of UE group-based control action, the above RRC procedure(s) is invoked individually for each individual UE within the group.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **RAN**  **Parameter ID** | **RAN Parameter** | **RAN**  **Parameter Value Type** | **Key Flag** | **RAN**  **Parameter Definition** | **Semantics Description** |
| 1 | List of Measurement Objects to modify or add for modification | LIST |  |  | *measObjectT oAddModList* IE in TS  38.331 Sec 6 |
| 2 | 1>Measurement Object to modify or add for modification Item | STRUCTURE |  |  | *MeasObjectT oAddMod* IE in TS 38.331  Sec 6 |
| 3 | 2>Measurement Object ID | ELEMENT | TRUE | *MeasObjec tID* IE in TS  38.331 Sec  6 | This is the ID used by the E2 node for the measurement object for the UE via *RRCReconfig uration*  message |
| 4 | 2>CHOICE  *MO Type* | STRUCTURE |  |  | *measObject*  IE in TS  38.331 Sec 6 |
| 11 | 3>*NR MO* | STRUCTURE |  |  | *MeasObjectN R* IE in TS  38.331 Sec 6 |
| 12 | 4>SSB Frequency | ELEMENT | TRUE | *ARFCN-*  *ValueNR*  IE in TS  38.331 Sec  6 |  |
| 13 | 4>SSB Subcarrier spacing | ELEMENT | FALSE | *Subcarrier Spacing* IE in TS  38.331 Sec  6 |  |
| 14 | 4>SSB Primary MTC | STRUCTURE |  |  | *smtc1* IE in TS 38.331  Sec 6 |
| 15 | 5>CHOICE *Periodicity and Offset* | STRUCTURE |  |  | *periodicityAn dOffset* IE in TS 38.331  Sec 6 |
| 16 | 6>Sub-frame 5 | ELEMENT | FALSE | *sf5* IE in TS 38.331  Sec 6 |  |
| 17 | 6>Sub-frame 10 | ELEMENT | FALSE | *sf10* IE in TS 38.331  Sec 6 |  |
| 18 | 6>Sub-frame 20 | ELEMENT | FALSE | *sf20* IE in TS 38.331  Sec 6 |  |
| 19 | 6>Sub-frame 40 | ELEMENT | FALSE | *sf40* IE in TS 38.331  Sec 6 |  |
| 20 | 6>Sub-frame 80 | ELEMENT | FALSE | *sf80* IE in TS 38.331  Sec 6 |  |
| 21 | 6>Sub-frame 160 | ELEMENT | FALSE | *sf160* IE in TS 38.331  Sec 6 |  |
| 22 | 5>Duration | ELEMENT | FALSE | *duration* IE in TS  38.331 Sec  6 |  |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| 31 | 4>SSB Secondary MTC | STRUCTURE |  |  | *smtc2* IE in TS 38.331  Sec 6 |
| 32 | 5>List of cells | LIST |  |  | *pci-List* IE in TS 38.331  Sec 6 |
| 33 | 6>Cell Item | STRUCTURE |  |  | *PhysCellID* IE in TS 38.331  Sec 6 |
| 34 | 7>PCI | ELEMENT | TRUE | *physCelIID*  IE in TS  38.331 Sec  6 |  |
| 35 | 5>Periodicity | ELEMENT | FALSE | *periodicity*  IE in TS  38.331 Sec  6 |  |
| 36 | 4>Reference Frequency CSI - RS | ELEMENT | TRUE | *refFreqCSI*  *-RS* IE in TS 38.331  Sec 6 |  |
| 37 | 4>Reference Signal Config | STRUCTURE |  |  | *referenceSign alConfig* IE in TS 38.331  Sec 6 |
| 38 | 5>SSB Configuration Mobility | STRUCTURE |  |  | *SSB-*  *ConfigMobilit y* IE in TS  38.331 Sec 6 |
| 39 | 6>Setup or Release SSB to Measure | ELEMENT | FALSE | ENUMERA TED  (setup,rele ase,...) | *SetupReleas e* IE in TS  38.331 Sec 6 |
| 40 | 6>CHOICE *SSB To*  *Measure for setup* | STRUCTURE |  |  | *SSB-*  *ToMeasure*  IE in TS  38.331 Sec 6 |
| 41 | 7>Short Bitmap | ELEMENT | FALSE | *shortBitma p* IE in TS  38.331 Sec  6 |  |
| 42 | 7>Medium Bitmap | ELEMENT | FALSE | *mediumBit map* IE in TS 38.331  Sec 6 |  |
| 43 | 7>Long Bitmap | ELEMENT | FALSE | *longBitmap*  IE in TS  38.331 Sec  6 |  |
| 44 | 6>Derive SSB Index From Cell | ELEMENT | FALSE | *deriveSSB- IndexFrom Cell* IE in TS 38.331  Sec 6 |  |
| 45 | 6>SS RSSI Measurement | STRUCTURE |  |  | *ss-RSSI-*  *Measurement*  IE in TS  38.331 Sec 6 |
| 46 | 7>Measurement Slots | ELEMENT | FALSE | *measurem entSlots* IE in TS  38.331 Sec  6 |  |
| 47 | 7>End Symbol | ELEMENT | FALSE | *endSymbol*  IE in TS  38.331 Sec  6 |  |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| 49 | 6>Setup or Release CSI RS Resource Config Mobility | ELEMENT | FALSE | ENUMERA TED  (setup, release,...) | *SetupReleas e* IE in TS  38.331 Sec 6 |
| 50 | 6>CSI RS Resource Config Mobility for Setup | STRUCTURE |  |  | *csi-rs- ResourceCon figMobility* IE in TS 38.331  Sec 6 |
| 51 | 7>Reference Serving cell Index | ELEMENT | TRUE | *refServCell Index* IE in TS 38.331  Sec 6 |  |
| 52 | 7>Sub carrier spacing | ELEMENT | FALSE | *subcarrierS pacing* IE in TS  38.331 Sec  6 |  |
| 53 | 7>CSI RS Cell List Mobility | LIST |  |  | *csi-RS- CellList- Mobility* IE in TS 38.331  Sec 6 |
| 54 | 8>CSI RS Cell  Mobility | STRUCTURE |  |  | *CSI-RS-*  *CellMobility*  IE in TS  38.331 Sec 6 |
| 55 | 9>Physical Cell ID | ELEMENT | TRUE | *PhysCellID*  IE in TS  38.331 Sec  6 |  |
| 56 | 9>CSI RS  Measurement Bandwidth | STRUCTURE |  |  | *csi-rs- Measurement BW* IE in TS  38.331 Sec 6 |
| 57 | 10>Number of PRBs | ELEMENT | FALSE | *nrofPRBs*  IE in TS  38.331 Sec  6 |  |
| 58 | 10>Start PRB | ELEMENT | FALSE | *startPRB*  IE in TS  38.331 Sec  6 |  |
| 59 | 9>Density | ELEMENT | FALSE | *Density* IE in TS  38.331 Sec  6 |  |
| 60 | 9>CSI RS  Resource List Mobility | LIST |  |  | *csi-rs- ResourceList- Mobility* IE in TS 38.331  Sec 6 |
| 61 | 10>CSI RS  Resource Item Mobility | STRUCTURE |  |  | *CSI-RS-*  *Resource- Mobility* IE in TS 38.331  Sec 6 |
| 62 | 11>CSI  RS Index | ELEMENT | TRUE | *csi-RS- Index* IE in TS 38.331  Sec 6 |  |
| 63 | 11>CHOI  CE *Slot Config* | STRUCTURE |  |  | *slotConfig* IE in TS 38.331  Sec 6 |
| 64 | 12>ms 4 | ELEMENT | FALSE | *ms4* IE in TS 38.331  Sec 6 |  |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| 65 | 12>ms 5 | ELEMENT | FALSE | *ms5* IE in TS 38.331  Sec 6 |  |
| 66 | 12>ms 10 | ELEMENT | FALSE | *ms10* IE in TS 38.331  Sec 6 |  |
| 67 | 12>ms 20 | ELEMENT | FALSE | *ms20* IE in TS 38.331  Sec 6 |  |
| 68 | 12>ms 40 | ELEMENT | FALSE | *ms40* IE in TS 38.331  Sec 6 |  |
| 69 | 11>Associ ated SSB | STRUCTURE |  |  | *assoiatedSS B* IE in TS  38.331 Sec 6 |
| 70 | 12>SS B  Index | ELEMENT | TRUE | *ssb-Index*  IE in TS  38.331 Sec  6 |  |
| 71 | 12>Is  Quasi colocol o | ELEMENT | FALSE | *isQuasiCol ocated* IE in TS  38.331 Sec  6 |  |
| 72 | 11>CHOI CE  *Frequenc y Domain Allocation* | STRUCTURE |  |  | *frequencyDo mainnAllocati on* IE in TS  38.331 Sec 6 |
| 73 | 12>Fr  equen cy Domai n Allocat ion  Row 1 | ELEMENT | FALSE | *row1* IE in TS 38.331  Sec 6 |  |
| 74 | 12>Fr  equen cy Domai n Allocat ion  Row 2 | ELEMENT | FALSE | *row2* IE in TS 38.331  Sec 6 |  |
| 75 | 11>First OFDM  Symbol in Time Domain | ELEMENT | FALSE | *firstOFDM SymbolInTi meDomain* IE in TS  38.331 Sec  6 |  |
| 76 | 11>Seque nce Generatio n Config | ELEMENT | FALSE | *sequenecG enerationC onfig* IE in TS 38.331  Sec 6 |  |
| 77 | 4>Absolute Threshold SSB - Block Consolidation | STRUCTURE |  |  | *absThreshSS*  *-*  *BlocksConsol idation* IE in TS 38.331  Sec 6 |
| 78 | 5>Block Consolidation Threshold RSRP | ELEMENT | FALSE | *RSRP-*  *Range* IE in TS  38.331 Sec  6 |  |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| 79 | 5>Block Consolidation Threshold RSRQ | ELEMENT | FALSE | *RSRQ-*  *Range* IE in TS  38.331 Sec  6 |  |
| 80 | 5>Block Consolidation Threshold SINR | ELEMENT | FALSE | *SINR-*  *Range* IE in TS  38.331 Sec  6 |  |
| 81 | 4>Absolute Threshold CSI RS Consolidation | STRUCTURE |  |  | *absThreshCS I-RS-*  *Consolidation*  IE in TS  38.331 Sec 6 |
| 82 | 5>RS Consolidation Threshold RSRP | ELEMENT | FALSE | *RSRP-*  *Range* IE in TS  38.331 Sec  6 |  |
| 83 | 5>RS Consoldation Threshold RSRQ | ELEMENT | FALSE | *RSRQ-*  *Range* IE in TS  38.331 Sec  6 |  |
| 84 | 5>RS Consolidated Threshold SINR | ELEMENT | FALSE | *SINR-*  *Range* IE in TS  38.331 Sec  6 |  |
| 91 | 4>Number of SS blocks to average | ELEMENT | FALSE | *nrofSS- BlocksToA verage* IE in TS  38.331 Sec  6 |  |
| 92 | 4>Number of CSI RS Resources to average | ELEMENT | FALSE | *nrofCSI- RS-*  *ResouresT oAverage* IE in TS  38.331 Sec  6 |  |
| 93 | 4>Quantity Config Index | ELEMENT | TRUE | *quantityCo nfigIndex* IE in TS  38.331 Sec  6 |  |
| 100 | 4>Q-Offset MO Range Sequence | STRUCTURE |  |  | *offsetMO* IE in TS 38.331  Sec 6 |
| 101 | 5>RSRP Offset SSB | ELEMENT | FALSE | *rsrpOffsetS SB* IE in TS 38.331  Sec 6 |  |
| 102 | 5>RSRQ Offset SSB | ELEMENT | FALSE | *rsrqOffsetS SB* IE in TS 38.331  Sec 6 |  |
| 103 | 5>SINR Offset SSB | ELEMENT | FALSE | *sinrOffsetS SB* IE in TS 38.331  Sec 6 |  |
| 104 | 5>RSRP Offset CSI RS | ELEMENT | FALSE | *rsrpOffsetC SI-RS* IE in TS 38.331  Sec 6 |  |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| 105 | 5>RSRQ Offset CSI RS | ELEMENT | FALSE | *rsrqOffsetC SI-RS* IE in TS 38.331  Sec 6 |  |
| 106 | 5>SINR Offset CSI RS | ELEMENT | FALSE | *sinrOffsetC SI-RS* IE in TS 38.331  Sec 6 |  |
| 107 | 4>Cells to Remove List | LIST |  |  | *cellsToRemo veList* IE in TS 38.331  Sec 6 |
| 108 | 5>Cell to Remove Item | STRUCTURE |  |  |  |
| 109 | 6>Cell to Remove - Physical Cell ID | ELEMENT | TRUE | *PhysCellID*  IE in TS  38.331 Sec  6 |  |
| 110 | 4>Cells to modify or add for modification List | LIST |  |  | *CellsToAddM odList* IE in TS 38.331  Sec 6 |
| 111 | 5>Cell to modify or add for modification Item | STRUCTURE |  |  | *CellsToAdd*  IE in TS  38.331 Sec 6 |
| 112 | 6>Cell to modify or add for modification - Physical Cell ID | ELEMENT | TRUE | *PhysCellID*  IE in TS  38.331 Sec  6 |  |
| 113 | 6>Cell Individual Offset | STRUCTURE |  |  | *cellIndividual Offset* IE in TS 38.331  Sec 6 |
| 115 | 7>RSRP Offset SSB | ELEMENT | FALSE | *rsrpOffsetS SB* IE in TS 38.331  Sec 6 |  |
| 116 | 7>RSRQ Offset SSB | ELEMENT | FALSE | *rsrqOffsetS SB* IE in TS 38.331  Sec 6 |  |
| 117 | 7>SINR Offset SSB | ELEMENT | FALSE | *sinrOffsetS SB* IE in TS 38.331  Sec 6 |  |
| 118 | 7>RSRP Offset CSI RS | ELEMENT | FALSE | *rsrpOffsetC SI-RS* IE in TS 38.331  Sec 6 |  |
| 119 | 7>RSRQ Offset CSI RS | ELEMENT | FALSE | *rsrqOffsetC SI-RS* IE in TS 38.331  Sec 6 |  |
| 120 | 7>SINR Offset CSI RS | ELEMENT | FALSE | *sinrOffsetC SI-RS* IE in TS 38.331  Sec 6 |  |
| 121 | 4>Black cells to Remove List | LIST |  |  | *blackCellsTo RemoveList* IE in TS  38.331 Sec 6 |
| 122 | 5>Black cell to Remove Item | STRUCTURE |  |  |  |
| 123 | 6>Black cell to Remove - Physical Cell Range Index | ELEMENT | TRUE | *PCI-*  *RangeInde x* IE in TS  38.331 Sec |  |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
|  |  |  |  | 6 |  |
| 125 | 4>Black cells to modify or add for modification List | LIST |  |  | *blackCellsTo AddModList* IE in TS  38.331 Sec 6 |
| 126 | 5>Black cell to modify or add for modification Item | STRUCTURE |  |  | *PCI-*  *RangeEleme nt* IE in TS  38.331 Sec 6 |
| 127 | 6>Black cell to modify or add for modification - Physical Cell Range Index | ELEMENT | TRUE | *PCI-*  *RangeInde x* IE in TS  38.331 Sec  6 |  |
| 128 | 6>Physical Cell ID - Range | STRUCTURE |  |  | *PCI-Range* IE in TS 38.331  Sec 6 |
| 129 | 7>PCI Range Start | ELEMENT | TRUE | *PhysCellId*  IE in TS  38.331 Sec  6 |  |
| 130 | 7>PCI Range | ELEMENT | FALSE | *range* IE in TS 38.331  Sec 6 |  |
| 131 | 4>White cells to Remove List | LIST |  |  | *whiteCellsTo RemoveList* IE in TS  38.331 Sec 6 |
| 132 | 5>White cell to Remove Item | STRUCTURE |  |  | *whiteCellsTo RemoveList* IE in TS  38.331 Sec 6 |
| 133 | 6>White cell to Remove - Physical Cell Range Index | ELEMENT | TRUE | *PCI-*  *RangeInde x* IE in TS  38.331 Sec  6 |  |
| 135 | 4>White cells to modify or add for modification List | LIST |  |  | *whiteCellsTo AddModList*  IE in TS  38.331 Sec 6 |
| 136 | 5>White cell to modify or add for modification Item | STRUCTURE |  |  | *PCI-*  *RangeEleme nt* IE in TS  38.331 Sec 6 |
| 137 | 6>White cell to modify or add for modification - Physical Cell Range Index | ELEMENT | TRUE | *PCI-*  *RangeInde x* IE in TS  38.331 Sec  6 |  |
| 138 | 6>Physical Cell ID - Range | STRUCTURE |  |  | *PCI-Range* IE in TS 38.331  Sec 6 |
| 139 | 7>PCI Range Start | ELEMENT | TRUE | *physCellId*  IE in TS  38.331 Sec  6 |  |
| 140 | 7>PCI Range | ELEMENT | FALSE | *range* IE in TS 38.331  Sec 6 |  |
| 141 | 4>Frequency Band Indicator NR | ELEMENT | TRUE | *freqBandIn dicatorNR* IE in TS  38.331 Sec  6 |  |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| 142 | 4>Measurement Cycle Secondary cell | ELEMENT | FALSE | *measCycle SCell* IE in TS 38.331  Sec 6 |  |
| 151 | 3>*E-UTRA MO* | STRUCTURE |  |  | *MeasObjectE UTRA* IE in TS 38.331  Sec 6 |
| 152 | 4>E-UTRA Carrier Frequency | ELEMENT | TRUE | *carrierFreq*  IE in TS  38.331 Sec  6 |  |
| 153 | 4>E-UTRA Allowed Measurement Bandwidth | ELEMENT | FALSE | *allowedMe asBandwid th* IE in TS  38.331 Sec  6 |  |
| 161 | 4>List of E-UTRA cells to remove | LIST |  |  | *cellsToRemo veListEUTRA N* IE in TS  38.331 Sec 6 |
| 162 | 5>E-UTRA Cell to remove Item | STRUCTURE |  |  |  |
| 164 | 6>E-UTRA PCI to remove | ELEMENT | TRUE | *EUTRA-*  *PhysCellID*  IE in TS  38.331 Sec  6 | Note that RIC cannot use the Cell Index unless informed by the E2 node, so PCI is  used here. |
| 171 | 4>List of E-UTRA cells to modify or add for modification | LIST |  |  | *cellsToAddM odListEUTRA N* IE in TS  38.331 Sec 6 |
| 172 | 5>E-UTRA Cell to modify or add for modification Item | STRUCTURE |  |  |  |
| 173 | 6>E-UTRA Cell to modify or add for modification | STRUCTURE |  |  | *EUTRA-Cell*  IE in TS  38.331 Sec 6 |
| 174 | 7>E-UTRA PCI to  modify or add for modification | ELEMENT | TRUE | *EUTRA-*  *PhysCellId*  IE in TS  38.331 Sec  6 |  |
| 175 | 7>E-UTRA Cell  Individual Offset | ELEMENT | FALSE | *cellIndividu alOffset* IE in TS  38.331 Sec  6 |  |
| 181 | 4>List of E-UTRA black cells to remove | LIST |  |  | *blackCellsTo RemoveListE UTRAN* IE in TS 38.331  Sec 6 |
| 182 | 5>E-UTRA black cell to remove Item | STRUCTURE |  |  |  |
| 184 | 6>E-UTRA PCI to remove | ELEMENT | TRUE | *EUTRA-*  *PhysCellId*  IE in TS  38.331 Sec  6 |  |
| 191 | 4>List of E-UTRA black cells to modify or add for modification | LIST |  |  | *blackCellsTo AddModList* IE in TS  38.331 Sec 6 |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| 192 | 5>E-UTRA black cell to modify or add for modification item | STRUCTURE |  |  |  |
| 193 | 6>E-UTRA black cell to modify or add for modification | STRUCTURE |  |  | *EUTRA-*  *BlackCell* IE in TS 38.331  Sec 6 |
| 194 | 7>E-UTRA Physical Cell ID Range | STRUCTURE |  |  | *EUTRA-*  *PhysCellIdRa nge* IE in TS  38.331 Sec 6 |
| 195 | 8>E-UTRA PCI Start | ELEMENT | TRUE | *EUTRA-*  *PhysCellId*  IE in TS  38.331 Sec  6 |  |
| 196 | 8>E-UTRA PCI  Range | ELEMENT | FALSE | *range* IE in TS 38.331  Sec 6 |  |
| 201 | 4>E-UTRA Presence Antenna Port 1 | ELEMENT | FALSE | *eutra- PresenceA ntennaPort 1* IE in TS  38.331 Sec  6 |  |
| 205 | 4>E-UTRA Q Offset Range | ELEMENT | FALSE | *eutra-Q- OffsetRang e* IE in TS  38.331 Sec  6 |  |
| 210 | 4>Wideband RSRQ Measurement | ELEMENT | FALSE | *widebandR SRQ-Meas* IE in TS  38.331 Sec  6 |  |
| 301 | List of Report Config Objects to modify or add for modification | LIST |  |  | *ReportConfig ToAddModLis t* IE in TS  38.331 Sec 6 |
| 302 | 1>Report Config Object to modify or add for modification Item | STRUCTURE |  |  | *ReportConfig ToAddMod* IE in TS 38.331  Sec 6 |
| 303 | 2>Report Config Object ID | ELEMENT | TRUE | *ReportConf igID* IE in TS 38.331  Sec 6 | This is the ID used by the E2 node for the report config object for the UE via *RRCReconfig uration*  message |
| 304 | 2>CHOICE *Report Config Type* | STRUCTURE |  |  | *reportConfig*  IE in TS  38.331 Sec 6 |
| 311 | 3>*NR Report Config* | STRUCTURE |  |  | *ReportConfig*  *NR* IE in TS  38.331 Sec 6 |
| 312 | 4>CHOICE *Report Type* | STRUCTURE |  |  | *reportType* IE in TS 38.331  Sec 6 |
| 313 | 5>Periodical Report Config | STRUCTURE |  |  | *PeriodicalRep ortConfig* IE in TS 38.331  Sec 6 |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| 314 | 6>NR RS Type | ELEMENT | FALSE | *NR-RS-*  *Type* IE in TS 38.331  Sec 6 |  |
| 315 | 6>NR Report Interval | ELEMENT | FALSE | *ReportInter val* IE in TS  38.331 Sec  6 |  |
| 316 | 6>NR Report Amount | ELEMENT | FALSE | *reportAmo unt* IE in TS 38.331  Sec 6 |  |
| 317 | 6>Measurement Report Quantity | STRUCTURE |  |  | *MeasReportQ uantity* IE in TS 38.331  Sec 6 |
| 318 | 7>MR RSRP | ELEMENT | FALSE | *rsrp* IE in TS 38.331  Sec 6 |  |
| 319 | 7>MR RSRQ | ELEMENT | FALSE | *rsrq* IE in TS 38.331  Sec 6 |  |
| 320 | 7>MR SINR | ELEMENT | FALSE | *sinr* IE in TS 38.331  Sec 6 |  |
| 321 | 6>Maximum number of Report cells | ELEMENT | FALSE | *maxReport ells* IE in TS 38.331  Sec 6 |  |
| 322 | 6>Report Quantity Reference Signal - Indexes | STRUCTURE |  |  | *reportQuantit yRS-Indexes* IE in TS  38.331 Sec 6 |
| 323 | 7>Report Qty RSRP | ELEMENT | FALSE | *rsrp* IE in TS 38.331  Sec 6 |  |
| 324 | 7>Report Qty RSRQ | ELEMENT | FALSE | *rsrq* IE in TS 38.331  Sec 6 |  |
| 325 | 7>Report Qty SINR | ELEMENT | FALSE | *sinr* IE in TS 38.331  Sec 6 |  |
| 326 | 6>Maximum number of reference signals - Indexes to Report | ELEMENT | FALSE | *maxNrofR S-*  *IndexesTo Report* IE in TS  38.331 Sec  6 |  |
| 327 | 6>Include Beam Measurements | ELEMENT | FALSE | *includeBea mMeasure metns* IE in TS 38.331  Sec 6 |  |
| 328 | 6>Use WhiteCellList | ELEMENT | FALSE | *useWhiteC ellList* IE in TS 38.331  Sec 6 |  |
| 331 | 5>Event Trigger Config | STRUCTURE |  |  | *EventTrigger Config* IE in TS 38.331  Sec 6 |
| 332 | 6>CHOICE *Event ID* | STRUCTURE |  |  | *eventide* IE in TS 38.331  Sec 6 |
| 333 | 7>Event A1 | STRUCTURE |  |  | *eventA1* IE in TS 38.331 |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
|  |  |  |  |  | Sec 6 |
| 334 | 8>A1 Threshold | STRUCTURE |  |  | *a1-Threshold*  IE in TS  38.331 Sec 6 |
| 335 | 9>CHOICE *A1*  *Threshold Type* | STRUCTURE |  |  | *MeasTrigger Quantity* IE in TS 38.331  Sec 6 |
| 336 | 10>A1  Threshold RSRP | ELEMENT | FALSE | *rsrp* IE in TS 38.331  Sec 6 | *RSRP-Range*  IE |
| 337 | 10>A1  Threshold RSRQ | ELEMENT | FALSE | *rsrq* IE in TS 38.331  Sec 6 | *RSRQ-Range*  IE |
| 338 | 10>A1  Threshold SINR | ELEMENT | FALSE | *sinr* IE in TS 38.331  Sec 6 | *SINR-Range*  IE |
| 339 | 9>A1 Report On Leave | ELEMENT | FALSE | *reportOnLe ave* IE in TS 38.331  Sec 6 |  |
| 340 | 9>A1 Hysteresis | ELEMENT | FALSE | *hysteresis*  IE in TS  38.331 Sec  6 |  |
| 341 | 9>A1 Time to Trigger | ELEMENT | FALSE | *timeToTrig ger* IE in TS 38.331  Sec 6 |  |
| 343 | 7>Event A2 | STRUCTURE |  |  | *eventA2* IE in TS 38.331  Sec 6 |
| 344 | 8>A2 Threshold | STRUCTURE |  |  | *A2-Threshold*  IE in TS  38.331 Sec 6 |
| 345 | 9>CHOICE *A2*  *Threshold Type* | STRUCTURE |  |  | *MeasTrigger Quantity* IE in TS 38.331  Sec 6 |
| 346 | 10>A2  Threshold RSRP | ELEMENT | FALSE | *rsrp* IE in TS 38.331  Sec 6 | *RSRP-Range*  IE |
| 347 | 10>A2  Threshold RSRQ | ELEMENT | FALSE | *rsrq* IE in TS 38.331  Sec 6 | *RSRQ-Range*  IE |
| 348 | 10>A2  Threshold SINR | ELEMENT | FALSE | *sinr* IE in TS 38.331  Sec 6 | *SINR-Range*  IE |
| 349 | 9>A2 Report On Leave | ELEMENT | FALSE | *reportOnLe ave* IE in TS 38.331  Sec 6 |  |
| 350 | 9>A2 Hysteresis | ELEMENT | FALSE | *hysteresis*  IE in TS  38.331 Sec  6 |  |
| 351 | 9>A2 Time to Trigger | ELEMENT | FALSE | *timeToTrig ger* IE in TS 38.331  Sec 6 |  |
| 353 | 7>Event A3 | STRUCTURE |  |  | *eventA3* IE in TS 38.331  Sec 6 |
| 354 | 8>A3 Offset | STRUCTURE |  |  | *a3-Threshold*  IE in TS  38.331 Sec 6 |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| 355 | 9>CHOICE *A3*  *Offset Type* | STRUCTURE |  |  | *MeasTrigger QuantityOffse t* IE in TS  38.331 Sec 6 |
| 356 | 10>A3  Threshold RSRP Offset | ELEMENT | FALSE | *rsrp* IE in TS 38.331  Sec 6 |  |
| 357 | 10>A3  Threshold RSRQ Offset | ELEMENT | FALSE | *rsrq* IE in TS 38.331  Sec 6 |  |
| 358 | 10>A3  Threshold SINR Offset | ELEMENT | FALSE | *sinr* IE in TS 38.331  Sec 6 |  |
| 359 | 9>A3 Report On Leave | ELEMENT | FALSE | *reportOnLe ave* IE in TS 38.331  Sec 6 |  |
| 360 | 9>A3 Hysteresis | ELEMENT | FALSE | *hysteresis*  IE in TS  38.331 Sec  6 |  |
| 361 | 9>A3 Time to Trigger | ELEMENT | FALSE | *timeToTrig ger* IE in TS 38.331  Sec 6 |  |
| 362 | 9>Use White Cell List | ELEMENT | FALSE | *useWhiteC ellList* IE in TS 38.331  Sec 6 |  |
| 363 | 7>Event A4 | STRUCTURE |  |  | *eventA4* IE in TS 38.331  Sec 6 |
| 364 | 8>A4 Threshold | STRUCTURE |  |  | *A4-Threshold*  IE in TS  38.331 Sec 6 |
| 365 | 9>CHOICE *A4*  *Threshold Type* | STRUCTURE |  |  | *MeasTrigger Quantity* IE in TS 38.331  Sec 6 |
| 366 | 10>A4  Threshold RSRP | ELEMENT | FALSE | *rsrp* IE in TS 38.331  Sec 6 | *RSRP-Range*  IE |
| 367 | 10>A4  Threshold RSRQ | ELEMENT | FALSE | *rsrq* IE in TS 38.331  Sec 6 | *RSRQ-Range*  IE |
| 368 | 10>A4  Threshold SINR | ELEMENT | FALSE | *sinr* IE in TS 38.331  Sec 6 | *SINR-Range*  IE |
| 369 | 9>A4 Report On Leave | ELEMENT | FALSE | *reportOnLe ave* IE in TS 38.331  Sec 6 |  |
| 370 | 9>A4 Hysteresis | ELEMENT | FALSE | *hysteresis*  IE in TS  38.331 Sec  6 |  |
| 371 | 9>A4 Time to Trigger | ELEMENT | FALSE | *timeToTrig ger* IE in TS 38.331  Sec 6 |  |
| 372 | 9>Use White Cell List | ELEMENT | FALSE | *useWhiteC ellList* IE in TS 38.331  Sec 6 |  |
| 375 | 7>Event A5 | STRUCTURE |  |  | *eventA5* IE in TS 38.331  Sec 6 |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| 376 | 8>A5 Threshold 1 | STRUCTURE |  |  | *a5- Threshold1* IE in TS 38.331  Sec 6 |
| 377 | 9>CHOICE *A5*  *Threshold1 Type* | STRUCTURE |  |  | *MeasTrigger Quantity* IE in TS 38.331  Sec 6 |
| 378 | 10>A5  Threshold1 RSRP | ELEMENT | FALSE | *rsrp* IE in TS 38.331  Sec 6 | *RSRP-Range*  IE |
| 379 | 10>A5  Threshold1 1 RSRQ | ELEMENT | FALSE | *rsrq* IE in TS 38.331  Sec 6 | *RSRQ-Range*  IE |
| 380 | 10>A5  Threshold1 SINR | ELEMENT | FALSE | *sinr* IE in TS 38.331  Sec 6 | *SINR-Range*  IE |
| 381 | 9>CHOICE *A5*  *Threshold2 Type* | STRUCTURE |  |  | *a5- Threshold2* IE in TS 38.331  Sec 6 |
| 382 | 10>A5  Threshold2 RSRP | ELEMENT | FALSE | *MeasTrigg erQuantity* IE in TS  38.331 Sec  6 |  |
| 379 | 10>A5  Threshold2 RSRQ | ELEMENT | FALSE | *rsrp* IE in TS 38.331  Sec 6 | *RSRP-Range*  IE |
| 380 | 10>A5  Threshold2 SINR | ELEMENT | FALSE | *rsrq* IE in TS 38.331  Sec 6 | *RSRQ-Range*  IE |
| 381 | 9>A5 Report On Leave | ELEMENT | FALSE | *reportOnLe ave* IE in TS 38.331  Sec 6 |  |
| 382 | 9>A5 Hysteresis | ELEMENT | FALSE | *hysteresis*  IE in TS  38.331 Sec  6 |  |
| 383 | 9>A5 Time to Trigger | ELEMENT | FALSE | *timeToTrig ger* IE in TS 38.331  Sec 6 |  |
| 384 | 9>Use White Cell List | ELEMENT | FALSE | *useWhiteC ellList* IE in TS 38.331  Sec 6 |  |
| 391 | 7>Event A6 | STRUCTURE |  |  | *eventA6* IE in TS 38.331  Sec 6 |
| 392 | 8>A6 Threshold | STRUCTURE |  |  | *A6-Threshold*  IE in TS  38.331 Sec 6 |
| 393 | 9>CHOICE *A6*  *Threshold Type* | STRUCTURE |  |  | *MeasTrigger QuantityOffse t* IE in TS  38.331 Sec 6 |
| 394 | 10>A6  Threshold RSRP Offset | ELEMENT | FALSE | *rsrp* IE in TS 38.331  Sec 6 |  |
| 395 | 10>A6  Threshold RSRQ Offset | ELEMENT | FALSE | *rsrq* IE in TS 38.331  Sec 6 |  |
| 396 | 10>A6  Threshold SINR Offset | ELEMENT | FALSE | *sinr* IE in TS 38.331  Sec 6 |  |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| 397 | 9>A6 Report On Leave | ELEMENT | FALSE | *reportOnLe ave* IE in TS 38.331  Sec 6 |  |
| 398 | 9>A6 Hysteresis | ELEMENT | FALSE | *hysteresis*  IE in TS  38.331 Sec  6 |  |
| 399 | 9>A6 Time to Trigger | ELEMENT | FALSE | *timeToTrig ger* IE in TS 38.331  Sec 6 |  |
| 400 | 9>Use White Cell List | ELEMENT | FALSE | *useWhiteC ellList* IE in TS 38.331  Sec 6 |  |
| 405 | 5>Report CGI | STRUCTURE |  |  | *ReportCGI* IE in TS 38.331  Sec 6 |
| 406 | 6>Cell to Report CGI | ELEMENT | TRUE | *physCellId*  IE in TS  38.331 Sec  6 |  |
| 411 | 5>Report SFTD - NR | STRUCTURE |  |  | *ReportSFTD- NR* IE in TS  38.331 Sec 6 |
| 412 | 6>Report SFTD - Measurement | ELEMENT | FALSE | *reportSFT D-Meas* IE in TS  38.331 Sec  6 |  |
| 413 | 6>Report RSRP | ELEMENT | FALSE | *reportRSR P* IE in TS  38.331 Sec  6 |  |
| 414 | 6>Report SFTD Neigh Meas | ELEMENT | FALSE | *reportSFT D-*  *NeighMeas*  IE in TS  38.331 Sec  6 |  |
| 415 | 6>DRX SFTD Neigh Meas | ELEMENT | FALSE | *drx-SFTD- NeighMeas* IE in TS  38.331 Sec  6 |  |
| 416 | 6>List of cells for which to report SFTD | LIST |  |  | *cellsForWhic hToReportSF TD* IE in TS  38.331 Sec 6 |
| 417 | 7>Cell Item for reporting SFTD | STRUCTURE |  |  |  |
| 418 | 8>Physical Cell Identity | ELEMENT | TRUE | *physCellId*  IE in TS  38.331 Sec  6 |  |
| 421 | 3>Report Config Inter RAT | STRUCTURE |  |  | *ReportConfigI nterRAT* IE in TS 38.331  Sec 6 |
| 422 | 4>CHOICE *Report Type* | STRUCTURE |  |  | *reportType* IE in TS 38.331  Sec 6 |
| 423 | 5>Periodical Report Config Inter RAT | STRUCTURE |  |  | *PeriodicalRep ortConfigInter*  *RAT* IE in TS  38.331 Sec 6 |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| 431 | 6>Periodical Inter-RAT Report Interval | ELEMENT | FALSE | *reportInterv al* IE in TS  38.331 Sec  6 |  |
| 432 | 6>Periodical Inter-RAT Report Amount | ELEMENT | FALSE | *reportAmo unt* IE in TS 38.331  Sec 6 |  |
| 435 | 6>Periodical Inter-RAT Report Quantity | STRUCTURE |  |  | *reportQuantit*  *y* IE in TS  38.331 Sec 6 |
| 436 | 7>Inter-RAT RSRP | ELEMENT | FALSE | *rsrp* IE in TS 38.331  Sec 6 |  |
| 437 | 7>Inter-RAT RSRQ | ELEMENT | FALSE | *rsrq* IE in TS 38.331  Sec 6 |  |
| 438 | 7>Inter-RAT SINR | ELEMENT | FALSE | *sinr* IE in TS 38.331  Sec 6 |  |
| 439 | 6>Maximum number of cells for reporting | ELEMENT | FALSE | *maxReport Cells* IE in TS 38.331  Sec 6 |  |
| 441 | 5>Event Trigger Config Inter RAT | STRUCTURE |  |  | *EventTrigger ConfigInterR*  *AT* IE in TS  38.331 Sec 6 |
| 442 | 6>CHOICE *Event ID* | STRUCTURE |  |  | *eventId* IE in TS 38.331  Sec 6 |
| 451 | 7>Event B1 | STRUCTURE |  |  | *eventB1* IE in TS 38.331  Sec 6 |
| 452 | 8>B1 Threshold EUTRA | STRUCTURE |  |  | *b1- ThresholdEU TRA* IE in TS  38.331 Sec 6 |
| 453 | 9>E-UTRA RSRP | ELEMENT | FALSE | *RSRP-*  *RangeEUT RA* IE in TS 38.331  Sec 6 |  |
| 454 | 9>E-UTRA RSRQ | ELEMENT | FALSE | *RSRQ-*  *RangeEUT RA* IE in TS 38.331  Sec 6 |  |
| 455 | 9>E-UTRA SINR | ELEMENT | FALSE | *SINR-*  *RangeEUT RA* IE in TS 38.331  Sec 6 |  |
| 456 | 8>Event B1 Report On Leave | ELEMENT | FALSE | *reportOnLe ave* IE in TS 38.331  Sec 6 |  |
| 457 | 8>E-UTRA  Hysteresis | ELEMENT | FALSE | *hystereisis*  IE in TS  38.331 Sec  6 |  |
| 458 | 8>E-UTRA Time To  Trigger | ELEMENT | FALSE | *timeToTrig ger* IE in TS 38.331  Sec 6 |  |
| 471 | 7>Event B2 | STRUCTURE |  |  | *eventB2* IE in TS 38.331 |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
|  |  |  |  |  | Sec 6 |
| 472 | 8>B2 Threshold1 NR | STRUCTURE |  |  | *b2- Threshold1* IE in TS 38.331  Sec 6 |
| 475 | 9>B2 Threshold1 NR RSRP | ELEMENT | FALSE | *RSRP-*  *Range* IE in TS  38.331 Sec  6 |  |
| 476 | 9>B2 Threshold1 NR RSRQ | ELEMENT | FALSE | *RSRQ-*  *Range* IE in TS  38.331 Sec  6 |  |
| 477 | 9>B2 Threshold1 NR SINR | ELEMENT | FALSE | *SINR-*  *Range* IE in TS  38.331 Sec  6 |  |
| 481 | 8>B2 Threshold2 E- UTRA | STRUCTURE |  |  | *b2- Threshold2E UTRA* IE in TS 38.331  Sec 6 |
| 482 | 9>B2 Threshold2 E-UTRA RSRP | ELEMENT | FALSE | *RSRP-*  *RangeEUT RA* IE in TS 38.331  Sec 6 |  |
| 483 | 9>B2 Threshold2 E-UTRA RSRQ | ELEMENT | FALSE | *RSRQ-*  *RangeEUT RA* IE in TS 38.331  Sec 6 |  |
| 484 | 9>B2 Threshold2 E-UTRA SINR | ELEMENT | FALSE | *SINR-*  *RangeEUT RA* IE in TS 38.331  Sec 6 |  |
| 491 | 6>Inter-RAT Reference Signal Type | ELEMENT | FALSE | *rsType* IE in TS  38.331 Sec  6 |  |
| 492 | 6>Inter-RAT Report Interval | ELEMENT | FALSE | *reportInterv al* IE in TS  38.331 Sec  6 |  |
| 493 | 6>Inter-RAT Report Amount | ELEMENT | FALSE | *reportAmo unt* IE in TS 38.331  Sec 6 |  |
| 501 | 6>Inter-RAT Report Quantity | STRUCTURE |  |  | *reportQuantit*  *y* IE in TS  38.331 Sec 6 |
| 502 | 7>Inter-RAT Report Quantity RSRP | ELEMENT | FALSE | *rsrp* IE in TS 38.331  Sec 6 |  |
| 503 | 7>Inter-RAT Report Quantity RSRQ | ELEMENT | FALSE | *rsrq* IE in TS 38.331  Sec 6 |  |
| 504 | 7>Inter-RAT Report Quantity SINR | ELEMENT | FALSE | *sinr* IE in TS 38.331  Sec 6 |  |
| 510 | 6>Maximum number of cells to be reported | ELEMENT | FALSE | *maxReport Cells* IE in |  |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
|  |  |  |  | TS 38.331  Sec 6 |  |
| 519 | *CHOICE* NR SpCell RSRP Measurement Controlling | STRUCTURE |  |  | *s- MeasureConfi g* IE in TS  38.331 Sec 6 |
| 520 | 1>SSB RSRP | ELEMENT | FALSE | *ssb-RSRP*  IE in TS  38.331 Sec  6 |  |
| 521 | 1>CSI RSRP | ELEMENT | FALSE | *csi-RSRP*  IE in TS  38.331 Sec  6 |  |
| 525 | Quantity Config | STRUCTURE |  |  | *QuantityConfi g* IE in TS  38.331 Sec 6 |
| 526 | 1>Quantity Config NR List | LIST |  |  | *quantityConfi gNR-List* IE in TS 38.331  Sec 6 |
| 527 | 2>Quantity Config NR | STRUCTURE |  |  | *quantityConfi*  *gNR* IE in TS  38.331 Sec 6 |
| 528 | 3>Quantity Config NR Cell | STRUCTURE |  |  | *quantityConfi gCell* IE in TS  38.331 Sec 6 |
| 529 | 4>SSB Filter Config | STRUCTURE |  |  | *ssb- FilterConfig*  IE in TS  38.331 Sec 6 |
| 530 | 5>SSB Filter Coefficient RSRP | ELEMENT | FALSE | *filterCoeffic ientRSRP* IE in TS  38.331 Sec  6 |  |
| 531 | 5>SSB Filter Coefficient RSRQ | ELEMENT | FALSE | *filterCoeffic ientRSRQ* IE in TS  38.331 Sec  6 |  |
| 532 | 5>SSB Filter Coefficient RS- SINR | ELEMENT | FALSE | *filterCoeffic ientSINR* IE in TS  38.331 Sec  6 |  |
| 533 | 4>CSI RS Filter Config | STRUCTURE |  |  | *csi-RS- FilterConfig*  IE in TS  38.331 Sec 6 |
| 534 | 5>CSI RS Filter Coefficient RSRP | ELEMENT | FALSE | *filterCoeffic ientRSRP* IE in TS  38.331 Sec  6 |  |
| 535 | 5>CSI RS Filter Coefficient RSRQ | ELEMENT | FALSE | *filterCoeffic ientRSRQ* IE in TS  38.331 Sec  6 |  |
| 536 | 5>CSI RS Filter Coefficient RS- SINR | ELEMENT | FALSE | *filterCoeffic ientSINR* IE in TS  38.331 Sec  6 |  |
| 541 | 1>Quantity Config E-UTRA | STRUCTURE |  |  | *quantityConfi gEUTRA* IE in |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
|  |  |  |  |  | TS 38.331  Sec 6 |
| 542 | 2>E-UTRA Filter Coefficient RSRP | ELEMENT | FALSE | *filterCoeffic ientRSRP* IE in TS  38.331 Sec  6 |  |
| 543 | 2>E-UTRA Filter Coefficient RSRQ | ELEMENT | FALSE | *filterCoeffic ientRSRQ* IE in TS  38.331 Sec  6 |  |
| 544 | 2>E-UTRA Filter Coefficient RS-SINR | ELEMENT | FALSE | *filterCoeffic ientSINR* IE in TS  38.331 Sec  6 |  |
| 551 | Measurement Gap Config | STRUCTURE |  |  | *MeasGapCon fig IE in TS*  *38.331 Sec 6* |
| 552 | 1>Setup or Release Gap FR2 | ELEMENT | FALSE | ENUMERA TED  (setup, release,...) | *SetupReleas e* IE in TS  38.331 Sec 6 |
| 553 | 1>Gap FR2 to Setup | STRUCTURE |  |  | *gapFR2 IE in TS 38.331*  *Sec 6* |
| 554 | 2>FR2 Gap Offset | ELEMENT | FALSE | *gapOffset*  IE *in TS*  *38.331 Sec*  *6* |  |
| 555 | 2>FR2 Measurement Gap Length | ELEMENT | FALSE | *mgl* IE *in TS 38.331*  *Sec 6* |  |
| 556 | 2>FR2 Measurement Gap Repetition Period | ELEMENT | FALSE | *mgrp* IE *in TS 38.331*  *Sec 6* |  |
| 557 | 2>FR2 Measurement Gap Timing Analysis | ELEMENT | FALSE | *mgta* IE *in TS 38.331*  *Sec 6* |  |
| 558 | 2>FR2 Reference Serving Cell Indicator | ELEMENT | TRUE | *refServCell Indicator* IE *in TS*  *38.331 Sec*  *6* |  |
| 560 | 1>Setup or Release Gap FR1 | ELEMENT | FALSE | ENUMERA TED  (setup, release,...) | *SetupReleas e* IE in TS  38.331 Sec 6 |
| 561 | 1>Gap FR1 to Setup | STRUCTURE |  |  | *gapFR1 IE in TS 38.331*  *Sec 6* |
| 562 | 2>FR1 Gap Offset | ELEMENT | FALSE | *gapOffset*  IE *in TS*  *38.331 Sec*  *6* |  |
| 563 | 2>FR1 Measurement Gap Length | ELEMENT | FALSE | *mgl* IE *in TS 38.331*  *Sec 6* |  |
| 564 | 2>FR1 Measurement Gap Repetition Period | ELEMENT | FALSE | *mgrp* IE *in TS 38.331*  *Sec 6* |  |
| 565 | 2>FR1 Measurement Gap Timing Analysis | ELEMENT | FALSE | *mgta* IE *in TS 38.331*  *Sec 6* |  |
| 566 | 2>FR1 Reference Serving Cell Indicator | ELEMENT | TRUE | *refServCell Indicator* IE |  |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
|  |  |  |  | *in TS*  *38.331 Sec*  *6* |  |
| 570 | 1>Setup or Release Gap UE | ELEMENT | FALSE | ENUMERA TED  (setup, release,...) | *SetupReleas e* IE in TS  38.331 Sec 6 |
| 571 | 1>Gap UE to Setup | STRUCTURE |  |  | *gapUE IE in TS 38.331*  *Sec 6* |
| 572 | 2>UE Gap Offset | ELEMENT | FALSE | *gapOffset*  IE *in TS*  *38.331 Sec*  *6* |  |
| 573 | 2>UE Measurement Gap Length | ELEMENT | FALSE | *mgl* IE *in TS 38.331*  *Sec 6* |  |
| 574 | 2>UE Measurement Gap Reptition Period | ELEMENT | FALSE | *mgrp* IE *in TS 38.331*  *Sec 6* |  |
| 575 | 2>UE Measurement Gap Timing Analysis | ELEMENT | FALSE | *mgta* IE *in TS 38.331*  *Sec 6* |  |
| 576 | 2>UE Reference Serving Cell Indicator | ELEMENT | TRUE | *refServCell Indicator* IE *in TS*  *38.331 Sec*  *6* |  |
| 581 | Measurement Gap Sharing Config | STRUCTURE |  |  | *MeasGapSha ringConfig IE in TS 38.331*  *Sec 6* |
| 582 | 1>Setup or Release Gap Sharing FR2 | ELEMENT | FALSE | ENUMERA  TED(setup, release,...) | *SetupReleas*  *e* IE in TS  38.331 Sec 6 |
| 583 | 1>Gap Sharing FR2 for setup | ELEMENT | FALSE | *gapFR2* IE  *in TS*  *38.331 Sec*  *6* |  |
| 584 | 1>Setup or Release Gap Sharing FR1 | ELEMENT | FALSE | ENUMERA TED  (setup,rele ase,...) | *SetupReleas e* IE in TS  38.331 Sec 6 |
| 585 | 1>Gap Sharing FR1 for setup | ELEMENT | FALSE | *gapFR1* IE  *in TS*  *38.331 Sec*  *6* |  |
| 586 | 1>Setup or Release Gap Sharing UE | ELEMENT | FALSE | ENUMERA TED  (setup,rele ase,...) | *SetupReleas e* IE in TS  38.331 Sec 6 |
| 587 | 1>Gap Sharing UE | ELEMENT | FALSE | *gapUE* IE  *in TS*  *38.331 Sec*  *6* |  |

</div>

#### Delete MR Configuration

Upon receiving the *RIC Control Request* message with the *Measurement Report Configuration Control* Service Style and the *Modify MR Configuration* control action, the E2 node shall invoke RRC procedures related to deletion of MR Configuration and include the IEs corresponding to one or more of parameters described below in the related interface or RRC messages.

In the case of UE group-based control action, the above RRC procedure(s) is invoked individually for each individual UE within the group.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **RAN**  **Parameter ID** | **RAN Parameter** | **RAN**  **Parameter Value Type** | **Key Flag** | **RAN**  **Parameter Definition** | **Semantics Description** |
| 1 | List of Measurement Objects to Remove | LIST |  |  | *measObjectToR emoveList* IE in TS 38.331 Sec 6 |
| 2 | 1>Measurement Object to Remove Item | STRUCTU RE |  |  | *MeasObjectToR emove* IE in TS  38.331 Sec 6 |
| 3 | 2>Measurement Object ID | ELEMENT | TRUE | *MeasObjec tID* IE in TS  38.331 Sec  6 |  |
| 4 | List of Report Config Objects to Remove | LIST |  |  | *ReportConfigTo RemoveList* IE in  TS 38.331 Sec 6 |
| 5 | 1>Report Config Object to Remove Item | STRUCTU RE |  |  | *ReportConfigTo Remove* IE in TS  38.331 Sec 6 |
| 6 | 2>Report Config Object ID | ELEMENT | TRUE | *ReportConf igID* IE in TS 38.331  Sec 6 |  |
| 7 | List of Measurement IDs to Remove | LIST |  |  | *measIdToRemov eList* IE in TS  38.331 Sec 6 |
| 8 | 1>Measurement ID Item to Remove | STRUCTU RE |  |  |  |
| 9 | 2>Measurement ID | ELEMENT | TRUE | *MeasID* IE in TS  38.331 Sec  6 |  |

</div>

#### Control Outcome parameters

In the case of a UE-specific control action, upon processing the above RRC procedure (*RRCReconfiguration* message) with the control action parameters sent by the RIC, the E2 node shall report the call processing outcome to the RIC as a response to the control action based on the following parameters.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **RAN**  **Parameter ID** | **RAN Parameter** | **RAN**  **Parameter Value Type** | **Key Flag** | **RAN**  **Parameter Definition** | **Semantics Description** |
| 1 | List of Measurement Objects successfully added | LIST |  | *0..1* | *MeasObjectT oAddModList* IE in TS  38.331 Sec 6 |
| 2 | >Measurement Object successfully added Item | STRUCTURE |  | *1..<maxMeas Objects>* | *MeasObjectId*  IE in TS  38.331 Sec 6 |
| 3 | >>Measurement Object sequence ID | ELEMENT | TRUE | INTEGER  (1..maxMeas Object,...) | This is the ID used by the RIC for the measurement object it seeks to add via the control service style |
| 4 | >>Measurement Object ID | ELEMENT | TRUE | *MeasObjectI D* IE in TS | This is the ID used by the E2 node for |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
|  |  |  |  | 38.331 Sec 6 | the measurement object for the UE via *RRCReconfig uration* message |
| 11 | List of Measurement Objects failed to be added | LIST |  | *0..1* | *MeasObjectT oAddModList* IE in TS  38.331 Sec 6 |
| 12 | >Measurement Object failed to be added Item | STRUCTURE |  | *1..<maxMeas Objects>* | *MeasObjectId*  IE in TS  38.331 Sec 6 |
| 14 | >>Measurement Object sequence ID | ELEMENT | TRUE | INTEGER  (1..maxMeas Object,...) | This is the ID used by the RIC for the measurement object it seeks to add via the control service style |
| 15 | >>Addition failure cause | ELEMENT | FALSE | PrintableStrin g(SIZE(1..  150, ...)) | Failure cause string |
| 21 | List of Measurement Objects successfully modified | LIST |  | *0..1* | *MeasObjectT oAddModList* IE in TS  38.331 Sec 6 |
| 22 | >Measurement Object successfully modified Item | STRUCTURE |  | *1..<maxMeas Objects>* | *MeasObjectId*  IE in TS  38.331 Sec 6 |
| 24 | >>Measurement Object ID | ELEMENT | TRUE | *MeasObjectI D* IE in TS  38.331 Sec 6 | This is the ID used by the E2 node for the measurement object for the UE via *RRCReconfig uration* message |
| 31 | List of Measurement Objects failed to be modified | LIST |  | *0..1* | *MeasObjectT oAddModList* IE in TS  38.331 Sec 6 |
| 32 | >Measurement Object failed to be modified Item | STRUCTURE |  | *1..<maxMeas Objects>* | *MeasObjectId*  IE in TS  38.331 Sec 6 |
| 34 | >>Measurement Object ID | ELEMENT | TRUE | *MeasObjectI D* IE in TS  38.331 Sec 6 | This is the ID used by the E2 node for the measurement object for the UE via *RRCReconfig*  *uration* |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
|  |  |  |  |  | message |
| 35 | >>Modification Failure Cause | ELEMENT | FALSE | PrintableStrin g(SIZE(1..  150, ...)) | Failure cause string |
| 41 | List of Measurement Objects successfully deleted | LIST |  | *0..1* | *MeasObjectT oRemoveList* IE in TS  38.331 Sec 6 |
| 42 | >Measurement Object successfully deleted Item | STRUCTURE |  | *1..<maxMeas Objects>* | *MeasObjectId*  IE in TS  38.331 Sec 6 |
| 44 | >>Measurement Object ID | ELEMENT | TRUE | *MeasObjectI D* IE in TS  38.331 Sec 6 | This is the ID used by the E2 node for the measurement object for the UE via *RRCReconfig uration* message |
| 51 | List of Measurement Objects failed to be deleted | LIST |  | *0..1* | *MeasObjectT oRemoveList* IE in TS  38.331 Sec 6 |
| 52 | >Measurement Object failed to be deleted Item | STRUCTURE |  | *1..<maxMeas Objects>* | *MeasObjectId*  IE in TS  38.331 Sec 6 |
| 54 | >>Measurement Object ID | ELEMENT | TRUE | *MeasObjectI D* IE in TS  38.331 Sec 6 | This is the ID used by the E2 node for the measurement object for the UE via *RRCReconfig uration* message |
| 55 | >>Delete Failure Cause | ELEMENT | FALSE | PrintableStrin g(SIZE(1..  150, ...)) | Failure cause string |
| 61 | List of Report Config Objects successfully added | LIST |  | *0..1* | *ReportConfig ToAddModLis t* IE in TS  38.331 Sec 6 |
| 62 | >Report Config Object successfully added Item | STRUCTURE |  | *1..<maxRepo rtConfigObjec ts>* | *maxReportCo nfigId* IE in TS  38.331 Sec 6 |
| 63 | >>Report Config Object sequence ID | ELEMENT | TRUE | INTEGER  (1..maxRepor tConfigObject s,...) | This is the ID used by the RIC for the report config object it seeks to add via the control service style |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| 64 | >>Report Config Object ID | ELEMENT | TRUE | *ReportConfigI D* IE in TS  38.331 Sec 6 | This is the ID used by the E2 node for the report config object for the UE via *RRCReconfig uration* message |
| 71 | List of Report Config Objects failed to be added | LIST |  | *0..1* | *ReportConfig ToAddModLis t* IE in TS  38.331 Sec 6 |
| 72 | >Report Config Object failed to be added Item | STRUCTURE |  | *1..<maxRepo rtConfigObjec ts>* | *maxReportCo nfigId* IE in TS  38.331 Sec 6 |
| 74 | >>Report Config Object sequence ID | ELEMENT | TRUE | INTEGER  (1..maxRepor tConfigObject s,...) | This is the ID used by the RIC for the report config object it attempts to add via the control service style |
| 75 | >>Addition failure cause | ELEMENT | FALSE | PrintableStrin g(SIZE(1..  150, ...)) | Failure cause string |
| 81 | List of Report Config Objects successfully modified | LIST |  | *0..1* | *ReportConfig ToAddModLis t* IE in TS  38.331 Sec 6 |
| 82 | >Report Config Object successfully modified Item | STRUCTURE |  | *1..<maxRepo rtConfigObjec ts>* | *maxReportCo nfigId* IE in TS  38.331 Sec 6 |
| 84 | >>Report Config Object ID | ELEMENT | TRUE | *ReportConfigI D* IE in TS  38.331 Sec 6 | This is the ID used by the E2 node for the report config object for the UE via *RRCReconfig uration* message |
| 91 | List of Report Config Objects failed to be modified | LIST |  | *0..1* | *ReportConfig ToAddModLis t* IE in TS  38.331 Sec 6 |
| 92 | >Report Config Object failed to be modified Item | STRUCTURE |  | *1..<maxRepo rtConfigObjec ts>* | *maxReportCo nfigId* IE in TS  38.331 Sec 6 |
| 94 | >>Report Config Object ID | ELEMENT | TRUE | *ReportConfigI D* IE in TS  38.331 Sec 6 | This is the ID used by the E2 node for the report config object for the UE via  *RRCReconfig* |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
|  |  |  |  |  | *uration*  message |
| 95 | >>Modification Failure Cause | ELEMENT | FALSE | PrintableStrin g(SIZE(1..  150, ...)) | Failure cause string |
| 101 | List of Report Config Objects successfully deleted | LIST |  | *0..1* | *ReportConfig ToRemoveLis t* IE in TS  38.331 Sec 6 |
| 102 | >Report Config Object successfully deleted Item | STRUCTURE |  | *1..<maxRepo rtConfigObjec ts>* | *maxReportCo nfigId* IE in TS  38.331 Sec 6 |
| 104 | >>Report Config Object ID | ELEMENT | TRUE | *ReportConfigI D* IE in TS  38.331 Sec 6 | This is the ID used by the E2 node for the report config object for the UE via *RRCReconfig uration* message |
| 111 | List of Report Config Objects failed to be deleted | LIST |  | *0..1* | *ReportConfig ToRemoveLis t* IE in TS  38.331 Sec 6 |
| 112 | >Report Config Object failed to be deleted Item | STRUCTURE |  | *1..<maxRepo rtConfigObjec ts>* | *maxReportCo nfigId* IE in TS  38.331 Sec 6 |
| 114 | >>Report Config Object ID | ELEMENT | TRUE | *ReportConfigI D* IE in TS  38.331 Sec 6 | This is the ID used by the E2 node for the report config object for the UE via *RRCReconfig uration* message |
| 115 | >>Delete Failure Cause | ELEMENT | FALSE | PrintableStrin g(SIZE(1..  150, ...)) | Failure cause string |
| 116 | List of Measurement IDs successfully added | LIST |  | *0..1* | *MeasIdToAdd ModList* IE in TS 38.331  Sec 6 |
| 117 | >Meaasurement ID successfully added Item | STRUCTURE |  | *1..<maxMeas Id>* | *maxNrofMeas Id* IE in TS  38.331 Sec 6 |
| 118 | >>Measurement ID | ELEMENT | TRUE | *MeasId* IE in TS 38.331  Sec 6 |  |
| 119 | >>Measurement Object ID | ELEMENT | TRUE | *MeasObjectI D* IE in TS  38.331 Sec 6 |  |
| 120 | >>Report Config Object ID | ELEMENT | TRUE | *ReportConfigI D* IE in TS |  |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
|  |  |  |  | 38.331 Sec 6 |  |
| 125 | List of Measurement IDs successfully removed | LIST |  | *0..1* | *measIdToRe moveList* IE in TS 38.331  Sec 6 |
| 126 | >Measurement ID successfully removed Item | STRUCTURE |  | *1..<maxMeas ID>* | *maxNrofMeas Id* IE in TS  38.331 Sec 6 |
| 127 | >>Measurement ID | ELEMENT | TRUE | *MeasId* IE in TS 38.331  Sec 6 |  |
| 129 | List of Measurement IDs failed to be removed | LIST |  | *0..1* | *measIdToRe moveList* IE in TS 38.331  Sec 6 |
| 130 | >Measurement ID failed to be removed Item | STRUCTURE |  | *1..<maxMeas ID>* | *maxNrofMeas Id* IE in TS  38.331 Sec 6 |
| 131 | >>Measurement ID | ELEMENT | TRUE | *MeasId* IE in TS 38.331  Sec 6 |  |
| 132 | >>Removal failure Cause | ELEMENT | FALSE | PrintableStrin g(SIZE(1..  150, ...)) | Failure cause string |
| 135 | Received Timestamp | ELEMENT | FALSE | OCTET STRING (SIZE(8)) | Time RIC Control Request message received by RAN Function over E2 interface.  Carries UTC time encoded as the 64-bit timestamp format as defined in Clause 6 of IETF RFC 5905 [30]  containing both seconds and fraction parts. |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Range bound** | **Explanation** |
| maxMeasObjects | Maximum no. of measurement objects supported by the RAN function. The value is <*64*>. |
| maxReportConfigObjects | Maximum no. of report configuration objects supported by the RAN function. The value is <*64*>. |
| maxMeasID | Maximum no. of measurement IDs supported by the RAN function. The value is *<64>* |

</div>

### Beamforming Configuration Control

#### Non-GoB BF Mode Configuration

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **RAN**  **Parameter ID** | **RAN Parameter** | **RAN**  **Parameter Value Type** | **Key Flag** | **RAN Parameter Definition** | **Semantics Description** |
| 1 | MIMO Mode Index | ELEMENT | TRUE | INTEGER (1..2, ...) | Value = 1 means the SU (single-user) MIMO mode. Value 2 means the MU (multi-  user) MIMO mode. |
| 2 | Non-GoB Beamforming Mode Index | ELEMENT | FALSE | INTEGER (0.. 65535, ...) | The index is used for Non- Grid of Beams (Non-GoB) beamforming optimization for 5G mMIMO deployments [32]. Each BF mode implies a vendor- specific proprietary Non-GoB BF algorithm that are not standardized [33], for which each E2 Node, who supports the Non-GoB beamforming optimization feature, provides the number of different Non-GoB BF mode(s) supported by its scheduler indexed from 1 to n. The AI/ML model for Non- GoB beamforming optimization is trained by data and measurements related to each BF mode and/or MIMO mode, for which the trained AI/ML model, based on collected data, configures the  E2 Node with the best inferred Non-GoB BF mode index to be used for each UE, where such configuration could be done separately for the case of Single User- and/or Multi- user MIMO [32]. The Value = 0 means release of Non-GoB  BF mode for the UE of subject. |

</div>

Upon receiving the *RIC Control Request* message, the E2 node shall invoke procedures related to configuring the Non- GoB MIMO beamforming mode index of the UE given by the value of the *Non-GoB Beamforming Mode Index* IE, possibly based on the MIMO mode chosen for the UE by the scheduler by the *MIMO Mode Index* IE. The recommended value of the Non-GoB beamforming mode index for the UE by the Near-RT RIC, along with the

corresponding MIMO mode index given by the *MIMO Mode Index* IE if configured, is saved by the E2 node. If and when the MAC scheduler configures the UE and in the MIMO mode indicated by the *MIMO Mode Index* IE if configured, then the scheduler shall use the *Non-GoB Beamforming Mode Index* IE recommended by the Near-RT RIC (that is saved in the E2 node).

#### GoB BF Configuration

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **RAN**  **Parameter ID** | **RAN Parameter** | **RAN**  **Parameter Value Type** | **Key Flag** | **RAN Parameter Definition** | **Semantics Description** |
| 1 | RI-LI-PMI config | STRUCTURE | TRUE |  | Precoding Matrix Indicator (PMI), Rank Indicator (RI), Layer Indicator (LI) in TS  38.214 [36] Clause  5.2.2.2. The AI/ML  model for CSI-RS and DMRS optimization infers the best PMI, RI, LI to be used for each UE [32]. |
| 2 | > RI | ELEMENT | TRUE | INTEGER (0,...,8) | RI in TS 38.214 [36]  Clause 5.2.2.2. The value=0 means RI- PMI reporting is not supported for the UE  of interest. |
| 3 | > LI | ELEMENT | TRUE | INTEGER (0,...,8) | LI in TS 38.214 [36]  Clause 5.2.2.2. The value=0 means LI- reporting is not supported for the UE  of interest. |
| 4 | > i1 | STRUCTURE | TRUE |  | PMI coefficients in TS  38.214 [36] Clause  5.2.2.2. |
| 5 | >> i11 | ELEMENT | TRUE | INTEGER (0,...,256) | PMI coefficients in TS  38.214 [36] Clause  5.2.2.2. |
| 6 | >> i12 | ELEMENT | TRUE | INTEGER (0,...,256) | PMI coefficients in TS  38.214 [36] Clause  5.2.2.2. |
| 7 | >> i13 | ELEMENT | TRUE | INTEGER (0,...,256) | PMI coefficients in TS  38.214 [36] Clause  5.2.2.2. |
| 8 | >> i131 | ELEMENT | TRUE | INTEGER (0,...,256) | PMI coefficients in TS  38.214 [36] Clause  5.2.2.2. |
| 9 | >> i132 | ELEMENT | TRUE | INTEGER (0,...,256) | PMI coefficients in TS  38.214 [36] Clause  5.2.2.2. |
| 10 | >> i14 | ELEMENT | TRUE | INTEGER (0,...,256) | PMI coefficients in TS  38.214 [36] Clause  5.2.2.2. |
| 11 | >> i141 | ELEMENT | TRUE | INTEGER (0,...,256) | PMI coefficients in TS  38.214 [36] Clause  5.2.2.2. |
| 12 | >> i142 | ELEMENT | TRUE | INTEGER (0,...,256) | PMI coefficients in TS  38.214 [36] Clause  5.2.2.2. |
| 13 | >> i143 | ELEMENT | TRUE | INTEGER (0,...,256) | PMI coefficients in TS  38.214 [36] Clause  5.2.2.2. |
| 14 | >> i15 | ELEMENT | TRUE | INTEGER (0,...,256) | PMI coefficients in TS  38.214 [36] Clause  5.2.2.2. |
| 15 | >> i161 | ELEMENT | TRUE | INTEGER (0,...,256) | PMI coefficients in TS  38.214 [36] Clause  5.2.2.2. |
| 16 | >> i162 | ELEMENT | TRUE | INTEGER (0,...,256) | PMI coefficients in TS  38.214 [36] Clause  5.2.2.2. |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| 17 | >> i171 | ELEMENT | TRUE | INTEGER (0,...,256) | PMI coefficients in TS  38.214 [36] Clause  5.2.2.2. |
| 18 | >> i172 | ELEMENT | TRUE | INTEGER (0,...,256) | PMI coefficients in TS  38.214 [36] Clause  5.2.2.2. |
| 19 | >> i173 | ELEMENT | TRUE | INTEGER (0,...,256) | PMI coefficients in TS  38.214 [36] Clause  5.2.2.2. |
| 20 | >> i174 | ELEMENT | TRUE | INTEGER (0,...,256) | PMI coefficients in TS  38.214 [36] Clause  5.2.2.2. |
| 21 | >> i181 | ELEMENT | TRUE | INTEGER (0,...,256) | PMI coefficients in TS  38.214 [36] Clause  5.2.2.2. |
| 22 | >> i182 | ELEMENT | TRUE | INTEGER (0,...,256) | PMI coefficients in TS  38.214 [36] Clause  5.2.2.2. |
| 23 | >> i183 | ELEMENT | TRUE | INTEGER (0,...,256) | PMI coefficients in TS  38.214 [36] Clause  5.2.2.2. |
| 24 | >> i184 | ELEMENT | TRUE | INTEGER (0,...,256) | PMI coefficients in TS  38.214 [36] Clause  5.2.2.2. |
| 25 | > i2 | STRUCTURE | TRUE |  | PMI coefficients in TS  38.214 [36] Clause  5.2.2.2. |
| 26 | >> i20 | ELEMENT | TRUE | INTEGER (0,...,256) | PMI coefficients in TS  38.214 [36] Clause  5.2.2.2. |
| 27 | >> i21 | ELEMENT | TRUE | INTEGER (0,...,256) | PMI coefficients in TS  38.214 [36] Clause  5.2.2.2. |
| 28 | >> i211 | ELEMENT | TRUE | INTEGER (0,...,256) | PMI coefficients in TS  38.214 [36] Clause  5.2.2.2. |
| 29 | >> i212 | ELEMENT | TRUE | INTEGER (0,...,256) | PMI coefficients in TS  38.214 [36] Clause  5.2.2.2. |
| 30 | >> i22 | ELEMENT | TRUE | INTEGER (0,...,256) | PMI coefficients in TS  38.214 [36] Clause  5.2.2.2. |
| 31 | >> i221 | ELEMENT | TRUE | INTEGER (0,...,256) | PMI coefficients in TS  38.214 [36] Clause  5.2.2.2. |
| 32 | >> i222 | ELEMENT | TRUE | INTEGER (0,...,256) | PMI coefficients in TS  38.214 [36] Clause  5.2.2.2. |
| 33 | >> i231 | ELEMENT | TRUE | INTEGER (0,...,256) | PMI coefficients in TS  38.214 [36] Clause  5.2.2.2. |
| 34 | >> i232 | ELEMENT | TRUE | INTEGER (0,...,256) | PMI coefficients in TS  38.214 [36] Clause  5.2.2.2. |
| 35 | >> i233 | ELEMENT | TRUE | INTEGER (0,...,256) | PMI coefficients in TS  38.214 [36] Clause  5.2.2.2. |
| 36 | >> i234 | ELEMENT | TRUE | INTEGER (0,...,256) | PMI coefficients in TS  38.214 [36] Clause  5.2.2.2. |
| 37 | >> i241 | ELEMENT | TRUE | INTEGER (0,...,256) | PMI coefficients in TS  38.214 [36] Clause  5.2.2.2. |
| 38 | >> i242 | ELEMENT | TRUE | INTEGER (0,...,256) | PMI coefficients in TS  38.214 [36] Clause  5.2.2.2. |
| 39 | >> i243 | ELEMENT | TRUE | INTEGER (0,...,256) | PMI coefficients in TS |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
|  |  |  |  |  | 38.214 [36] Clause  5.2.2.2. |
| 40 | >> i244 | ELEMENT | TRUE | INTEGER (0,...,256) | PMI coefficients in TS  38.214 [36] Clause  5.2.2.2. |
| 41 | >> i251 | ELEMENT | TRUE | INTEGER (0,...,256) | PMI coefficients in TS  38.214 [36] Clause  5.2.2.2. |
| 42 | >> i252 | ELEMENT | TRUE | INTEGER (0,...,256) | PMI coefficients in TS  38.214 [36] Clause  5.2.2.2. |
| 43 | >> i253 | ELEMENT | TRUE | INTEGER (0,...,256) | PMI coefficients in TS  38.214 [36] Clause  5.2.2.2. |
| 44 | >> i254 | ELEMENT | TRUE | INTEGER (0,...,256) | PMI coefficients in TS  38.214 [36] Clause  5.2.2.2. |
| 45 | > Subband Index | ELEMENT | TRUE | INTEGER (0,...,19) | Subband index for PMI reporting in TS  38.214 [36] Clause  5.2.1.4. The value=0 means Subband PMI reporting is not supported for the UE  of interest. |
| 46 | P-2 Beam Index | ELEMENT | TRUE | INTEGER (0,...,256) | P-2 beam index in TS 38.912 [37] Clause  8.2.1.6.1. The AI/ML  model for CSI-RS and DMRS optimization infers the best P-2 beam index to be used for each UE [32]. The value=0 means P-2-beam management is not supported for the UE  of interest. |

</div>

Upon receiving the RIC Control Request message, the E2 node shall invoke procedures related to configuring the GoB MIMO beamforming configuration of the UE given by the value of the RI-LI-PMI config or the P-2 Beam Index IE. In order to generate the precoding matrix from the values in RI-LI-PMI config, the E2 node shall combine the values in RI, i1 and i2 with the Codebook configuration parameters (e,g,, Type I, Type II etc.) as described in TS 38.214 [36] Clause 5.2.2.2. The recommended value of the GoB beamforming configuration for the UE by the Near-RT RIC is saved by the E2 node. When the MAC scheduler configures the UE, the scheduler shall use the RI-LI-PMI config or the P-2 Beam Index IE recommended by the Near-RT RIC (that is saved in the E2 node).

## RAN parameters for POLICY services

### Approach

The RAN parameters associated with each policy action being controlled by Near-RT RIC described in Clause 7.7 are listed.

There are two types of E2 policies:

1. **Control action policy**: In this type, the Near-RT RIC tells the E2 node on the specific per-UE control action that needs to be performed, upon meeting a given policy condition for a given UE or a group of UEs, for a given cell and/or for a given E2 node. This policy type is descriptive in nature. The control action is defined with respect to individual UEs and UE-specific bearers, flows, PDU sessions, etc.
2. **Offset based policy**: In this type, the Near-RT RIC offers a generic prescriptive guidance to the E2 node on how it shall deviate from default behavior via the application of offset parameters provided in the *Policy Action* IE.

Different *Policy Action* IEs are associated with different *Policy Condition ID* IEs and *Policy Condition* IEs are described in terms of UE and E2 Node characteristics. As defined in Clause 6.6.3, offset parameters are to be applied to default parameters according to the following rules:

* + INTEGER and REAL default parameters: Offset parameter have the same data type as default parameter and is added to default parameter with positive offset parameter values increasing default value and negative offset parameter values decreasing default value. That is, policy modifies the target call process such that: Value to be applied = (Default Parameter) + (Offset Parameter)
  + ENUMERATED parameters: Offset parameter are of data type INTEGER and are used to select a different item in the ENUMERATED list, positive offset parameter values used to select items that are further on in the list, zero offset parameter values used to select the default value, negative offset parameter values used to select items that are earlier on in the list. When and if the offset parameter value results in the selection of an item in the ENUMERATED list that exceeds the ENUMERATED list length then the last item in the list is selected. When and if the offset parameter value results in the selection of an item in the ENUMERATED list that prior to the first item in the ENUMERATED list then the first item in the list is selected. That is, policy modifies the target call process such that:

ENUMERATED List index = MIN [List length-1, MAX [0, (Default Parameter) + (Offset Parameter)] ]

### A Common RAN Parameters for POLICY services

The common set of RAN Parameters that can be used across all POLICY service styles is given in the table below.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **RAN**  **Paramet er ID** | **RAN Parameter** | **RAN**  **Parameter Value Type** | **Key Flag** | **RAN Parameter Definition** | **Semantics Description** |
| 5001 | Measurement Object | ELEMENT | FALSE | ENUMERATED  (UE, E2 Node,...) | If the value is *UE*, then the rest of the ensuing parameters related to PMs have UE-specific values for the UE ID. Else if the value is E2 Node, then the rest of the  parameters shall have node- specific measurements |
| 5002 | gNB DU  Measurements | STRUCTURE |  |  |  |
|  | >UE Throughput Measurements | **Refer to *gNB DU Measurements* structure in Clause 8.1.1.14** | | | |
|  | >Packet level measurements |
|  | >Packet delay measurements |
| 5011 | gNB CU-UP  Measurements | STRUCTURE |  |  |  |
|  | >PDCP data volume measurement | **Refer to *gNB CU-UP Measurements* structure in Clause 8.1.1.13** | | | |
|  | >Packet delay measurements |
| 5021 | gNB CU-CP  Measurements | STRUCTURE |  |  |  |
|  | >Inter-gNB handovers | **Refer to *gNB CU-CP Measurements* structure in Clause 8.1.1.12** | | | |
|  | >Intra-gNB handovers |
|  | >RRC connection related measurements |
|  | >QoS flow-related measurements |
|  | >DRB related measurements |
|  | >PDU Session Management |
|  | >Inter-system mobility measurements between 5GS and EPS |

</div>

In addition to using the above RAN Parameters, POLICY conditions may also use RAN parameters defined in Clause

8.1 for *RIC Event Trigger Definition* IE.

### Radio Bearer Policy

#### Common RAN Parameters for Radio Bearer Policy

The RAN Parameters pertaining to POLICY Conditions for the "Radio Bearer Control" policy service style used across all POLICY actions of the policy service style are listed in the below table.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **RAN**  **Paramet er ID** | **RAN Parameter** | **RAN**  **Parameter Value Type** | **Key Flag** | **RAN Parameter Definition** | **Semantics Description** |
| 501 | DRB related measurements | **Refer to *gNB CU-CP Measurements* structure in Clause 8.1.1.12 where these parameters are defined.** | | | |
| 502 | List of QoS levels |
| 503 | >QoS level item |
| 504 | >>CHOICE QoS  level |
| 505 | >>>5QI |
| 506 | >>>S-NSSAI |
| 507 | >>>>SST |
| 508 | >>>>SD |
| 509 | >>Number of DRBs successfully setup per QoS  level |
| 510 | Total number of DRBs successfully setup for UE | ELEMENT | FALSE | INTEGER (0..64) | Total number of DRBs across all QoS levels for a UE. Maximum 64 DRBs can be setup for a UE. Refer to TS  38.473 [19] Clause 9.2.2.1 |
| 511 | UE DL Aggregate Maximum Bit Rate | ELEMENT | FALSE | *UE Aggregate Maximum Bit Rate Downlink* IE in TS  36.423 [17] clause  9.2.12 |  |
| 512 | gNB CU-UP capacity | **Refer to *E2 Node* structure in Clause 8.1.1.11 where these parameters are defined** | | | |

</div>

In addition to using the above RAN Parameters for POLICY conditions, this service style also uses RAN parameters defined in Clause 8.1. Accordingly, this service style supports Policy Conditions using the RAN parameters defined in Clauses 8.1, 8.5.1 and those covered in the above table.

#### DRB QoS Configuration

###### Control action

The RAN parameters associated with this policy type are listed in the table in Clause 8.4.2.1.

###### Offset

Editor's Note: FFS

#### QoS flow mapping configuration

###### Control action

The RAN parameters associated with this policy type are listed in the table in Clause 8.4.2.2.

###### Offset

Editor's Note: FFS

#### Logical channel configuration

###### Control action

The RAN parameters associated with this policy type are listed in the table in Clause 8.4.2.3.

###### Offset

Editor's Note: FFS

#### Radio Bearer Admission Control

###### Control action

The RAN parameters associated with this policy type are listed in the table in Clause 8.4.2.4.

###### Offset

#### DRB Termination Control

###### Control action

The RAN parameters associated with this policy type are listed in the table in Clause 8.4.2.5.

###### Offset

Editor's Note: FFS

#### DRB Split Ratio Control

###### Control action

The RAN parameters associated with this policy type are listed in the table in Clause 8.4.2.6.

###### Offset

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **RAN**  **Parameter ID** | **RAN Parameter** | **RAN**  **Parameter Value Type** | **Key Flag** | **RAN Parameter Definition** | **Semantics Description** |
| 101 | Uplink PDCP Data Split Threshold offset | ELEMENT | FALSE | INTEGER | *UL Data Split Threshold* IE in TS 37.483 [21] Clause  9.3.1.43 |
| 102 | Downlink PDCP Data Split | ELEMENT | FALSE | INTEGER | *Downlink PDCP Data Split* IE in 8.4.2.6 |

</div>

#### PDCP Duplication Control

###### Control action

The RAN parameters associated with this policy type are listed in the table in Clause 8.4.2.7.

###### Offset

Editor's Note: FFS

### Radio Resource Allocation Policy

#### Common RAN Parameters for Radio Resource Allocation Policy

The RAN Parameters pertaining to POLICY Conditions for the "Radio Resource Allocation Control" policy service style used across all POLICY actions of the policy service style are listed in the below table.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **RAN**  **Parameter ID** | **RAN Parameter** | **RAN**  **Parameter Value Type** | **Key Flag** | **RAN Parameter Definition** | **Semantics Description** |
| 501 | SPS Config | STRUCTURE |  |  | *SPS-Config* IE in TS 38.331 [22] |
| 502 | >Number of HARQ Processes | ELEMENT | FALSE | *nrofHARQ- Processes* IE in TS 38.331 [22] |  |
| 503 | Grant Configuration | STRUCTURE |  |  | *ConfiguredGrantConfig* IE in TS 38.331 [22] |
| 504 | >Number of HARQ Processes | ELEMENT | FALSE | *nrofHARQ- Processes* IE in  TS 38.331 [22] |  |
| 505 | PDSCH Serving Cell Config Setup | STRUCTURE |  |  | *PDSCH-ServingCellConfig* IE in TS 38.331 [22] |
| 506 | >Number of HARQ Processes | ELEMENT | FALSE | *nrofHARQ- ProcessesForPD SCH* IE in TS  38.331 [22] |  |

</div>

In addition to using the above RAN Parameters for Policy conditions, this service style also uses RAN parameters defined in Clause 8.1. Accordingly, this service style supports Policy Conditions using the RAN parameters defined in Clauses 8.1, 8.5.1 and those covered in the above table.

#### DRX Parameter Configuration

###### Control action

The RAN parameters associated with this policy type are listed in the table in Clause 8.4.3.1.

###### Offset

Editor's Note: FFS

#### Scheduling Request Parameter Configuration

###### Control action

The RAN parameters associated with this policy type are listed in the table in Clause 8.4.3.2.

###### Offset

Editor's Note: FFS

#### Semi-Persistent Scheduling Parameter Configuration

###### Control action

The RAN parameters associated with this policy type are listed in the table in Clause 8.4.3.3.

###### Offset

Editor's Note: FFS

#### Configured Grant Configuration

###### Control action

The RAN parameters associated with this policy type are listed in the table in Clause 8.4.3.4.

###### Offset

Editor's Note: FFS

#### CQI table configuration

###### Control action

The RAN parameters associated with this policy type are listed in the table in Clause 8.4.3.5.

###### Offset

Editor's Note: FFS

#### Slice-level PRB quota

###### Control action

The RAN parameters associated with this policy type are listed in the table in Clause 8.4.3.6.

###### Offset

Editor's Note: FFS

### Connected Mode Mobility Policy

#### Common RAN Parameters for Connected Mode Mobility Policy

The RAN Parameters pertaining to POLICY Conditions for the "Connected Mode Mobility Control" policy service style used across all POLICY actions of the policy service style are listed in the below table.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **RAN**  **Parameter ID** | **RAN Parameter Name** | **RAN Parameter Value Type** | **Key flag** | **RAN Parameter Definition** |
| 501 | List of Serving Cells | LIST |  | Refer to *Handover Preparation* structure in  8.1.2.3.1 where this parameter is defined. |
| 502 | >Serving Cell Item | STRUCTURE |  | Refer to *Handover Preparation* structure in  8.1.2.3.1 where this parameter is defined. |
| 503 | >>CHOICE *Cell Type* | STRUCTURE |  | Refer to *Handover Preparation* structure in  8.1.2.3.1 where this parameter is defined. |
| 504 | >>>NR Cell | STRUCTURE |  | Refer to *Handover Preparation* structure in  8.1.2.3.1 where this parameter is defined |
| 505 | >>>>NR CGI | ELEMENT | TRUE | Refer to *NR Cell* structure in 8.1.1.1 where this parameter is defined |
| 506 | >>>>NR PCI | ELEMENT | FALSE | Refer to *NR Cell* structure in 8.1.1.1 where this parameter is defined |
| 507 | >>>>PLMN Identity | ELEMENT | FALSE | Refer to *NR Cell* structure in 8.1.1.1 where this parameter is defined |
| 508 | >>>>Reported NR RRC  Measurements | STRUCTURE |  | Refer to *Reported NR RRC Measurements*  in 8.1.1.1 where this parameter is defined |
| 509 | >>>>>Cell Results | STRUCTURE |  | Refer to *Cell Results* structure in 8.1.1.1 where this parameter is defined |
| 510 | >>>>>>SSB  Results | STRUCTURE |  | Refer to *SSB Results* structure in 8.1.1.1 where this parameter is defined |
| 511 | >>>>>>CSI-  RS Results | STRUCTURE |  | Refer to *CSI-RS Results* structure in 8.1.1.1 where this parameter is defined |
| 512 | >>>E-UTRA Cell | STRUCTURE |  | Refer to *E-UTRA Cell* structure in 8.1.1.2 where this parameter is defined |
| 513 | >>>>ECGI | ELEMENT | TRUE | Refer to *E-UTRA Cell* structure in 8.1.1.2 where this parameter is defined |
| 514 | >>>>PCI | ELEMENT | FALSE | Refer to *E-UTRA Cell* structure in 8.1.1.2 where this parameter is defined |
| 515 | >>>>PLMN Identity | ELEMENT | FALSE | Refer to *E-UTRA Cell* structure in 8.1.1.2where this parameter is defined |
| 516 | >>>>Reported LTE RRC  Measurements | STRUCTURE |  | Refer to *Reported LTE RRC Measurements*  in 8.1.1.2 where this parameter is defined |
| 521 | List of Neighbouring Cells | LIST |  | Refer to *Handover Preparation* structure in  8.1.2.3.1 where this parameter is defined. |
| 522 | >Neighbouring Cell Item | STRUCTURE |  | Refer to *Handover Preparation* structure in  8.1.2.3.1 where this parameter is defined. |
| 523 | >>CHOICE *Cell Type* | STRUCTURE |  | Refer to *Handover Preparation* structure in  8.1.2.3.1 where this parameter is defined. |
| 524 | >>>NR Cell | STRUCTURE |  | Refer to *NR Cell* structure in 8.1.1.12 where this parameter is defined |
| 525 | >>>>NR CGI | ELEMENT | TRUE | Refer to *NR Cell* structure in 8.1.1.12 where this parameter is defined |
| 526 | >>>>NR PCI | ELEMENT | FALSE | Refer to *NR Cell* structure in 8.1.1.12 where this parameter is defined |
| 527 | >>>>PLMN Identity | ELEMENT | FALSE | Refer to *NR Cell* structure in 8.1.1.12 where this parameter is defined |
| 528 | >>>>Reported NR RRC  Measurements | STRUCTURE |  | Refer to *Reported NR RRC Measurements*  in 8.1.1.1 where this parameter is defined |
| 529 | >>>>>Cell Results | STRUCTURE |  | Refer to *Cell Results* structure in 8.1.1.1 where this parameter is defined |
| 530 | >>>>>>SSB  Results | STRUCTURE |  | Refer to *SSB Results* structure in 8.1.1.1 where this parameter is defined |
| 531 | >>>>>>CSI-  RS Results | STRUCTURE |  | Refer to *CSI-RS Results* structure in 8.1.1.1 where this parameter is defined |
| **532** | >>>E-UTRA Cell | STRUCTURE |  | Refer to *E-UTRA Cell* structure in 8.1.1.2 where this parameter is defined |
| 533 | >>>>ECGI | STRUCTURE |  | Refer to *E-UTRA Cell* structure in 8.1.1.2 where this parameter is defined |
| 534 | >>>>PCI | STRUCTURE |  | Refer to *E-UTRA Cell* structure in 8.1.1.2 where this parameter is defined |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| 535 | >>>>PLMN Identity | ELEMENT | FALSE | Refer to *E-UTRA Cell* structure in 8.1.1.11 where this parameter is defined |
| 536 | >>>>Reported LTE RRC  Measurements | STRUCTURE |  | Refer to *Reported LTE RRC Measurements*  in 8.1.1.2 where this parameter is defined |
| 541 | gNB Handover measurements | STRUCTURE |  |  |
| 542 | >Inter-gNB handover measurements | STRUCTURE |  | Refer to *Inter-gNB Handovers* structure in  8.1.1.12 where this parameter is defined |
| 543 | >Intra-gNB handover measurements | STRUCTURE |  | Refer to *Intra-gNB Handovers* structure in  8.1.1.12 where this parameter is defined |
| 544 | >Inter-system mobility measurements | STRUCTURE |  | Refer to *Inter-system mobility measurements between 5GS and EPS*  structure in 8.1.1.12 where this parameter is defined |
| 545 | NR Composite Available Capacity Group | STRUCTURE |  | Refer to *Composite Available Capacity Group* in 8.1.1.1 where this parameter is defined |
| 546 | E-UTRA Composite Available Capacity Group | STRUCTURE |  | Refer to *Composite Available Capacity*  *Group* in 8.1.1.2 where this parameter is defined |

</div>

In addition to using the above RAN Parameters for Policy conditions, this service style also uses RAN parameters defined in Clause 8.1. Accordingly, this service style supports Policy Conditions using the RAN parameters defined in Clauses 8.1, 8.5.1 and those covered in the above table.

#### Handover Control

###### Control action

The RAN parameters associated with this policy type are listed in the table in Clause 8.4.4.1.

###### Offset

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **RAN**  **Parameter ID** | **RAN Parameter** | **RAN**  **Parameter Value Type** | **Key Flag** | **RAN**  **Parameter Definition** | **Semantics Description** |
| 101 | A1 Event Threshold offset | STRUCTURE |  |  | *EventA1* IE in 8.1.1.10 |
| 102 | >RSRP Offset | ELEMENT | FALSE | INTEGER | Offsets to be applied to default values, i.e. RSRP threshold to be used is default RSRP+RSRP Offset |
| 103 | >RSRQ Offset | ELEMENT | FALSE | INTEGER | Offsets to be applied to default values, i.e. RSRP threshold to be used is  default RSRQ+RSRQ Offset |
| 104 | >SINR Offset | ELEMENT | FALSE | INTEGER | Offsets to be applied to default values, i.e. RSRP threshold to be used is  default SINR+SINR Offset |
| 105 | >Hysteresis | ELEMENT | FALSE | INTEGER | Offsets to be applied to default values, |
| 111 | A2 Event Threshold offset | STRUCTURE |  |  | *EventA2* IE in 8.1.1.10 |
| 112 | >RSRP Offset | ELEMENT | FALSE | INTEGER | Offsets to be applied to default values, |
| 113 | >RSRQ Offset | ELEMENT | FALSE | INTEGER | Offsets to be applied to default values, |
| 114 | >SINR Offset | ELEMENT | FALSE | INTEGER | Offsets to be applied to default values, |
| 115 | >Hysteresis | ELEMENT | FALSE | INTEGER | Offsets to be applied to default values, |
| 121 | A3 Event Threshold offset | STRUCTURE |  |  | *EventA3* IE in 8.1.1.10 |
| 122 | >RSRP Offset | ELEMENT | FALSE | INTEGER | Offsets to be applied to default values, |
| 123 | >RSRQ Offset | ELEMENT | FALSE | INTEGER | Offsets to be applied to default values, |
| 124 | >SINR Offset | ELEMENT | FALSE | INTEGER | Offsets to be applied to default values, |
| 125 | >Hysteresis | ELEMENT | FALSE | INTEGER | Offsets to be applied to default values, |
| 131 | A4 Event Threshold offset | STRUCTURE |  |  | *EventA4* IE in 8.1.1.10 |
| 132 | >RSRP Offset | ELEMENT | FALSE | INTEGER | Offsets to be applied to default values, |
| 133 | >RSRQ Offset | ELEMENT | FALSE | INTEGER | Offsets to be applied to default values, |
| 134 | >SINR Offset | ELEMENT | FALSE | INTEGER | Offsets to be applied to default values, |
| 135 | >Hysteresis | ELEMENT | FALSE | INTEGER | Offsets to be applied to default values, |
| 140 | A5 Event Threshold offset | STRUCTURE |  |  | *EventA5* IE in 8.1.1.10 |
| 141 | >A5-Threshold1 offset | STRUCTURE |  |  | *EventA5* IE in 8.1.1.10 |
| 142 | >>RSRP Offset | ELEMENT | FALSE | INTEGER | Offsets to be applied to default values, |
| 143 | >>RSRQ Offset | ELEMENT | FALSE | INTEGER | Offsets to be applied to default values, |
| 144 | >>SINR Offset | ELEMENT | FALSE | INTEGER | Offsets to be applied to default values, |
| 145 | >>Hysteresis | ELEMENT | FALSE | INTEGER | Offsets to be applied to default values, |
| 146 | >A5-Threshold2 offset | STRUCTURE |  |  | *EventA5* IE in 8.1.1.10 |
| 147 | >>RSRP Offset | ELEMENT | FALSE | INTEGER | Offsets to be applied to default values, |
| 148 | >>RSRQ Offset | ELEMENT | FALSE | INTEGER | Offsets to be applied to |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
|  |  |  |  |  | default values, |
| 149 | >>SINR Offset | ELEMENT | FALSE | INTEGER | Offsets to be applied to default values, |
| 150 | >>Hysteresis Offset | ELEMENT | FALSE | INTEGER | Offsets to be applied to default values, |
| 151 | A6 Event Threshold Offset | STRUCTURE |  |  | *EventA6* IE in 8.1.1.10 |
| 152 | >RSRP Offset | ELEMENT | FALSE | INTEGER | Offsets to be applied to default values, |
| 153 | >RSRQ Offset | ELEMENT | FALSE | INTEGER | Offsets to be applied to default values, |
| 154 | >SINR Offset | ELEMENT | FALSE | INTEGER | Offsets to be applied to default values, |
| 155 | >Hysteresis Offset | ELEMENT | FALSE | INTEGER | Offsets to be applied to default values, |
| 161 | B1 Event Threshold Offset | STRUCTURE |  |  | *EventB1* IE in 8.1.1.10 |
| 162 | >RSRP Offset | ELEMENT | FALSE | INTEGER | Offsets to be applied to default values, |
| 163 | >RSRQ Offset | ELEMENT | FALSE | INTEGER | Offsets to be applied to default values, |
| 164 | >SINR Offset | ELEMENT | FALSE | INTEGER | Offsets to be applied to default values, |
| 165 | >Hysteresis Offset | ELEMENT | FALSE | INTEGER | Offsets to be applied to default values, |
| 170 | B2 Event Threshold offset | STRUCTURE |  |  | *EventB2* IE in 8.1.1.10 |
| 171 | >B2-Threshold-NR offset | STRUCTURE |  |  | *EventB2* IE in 8.1.1.10 |
| 172 | >>RSRP Offset | ELEMENT | FALSE | INTEGER | Offsets to be applied to default values, |
| 173 | >>RSRQ Offset | ELEMENT | FALSE | INTEGER | Offsets to be applied to default values, |
| 174 | >>SINR Offset | ELEMENT | FALSE | INTEGER | Offsets to be applied to default values, |
| 175 | >>Hystersis Offset | ELEMENT | FALSE | INTEGER | Offsets to be applied to default values, |
| 176 | >B2-Threshold- EUTRA offset | STRUCTURE |  |  | *EventB2* IE in 8.1.1.10 |
| 177 | >>RSRP Offset | ELEMENT | FALSE | INTEGER | Offsets to be applied to default values, |
| 178 | >>RSRQ Offset | ELEMENT | FALSE | INTEGER | Offsets to be applied to default values, |
| 179 | >>SINR Offset | ELEMENT | FALSE | INTEGER | Offsets to be applied to default values, |
| 180 | >>Hysteresis Offset | ELEMENT | FALSE | INTEGER | Offsets to be applied to default values, |

</div>

#### Conditional Handover Control

###### Control action

The RAN parameters associated with this policy type are listed in the table in Clause 8.4.4.2.

###### Offset

The RAN parameters associated with this policy type are listed in the table in Clause 8.5.4.1.2.

#### DAPS Handover Control

###### Control action

The RAN parameters associated with this policy type are listed in the table in Clause 8.4.4.3.

###### Offset

The RAN parameters associated with this policy type are listed in the table in Clause 8.5.4.1.2.

### Radio Access Policy

#### Common RAN Parameters for Radio Access Policy

The RAN Parameters pertaining to POLICY Conditions for the "Radio Access Control" policy service style used across all POLICY actions of the policy service style are listed in the below table.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **RAN**  **Parameter ID** | **RAN Parameter Name** | **RAN Parameter Value Type** | **Key flag** | **Parameter description** |
| 501 | E2 Node | STRUCTURE |  | Refer to *E2 Node* structure in 8.1.1.11 |
| 502 | >CHOICE E2 Node Component Type | STRUCTURE |  | Refer to *E2 Node* structure in 8.1.1.11 where this parameter is defined |
| 503 | >>NG-RAN gNB DU | STRUCTURE |  | Refer to *E2 Node* structure in 8.1.1.11 where this parameter is defined |
| 504 | >>>gNB DU Measurements | STRUCTURE |  | Refer to *E2 Node* structure in 8.1.1.11 where this parameter is defined |
| 505 | >>>List of NR cells | LIST |  | Refer to *gNB DU Measurements*  structure in 8.1.1.14 where this parameter is defined |
| 506 | >>>>NR Cell Item | STRUCTURE |  | Refer to *gNB DU Measurements*  structure in 8.1.1.14 where this parameter is defined |
| 507 | >>>>>Radio Resource Utilization | STRUCTURE |  | Refer to *Radio Resource Utilization*  structure in 8.1.1.14 where this  parameter is defined. This has load measurements in terms of PRB usage. |
| 508 | >>>>>Number of active UE measurements | STRUCTURE |  | Refer to *Number of active UE measurements* structure in 8.1.1.14 where this parameter is defined. This  has load measurements in terms of number of active UEs. |
| 509 | >>>>>Slice Available Capacity List | STRUCTURE |  | Refer to *Slice Available Capacity List* in 8.1.1.1 |
| 511 | >>NG-RAN gNB CU-CP | STRUCTURE |  | Refer to *E2 Node* structure in 8.1.1.11 where this parameter is defined |
| 512 | >>>RRC connection related measurements | STRUCTURE |  | Refer to *gNB CU-CP Measurements*  structure in 8.1.1.12 where this parameter is defined |
| 521 | >>NG-RAN gNB | STRUCTURE |  | Refer to E2 Node structure in 8.1.1.11 where this parameter is defined |
| 522 | >>>gNB DU Measurements | STRUCTURE |  | Refer to E2 Node structure in 8.1.1.11 where this parameter is defined |
| 523 | >>>List of NR cells | LIST |  | Refer to gNB DU Measurements  structure in 8.1.1.14 where this parameter is defined |
| 524 | >>>>NR Cell Item | STRUCTURE |  | Refer to gNB DU Measurements  structure in 8.1.1.14 where this parameter is defined |
| 525 | >>>>>Radio Resource Utilization | STRUCTURE |  | Refer to Radio Resource Utilization structure in 8.1.1.14 where this  parameter is defined. This has load measurements in terms of PRB usage. |
| 526 | >>>>>Number of active UE measurements | STRUCTURE |  | Refer to Number of active UE measurements structure in 8.1.1.14 where this parameter is defined. This  has load measurements in terms of number of active UEs. |
| 527 | >>>>>Slice Available Capacity List | STRUCTURE |  | Refer to *Slice Available Capacity List* in 8.1.1.1 |
| 531 | >>>gNB CU-CP  Measurements | STRUCTURE |  | Refer to *E2 Node* structure in 8.1.1.11 where this parameter is defined |
| 532 | >>>>RRC connection related measurements | STRUCTURE |  | Refer to *gNB CU-CP Measurements*  structure in 8.1.1.12 where this parameter is defined |

</div>

In addition to using the above RAN Parameters for Policy conditions, this service style also uses RAN parameters defined in Clause 8.1. Accordingly, this service style supports Policy Conditions using the RAN parameters defined in Clauses 8.1, 8.5.1 and those covered in the above table.

#### UE admission control request

###### Control action

The RAN parameters associated with this policy type are listed in the table in Clause 8.4.5.1.

###### Offset

Editor's Note: FFS

#### RACH backoff control request

###### Control action

The RAN parameters associated with this policy type are listed in the table in Clause 8.4.5.2.

###### Offset

Editor's Note: FFS

#### Access barring control request

###### Control action

The RAN parameters associated with this policy type are listed in the table in Clause 8.4.5.3.

###### Offset

Editor's Note: FFS

#### RRC Connection Release request

###### Control action

The RAN parameters associated with this policy type are listed in the table in Clause 8.4.5.3.

###### Offset

Editor's Note: FFS

#### RRC Connection Reject request

###### Control action

The RAN parameters associated with this policy type are listed in the table in Clause 8.4.5.3.

###### Offset

Editor's Note: FFS

### Dual Connectivity Policy

#### Common RAN Parameters for Dual Connectivity Policy

The RAN Parameters pertaining to POLICY Conditions for the "Dual Connectivity Control" policy service style used across all POLICY actions of the policy service style are listed in the below table.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **RAN**  **Parameter ID** | **RAN Parameter Name** | **RAN Parameter Value Type** | **Key flag** | **Parameter description** |
| 501 | Target Secondary Node | STRUCTURE |  | Refer to *E2 Node* structure in 8.1.1.11 |
| 502 | >CHOICE E2 Node Component Type | STRUCTURE |  | Refer to *E2 Node* structure in 8.1.1.11 where this parameter is defined |
| 503 | >>NG-RAN gNB DU | STRUCTURE |  | Refer to *E2 Node* structure in 8.1.1.11 where this parameter is defined |
| 504 | >>>gNB DU  Measurements | STRUCTURE |  | Refer to *E2 Node* structure in 8.1.1.11 where this parameter is defined |
| 505 | >>>List of NR cells | LIST |  | Refer to *gNB DU Measurements* structure  in 8.1.1.14 where this parameter is defined |
| 506 | >>>>NR Cell Item | STRUCTURE |  | Refer to *gNB DU Measurements* structure  in 8.1.1.14 where this parameter is defined |
| 507 | >>>>>Radio Resource Utilization | STRUCTURE |  | Refer to *Radio Resource Utilization*  structure in 8.1.1.14 where this parameter  is defined. This has load measurements in terms of PRB usage. |
| 508 | >>>>>Number of active UE measurements | STRUCTURE |  | Refer to *Number of active UE measurements* structure in 8.1.1.14 where this parameter is defined. This has  load measurements in terms of number of active UEs. |
| 509 | >>>>>Slice Available Capacity List | STRUCTURE |  | Refer to *Slice Available Capacity List* in 8.1.1.1 |
| 510 | >>>List of logical channels | LIST |  |  |
| 511 | >>>>Logical Channel Item | STRUCTURE |  |  |
| 512 | >>>>>Buffer Occupancy | ELEMENT | FALSE | Refer to *L2 MAC State Variables* structure in 8.1.1.4 where this parameter is defined. |
| 511 | >>NG-RAN gNB CU-CP | STRUCTURE |  | Refer to *E2 Node* structure in 8.1.1.11 where this parameter is defined |
| 512 | >>>RRC connection related measurements | STRUCTURE |  | Refer to *gNB CU-CP Measurements*  structure in 8.1.1.12 where this parameter is defined |
| 521 | >>NG-RAN gNB | STRUCTURE |  | Refer to E2 Node structure in 8.1.1.11 where this parameter is defined |
| 522 | >>>gNB DU  Measurements | STRUCTURE |  | Refer to E2 Node structure in 8.1.1.11 where this parameter is defined |
| 523 | >>>List of NR cells | LIST |  | Refer to gNB DU Measurements structure in 8.1.1.14 where this parameter is defined |
| 524 | >>>>NR Cell Item | STRUCTURE |  | Refer to gNB DU Measurements structure in 8.1.1.14 where this parameter is defined |
| 525 | >>>>>Radio Resource Utilization | STRUCTURE |  | Refer to Radio Resource Utilization structure in 8.1.1.14 where this parameter  is defined. This has load measurements in terms of PRB usage. |
| 526 | >>>>>Number of active UE measurements | STRUCTURE |  | Refer to Number of active UE measurements structure in 8.1.1.14 where this parameter is defined. This has load measurements in terms of number of  active UEs. |
| 527 | >>>>>Slice Available Capacity List | STRUCTURE |  | Refer to *Slice Available Capacity List* in 8.1.1.1 |
| 528 | >>>List of logical channels | LIST |  | Buffer Occupancy (BO) in number of bytes as defined in TS 25.321 [27] clause 8.2.2(c).LCID indicates logical channel  ID. |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| 529 | >>>>Logical Channel Item | STRUCTURE |  | Buffer Ocupancy (BO) in number of bytes as defined in TS 25.321 [27] clause 8.2.2(c).LCID indicates logical channel  ID. |
| 530 | >>>>>Buffer Occupancy | ELEMENT | FALSE | Refer to *L2 MAC State Variables*  structure in 8.1.1.4 where this parameter is defined. |
| 531 | >>>gNB CU-CP  Measurements | STRUCTURE |  | Refer to *E2 Node* structure in 8.1.1.11 where this parameter is defined |
| 532 | >>>>RRC connection related  measurements | STRUCTURE |  | Refer to *gNB CU-CP Measurements*  structure in 8.1.1.12 where this parameter is defined |

</div>

In addition to using the above RAN Parameters for Policy conditions, this service style also uses RAN parameters defined in Clause 8.1. Accordingly, this service style supports Policy Conditions using the RAN parameters defined in Clauses 8.1, 8.5.1 and those covered in the above table.

#### DC Secondary Node Addition Control

###### Control action

The RAN parameters associated with this policy type are listed in the table in Clause 8.4.6.1.

###### Offset

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- | --- |
| **RAN**  **Parameter ID** | **RAN Parameter** | **RAN**  **Parameter Value Type** | | **Key Flag** | **RAN**  **Parameter Definition** | **Semantics Description** | |
| 161 | B1 Event Threshold Offset | STRUCTURE |  | |  | *EventB1* IE in 8.1.1.10 |  |
| 162 | >RSRP Offset | ELEMENT | FALSE | | INTEGER | Offsets to be applied to default values, |  |
| 163 | >RSRQ Offset | ELEMENT | FALSE | | INTEGER | Offsets to be applied to default values, |  |
| 164 | >SINR Offset | ELEMENT | FALSE | | INTEGER | Offsets to be applied to default values, |  |
| 165 | >Hysteresis Offset | ELEMENT | FALSE | | INTEGER | Offsets to be applied to default values, |  |
| 170 | B2 Event Threshold offset | STRUCTURE |  | |  | *EventB2* IE in 8.1.1.10 |  |
| 171 | >B2-Threshold-NR offset | STRUCTURE |  | |  | *EventB2* IE in 8.1.1.10 |  |
| 172 | >>RSRP Offset | ELEMENT | FALSE | | INTEGER | Offsets to be applied to default values, |  |
| 173 | >>RSRQ Offset | ELEMENT | FALSE | | INTEGER | Offsets to be applied to default values, |  |
| 174 | >>SINR Offset | ELEMENT | FALSE | | INTEGER | Offsets to be applied to default values, |  |
| 175 | >>Hystersis Offset | ELEMENT | FALSE | | INTEGER | Offsets to be applied to default values, |  |
| 176 | >B2-Threshold- EUTRA offset | STRUCTURE |  | |  | *EventB2* IE in 8.1.1.10 |  |
| 177 | >>RSRP Offset | ELEMENT | FALSE | | INTEGER | Offsets to be applied to default values, |  |
| 178 | >>RSRQ Offset | ELEMENT | FALSE | | INTEGER | Offsets to be applied to default values, |  |
| 179 | >>SINR Offset | ELEMENT | FALSE | | INTEGER | Offsets to be applied to default values, |  |
| 180 | >>Hysteresis Offset | ELEMENT | FALSE | | INTEGER | Offsets to be applied to default values, |  |

</div>

#### DC Secondary Node Modification Control

###### Control action

The RAN parameters associated with this policy type are listed in the table in Clause 8.4.6.2.

###### Offset

The RAN parameters associated with this policy type are listed in the table in Clause 8.5.4.1.2.

#### PSCell Change cell for Secondary Cell Group

###### Control action

The RAN parameters associated with this policy type are listed in the table in Clause 8.4.6.3.

###### Offset

The RAN parameters associated with this policy type are listed in the table in Clause 8.5.4.1.2.

#### DC Secondary Node Change Control

###### Control action

The RAN parameters associated with this policy type are listed in the table in Clause 8.4.6.4.

###### Offset

The RAN parameters associated with this policy type are listed in the table in Clause 8.5.4.1.2.

### Carrier Aggregation Policy

#### Common RAN Parameters for Carrier Aggregation Policy

The RAN Parameters pertaining to POLICY Conditions for the "Carrier Aggregation Control" policy service style used across all POLICY actions of the policy service style are listed in the below table.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **RAN**  **Parameter ID** | **RAN Parameter Name** | **RAN**  **Parameter Value Type** | **Key flag** | **Parameter description** |
| 501 | List of secondary cells setup | LIST |  | *Scell To Be Setup List* IE in TS 38.473  [19] clause 9.2.2.1 |
| 502 | >Secondary cell setup Item | STRUCTURE |  | *Scell To Be Setup Item* IEs IE in TS  38.473 [19] clause 9.2.2.1 |
| 503 | >>CHOICE Secondary cell | STRUCTURE |  |  |
| 504 | >>>NR SCell | STRUCTURE |  | 8.1.1.1 |
| 505 | >>>>PM Measurements | STRUCTURE |  | Refer to *PM Measurements* structure in 8.1.1.1 |
| 506 | >>>>>Radio Resource Status | STRUCTURE |  | Refer to *Radio Resource Utilization* structure in 8.1.1.1 where this parameter is defined. This has load measurements  in terms of PRB usage. |
| 507 | >>>>>Number of active UEs in the cell | ELEMENT | FALSE | Refer to *Number of active UE measurements* structure in 8.1.1.1 where this parameter is defined. This has load measurements in terms of number of  active UEs. |
| 508 | >>>>>Composite  available capacity group | STRUCTURE |  | Refer to *Composite Available Capacity Group* structure in 8.1.1.1 |
| 509 | >>>>>Slice available capacity list | STRUCTURE |  | Refer to *Slice Available Capacity List* in 8.1.1.1 |
| 511 | >>>E-UTRA SCell | STRUCTURE |  | 8.1.1.2 |
| 512 | >>>>PM Measurements | STRUCTURE |  | Refer to *PM Measurements* structure in 8.1.1.2 |
| 513 | >>>>>Radio Resource Status | STRUCTURE |  | Refer to *Radio Resource Utilization*  structure in 8.1.1.2 where this parameter  is defined. This has load measurements in terms of PRB usage. |
| 514 | >>>>>Composite Available capacity group | STRUCTURE |  | Refer to *Composite Available Capacity Group* structure in 8.1.1.2 |
| 515 | >>>>>Number of active UEs in the cell | ELEMENT | FALSE | Refer to *Number of active UE measurements* structure in 8.1.1.12 where this parameter is defined. This has load measurements in terms of number of active UEs. |
| 516 | List of logical channels | LIST |  | Buffer Occupancy (BO) in number of bytes as defined in TS 25.321 [27] clause 8.2.2(c).LCID indicates logical channel  ID. |
| 517 | >Logical Channel Item | STRUCTURE |  | Buffer Occupancy (BO) in number of bytes as defined in TS 25.321 [27] clause 8.2.2(c).LCID indicates logical channel  ID. |
| 518 | >>LCID | ELEMENT | TRUE | *logicalChannelIdentity* IE in TS 38.331  [22] Sec 6 |
| 519 | >>Buffer Occupancy | ELEMENT | FALSE | Refer to *L2 MAC State Variables*  structure where this parameter is defined |

</div>

In addition to using the above RAN Parameters for Policy conditions, this service style also uses RAN parameters defined in Clause 8.1. Accordingly, this service style supports Policy Conditions using the RAN parameters defined in Clauses 8.1, 8.5.1 and those covered in the above table.

#### Secondary cell Addition control

###### Control action

The RAN parameters associated with this policy type are listed in the table in Clause 8.4.7.1.

###### Offset

The RAN parameters associated with this policy type are listed in the table in Clause 8.5.4.1.2.

#### Secondary cell Modification control

###### Control action

The RAN parameters associated with this policy type are listed in the table in Clause 8.4.7.2.

###### Offset

The RAN parameters associated with this policy type are listed in the table in Clause 8.5.4.1.2.

### Idle Mode Mobility Policy

#### Common RAN Parameters for Idle Mode Mobility Policy

The RAN Parameters pertaining to POLICY Conditions for the "Idle Mode Mobility Control" policy service style used across all POLICY actions of the policy service style are listed in the below table.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **RAN**  **Parameter ID** | **RAN Parameter Name** | **RAN**  **Parameter Value Type** | **Key flag** | **Parameter description** |
| 501 |  |  |  |  |

</div>

In addition to using the above RAN Parameters for POLICY conditions, this service style also uses RAN parameters defined in Clause 8.1. Accordingly, this service style supports Policy Conditions using the RAN parameters defined in Clauses 8.1, 8.5.1 and those covered in the above table.

#### Cell reselection priority control

###### Control action

The RAN parameters associated with this policy type are listed in the table in Clause 8.4.8.1.

###### Offset

The RAN parameters associated with this policy type are listed in the table in Clause 8.4.5.4. For the priority and sub priority parameters, values are used to set offsets with respect to the default behaviour, i.e., carrier frequency with fourth priority and an offset of +1 shall be considered as third priority

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- | --- |
| **RAN**  **Parameter ID** | **RAN Parameter** | | | **RAN**  **Parameter Value Type** | **Key Flag** | **RAN**  **Parameter Definition** | ***Semantics Description*** |
| 1 | Cell Reselection Priorities | | | STRUCTU RE |  |  | *IdleModeMobilityCo ntrolInfo* IE in TS  36.331 [23] |
| 2 | >Frequency Priority List E-UTRA | | | LIST |  |  | *FreqPriorityListEUT RA* IE in TS 38.331 [22] |
| 3 | >>Frequency Priority Item E-UTRA | | | STRUCTU RE |  |  | *FreqPriorityEUTRA*  IE in TS 38.331 [22] |
| 4 | >>>Carrier Frequency | | | ELEMENT | FALSE | *carrierFreq* IE in TS 38.331  [22] |  |
| 5 | >>>Cell offset | Reselection | Priority | ELEMENT | FALSE | INTEGER | *cellReselectionPriori*  *ty* IE in TS 38.331 [22] |
| 6 | >>>Cell Reselection Sub Priority offset | | | ELEMENT | FALSE | INTEGER | *cellReselectionSubP*  *riority* IE in TS  38.331 [22] |
| 7 | >Frequency Priority List NR | | | LIST |  |  | *FreqPriorityListNR*  IE in TS 38.331 [22] |
| 8 | >>Frequency Priority Item NR | | | STRUCTU RE |  |  | *FreqPriorityNR* IE in TS 38.331 [22] |
| 9 | >>>Carrier Frequency | | | ELEMENT | FALSE | carrierFreq IE in TS 38.331  [22] |  |
| 10 | >>>Cell offset | Reselection | Priority | ELEMENT | FALSE | INTEGER | *cellReselectionPriori ty* IE in TS 38.331 [22] |
| 11 | >>>Cell Reselection Sub Priority ofset | | | ELEMENT | FALSE | INTEGER | *cellReselectionSubP riority* IE in TS  38.331 [22] |
| 12 | >T-320 timer expiry offset | | | ELEMENT | FALSE | INTEGER | *t320* IE in TS 38.331 [22] |

</div>

### Measurement Reporting Configuration Policy

The RAN Parameters pertaining to Policy Conditions for the "Measurement Report Configuration Control" policy service style are given below.

In addition, this service style also uses RAN parameters defined in Clause 8.1. Thus, this service style currently supports Policy Conditions using the RAN parameters defined in Clauses 8.1 and 8.5.1 in addition to those defined below.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **RAN**  **Parameter ID** | **RAN Parameter Name** | **RAN**  **Parameter Value Type** | **Key flag** | **RAN Parameter Definition** | **Semantics Description** |
| 300 | List of Serving Beam Info | LIST |  |  | List of information about source beams belonging to the E2 Node. |
| 301 | >Serving Beam Info Item | STRUCTURE |  |  |  |
| 302 | >>Beam ID | ELEMENT | FALSE | Defined in [4]  clause 6.2.2.16 |  |
| 303 | >>Serving Cell CGI | ELEMENT | FALSE | OCTET STRING | Defined in Clause 9.3.36. |
| 304 | >>List of Neighbouring Cells | LIST |  |  | List of neighbouing cell IDs of this source beam belonging to the E2 Node. |
| 305 | >>>Neighbouring Cell CGI | ELEMENT | FALSE | OCTET STRING | Defined in Clause 9.3.36. |

</div>

#### Add MR Configuration

###### Control Action

The RAN parameters associated with this policy type are listed in the table in Clause 8.4.10.1.

###### Offset

Editor's Note: FFS

#### Modify MR Configuration

###### Control Action

The RAN parameters associated with this policy type are listed in the table in Clause 8.4.10.2.

###### Offset

RAN parameters in clause 8.4.10.2, where appropriate, may be modified via "offsets". The offsets are provided by Policy Actions. See clause 6.6.3 for the policy "offset" approach.

#### Delete MR Configuration

###### Control Action

The RAN parameters associated with this policy type are listed in the table in Clause 8.4.10.3.

###### Offset

Editor's Note: FFS

### Beamforming Configuration Policy

#### Common RAN Parameters for Beamforming Configuration Policy

The RAN Parameters pertaining to POLICY Conditions for the "Beamforming Configuration Control" policy service style used across all POLICY actions of the policy service style are listed in the below table.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **RAN**  **Parameter ID** | **RAN Parameter** | **RAN**  **Parameter Value Type** | **Key Flag** | **RAN Parameter Definition** | **Semantics Description** |
| 501 | MIMO Mode Index | ELEMENT | TRUE | INTEGER (1..2, ...) | Value = 1 means the SU (single-user) MIMO mode. Value 2 means the MU (multi-  user) MIMO mode. |

</div>

In addition to using the above RAN Parameters for Policy conditions, this service style also uses RAN parameters defined in Clause 8.1. Accordingly, this service style supports Policy Conditions using the RAN parameters defined in Clauses 8.1, 8.5.1 and those covered in the above table.

#### Non-GoB BF Mode Configuration

###### Control Action

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **RAN**  **Parameter ID** | **RAN Parameter** | **RAN**  **Parameter Value Type** | **Key Flag** | **RAN Parameter Definition** | **Semantics Description** |
| 502 | Non-GoB Beamforming Mode Index | ELEMENT | FALSE | INTEGER (0.. 65535, ...) | The index is used for Non- Grid of Beams (Non-GoB) beamforming optimization for 5G mMIMO deployments [32]. Each BF mode implies a vendor- specific proprietary Non-GoB BF algorithm that are not standardized [33], for which each E2 Node, who supports the Non-GoB beamforming optimization feature, provides the number of different Non-GoB BF mode(s) supported by its scheduler indexed from 1 to n. The AI/ML model for Non- GoB beamforming optimization is trained by data and measurements related to each BF mode and/or MIMO mode, for which the trained AI/ML model, based on collected data, configures the  E2 Node with the best inferred Non-GoB BF mode index to be used for each UE, where such configuration could be done separately for the case of Single User- and/or Multi- user MIMO [32]. The Value = 0 means release of Non-GoB BF mode for the UE  of subject. |

</div>

###### Offset

This policy type does not support the offset approach.

#### GoB BF Configuration

###### Control Action

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **RAN**  **Parameter ID** | **RAN Parameter** | **RAN**  **Parameter Value Type** | **Key Flag** | **RAN Parameter Definition** | **Semantics Description** |
| 503 | RI-LI-PMI config | STRUCTURE | FALSE |  | Precoding Matrix Indicator (PMI), Rank Indicator (RI), Layer Indicator (LI) in TS  38.214 [36] Clause  5.2.2.2. The AI/ML  model for CSI-RS and DMRS optimization infers the best PMI, RI, LI to be used for each UE [32]. |
| 504 | > RI | ELEMENT | FALSE | INTEGER (0,...,8) | RI in TS 38.214 [36]  Clause 5.2.2.2. The value=0 means RI- PMI reporting is not supported for the UE of interest. |
| 505 | > LI | ELEMENT | FALSE | INTEGER (0,...,8) | LI in TS 38.214 [36]  Clause 5.2.2.2. The value=0 means LI- reporting is not supported for the UE of interest. |
| 506 | > i1 | STRUCTURE | FALSE |  | PMI coefficients in TS  38.214 [36] Clause  5.2.2.2. |
| 507 | >> i11 | ELEMENT | FALSE | INTEGER (0,...,256) | PMI coefficients in TS  38.214 [36] Clause  5.2.2.2. |
| 508 | >> i12 | ELEMENT | FALSE | INTEGER (0,...,256) | PMI coefficients in TS  38.214 [36] Clause  5.2.2.2. |
| 509 | >> i13 | ELEMENT | FALSE | INTEGER (0,...,256) | PMI coefficients in TS  38.214 [36] Clause  5.2.2.2. |
| 510 | >> i131 | ELEMENT | FALSE | INTEGER (0,...,256) | PMI coefficients in TS  38.214 [36] Clause  5.2.2.2. |
| 511 | >> i132 | ELEMENT | FALSE | INTEGER (0,...,256) | PMI coefficients in TS  38.214 [36] Clause  5.2.2.2. |
| 512 | >> i14 | ELEMENT | FALSE | INTEGER (0,...,256) | PMI coefficients in TS  38.214 [36] Clause  5.2.2.2. |
| 513 | >> i141 | ELEMENT | FALSE | INTEGER (0,...,256) | PMI coefficients in TS  38.214 [36] Clause  5.2.2.2. |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| 514 | >> i142 | ELEMENT | FALSE | INTEGER (0,...,256) | PMI coefficients in TS  38.214 [36] Clause  5.2.2.2. |
| 515 | >> i143 | ELEMENT | FALSE | INTEGER (0,...,256) | PMI coefficients in TS  38.214 [36] Clause  5.2.2.2. |
| 516 | >> i15 | ELEMENT | FALSE | INTEGER (0,...,256) | PMI coefficients in TS  38.214 [36] Clause  5.2.2.2. |
| 517 | >> i161 | ELEMENT | FALSE | INTEGER (0,...,256) | PMI coefficients in TS  38.214 [36] Clause  5.2.2.2. |
| 518 | >> i162 | ELEMENT | FALSE | INTEGER (0,...,256) | PMI coefficients in TS  38.214 [36] Clause  5.2.2.2. |
| 519 | >> i171 | ELEMENT | FALSE | INTEGER (0,...,256) | PMI coefficients in TS  38.214 [36] Clause  5.2.2.2. |
| 520 | >> i172 | ELEMENT | FALSE | INTEGER (0,...,256) | PMI coefficients in TS  38.214 [36] Clause  5.2.2.2. |
| 521 | >> i173 | ELEMENT | FALSE | INTEGER (0,...,256) | PMI coefficients in TS  38.214 [36] Clause  5.2.2.2. |
| 522 | >> i174 | ELEMENT | FALSE | INTEGER (0,...,256) | PMI coefficients in TS  38.214 [36] Clause  5.2.2.2. |
| 523 | >> i181 | ELEMENT | FALSE | INTEGER (0,...,256) | PMI coefficients in TS  38.214 [36] Clause  5.2.2.2. |
| 524 | >> i182 | ELEMENT | FALSE | INTEGER (0,...,256) | PMI coefficients in TS  38.214 [36] Clause  5.2.2.2. |
| 525 | >> i183 | ELEMENT | FALSE | INTEGER (0,...,256) | PMI coefficients in TS  38.214 [36] Clause  5.2.2.2. |
| 526 | >> i184 | ELEMENT | FALSE | INTEGER (0,...,256) | PMI coefficients in TS  38.214 [36] Clause  5.2.2.2. |
| 527 | > i2 | STRUCTURE | FALSE |  | PMI coefficients in TS  38.214 [36] Clause  5.2.2.2. |
| 528 | >> i20 | ELEMENT | FALSE | INTEGER (0,...,256) | PMI coefficients in TS  38.214 [36] Clause  5.2.2.2. |
| 529 | >> i21 | ELEMENT | FALSE | INTEGER (0,...,256) | PMI coefficients in TS  38.214 [36] Clause  5.2.2.2. |
| 530 | >> i211 | ELEMENT | FALSE | INTEGER (0,...,256) | PMI coefficients in TS  38.214 [36] Clause  5.2.2.2. |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| 531 | >> i212 | ELEMENT | FALSE | INTEGER (0,...,256) | PMI coefficients in TS  38.214 [36] Clause  5.2.2.2. |
| 532 | >> i22 | ELEMENT | FALSE | INTEGER (0,...,256) | PMI coefficients in TS  38.214 [36] Clause  5.2.2.2. |
| 533 | >> i221 | ELEMENT | FALSE | INTEGER (0,...,256) | PMI coefficients in TS  38.214 [36] Clause  5.2.2.2. |
| 534 | >> i222 | ELEMENT | FALSE | INTEGER (0,...,256) | PMI coefficients in TS  38.214 [36] Clause  5.2.2.2. |
| 535 | >> i231 | ELEMENT | FALSE | INTEGER (0,...,256) | PMI coefficients in TS  38.214 [36] Clause  5.2.2.2. |
| 536 | >> i232 | ELEMENT | FALSE | INTEGER (0,...,256) | PMI coefficients in TS  38.214 [36] Clause  5.2.2.2. |
| 537 | >> i233 | ELEMENT | FALSE | INTEGER (0,...,256) | PMI coefficients in TS  38.214 [36] Clause  5.2.2.2. |
| 538 | >> i234 | ELEMENT | FALSE | INTEGER (0,...,256) | PMI coefficients in TS  38.214 [36] Clause  5.2.2.2. |
| 539 | >> i241 | ELEMENT | FALSE | INTEGER (0,...,256) | PMI coefficients in TS  38.214 [36] Clause  5.2.2.2. |
| 540 | >> i242 | ELEMENT | FALSE | INTEGER (0,...,256) | PMI coefficients in TS  38.214 [36] Clause  5.2.2.2. |
| 541 | >> i243 | ELEMENT | FALSE | INTEGER (0,...,256) | PMI coefficients in TS  38.214 [36] Clause  5.2.2.2. |
| 542 | >> i244 | ELEMENT | FALSE | INTEGER (0,...,256) | PMI coefficients in TS  38.214 [36] Clause  5.2.2.2. |
| 543 | >> i251 | ELEMENT | FALSE | INTEGER (0,...,256) | PMI coefficients in TS  38.214 [36] Clause  5.2.2.2. |
| 544 | >> i252 | ELEMENT | FALSE | INTEGER (0,...,256) | PMI coefficients in TS  38.214 [36] Clause  5.2.2.2. |
| 545 | >> i253 | ELEMENT | FALSE | INTEGER (0,...,256) | PMI coefficients in TS  38.214 [36] Clause  5.2.2.2. |
| 546 | >> i254 | ELEMENT | FALSE | INTEGER (0,...,256) | PMI coefficients in TS  38.214 [36] Clause  5.2.2.2. |
| 547 | > Subband Index | ELEMENT | FALSE | INTEGER (0,...,19) | Subband index for PMI reporting in TS  38.214 [36] Clause  5.2.1.4. The value=0 means Subband PMI |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
|  |  |  |  |  | reporting is not supported for the UE of interest. |
| 548 | P-2 Beam Index | ELEMENT | FALSE | INTEGER (0...256) | P-2 beam index in TS 38.912 [37] Clause  8.2.1.6.1. The AI/ML  model for CSI-RS and DMRS optimization infers the best P-2 beam index to be used for each UE [32]. The value=0 means P-2-beam management is not supported for the UE of interest. |

</div>

###### Offset

This policy type does not support the offset approach.

## RAN parameters for QUERY services

### RAN Parameters for Query Service Style 1

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **RAN**  **Parameter ID** | **RAN**  **Parameter Name** | **RAN**  **Parameter Value Type** | **Key Flag** | **RAN Parameter Definition** | **Semantics Description** |
| 1 | Cell Context Information | ELEMENT | FALSE | OCTET STRING | *Served Cell Information* IE in TS  38.473 [19] clause 9.3.1.10. This shall be used to report Cell Context  information. |
| 2 | Neighbour Relation Table | STRUCTURE | FALSE | *9.3.38*  *Neighbour Relation Information* | This shall be used to report neighbour  relation information of the serving cells. |
| 3 | Number of supported Non-GoB beamforming modes | ELEMENT | FALSE | INTEGER (0..  65535, ...) | This shall be used to report the number of Non- Grid of Beams (Non-GoB) beamforming modes supported by the E2 Node for mMIMO Non-GoB beamforming optimization for 5G mMIMO deployments [32]. Each BF mode implies a vendor-specific proprietary Non-GoB BF algorithm that are not  standardized [33], for which each E2 Node, who supports the Non-GoB beamforming optimization feature, provides the number of different Non-GoB BF mode(s) supported by its scheduler indexed from 1 to n.  The AI/ML model for Non-GoB beamforming optimization is trained by data and measurements related to each BF mode and/or MIMO mode, for which the trained AI/ML model, based on collected data,  configures the E2 Node with the best inferred Non-GoB BF mode |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
|  |  |  |  |  | index to be used for each UE, where such configuration could be done separately for the case of Single User- and/or Multi-user MIMO [32]. If Non-GoB beamforming optimization is not supported by a cell of interest, then the value "0"  shall be replied. |
| 4 | MIB | ELEMENT | FALSE | OCTET STRING | *MIB* IE in TS 38.331 [22] Clause  6.2.2. This shall be used to report MIB of the serving cell |
| 5 | Serving Cell Config Common | STRUCTURE | FALSE | 9.3.60 | This shall be used to report common parameters of the serving cell contained in *ServingCellConfigCommon* IE in TS  38.331 [22] Clause 6.3.2. |
| 6 | O-DU  Compression Support | STRUCTURE |  |  |  |
| 7 | >BFW  Compression Support | STRUCTURE |  |  | Identifies the O-DU supported compression methods from the list  defined in O-RAN-WG4.CUS [34] Clause 7.4.7.1.1 |
| 8 | >>no compression | ELEMENT | FALSE | BOOLEAN | If this parameter is set to True, all other parameters shall either not be included or be set to False and shall be ignored by the receiving end. |
| 9 | >>block floating point (BFP) | ELEMENT | FALSE | BOOLEAN |  |
| 10 | >>block scaling | ELEMENT | FALSE | BOOLEAN |  |
| 11 | >>m-law | ELEMENT | FALSE | BOOLEAN |  |
| 12 | >>beamspace compression Type I | ELEMENT | FALSE | BOOLEAN |  |
| 13 | >>beamspace compression Type II | ELEMENT | FALSE | BOOLEAN |  |
| 14 | CSI-  ReportConfig | ELEMENT | FALSE | OCTET STRING | CSI-ReportConfig IE in TS 38.331  [22] Clause 6.3.1. This shall be used to report the CSI report configurations which includes Codebook Configurations (e.g., Type I, Type II etc.) supported by  the E2 Node [32]. |
| 15 | Supported GoB-  beamforming configurations | STRUCTURE | FALSE |  | Beam <IOC> in TS 28.541 [35]  Clause 4.3.40. This shall be used to report the set of GoB beamforming configurations (e.g., indexes, azimuth directions, elevation  directions etc.) supported by the E2 Node [32]. |
| 16 | > beamIndex | ELEMENT | FALSE | INTEGER (0...256) | Beam <IOC> Attribute Properties in TS 28.541 [35] Clause 4.4.1. |
| 17 | > beamType | ELEMENT | FALSE | ENUMERATED ('SSB-BEAM', 'CSI- BEAM') | As per Beam <IOC> Attribute Properties in TS 28.541 [35] Clause 4.4.1, allowed value for this field is 'SSB-BEAM'. The value 'CSI-BEAM'  is Optional. |
| 18 | > beam- | ELEMENT | FALSE | INTEGER (- 1800...1800) | Beam <IOC> Attribute Properties in TS 28.541 [35] Clause 4.4.1. |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
|  | Azimuth |  |  |  |  |
| 19 | > beamTilt | ELEMENT | FALSE | INTEGER (- 900...900) | Beam <IOC> Attribute Properties in TS 28.541 [35] Clause 4.4.1. |
| 20 | > beam- HorizWidth | ELEMENT | FALSE | INTEGER (0...3599) | Beam <IOC> Attribute Properties in TS 28.541 [35] Clause 4.4.1. |
| 21 | > beam- VertWidth | ELEMENT | FALSE | INTEGER (0...1800) | Beam <IOC> Attribute Properties in TS 28.541 [35] Clause 4.4.1. |

</div>

### RAN Parameters for Query Service Style 2

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **RAN**  **Parameter ID** | **RAN**  **Parameter Name** | **RAN Parameter Value Type** | **Key Flag** | **RAN Parameter Definition** | **Semantics Description** |
| 1 | Cell Global ID | ELEMENT | FALSE | *9.3.36*  *Cell Global ID* | Used to report the Serving Cell ID of the UE. |

</div>

In addition to using the above RAN Parameters, this service style also uses RAN parameters defined in Clause 8.1.1.

# Elements for E2SM Service Model

## General

## Message Functional Definition and Content

### Messages for RIC Functional procedures

#### RIC Event Trigger Definition IE

This information element is part of the RIC SUBSCRIPTION REQUEST message sent by the Near-RT RIC to an E2 Node and is required for event triggers used to initiate REPORT, INSERT and POLICY actions.

Direction: NEAR-RT RIC ? E2 Node.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| **CHOICE** *RIC Event Trigger Definition IE Format* |  |  |  |  |
| >E2SM-RC Event Trigger Definition Format 1 | M |  | 9.2.1.1.1 | Used for Event Trigger Style 1 |
| >E2SM-RC Event Trigger Definition Format 2 | M |  | 9.2.1.1.2 | Used for Event Trigger Style 2 |
| >E2SM-RC Event Trigger Definition Format 3 | M |  | 9.2.1.1.3 | Used for Event Trigger Style 3 |
| >E2SM-RC Event Trigger Definition Format 4 | M |  | 9.2.1.1.4 | Used for Event Trigger Style 4 |
| >E2SM-RC Event Trigger Definition Format 5 | M |  | VOID | Format 5 has been deprecated |

</div>

###### E2SM-RC Event Trigger Definition Format 1: Message Event

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| Sequence of Messages for Event Trigger |  | *1..<maxnoof Messages>* |  |  |
| >Event Trigger Condition ID | M |  | 9.3.21 |  |
| *>***CHOICE** *Message Type* | M |  |  |  |
| **>>*Network Interface*** |  |  |  |  |
| >>>NI Type | M |  | 9.3.32 | 3GPP Network Interface Type |
| >>>NI Identifier | O |  | 9.3.33 | "Any" Network Interface instance to be used if absent. |
| >>>NI Message | O |  | 9.3.34 | Network Interface Message ID. This can indicate whether NUA (Non-UE Associated) or UA (UE-  Associated). |
| ***>>RRC*** |  |  |  |  |
| >>>RRC Message ID | M |  | 9.3.35 | RRC Message ID |
| >Message Direction | O |  | ENUMERATED  (incoming, outgoing, ...) | Indicates message arrival or departure for event triggering  ("Any" direction if not included). |
| >Associated UE Info | O |  | 9.3.26 | Indicates applicable UE(s) for event triggering associated to each message event ("Any" UE if not included).  Shall not be included in case of NUA type NI message. |
| >Associated UE Event | O |  | 9.3.28 | Indicates specific UE event(s) defined in Clause 8.1.5 for event triggering associated to each message event. |
| >Logical OR | O |  | 9.3.25 |  |
| Global Associated UE Info | O |  | 9.3.26 | Indicates applicable UE(s) for event triggering, applied to all the message events uniformly. This IE shall override any *Associated UE Info* IE included for some message events.  Shall not be included in case a NUA type NI message event is configured. |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Range bound** | **Explanation** |
| maxnoofMessages | Maximum number of Messages in a given E2 node for which event trigger can be defined. The value is *<65535>.* |

</div>

###### E2SM-RC Event Trigger Definition Format 2: Call Process Breakpoint

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| Call Process Type ID | M |  | 9.3.15 |  |
| Call Breakpoint ID | M |  | 9.3.49 |  |
| Associated E2 Node Info | O |  | 9.3.29 | Used to set optional E2 Node related information for event triggering.  RAN Parameters in Clause  8.1.2 shall only be used. |
| Associated UE Info | O |  | 9.3.26 | Indicates applicable UE(s) for event triggering ("Any" UE if not included). |

</div>

###### E2SM-RC Event Trigger Definition Format 3: E2 Node Information Change

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| Sequence of E2 Node Information Change |  | *1..<maxnoof E2InfoChang es>* |  |  |
| >Event Trigger Condition ID | M |  | 9.3.21 |  |
| >E2 Node Information Change ID | M |  | INTEGER (1..512, ...) | Defined in 7.3.4. |
| >Associated Cell Info | O |  | 9.3.27 | "Any" cell if not included. |
| >Logical OR | O |  | 9.3.25 |  |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Range bound** | **Explanation** |
| maxnoofE2InfoChanges | Maximum number of E2 Node information changes for which event trigger can be defined. The value is *<65535>.* |

</div>

###### E2SM-RC Event Trigger Definition Format 4: UE Information Change

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| Sequence of UE Information Change |  | *1..<maxnoof UEInfoChan ges>* |  |  |
| >Event Trigger Condition ID | M |  | 9.3.21 |  |
| **>CHOICE** *Trigger Type* | M |  |  |  |
| **>>*RRC State*** |  |  |  |  |
| >>>RRC State List |  | *1..<maxnoof RRCstate>* |  |  |
| >>>>State Changed To | M |  | 9.3.37 |  |
| >>>>Logical OR | O |  | 9.3.25 |  |
| **>>*UE Identifier*** |  |  |  |  |
| >>>UE Identifier Change ID | M |  | INTEGER (1..512, ...) | Defined in 7.3.5. |
| **>>*L2 State*** |  |  |  | Used to set conditions for PDCP, RLC and MAC state variable reporting |
| >>>Associated L2 Variables | M |  | 9.3.29 | RAN Parameters in Clauses 8.1.1.4 and  8.1.1.8 shall only be used. |
| **>>*UE Context Info*** |  |  |  |  |
| >>>Associated UE Context Info Variables | M |  | 9.3.29 | RAN Parameters in Clause 8.1.1.17 |
| **>>*L2 MAC Scheduler related Change*** |  |  |  |  |
| >>>**CHOICE** *L2 MAC*  *Scheduler Change Type* | M |  |  |  |
| >>>>***MIMO and***  ***Beamforming Configuration*** |  |  |  | Used only for POLICY Service Style 9 |
| >>>>>MIMO  Transmission Mode State | M |  | ENUMERATED  (enabled, disabled, ...) | Used to set condition when the MAC scheduler enables or disables the MIMO transmission  mode for the associated UE(s). |
| >Associated UE Info | O |  | 9.3.26 | Indicates applicable UE(s) for event  triggerin" (""ny" UE if not included). |
| >Logical OR | O |  | 9.3.25 |  |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Range bound** | **Explanation** |
| maxnoofUEInfoChanges | Maximum number of UE information changes for which event trigger can be defined. The value is *<65535>.* |
| maxnoofRRCstate | Maximum number of RRC states for which event trigger can be defined. The value is *<*8*>.* |

</div>

###### VOID

#### RIC ACTION DEFINITION IE

This information element is part of the RIC SUBSCRIPTION REQUEST message sent by the Near-RT RIC to an E2 Node. In this service model, this information element provides additional information for the nominated RIC Action.

Direction: NEAR-RT RIC ? E2 Node.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| RIC Style Type | M |  | 9.3.3 |  |
| **CHOICE** *RIC Action Definition IE Format* |  |  |  |  |
| >E2SM-RC Action Definition Format 1 | M |  | 9.2.1.2.1 | Used by REPORT service |
| >E2SM-RC Action Definition Format 2 | M |  | 9.2.1.2.2 | Used by POLICY service when encoding a list of  Policy Conditions |
| >E2SM-RC Action Definition Format 3 | M |  | 9.2.1.2.3 | Used by INSERT service except  style 255 |
| >E2SM-RC Action Definition Format 4 | M |  | 9.2.1.2.4 | Used only by INSERT service  style 255 |

</div>

###### E2SM-RC Action Definition Format 1

The *E2SM-RC Action Definition Format 1* IE supports a REPORT service and is encoded as a list of RAN parameters to be reported, each with a RAN Parameter ID and RAN Parameter Definition. RAN parameters for REPORT service are defined in Clause 8.2.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| Parameters to be Reported List |  | *1..<maxnoofPar ametersToRepo rt>* |  |  |
| >RAN Parameter ID | M |  | 9.3.8 | Only the RAN Parameter ID values declared in RAN Function Definition  may be included. |
| >RAN Parameter Definition | O |  | 9.3.51 | To define the parameter along with its constituent parameters, if any (for a structure), and itemized members, if any (for a list).  If not included for the RAN Parameter ID of a STRUCTURE type or a LIST type, then all the constituent RAN parameters under this RAN Parameter ID are assumed to be supported.  Only the RAN Parameter ID values declared in RAN Function Definition  may be included. |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Range bound** | **Explanation** |
| maxnoofParametersToReport | Maximum no. of RAN parameters supported by *E2SM-RC Action Definition Format 1* IE. The value is <*65535*>. |

</div>

###### E2SM-RC Action Definition Format 2

The *E2SM-RC Action Definition Format 2* IE supports Policy services encoded as a list of Policy Conditions, each with a Policy Condition definition described using *RAN Parameter Conditional Criteria Definition* IE in terms of a list of RAN parameters with test conditions and a *Policy Action* IE command described in terms of a list of RAN parameters. The meaning of the RAN Parameter ID/Value pairs for each list is defined in Clause 8.5.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| Sequence of Policy Conditions |  | *1..<maxnoofPoli cyConditions>* |  |  |
| >Policy Action | M |  | 9.3.20 | Defines policy to be applied for  specific Policy Condition |
| >Policy Condition Definition | O |  | 9.3.29 | Defines conditional test. |
| >Policy Condition ID | O |  | 9.3.58 | For the case of Offset based policy, this identifier is used to determine the order in which Policy conditions are tested while searching for the first positive  match |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Range bound** | **Explanation** |
| maxnoofPolicyConditions | Maximum no. of Policy Condition in *E2SM-RC Action Definition Format 2* IE supported by RAN Function. Value is <*65535*>. |

</div>

###### E2SM-RC Action Definition Format 3

The *E2SM-RC Action Definition Format 3* IE supports an INSERT service of the indicated *RIC Style Type* IE and is encoded by the Insert Indication ID and a list of RAN parameters. The meaning of the RAN Parameter ID(s) in the list is defined in Clause 8.3.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| Insert Indication ID | M |  | 9.3.16 | Refer to Clause 7.5 |
| List of RAN parameters for Insert Indication | M | *1..<maxnoofAsso ciatedRANParam*  *eters*> |  | Refer to Clause 8.3 |
| >RAN Parameter ID | M |  | 9.3.8 | Refer to Clause 8.3 Only the RAN Parameter ID values declared in RAN Function Definition  may be included. |
| >RAN Parameter Definition | O |  | 9.3.51 | To define the parameter along with its constituent parameters, if any (for a structure), and itemized members, if any (for a list).  If not included for the RAN Parameter ID of a STRUCTURE type or a LIST type, then all the constituent RAN parameters under this RAN Parameter ID are assumed to be supported.  Only the RAN Parameter ID values declared in RAN Function Definition may be included. |
| UE ID | O |  | 9.3.10 | If included, indicates that the subscribed INSERT service, upon the associated event trigger occurs, shall be executed for this UE only.  In case of UE-related event triggers, the subscribed INSERT service shall not be executed unless the triggered event is  related to this UE. |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Range bound** | **Explanation** |
| maxnoofAssociatedRANParameters | Maximum no. of RAN parameters supported by *E2SM-RC Action Definition Format 3* IE for INSERT Indication. The value is <*65535*>. |

</div>

###### E2SM-RC Action Definition Format 4

The *E2SM-RC Action Definition Format 4* IE supports multiple Insert Indication actions of one or more requested INSERT services, where each Insert Indication action is encoded by Insert Indication ID and a list of RAN parameters. The meaning of the RAN Parameter ID/Value pairs for each list is defined in Clause 8.3.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| Sequence of Insert Styles for Multiple Actions |  | *1..<maxnoofRIC Styles*> |  |  |
| >Requested Insert Style | M |  | 9.3.3 |  |
| >Sequence of Insert Indication Action Definition |  | *1..<maxnoofInser tIndicationAction s*> |  |  |
| >>Insert Indication ID | M |  | 9.3.16 | Refer to Clause 7.5 |
| >>List of RAN parameters for Insert Indication |  | *1..<maxnoofAsso ciatedRANParam eters*> |  | Refer to Clause 8.3 |
| >>>RAN Parameter ID | M |  | 9.3.8 | Refer to Clause 8.3 Only the RAN Parameter ID values declared in RAN Function Definition  may be included. |
| >>>RAN Parameter Definition | O |  | 9.3.51 | To define the parameter along with its constituent parameters, if any (for a structure), and itemized members, if any (for a list).  If not included for the RAN Parameter ID of a STRUCTURE type or a LIST type, then all the constituent RAN parameters under this RAN Parameter ID are assumed to be supported.  Only the RAN Parameter ID values declared in RAN Function Definition may be included. |
| UE ID | O |  | 9.3.10 | If included, indicates that the subscribed INSERT service, upon the associated event trigger occurs, shall be executed for this UE only.  In case of UE-related event triggers, the subscribed INSERT service shall not be executed unless the triggered event is  related to this UE. |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Range bound** | **Explanation** |
| maxnoofRICStyles | Maximum no. of Insert Styles supported by *E2SM-RC Action Definition Format 4* IE for INSERT Indication. The value is <63>. |
| maxnoofInsertIndicationActions | Maximum no. of Insert indication actions supported by RAN Function. The value is <63>. |
| maxnoofAssociatedRANParameters | Maximum no. of RAN parameters supported by *E2SM-RC Action Definition Format 4* IE for INSERT Indication. The value is <*65535*>. |

</div>

#### RIC INDICATION HEADER IE

This information element is part of the RIC INDICATION message sent by the E2 Node to the Near-RT RIC and is required for REPORT action.

Direction: E2 Node ? NEAR-RT RIC.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| CHOICE *Indication Header Format* |  |  |  |  |
| >E2SM-RC Indication Header Format 1 | M |  | 9.2.1.3.1 |  |
| >E2SM-RC Indication Header Format 2 | M |  | 9.2.1.3.2 |  |
| >E2SM-RC Indication Header Format 3 | M |  | 9.2.1.3.3 |  |

</div>

###### E2SM-RC Indication Header Format 1

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| Event Trigger Condition ID | O |  | 9.3.21 | Event Trigger Condition ID |

</div>

###### E2SM-RC Indication Header Format 2

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| UE ID | M |  | 9.3.10 |  |
| RIC Insert Style Type | M |  | 9.3.3 |  |
| Insert Indication ID | M |  | 9.3.16 | Refer to Clause 7.5 |

</div>

###### E2SM-RC Indication Header Format 3

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| Event Trigger Condition ID | O |  | 9.3.21 |  |
| UE ID | O |  | 9.3.10 |  |

</div>

#### RIC INDICATION MESSAGE IE

This information element is part of the RIC INDICATION message sent by the E2 Node to the Near-RT RIC and is required for REPORT action.

Direction: E2 Node ? NEAR-RT RIC.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| **CHOICE** *Indication Message Format* | M |  |  |  |
| >E2SM-RC Indication Message Format 1 |  |  | 9.2.1.4.1 |  |
| >E2SM-RC Indication Message Format 2 |  |  | 9.2.1.4.2 |  |
| >E2SM-RC Indication Message Format 3 |  |  | 9.2.1.4.3 |  |
| >E2SM-RC Indication Message Format 4 |  |  | VOID | Format 4 has been deprecated |
| >E2SM-RC Indication Message Format 5 |  |  | 9.2.1.4.5 |  |
| >E2SM-RC Indication Message Format 6 |  |  | 9.2.1.4.6 |  |

</div>

###### E2SM-RC Indication Message Format 1

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| Sequence of RAN Parameters |  | *1..<maxnoofAsso*  *ciatedRANParam eters>* |  |  |
| >RAN Parameter ID | M |  | 9.3.8 |  |
| >RAN Parameter Value Type | M |  | 9.3.11 |  |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Range bound** | **Explanation** |
| maxnoofAssociatedRANParameters | Maximum number of RAN Parameters supported by *E2SM-RC Indication Message Format 1* IE. The value is <*65535*>. |

</div>

###### E2SM-RC Indication Message Format 2

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| Sequence of UE Identifiers |  | *1..<maxnoofUEI D>* |  |  |
| >UE ID | M |  | 9.3.10 |  |
| >Sequence of RAN Parameters |  | *1..<maxnoofAss ociatedRANPar*  *ameters>* |  |  |
| >>RAN Parameter ID | M |  | 9.3.8 |  |
| >>RAN Parameter Value Type | M |  | 9.3.11 |  |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Range bound** | **Explanation** |
| maxnoofUEID | Maximum number of UE Identifiers supported by *E2SM-RC Indication Message Format 2* IE to be reported. The value is  <*65535*>. |
| maxnoofAssociatedRANParameters | Maximum number of RAN Parameters supported by *E2SM-RC Indication Message Format 2* IE to be reported. The value is  <*65535*>. |

</div>

###### E2SM-RC Indication Message Format 3

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| Sequence of Cell Information |  | *1..<maxnoofCell ID>* |  |  |
| >Cell Global ID | M |  | 9.3.36 |  |
| >Cell Context Information | O |  | OCTET STRING | *Served Cell Information* IE in TS  38.473 [19] clause  9.3.1.10.  This IE shall be reported if RAN Parameter ID is set  to "1" as described in Clause 8.2.3. |
| >Cell Deleted | O |  | BOOLEAN | This IE shall be used to report deleted cells. The value shall be set to "True" for the deleted Cell Global ID.  This IE shall be reported if RAN Parameter ID is set to "2" as described in  Clause 8.2.3. |
| >Neighbour Relation Table | O |  | 9.3.38 | Provides information on neighbours of serving cell.  This IE shall be reported if RAN Parameter ID is set to "3" as described in  Clause 8.2.3. |
| >MIB | O |  | OCTET STRING | *MIB* IE in TS 38.331.  This IE shall be reported if RAN Parameter ID is set to "4" as described in  Clause 8.2.3. |
| > Serving Cell Config Common | O |  | 9.3.60 | Provides information on common parameters of the serving cell.  This IE shall be reported if RAN Parameter ID is set  to "5" as described in Clause 8.2.3. |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Range bound** | **Explanation** |
| maxnoofCellID | Maximum number of Cell Identifiers supported by *E2SM-RC Indication Message Format 3* IE to be reported. The value is  <*65535*>. |

</div>

###### VOID

###### E2SM-RC Indication Message Format 5

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| List of RAN parameters requested |  | *0..<maxnoofAss ociatedRANPar ameters>* |  |  |
| >RAN Parameter ID | M |  | 9.3.8 | Refer to table in Clause 8.3 |
| >RAN Parameter Value Type | M |  | 9.3.11 | Refer to table in Clause 8.3 |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Range bound** | **Explanation** |
| maxnoofAssociatedRANParameters | Maximum no. of RAN parameters supported by RAN Function for a specific Control action. The value is <*65535*>. |

</div>

###### E2SM-RC Indication Message Format 6

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| Sequence of Insert Styles for Multiple Actions |  | *1..<maxnoofRIC Styles*> |  |  |
| >Indicated Insert Style | M |  | 9.3.3 |  |
| >Sequence of Insert Indication Actions |  | *1..<maxnoofIns ertIndicationActi ons>* |  |  |
| >>Insert Indication ID | M |  | 9.3.16 | Refer to Clause 7.5 |
| >>List of RAN parameters requested |  | *0..<maxnoofAss*  *ociatedRANPar ameters>* |  |  |
| >>>RAN Parameter ID | M |  | 9.3.8 | Refer to table in Clause 8.3 |
| >>>RAN Parameter Value Type | M |  | 9.3.11 | Refer to table in Clause 8.3 |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Range bound** | **Explanation** |
| maxnoofRICStyles | Maximum no. of Insert Styles supported for multiple actions. The value is <63>. |
| maxnoofInsertIndicationActions | Maximum no. of Insert indication actions supported by RAN Function. The value is <*63*>. |
| maxnoofAssociatedRANParameters | Maximum no. of RAN parameters supported by RAN Function for a specific Insert indication action. The value is <*65535*>. |

</div>

#### RIC CALL PROCESS ID IE

This information element is part of the RIC INDICATION message sent by the E2 Node to a Near-RT RIC node and is required for INSERT action. The same information element is used in RIC Control procedure

Direction: E2 Node ? Near-RT RIC (when carried in RIC INDICATION) and Near-RT RIC ? E2 Node (when carried in RIC CONTROL REQUEST).

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| **CHOICE** *Call Process ID Format* |  |  |  |  |
| >E2SM-RC Call Process ID Format 1 | M |  | 9.2.1.5.1 |  |

</div>

###### E2SM-RC Call Process ID Format 1

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| RIC Call Process ID | M |  | 9.3.18 |  |

</div>

#### RIC CONTROL HEADER IE

This information element is part of the RIC CONTROL message sent by the Near-RT RIC to an E2 Node and is required for RIC Control Procedure.

Direction: Near-RT RIC ? E2 Node.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| **CHOICE** *Control Header Format* | M |  |  |  |
| >E2SM-RC Control Header Format 1 |  |  | 9.2.1.6.1 |  |
| >E2SM-RC Control Header Format 2 |  |  | 9.2.1.6.2 |  |
| >E2SM-RC Control Header Format 3 |  |  | 9.2.1.6.3 |  |
| >E2SM-RC Control Header Format 4 |  |  | 9.2.1.6.4 |  |

</div>

###### E2SM-RC Control Header Format 1

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| UE ID | M |  | 9.3.10 |  |
| RIC Style Type | M |  | 9.3.3 |  |
| Control Action ID | M |  | 9.3.6 | Refer to Clause 7.6 |
| RIC Control decision | O |  | ENUMERATED  (accept, reject, ...) | Used only when a CONTROL action is sent as a response to an Insert Indication |

</div>

###### E2SM-RC Control Header Format 2

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| UE ID | O |  | 9.3.10 |  |
| RIC Control decision | O |  | ENUMERATED  (accept, reject, ...) | Used only when RIC Control Request message is sent as a response to the INSERT indication message from E2 Node. |

</div>

###### E2SM-RC Control Header Format 3

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| UE Group ID | M |  | 9.3.54 | To uniquely identify a UE group |
| UE Group Definition | M |  | 9.3.56 | RAN parameters defined in Clause  8.1.3 shall be used to define the UE group. |
| RIC Style Type | M |  | 9.3.3 | Identifier of the RIC Control Service Style |
| Control Action ID | M |  | 9.3.6 | Identifier of the RIC Control Action |

</div>

###### E2SM-RC Control Header Format 4

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| Partial UE ID | M |  | 9.3.57 |  |
| RIC Style Type | M |  | 9.3.3 |  |
| Control Action ID | M |  | 9.3.6 | Refer to Clause 7.6 |
| RIC Control decision | O |  | ENUMERATED  (accept, reject, ...) | Used only when a CONTROL action is sent as a response to an Insert Indication |

</div>

#### RIC CONTROL MESSAGE IE

This information element is part of the RIC CONTROL message sent by the Near-RT RIC to an E2 Node and is required for RIC Control Procedure.

Direction: Near-RT RIC ? E2 Node.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| **CHOICE** *Control Message Format* | M |  |  |  |
| >E2SM-RC Control Message Format 1 |  |  | 9.2.1.7.1 |  |
| >E2SM-RC Control Message Format 2 |  |  | 9.2.1.7.2 |  |
| >E2SM-RC Control Message Format 3 |  |  | 9.2.1.7.3 |  |
| >E2SM-RC Control Message Format 4 |  |  | 9.2.1.7.4 |  |
| >E2SM-RC Control Message Format 5 |  |  | 9.2.1.7.5 |  |

</div>

###### E2SM-RC Control Message Format 1

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| List of RAN parameters |  | *0..<maxnoofAssociate dRANParameters>* |  |  |
| >RAN Parameter ID | M |  | 9.3.8 | Refer to table in Clause 8.4 |
| >RAN Parameter Value Type | M |  | 9.3.11 | Refer to table in Clause 8.4 |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Range bound** | **Explanation** |
| maxnoofAssociatedRANParameters | Maximum no. of RAN parameters supported by RAN Function for a specific Control action. The value is <*65535*>. |

</div>

###### E2SM-RC Control Message Format 2

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| Sequence of Control Styles for Multiple Actions |  | *1..<maxnoofRICStyles*  *>* |  |  |
| >Indicated Control Style | M |  | 9.3.3 |  |
| >Sequence of Control Actions |  | *1..<maxnoofMulCtrlAct ions>* |  |  |
| >>Control Action ID | M |  | 9.3.6 | Refer to Clause 7.6 |
| >>Control Action Parameters | O |  | 9.2.1.7.1  E2SM-RC  Control Message Format 1 |  |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Range bound** | **Explanation** |
| maxnoofRICStyles | Maximum no. of Control Styles supported by RAN Function. The value is <63>. |
| maxnoofMulCtrlActions | Maximum no. of Control actions supported by RAN Function. The value is <*63*>. |

</div>

###### E2SM-RC Control Message Format 3

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| List of entity filters |  | *0..<maxnoof AssociatedE ntityFilters>* |  | List of entity filters for identifying entities for RAN entity-specific UE  group control action |
| **>**Entity Filter ID | M |  | 9.3.55 | Used to uniquely identify an entity filter definition |
| >Entity Filter Definition | M |  | 9.3.29 | This IE is used to determine the entities of the UE group, based on the RAN parameters in Clause 8.4.2 and  8.1. |
| >List of RAN control parameters for the matching entities |  | *1..<maxnoof AssociatedR*  *ANParamete rs>* |  |  |
| >>RAN Parameter ID | M |  | 9.3.8 | Refer to table in Clause 8.3. This shall not include *key flag* parameter whose value type is "***ELEMENT with***  ***Key Flag TRUE***" |
| >>RAN Parameter Value Type | M |  | 9.3.11 | Refer to table in Clause 8.3. The value type shall not  be "***ELEMENT with Key Flag TRUE****"* |
| List of RAN control parameters |  | *0..<maxnoof AssociatedR ANParamete rs>* |  | List of RAN Entity- agnostic RAN control parameters for control action on  the group of UEs |
| >RAN Parameter ID | M |  | 9.3.8 | Refer to table in Clause 8.3. This shall not include a *key flag* parameter, whose value type is "***ELEMENT with***  ***Key Flag TRUE****"* |
| >RAN Parameter Value Type | M |  | 9.3.11 | Refer to table in Clause 8.3. The value type shall not  be "***ELEMENT with Key Flag TRUE****"* |

</div>

.

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Range bound** | **Explanation** |
| maxnoofAssociatedEntityFilters | Maximum no. of entity filter definitions for a UE group. The value is  <*255*>. |
| maxnoofAssociatedRANParameters | Maximum no. of RAN parameters supported by RAN Function for a control action. The value is <*65535*>. |

</div>

###### E2SM-RC Control Message Format 4

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| List of RAN parameters |  | *0..<maxnoofAssociate dRANParameters>* |  |  |
| >RAN Parameter ID | M |  | 9.3.8 | Refer to table in clause 8.4 for applicable RAN  Parameters |
| >RAN Parameter Definition | O |  | 9.3.51 | Refer to clause  7.6.9 for usage of this IE. |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Range bound** | **Explanation** |
| maxnoofAssociatedRANParameters | Maximum no. of RAN parameters supported by RAN Function for a specific Control action. The value is <*65535*>. |

</div>

###### E2SM-RC Control Message Format 5

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| null | M |  | NULL | Contains no information |

</div>

#### RIC CONTROL OUTCOME IE

This information element is part of the RIC CONTROL ACKOWLEDGEMENT and RIC CONTROL FAILURE messages and is sent by the E2 Node to the Near-RT RIC and is required for RIC Control Procedure.

Direction: E2 Node ? Near-RT RIC.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| **CHOICE** *Control Outcome Format* | M |  |  |  |
| >E2SM-RC Control Outcome Format 1 |  |  | 9.2.1.8.1 |  |
| >E2SM-RC Control Outcome Format 2 |  |  | 9.2.1.8.2 |  |
| >E2SM-RC Control Outcome Format 3 |  |  | 9.2.1.8.3 |  |

</div>

###### E2SM-RC Control Outcome Format 1

The *E2SM-RC Control Outcome* IE Format 1 supports a sequence of RAN Parameters sent as ID/Value pairs. The meaning of the ID/Value pairs is defined in Clause 7.6.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| Sequence of RAN Parameters |  | *0..<maxnoofRANOu tcomeParameters>* |  |  |
| >RAN Parameter ID | M |  | 9.3.8 |  |
| >RAN Parameter Value | M |  | 9.3.14 |  |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Range bound** | **Explanation** |
| maxnoofRANOutcomeParameters | Maximum no. of RAN Parameters. Value is <*255*> |

</div>

###### E2SM-RC Control Outcome Format 2

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| Sequence of Control Styles for Multiple Outcomes |  | *1..<maxnoofRICStyl es>* |  |  |
| >Indicated Control Style | M |  | 9.3.3 |  |
| >Sequence of Control Actions Outcome |  | *1..<maxnoofMulCtrl Actions>* |  |  |
| >>Control Action ID | M |  | 9.3.6 |  |
| >>Sequence of RAN Parameters |  | *1..<maxnoofRANOu tcomeParameters>* |  |  |
| >>>RAN Parameter ID | M |  | 9.3.8 |  |
| >>>RAN Parameter Value | M |  | 9.3.14 |  |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Range bound** | **Explanation** |
| maxnoofRICStyles | Maximum no. of Control Styles supported by RAN Function. The value is <63>. |
| maxnoofMulCtrlActions | Maximum no. of Control actions supported by RAN Function. The value is <*63*>. |
| maxnoofRANOutcomeParameters | Maximum no. of RAN Parameters. Value is <*255*> |

</div>

###### E2SM-RC Control Outcome Format 3

The *E2SM-RC Control Outcome* IE Format 3 supports a sequence of RAN Parameters sent as ID and RAN parameter value types, where each RAN parameter value type is based on the categorization of the parameters into *ELEMENT with Key Value TRUE*, *ELEMENT with Key Value FALSE*, *STRUCTURE* and *LIST*.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| Sequence of RAN Parameters |  | *0..<maxnoofRANOu tcomeParameters>* |  |  |
| >RAN Parameter ID | M |  | 9.3.8 |  |
| >RAN Parameter Value Type | M |  | 9.3.11 |  |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Range bound** | **Explanation** |
| maxnoofRANOutcomeParameters | Maximum no. of RAN Parameters. Value is <*255*> |

</div>

#### RIC QUERY HEADER IE

This information element is part of the RIC QUERY REQUEST message sent by the Near-RT RIC to an E2 Node and is required for RIC QUERY Procedure.

Direction: Near-RT RIC ? E2 Node.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| **CHOICE** *Query Header Format* | M |  |  |  |
| >E2SM-RC Query Header Format 1 |  |  | 9.2.1.9.1 |  |

</div>

###### E2SM-RC Query Header Format 1

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| RIC Style Type | M |  | 9.3.3 | Indicates Style Types in Clause 7.8.1 |
| Associated E2 Node Info | O |  | 9.3.29 | Used to set optional E2 Node related information.  RAN Parameters in Clause 8.1.2 shall only be used. |
| Associated UE Info | O |  | 9.3.52 | Indicates applicable UE(s) ("Any" UE if not included). |

</div>

#### RIC QUERY DEFINITION IE

This information element is part of the RIC QUERY REQUEST message sent by the Near-RT RIC to an E2 Node and is required for RIC Query Procedure.

Direction: Near-RT RIC ? E2 Node.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| **CHOICE** *Query Definition Format* | M |  |  |  |
| >E2SM-RC Query Definition Format 1 |  |  | 9.2.1.10.1 |  |

</div>

###### E2SM-RC Query Definition Format 1

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| List of RAN parameters |  | *1..<maxnoofAssociate dRANParameters>* |  |  |
| >RAN Parameter ID | M |  | 9.3.8 | Refer to table in Clause 8.6 |
| >RAN Parameter Definition | O |  | 9.3.51 | To define the parameter along with its  constituent parameters, if  any (for a  structure), and itemized members, if any (for a list).  If not included for the RAN  Parameter ID of a STRUCTURE  type or a LIST type, then all the constituent RAN parameters under this RAN Parameter ID are assumed to be supported.  Only the RAN Parameter ID values declared in RAN Function Definition may be  included. |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Range bound** | **Explanation** |
| maxnoofAssociatedRANParameters | Maximum no. of RAN parameters supported by RAN Function for Query Definition. The value is <*65535*>. |

</div>

#### RIC QUERY OUTCOME IE

This information element is part of the RIC QUERY RESPONSE message sent by the Near-RT RIC to an E2 Node and is required for RIC Query Procedure.

Direction: E2 Node ? Near-RT RIC

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| **CHOICE** *Query Outcome Format* | M |  |  |  |
| >E2SM-RC Query Outcome Format 1 |  |  | 9.2.1.11.1 |  |
| >E2SM-RC Query Outcome Format 2 |  |  | 9.2.1.11.2 |  |

</div>

###### E2SM-RC Query Outcome Format 1

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| Sequence of Cell Information |  | *1..<maxnoofCellID>* |  |  |
| >Cell Global ID | M |  | 9.3.36 |  |
| >List of RAN parameters |  | *0..<maxnoofAssociate dRANParameters>* |  |  |
| >> RAN Parameter ID | M |  | 9.3.8 | Refer to table in Clause 8.6.1 |
| >> RAN Parameter Value Type | O |  | 9.3.11 | Refer to table in Clause 8.6.1 |
| >Neighbour Relation Table | O |  | 9.3.38 | Provides information on  neighbours of  serving cell. This IE shall be reported if RAN Parameter ID is set to "2" as  described in Clause 8.6.1. |
| > Serving Cell Config Common | O |  | 9.3.60 | Provides information on common parameters of the serving cell. This IE shall be reported if RAN Parameter ID is set to "5" as described in  Clause 8.2.3. |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Range bound** | **Explanation** |
| maxnoofAssociatedRANParameters | Maximum no. of RAN parameters supported by RAN Function for Query Outcome. The value is <*65535*>. |
| maxnoofCellID | Maximum number of Cell Identifiers supported by Query Outcome Format 1 to be reported. The value is <*65535*>. |

</div>

###### E2SM-RC Query Outcome Format 2

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| Sequence of UE Information |  | *1..<maxnoofUEID>* |  |  |
| >UE ID | M |  | 9.3.10 |  |
| >List of RAN parameters |  | *0..<maxnoofAssociate dRANParameters>* |  |  |
| >> RAN Parameter ID | M |  | 9.3.8 | Refer to table in Clause 8.6.2 |
| >> RAN Parameter Value Type | O |  | 9.3.11 | Refer to table in Clause 8.6.2 |
| >UE Filter ID | O |  | 9.3.53 |  |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Range bound** | **Explanation** |
| maxnoofAssociatedRANParameters | Maximum no. of RAN parameters supported by RAN Function for Query Outcome. The value is <*65535*>. |
| maxnoofUEID | Maximum number of UE Identifiers supported by Query Outcome Format 2 to be reported. The value is <*65535*>. |

</div>

##### *Service Layer Cause*

* + - * 1. *Service Layer Cause IE*

The purpose of the *Service Layer Cause* IE is to indicate the reason for error handling for the RIC Functional procedures and selected global procedures (Error Indication, E2 Setup, RIC Service Update)

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE Type and Reference** | **Semantics Description** |
| Service Layer Cause Group | M |  |  |  |
| >RIC services |  |  |  |  |
| >>RIC Request | M |  | ENUMERATED (  RIC Event Trigger Style Type not supported, RIC Event Trigger Format Type not supported, RAN Parameter ID not supported,  Call Process Type ID not supported,  Call Process Breakpoint ID not supported, RIC Report Style Type not supported,  Supported RIC Event Trigger Style Type no supported, RIC Action Format Type not supported,  RIC Indication Header Format Type not supported, RIC Indication Message Format Type not supported, RIC Insert Style Type not supported,  Insert Indication ID not supported,  RIC Call Process ID Format Type not supported, RIC Control Style Type not supported,  Control Action ID not supported,  RIC Control Header Format Type not supported, RIC Control Message Format Type not supported, RIC Control Outcome Format Type not supported, RIC Policy Style Type not supported,  Policy Action ID not supported,  RIC Query Style Type not supported,  RIC Query Header Format Type not supported, RIC Query Definition Format Type not supported, RIC Query Outcome Format Type not supported,  ...  ) |  |
| >Protocol |  |  |  |  |
| >>Protocol Cause | M |  | ENUMERATED  (Transfer Syntax Error, Abstract Syntax Error (Reject),  Abstract Syntax Error (Ignore and Notify), Message not Compatible with Receiver State, Semantic Error,  Abstract Syntax Error (Falsely Constructed Message), Unspecified, ...) |  |

</div>

The meaning of the different cause values is described in the following table. In general, "not supported" cause values indicate that the related capability is missing. On the other hand, "not available" cause values indicate that the related capability is present, but insufficient resources are available to perform the requested action.

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **RIC Request cause** | **Meaning** |
| RIC Event Trigger Style Type not supported | Event Triggering style is not supported and was not declared in RAN Function Definition |
| RIC Event Trigger Format Type not supported | Event Format Type for requested style type is not supported and was not declared in RAN Function Definition |
| RAN Parameter ID not supported | RAN Parameter ID is not supported and was not declared in RAN Function Definition for use with the requested Event Trigger or RIC Service |
| Call Process Type ID not supported | Call Process Type ID is not supported and was not declared in RAN Function Definition |
| Call Process Breakpoint ID not supported | Call Process Breakpoint ID for requested Call Process Type is not supported and was not declared in RAN Function Definition |
| RIC Report Style Type not supported | RIC Report Style Type is not supported and was not declared in RAN Function Definition |
| Supported RIC Event Trigger Style Type not supported | Supported RIC Event Trigger Style Type for requested service and style type is not supported and was not declared in RAN Function Definition |
| RIC Action Format Type not supported | RIC Action Format Type for requested service and style type is not supported and was not declared in RAN Function Definition |
| RIC Indication Header Format Type not supported | RIC Indication Header type for requested service and style type is not supported and was not declared in RAN Function Definition |
| RIC Indication Message Format Type not supported | RIC Indication Message Format Type for requested service and style type is not supported and was not declared in RAN Function Definition |
| RIC Insert Style Type not supported | RIC Insert Style Type is not supported and was not declared in RAN Function Definition |
| Insert Indication ID not supported | Insert Indication ID for the requested style type is not supported and was not declared in RAN Function Definition |
| RIC Call Process ID Format Type not supported | RIC Call Process ID Format Type for requested style type is not supported and was not declared in RAN Function Definition |
| RIC Control Style Type not supported | RIC Control Style Type is not supported and was not declared in RAN Function Definition |
| Control Action ID not supported | Control Action ID for the requested style type is not supported and was not declared in RAN Function Definition |
| RIC Control Header Format Type not supported | RIC Control Header Format Type for requested style type is not supported and was not declared in RAN Function Definition |
| RIC Control Message Format Type not supported | RIC Control Message Format Type is not supported and was not declared in RAN Function Definition |
| RIC Control Outcome Format Type not supported | RIC Control Outcome Format Type for requested style type is not supported and was not declared in RAN Function Definition |
| RIC Policy Style Type not supported | RIC Policy Style Type is not supported and was not declared in RAN Function Definition |
| Policy Action ID not supported | Policy Action ID for requested style type is not supported and was not declared in RAN Function Definition |
| RIC Query Style Type not supported | RIC Query Style Type is not supported and was not declared in RAN Function Definition |
| RIC Query Header Format Type not supported | RIC Query Header type for requested style type is not supported and was not declared in RAN Function Definition |
| RIC Query Definition Format Type not supported | RIC Query Definition type for requested style type is not supported and was not declared in RAN Function Definition |
| RIC Query Outcome Format Type not supported | RIC Query Outcome type for requested style type is not supported and was not declared in RAN Function Definition |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Protocol cause** | **Meaning** |
| Transfer Syntax Error | The received message included a transfer syntax error. |
| Abstract Syntax Error (Reject) | The received message included an abstract syntax error and the concerning criticality indicated "reject". |
| Abstract Syntax Error (Ignore And Notify) | The received message included an abstract syntax error and the concerning criticality indicated "ignore and notify". |
| Message Not Compatible With Receiver State | The received message was not compatible with the receiver state. |
| Semantic Error | The received message included a semantic error. |
| Abstract Syntax Error (Falsely Constructed Message) | The received message contained IEs or IE groups in wrong order or with too many occurrences. |
| Unspecified | Sent when none of the above cause values applies but still the cause is Protocol related. |

</div>

### Messages for RIC Global Procedures

#### RAN Function Definition IE

This information element is part of the E2 SETUP REQUEST, and RIC SERVICE UPDATE message sent by the E2 Node to the Near-RT RIC and is used to provide all required information for the Near-RT RIC to determine how a given E2 Node has been configured to support a given RAN Function specific E2SM.

Direction: E2 Node ? NEAR-RT RIC.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| RAN Function Name | M |  | 9.3.2 |  |
| RAN Function Definition for EVENT TRIGGER | O |  | 9.2.2.2 |  |
| RAN Function Definition for REPORT | O |  | 9.2.2.3 |  |
| RAN Function Definition for INSERT | O |  | 9.2.2.4 |  |
| RAN Function Definition for CONTROL | O |  | 9.2.2.5 |  |
| RAN Function Definition for POLICY | O |  | 9.2.2.6 |  |
| RAN Function Definition for QUERY | O |  | 9.2.2.7 |  |

</div>

#### RAN Function Definition for EVENT TRIGGER

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| Sequence of EVENT TRIGGER styles |  | *1..*  *<maxnoo fRICStyle*  *s>* |  |  |
| >RIC Event Trigger Style Type | M |  | 9.3.3 |  |
| >RIC Event Trigger Style Name | M |  | 9.3.4 |  |
| >RIC Event Trigger Format Type | M |  | 9.3.5 |  |
| Sequence of RAN Parameters for L2 Variables |  | *0..*  *<maxnoo fAssociat edRANP*  *arameter s>* |  | RAN Parameters defined in Clauses 8.1.1.4 and 8.1.1.8. Only included if L2 variables for Event Trigger Style 4 is supported. |
| >RAN Parameter ID | M |  | 9.3.8 |  |
| >RAN Parameter Name | M |  | 9.3.9 |  |
| >RAN Parameter Definition | O |  | 9.3.51 | To define the parameter along with its constituent parameters, if any (for a structure), and itemized members, if any (for a list). If not included for the RAN Parameter ID of a  STRUCTURE type or a LIST type, then all the constituent RAN parameters under this  RAN Parameter ID are assumed to be supported. |
| Sequence of Call Process Types |  | *0..*  *<maxnoo fCallProc essTypes*  *>* |  | Only included if Event Trigger Style 2 is supported. |
| >Call Process Type ID | M |  | 9.3.15 |  |
| >Call Process Type Name | M |  | 9.3.19 |  |
| >Sequence of Call Process Breakpoints |  | *1..*  *<maxnoo fCallProc essBreak*  *points>* |  |  |
| >>Call Process Breakpoint ID | M |  | 9.3.49 |  |
| >>Call Process Breakpoint Name | M |  | 9.3.50 |  |
| >>Sequence of Associated RAN Parameters |  | *0..*  *<maxnoo fAssociat edRANP*  *arameter s>* |  | RAN Parameters defined in Clause 8.1.2. Only included if Associated E2 Node Info for Event Trigger style 2 is supported |
| >>>RAN Parameter ID | M |  | 9.3.8 |  |
| >>>RAN Parameter Name | M |  | 9.3.9 |  |
| >>>RAN Parameter Definition | O |  | 9.3.51 | To define the parameter along with its constituent parameters, if any (for a structure), and itemized members, if any (for a list). If not included for the RAN Parameter ID of a  STRUCTURE type or a LIST type, then all the constituent RAN parameters under this RAN Parameter ID are  assumed to be supported. |
| Sequence of RAN Parameters for Identifying UEs |  | *0..*  *<maxnoo* |  | RAN Parameters defined in Clause 8.1.3. |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
|  |  | *fAssociat edRANP arameter s>* |  | Only included if Associated UE Info for any of Event Trigger Styles 1, 2, 4, 5 is supported. |
| >RAN Parameter ID | M |  | 9.3.8 |  |
| >RAN Parameter Name | M |  | 9.3.9 |  |
| >RAN Parameter Definition | O |  | 9.3.51 | To define the parameter along with its constituent parameters, if any (for a structure), and itemized members, if any (for a list). If not included for the RAN Parameter ID of a  STRUCTURE type or a LIST type, then all the constituent RAN parameters under this RAN Parameter ID are  assumed to be supported. |
| Sequence of RAN Parameters for Identifying Cells |  | *0..*  *<maxnoo fAssociat edRANP arameter s>* |  | RAN Parameters defined in Clause 8.1.4.  Only included if Associated Cell Info for any of Event Trigger Styles 3, 5 is supported. |
| >RAN Parameter ID | M |  | 9.3.8 |  |
| >RAN Parameter Name | M |  | 9.3.9 |  |
| >RAN Parameter Definition | O |  | 9.3.51 | To define the parameter along with its constituent parameters, if any (for a structure), and itemized members, if any (for a list). If not included for the RAN Parameter ID of a  STRUCTURE type or a LIST type, then all the constituent RAN parameters under this  RAN Parameter ID are assumed to be supported. |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Range bound** | **Explanation** |
| maxnoofRICStyles | Maximum no. of styles supported by RAN Function. The value is  <*63*>. |
| maxnoofAssociatedRANParameters | Maximum no. of RAN parameters supported by RAN Function. The value is <*65535*>. |
| maxnoofCallProcessTypes | Maximum no. of Call Process types supported by RAN Function. The value is <*65535*>. |
| maxnoofCallProcessBreakpoints | Maximum no. of Call Process breakpoints supported by RAN Function. The value is <*65535*>. |

</div>

#### RAN Function Definition for REPORT

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and**  **reference** | **Semantics description** |
| Sequence of REPOT styles |  | *1..*  *<maxnoof RICStyles*  *>* |  |  |
| >RIC Report Style Type | M |  | 9.3.3 |  |
| >RIC Report Style Name | M |  | 9.3.4 |  |
| >Supported RIC Event Trigger Style Type | M |  | 9.3.3 |  |
| >RIC Report Action Format Type | M |  | 9.3.5 | Action Definition type used by Report style |
| >RIC Indication Header Format Type | M |  | 9.3.5 | Indication Header type used by Report style |
| >RIC Indication Message Format Type | M |  | 9.3.5 | Indication Message type  used by Report style |
| >Sequence of RAN Parameters Supported |  | *0..*  *<maxnoof Associate dRANPara*  *meters>* |  | Only included if RAN parameters for corresponding Report style are supported. |
| >>RAN Parameter ID | M |  | 9.3.8 | RAN Parameter IDs for the corresponding Report Style defined in Clause 7.4. |
| >>RAN Parameter Name | M |  | 9.3.9 | RAN Parameter Names for the corresponding Report Style defined in Clause 7.4. |
| >>RAN Parameter Definition | O |  | 9.3.51 | To define the parameter along with its constituent parameters, if any (for a structure), and itemized members, if any (for a list). If not included for the RAN Parameter ID of a  STRUCTURE type or a LIST type, then all the constituent RAN parameters under this  RAN Parameter ID are assumed to be supported. |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Range bound** | **Explanation** |
| maxnoofRICstyles | Maximum no. of styles supported by RAN Function. The value is  <*63*>. |
| maxnoofAssociatedRANParameters | Maximum no. of RAN parameters supported by RAN Function. The value is <*65535*>. |

</div>

#### RAN Function Definition for INSERT

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| Sequence of INSERT styles |  | *1..*  *<maxnoo fRICStyle*  *s>* |  |  |
| >RIC Insert Style Type | M |  | 9.3.3 |  |
| >RIC Insert Style Name | M |  | 9.3.4 |  |
| >Supported RIC Event Trigger Style Type | M |  | 9.3.3 |  |
| >RIC Action Definition Format Type | M |  | 9.3.5 |  |
| >Sequence of Insert Indications |  | *0..*  *<maxnoo fInsertInd*  *ication>* |  |  |
| >>Insert Indication ID | M |  | 9.3.16 | Refer to Clause 7.5. |
| >>Insert Indication Name | M |  | 9.3.17 | Refer to Clause 7.5. |
| >>Sequence of Associated RAN Parameters |  | *0..*  *<maxnoo fAssociat edRANP arameter*  *s>* |  | Only included if RAN parameters for corresponding Insert style and Insert indication ID are supported |
| >>>RAN Parameter ID | M |  | 9.3.8 |  |
| >>>RAN Parameter Name | M |  | 9.3.9 |  |
| >>>RAN Parameter Definition | O |  | 9.3.51 | To define the parameter along with its constituent parameters, if any (for a structure), and itemized members, if any (for a list). If not included for the RAN Parameter ID of a  STRUCTURE type or a LIST type, then all the constituent RAN parameters under this RAN Parameter ID are  assumed to be supported. |
| >RIC Indication Header Format Type | M |  | 9.3.5 |  |
| >RIC Indication Message Format Type | M |  | 9.3.5 |  |
| >RIC Call Process ID Format Type | M |  | 9.3.5 |  |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Range bound** | **Explanation** |
| maxnoofRICstyles | Maximum no. of styles supported by RAN Function. The value is  <*63*>. |
| maxnoofInsertIndication | Maximum no. of Insert indications supported by RAN Function. The value is <*65535*> |
| maxnoofAssociatedRANParameters | Maximum no. of RAN parameters supported by RAN Function. The value is <*65535*>. |

</div>

#### RAN Function Definition for CONTROL

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| Sequence of CONTROL styles |  | *1..*  *<maxnoo fRICStyle*  *s>* |  |  |
| >RIC Control Style Type | M |  | 9.3.3 |  |
| >RIC Control Style Name | M |  | 9.3.4 |  |
| >Sequence of Control Actions |  | *0..*  *<maxnoo fControlA ction>* |  |  |
| >>Control Action ID | M |  | 9.3.6 |  |
| >>Control Action Name | M |  | 9.3.7 |  |
| >>Sequence of Associated RAN Parameters |  | *0..*  *<maxnoo fAssociat edRANP arameter*  *s>* |  | Only included if Control message RAN parameters for corresponding Control style and Control Action ID are supported |
| >>>RAN Parameter ID | M |  | 9.3.8 |  |
| >>>RAN Parameter Name | M |  | 9.3.9 |  |
| >>>RAN Parameter Definition | O |  | 9.3.51 | To define the parameter along with its constituent parameters, if any (for a structure), and itemized members, if any (for a list). If not included for the RAN Parameter ID of a  STRUCTURE type or a LIST type, then all the constituent RAN parameters under this RAN Parameter ID are  assumed to be supported. |
| >>UE group-based Control action supported | O |  | ENUMERAT  ED(true, false,...) | To indicate support of UE group-based control as defined in Clause 7.6.  Default is FALSE. |
| >RIC Control Header Format Type | M |  | 9.3.5 |  |
| >RIC Control Message Format Type | M |  | 9.3.5 |  |
| >RIC Call Process ID Format Type | O |  |  |  |
| >RIC Control Outcome Format Type | M |  | 9.3.5 |  |
| >Sequence of Associated RAN Parameters for Control Outcome |  | *0..<maxn oofRANO utcomeP*  *arameter s>* |  | Only included if Control Outcome RAN parameters for corresponding Control style are supported |
| >>RAN Parameter ID | M |  | 9.3.8 |  |
| >>RAN Parameter Name | M |  | 9.3.9 |  |
| >>RAN Parameter Definition | O |  | 9.3.51 | To define the parameter along with its constituent parameters, if any (for a structure), and itemized members, if any (for a list). If not included for the RAN Parameter ID of a  STRUCTURE type or a LIST type, then all the constituent RAN parameters under this RAN Parameter ID are  assumed to be supported. |
| >List of additional supported Format Types |  | 0..<*maxn*  *oofForma tTypes*> |  | This IE shall be included if  the *UE group-based Control action supported* IE is set to |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
|  |  |  |  | "true" or Control Style uses action specific formats. |
| >>RIC Control Header Format Type | M |  | 9.3.5 |  |
| >>RIC Control Message Format Type | M |  | 9.3.5 |  |
| >>RIC Control Outcome Format Type | O |  | 9.3.5 |  |
| >>Control Action ID | O |  | 9.3.6 | This IE shall be included if Control Style uses action  specific formats |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Range bound** | **Explanation** |
| maxnoofRICstyles | Maximum no. of styles supported by RAN Function. The value is  <*63*>. |
| maxnoofControlAction | Maximum no. of Control actions supported by RAN Function. The value is <*65535*>. |
| maxnoofAssociatedRANParameters | Maximum no. of RAN parameters supported by RAN Function. The value is <*65535*>. |
| maxnoofRANOutcomeParameters | Maximum no. of parameters in RAN Control Outcome supported by RAN Function. The value is <*255*> |
| maxnoofFormatTypes | Maximum no. of formats supported by a CONTROL service style. The value is <*63*> |

</div>

#### RAN Function Definition for POLICY

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| Sequence of POLICY styles |  | *1..*  *<maxnoo fRICStyle*  *s>* |  |  |
| >RIC Policy Style Type | M |  | 9.3.3 |  |
| >RIC Policy Style Name | M |  | 9.3.4 |  |
| >Supported RIC Event Trigger Style Type | M |  | 9.3.3 |  |
| >Sequence of Policy Actions |  | *0..*  *<maxnoo fPolicyAc tion>* |  |  |
| >>Policy Action ID | M |  | 9.3.6 |  |
| >>Policy Action Name | M |  | 9.3.7 |  |
| >>RIC Action Definition Format Type | M |  | 9.3.5 |  |
| >>Sequence of Associated RAN Parameters for Policy Action |  | *0..*  *<maxnoo fAssociat edRANP arameter*  *s>* |  | Only included if RAN parameters for the Policy action of the corresponding Policy style and Policy Action ID are supported |
| >>>RAN Parameter ID | M |  | 9.3.8 |  |
| >>>RAN Parameter Name | M |  | 9.3.9 |  |
| >>>RAN Parameter Definition | O |  | 9.3.51 | To define the parameter along with its constituent parameters, if any (for a structure), and itemized members, if any (for a list). If not included for the RAN Parameter ID of a  STRUCTURE type or a LIST type, then all the constituent RAN parameters under this RAN Parameter ID are  assumed to be supported. |
| >>Sequence of Associated RAN Parameters for Policy Condition |  | *0..*  *<maxnoo fAssociat edRANP arameter*  *s>* |  | Only included if RAN parameters for the Policy condition of the corresponding Policy style and Policy Action ID are  supported |
| >>>RAN Parameter ID | M |  | 9.3.8 |  |
| >>>RAN Parameter Name | M |  | 9.3.9 |  |
| >>>RAN Parameter Definition | O |  | 9.3.51 | To define the parameter along with its constituent parameters, if any (for a structure), and itemized members, if any (for a list). If not included for the RAN Parameter ID of a  STRUCTURE type or a LIST type, then all the constituent RAN parameters under this  RAN Parameter ID are assumed to be supported. |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Range bound** | **Explanation** |
| maxnoofRICstyles | Maximum no. of styles supported by RAN Function. The value is  <*63*>. |
| maxnoofPolicyAction | Maximum no. of Policy actions supported by RAN Function. The value is <*65535*>. |
| maxnoofAssociatedRANParameters | Maximum no. of RAN parameters supported by RAN Function. The value is <*65535*>. |

</div>

#### RAN Function Definition for QUERY

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| Sequence of QUERY styles |  | *1..*  *<maxnoof RICStyles*  *>* |  |  |
| >RIC Query Style Type | M |  | 9.3.3 |  |
| >RIC Query Style Name | M |  | 9.3.4 |  |
| >RIC Query Header Format Type | M |  | 9.3.5 | Header type used by Query style |
| >RIC Query Definition Format Type | M |  | 9.3.5 | Query Definition format type used by Query style |
| >RIC Query Outcome Format Type | M |  | 9.3.5 | Query Outcome format type used by Query style |
| >Sequence of RAN Parameters Supported |  | *0..*  *<maxnoof Associate dRANPara meters>* |  | Only included if RAN parameters for corresponding Query style are supported. |
| >>RAN Parameter ID | M |  | 9.3.8 | RAN Parameter IDs for the corresponding Query Style defined in Clause 7.8. |
| >>RAN Parameter Name | M |  | 9.3.9 | RAN Parameter Names for the corresponding Query Style defined in Clause 7.8. |
| >>RAN Parameter Definition | O |  | 9.3.51 | To define the parameter along with its constituent parameters, if any (for a structure), and itemized members, if any (for a list). If not included for the RAN Parameter ID of a  STRUCTURE type or a LIST type, then all the constituent RAN parameters under this RAN Parameter ID are  assumed to be supported. |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Range bound** | **Explanation** |
| maxnoofRICstyles | Maximum no. of styles supported by RAN Function. The value is  <*63*>. |
| maxnoofAssociatedRANParameters | Maximum no. of RAN parameters supported by RAN Function. The value is <*65535*>. |

</div>

## Information Element definitions

### General

When specifying information elements which are to be represented by bit strings, if not otherwise specifically stated in the semantics description of the concerned IE or elsewhere, the following principle applies with regards to the ordering of bits:

* The first bit (leftmost bit) contains the most significant bit (MSB);
* The last bit (rightmost bit) contains the least significant bit (LSB);
* When importing bit strings from other specifications, the first bit of the bit string contains the first bit of the concerned information.

### RAN Function Name

This IE is defined in [4] clause 6.2.2.1.

### RIC Style Type

This IE is defined in [4] clause 6.2.2.2.

### RIC Style Name

This IE is defined in [4] clause 6.2.2.3.

### RIC Format Type

This IE is defined in [4] clause 6.2.2.4.

### Control Action ID

This IE uniquely identifies an action of a given RIC Control style.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| Control Action ID | M |  | INTEGER (1.. 65535, ...) |  |

</div>

### Control Action Name

This IE defines the name of a given control action.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| Control Action Name | M |  | PrintableString(SIZE(1.. 150, ...)) |  |

</div>

### RAN Parameter ID

This IE uniquely identifies a specific RAN parameter of a given RIC Control style.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| RAN Parameter ID | M |  | INTEGER (1.. 4294967295,  ...) |  |

</div>

### RAN Parameter Name

This IE defines the name of a given RAN parameter.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| RAN Parameter Name | M |  | PrintableString(SIZE(1.. 150, ...)) |  |

</div>

### UE ID

This IE is defined in [4] clause 6.2.2.6.

### RAN Parameter Value Type

This IE specifies the RAN parameters controlled by the RIC. The parameters can be individual elements, or structures containing constituent elements or a list of structures. The parameters and their types are given in Clause 8.4.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| **CHOICE** *RAN Parameter Value Type* | M |  |  | A RAN Parameter can either be an ELEMENT or a STRUCTURE or a LIST. |
| ***>ELEMENT with Key Flag TRUE*** |  |  |  | If the RAN parameter is singular variable  and if it is a key parameter with key flag set to TRUE as in Clause 8. |
| >>RAN Parameter Value | M |  | 9.3.14 | This IE must be filled for both INSERT and CONTROL if the key flag is TRUE so as to reference the proper structure  within the list. |
| ***>ELEMENT with Key Flag FALSE*** |  |  |  | If the RAN parameter is singular variable  and if it is NOT a key parameter (key flag set to FALSE). as in Clause 8. |
| >>RAN Parameter Value | C-ifControl |  | 9.3.14 | This IE must be filled if this structure is part of a RIC Control Request message; else, if it is part of a RIC Indication  message, this IE is optional. |
| ***>STRUCTURE*** |  |  |  | If the RAN parameter is a structure, in turn containing a set of RAN parameters. |
| >>RAN Parameter Structure | M |  | 9.3.12 |  |
| ***>LIST*** |  |  |  | If the RAN parameter is a list containing  individual items, each of which has an index. |
| >>RAN Parameter List | M |  | 9.3.13 |  |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Condition** | **Explanation** |
| ifControl | This IE shall be present if it is part of a RIC Control Request message. Otherwise, it is optional. |

</div>

### RAN Parameter Structure

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| Sequence of RAN Parameters |  | *0..<maxno ofParamet ersinStruct ure>* |  | The size must be at least 1 in the case of CONTROL. |
| >RAN Parameter ID | M |  | 9.3.8 |  |
| >RAN Parameter Value Type | M |  | 9.3.11 | Each parameter in the structure can in turn be an individual ELEMENT or another  STRUCTURE or a LIST |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Range bound** | **Explanation** |
| maxnoofParametersinStructure | Maximum no. of RAN parameters supported in a structure. The value is <*65535*>. |

</div>

### RAN Parameter List

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| List of RAN Parameter Structures |  | *0..<max noofIte msinList*  *>* |  | The size must be at least 1 in the case of CONTROL |
| >RAN Parameter ID | M |  | 9.3.8 |  |
| >RAN Parameter Structure | M |  | 9.3.12 |  |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Range bound** | **Explanation** |
| maxnoofItemsinList | Maximum no. of RAN parameters supported in a structure. The value is <*65535*>. |

</div>

### RAN Parameter Value

This IE defines the target value type for a RAN parameter ELEMENT.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| **CHOICE** *RAN Parameter Value* | M |  |  |  |
| >BOOLEAN |  |  | BOOLEAN |  |
| >INTEGER |  |  | INTEGER |  |
| >REAL |  |  | REAL |  |
| >BIT STRING |  |  | BIT STRING |  |
| >OCTET STRING |  |  | OCTET STRING |  |
| >PrintableString |  |  | PrintableString |  |

</div>

### Call Process Type ID

This IE uniquely identifies a call Process Type for a call process breakpoint event trigger.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| Call Process Type ID | M |  | INTEGER (1.. 65535, ...) |  |

</div>

### Insert Indication ID

This IE uniquely identifies an action of a given RIC Control style.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| Insert Indication ID | M |  | INTEGER (1.. 65535, ...) |  |

</div>

### Insert Indication Name

This IE defines the name of a given control action.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| Insert Indication Name | M |  | PrintableString(SIZE(1.. 150, ...)) |  |

</div>

### RAN Call Process ID

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| Call Process ID |  |  | INTEGER (1..  4294967295, ...) | To be used to match an INSERT Indication request with a following CONTROL action |

</div>

### Call Process Type Name

This IE defines the name of a given call Process Type.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| Call Process Type Name | M |  | PrintableString (SIZE(1..150,  ...)) |  |

</div>

### Policy Action

This IE defines the *Policy Action* IE

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| Policy Action ID | M |  | 9.3.6 | Combined with RIC Style to define Policy type |
| Sequence of RAN Parameters |  | *0..<maxnoofAss ociatedRANPara meters>* |  |  |
| >RAN Parameter ID | M |  | 9.3.8 |  |
| >RAN Parameter Value Type | M |  | 9.3.11 |  |
| RIC Policy decision | O |  | ENUMERATED (accept, reject, ...) | Used to indicate accept or reject a RRM function as Policy Action |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Range bound** | **Explanation** |
| maxnoofAssociatedRANParameters | Maximum no. of RAN Parameter types in action definition supported by RAN Function. Value is <*65535*>. |

</div>

### Event Trigger Condition ID

This IE defines an identifier for event trigger conditions configured for a specific Event Trigger style.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| Event Trigger Condition ID | M |  | INTEGER (1..65535, ...) |  |

</div>

### Event Trigger ID for UE

This IE defines an identifier for a specific UE related condition configured for event triggering.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| Event Trigger ID for UE | M |  | INTEGER (1..65535, ...) |  |

</div>

### Event Trigger ID for UE Event

This IE defines an identifier for a specific UE event configured for event triggering.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| Event Trigger ID for UE Event | M |  | INTEGER (1..65535, ...) |  |

</div>

### Event Trigger ID for Cell

This IE defines an identifier for a specific cell related condition configured for event triggering.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| Event Trigger ID for Cell | M |  | INTEGER (1..65535, ...) |  |

</div>

### Logical OR

This IE indicates a logical ("and" or "or") connection of the current condition to the next condition in a given sequence of conditions.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
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
| Sequence of Associated UE Information |  | *1..<maxnoofUEInf o>* |  |  |
| >Event Trigger UE ID | M |  | 9.3.22 |  |
| >**CHOICE** *UE Type* |  |  |  |  |
| ***>>Individual UE*** |  |  |  |  |
| >>>UE ID | M |  | 9.3.10 |  |
| >>>RAN Parameter Testing for Individual UE | O |  | 9.3.29 | To test a set of RAN Parameter conditions for a given UE.  RAN Parameters defined in Clause 8.1.3 shall be used. |
| ***>>UE Group*** |  |  |  |  |
| >>>RAN Parameter Testing for UE Group | M |  | 9.3.29 | To test a set of RAN Parameter conditions for defining a given UE group RAN Parameters defined in  Clause 8.1.3 shall be used. |
| >Logical OR | O |  | 9.3.25 |  |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Range bound** | **Explanation** |
| maxnoofUEInfo | Maximum number of UE information in a given E2 node for which event trigger can be defined. The value is *<65535>* |

</div>

### Event Trigger Cell Information

This IE defines a set of applicable cells for event triggering.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| Sequence of Associated Cell Information |  | *1..<maxnoofCellIn fo>* |  |  |
| >Event Trigger Cell ID | M |  | 9.3.24 |  |
| >**CHOICE** *Cell Type* | M |  |  |  |
| ***>>Individual Cell*** |  |  |  |  |
| >>>Cell Global ID | M |  | 9.3.36 |  |
| ***>>Cell Group*** |  |  |  |  |
| >>>RAN Parameter Testing for Cell Group | M |  | 9.3.29 | To test a set of RAN Parameter conditions for defining a given Cell group RAN Parameters defined in  Clause 8.1.4 shall be used. |
| >Logical OR | O |  | 9.3.25 |  |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Range bound** | **Explanation** |
| maxnoofCellInfo | Maximum number of cells in a given E2 node for which event trigger can be defined. The value is *<65535>* |

</div>

### Event Trigger UE Event Information

This IE defines a set of UE events for event triggering.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| Sequence of UE Event for Event Triggering |  | *1..<maxnoofUEev entInfo>* |  |  |
| >UE Event ID | M |  | 9.3.23 | UE Events defined in Clause 8.1.5 shall be used. |
| >Logical OR | O |  | 9.3.25 |  |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Range bound** | **Explanation** |
| maxnoofUEeventInfo | Maximum number of UE Event information in a given E2 node for which event trigger can be defined. The value is *<65535>* |

</div>

### RAN Parameter Conditional Criteria Definition

This IE defines the generic test conditions based on RAN parameters.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| Sequence of RAN Parameter Testing |  | *1..<maxnoofRANp aramTest>* |  |  |
| >RAN Parameter Testing | M |  | 9.3.30 |  |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Range bound** | **Explanation** |
| maxnoofRANparamTest | Maximum no. of RAN Parameter Testing. Value is <*255*> |

</div>

### RAN Parameter Test

This IE defines a set of test conditions for RAN parameters nested under a given RAN parameter through recursions. Only "ELEMENT" type of RAN parameter with Key Flag set to "False" is tested.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| RAN Parameter ID | M |  | 9.3.9 |  |
| **CHOICE** *RAN Parameter Type* | M |  |  | A RAN Parameter can either be an ELEMENT or a STRUCTURE  or a LIST.  An ELEMENT type RAN Parameter is with Key Flag set to  either "True" or "False". |
| ***>LIST*** |  |  |  |  |
| >>List of RAN Parameter Structures |  | *1*..*<maxno ofItemsinL ist>* |  |  |
| >>>RAN Parameter Testing | M |  | 9.3.30 |  |
| ***>STRUCTURE*** |  |  |  |  |
| >>Sequence of RAN Parameters |  | *1..<maxno ofParamet ersinStruct ure>* |  |  |
| >>>RAN Parameter Testing | M |  | 9.3.30 |  |
| ***>ELEMENT with Key Flag True*** |  |  |  |  |
| >>RAN Parameter Value | M |  | 9.3.14 |  |
| ***>ELEMENT with Key Flag False*** |  |  |  |  |
| >>RAN Parameter Test Condition | M |  | 9.3.31 |  |
| >>RAN Parameter Value | O |  | 9.3.14 |  |
| >>Logical OR | O |  | 9.3.25 |  |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Range bound** | **Explanation** |
| maxnoofItemsinList | Maximum no. of RAN parameters supported in a structure. The value is <65535>. |
| maxnoofParametersinStructure | Maximum no. of RAN parameters supported in a structure. The value is <65535>. |

</div>

### RAN Parameter Test Condition

This IE compares the particular value of a given RAN parameter with the target value.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| **CHOICE** *RAN Parameter Test Condition* |  |  |  |  |
| >Comparison | M |  | ENUMERATED (equal,  difference, greaterthan, lessthan, contains, starts with,  ...) | Applies only when RAN Parameter Value is present in  9.3.30. |
| >Presence | M |  | ENUMERATED (present, configured, rollover, non-zero,  ..., value-change) | Applies only when RAN Parameter  Value is not present in 9.3.30. |

</div>

For the choice type of "Comparison", the test condition is Value (*RAN Parameter ID*) (*RAN Parameter Test Condition*) (*RAN Parameter Value*).

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **RAN Parameter Test condition** | **Test condition** |
| Equal | Value (RAN Parameter ID) = (RAN Parameter Value) |
| Difference | Value (RAN Parameter ID) <> (RAN Parameter Value) |
| Greaterthan | Value (RAN Parameter ID) => (RAN Parameter Value) |
| lessthan | Value (RAN Parameter ID) < (RAN Parameter Value) |
| contains | Value (RAN Parameter ID) contains (RAN Parameter Value) |
| Starts with | Value (RAN Parameter ID) has the same initial part as (RAN Parameter Value) |

</div>

For the choice type of "Presence", the test condition is applied to Value (*RAN Parameter ID*)

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **RAN Parameter Test condition** | **Test condition** |
| present | Value (RAN Parameter ID) is defined (i.e. memory allocated) |
| configured | Value (RAN Parameter ID) has been set (i.e. not NULL) |
| rollover | Value (RAN Parameter ID) was max defined value and now 0 |
| non-zero | Value (RAN Parameter ID) <> 0 |
| Length (Value (RAN Parameter ID)) > 0 |

</div>

### Network Interface Type

This IE is defined in [4] clause 6.2.2.10.

### Network Interface Identifier

This IE is defined in [4] clause 6.2.2.11.

### Network Interface Message ID

This IE is defined in [4] clause 6.2.2.12.

### RRC Message ID

This IE is defined in [4] clause 6.2.2.13.

### Cell Global ID

This IE is defined in [4] clause 6.2.2.5.

### RRC State

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| RRC State | M |  | ENUMERATED  (RRC\_Connected, RRC\_Inactive,  RRC\_Idle, Any, ...) | Value 'any' indicates RRC state shall be any of the values in  the enumeration. |

</div>

### Neighbour Relation Information

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| Serving Cell PCI | M |  | 9.3.39 |  |
| Serving Cell ARFCN | M |  | 9.3.40 | DL Frequency Info for FDD Mode. |
| Neighbour Cell List |  | *1..<maxnoofNeighbourCell>* |  |  |
| >**CHOICE** *RAN Type* | M |  |  |  |
| ***>>NR*** | M |  |  |  |
| >>>NR CGI | M |  | 9.3.41 |  |
| >>>NR PCI | M |  | 9.3.42 |  |
| >>>5GS TAC | M |  | 9.3.43 |  |
| >>>NR Mode Info | M |  | ENUMERATED (fdd,  tdd, ...) |  |
| >>>NR Frequency Info | M |  | 9.3.44 | DL Frequency Info for FDD Mode.  NR Frequency Info IE in TS 38.473 9.3.1.17 |
| >>>Xn X2 Established | M |  | ENUMERATED  (true, false, ...) | Value "true" shall indicate that Xn or X2 Interface Setup with  the neighbour is successful. |
| >>>HO Validated | M |  | ENUMERATED  (true, false, ...) | Value "true" if at least one successful HO is executed with the  neighbour. |
| >>>Version | M |  | INTEGER (1..65535, ...) | For every neighbour information, the value is incremented by 1. When there is a change in the existing neighbour information, a new incremented version number is used. The  deleted neighbours are not sent. |
| ***>>E-UTRA*** | M |  |  |  |
| >>>E-UTRA CGI | M |  | 9.3.45 |  |
| >>>E-UTRA PCI | M |  | 9.3.46 |  |
| >>>E-UTRA ARFCN | M |  | 9.3.47 |  |
| >>>E-UTRA TAC | M |  | 9.3.48 |  |
| >>>Xn X2 Established | M |  | ENUMERATED  (true, false, ...) | Value "true" shall indicate that Xn or X2 Interface Setup with the neighbour is  successful. |
| >>>HO Validated | M |  | ENUMERATED  (true, false, ...) | Value "true" if at least one successful HO is executed with this  neighbour. |
| >>>Version | M |  | INTEGER (1..65535,  ...) | For every neighbour information, the value is incremented by 1. When there is a change in the existing neighbour information, a new incremented version number is used. The  deleted neighbours are not sent. |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Range bound** | **Explanation** |
| maxnoofNeighbourCell | Maximum no. of Neighbour Cell information per Serving cell. The value is <65535>. |

</div>

### Serving Cell PCI

This IE is defined in [4] clause 6.2.2.14.

### Serving Cell ARFCN

This IE is defined in [4] clause 6.2.2.15.

### NR CGI

This IE is defined in [4] clause 6.2.3.7.

### NR PCI

This IE is defined in [4] clause 6.2.3.29.

### NR TAC

This IE is defined in [4] clause 6.2.3.31.

### NR Frequency Info

This IE is defined in [4] clause 6.2.3.36.

### E-UTRA CGI

This IE is defined in [4] clause 6.2.3.11.

### E-UTRA PCI

This IE is defined in [4] clause 6.2.3.32.

### E-UTRA TAC

This IE is defined in [4] clause 6.2.3.34.

### E-UTRA ARFCN

This IE is defined in [4] clause 6.2.3.33.

### Call Process Breakpoint ID

This IE uniquely identifies a call Process breakpoint for a given call process type.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| Call Process Breakpoint ID | M |  | INTEGER (1.. 65535, ...) |  |

</div>

### Call Process Breakpoint Name

This IE defines the name of a given call Process breakpoint.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| Call Process Breakpoint Name | M |  | PrintableString (SIZE(1..150,  ...)) |  |

</div>

### RAN Parameter Definition

This IE specifies the definition of a RAN parameter that can be controlled by the RIC when the RAN parameter is of a STRUCTURE type or a LIST type. The parameters and their types are given in Clause 8.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| **CHOICE** *RAN Parameter Type* | M |  |  | A RAN Parameter can either be a LIST or a STRUCTURE. |
| ***>LIST*** |  |  |  |  |
| >>List of RAN Parameter |  | *1..<max noofIte msinList*  *>* |  |  |
| >>>RAN Parameter ID | M |  | 9.3.8 |  |
| >>>RAN Parameter Name | M |  | 9.3.9 | This IE shall be ignored when included in a RIC Functional Procedure message. |
| >>>RAN Parameter Definition | O |  | 9.3.51 | If not included for the RAN Parameter ID of a STRUCTURE type or a LIST type, then all the itemized RAN parameters under this RAN Parameter ID are assumed to be supported.  Shall not be included If the RAN Parameter ID is of an ELEMENT type. |
| ***>STRUCTURE*** |  |  |  |  |
| >>Sequence of RAN Parameters |  | *1..<max noofPar ameters inStruct*  *ure>* |  |  |
| >>>RAN Parameter ID | M |  | 9.3.8 |  |
| >>>RAN Parameter Name | M |  | 9.3.9 | This IE shall be ignored when included in a RIC Functional Procedure message. |
| >>>RAN Parameter Definition | O |  | 9.3.51 | If not included for the RAN Parameter ID of a STRUCTURE type or a LIST type, then all the itemized RAN parameters under this RAN Parameter ID are assumed to be supported.  Shall not be included If the RAN Parameter ID is of an ELEMENT type. |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Range bound** | **Explanation** |
| maxnoofItemsinList | Maximum no. of RAN parameters supported in a list. The value is  <*65535*>. |
| maxnoofParametersinStructure | Maximum no. of RAN parameters supported in a structure. The value is <*65535*>. |

</div>

### Associated UE Information

This IE defines a set of applicable UEs for Query Service.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| Sequence of Associated UE Information |  | *1..<maxnoofUEInf o>* |  |  |
| >UE Filter ID | M |  | 9.3.53 |  |
| >**CHOICE** *UE Type* |  |  |  |  |
| ***>>Individual UE*** |  |  |  |  |
| >>>UE ID | M |  | 9.3.10 |  |
| >>>RAN Parameter Testing for Individual UE | O |  | 9.3.29 | To test a set of RAN Parameter conditions for a given UE.  RAN Parameters defined in Clause 8.1.3 shall be used. |
| ***>>UE Group*** |  |  |  |  |
| >>>RAN Parameter Testing for UE Group | M |  | 9.3.29 | To test a set of RAN Parameter conditions for defining a given UE group  RAN Parameters defined in Clause 8.1.3 shall be used. |
| ***>>UE Query*** |  |  |  |  |
| >>>Partial UE ID | M |  | 9.3.57 |  |
| >>>RAN Parameter Testing | O |  | 9.3.29 | To test a set of RAN Parameter conditions for a UE.  RAN Parameters defined in Clause 8.1.3 shall be used. |
| >Logical OR | O |  | 9.3.25 |  |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Range bound** | **Explanation** |
| maxnoofUEInfo | Maximum number of UE information in a given E2 node for UE filter conditions. The value is *<65535>* |

</div>

### UE Filter ID

This IE defines an identifier for UE Filter Conditions.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| UE Filter ID | M |  | INTEGER (1..65535, ...) |  |

</div>

### UE Group ID

This IE defines an identifier to uniquely identify a UE group.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| UE group ID | M |  | INTEGER (1..65535, ...) |  |

</div>

### Entity Filter ID

This IE defines an identifier to uniquely identify an entity filter that defines the set of entities across the UEs in a UE group.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| Entity Filter ID | M |  | INTEGER (1..255, ...) |  |

</div>

### UE Group Definition

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| List of identifiers to define the UE group |  | ***1*** |  |  |
| >Identifier Item IEs |  | ***1..<maxGroupDefin***  ***itionIdentifierParam eters>*** |  |  |
| >>RAN Parameter ID | M |  | 9.3.8 | Only RAN Parameters from Clause 8.1.3 shall  be used |
| >>RAN Parameter Value Type | M |  | 9.3.11 |  |
| >>Logical OR | O |  | ENUMERATED  (true, ...) | Default is FALSE |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Range bound** | **Explanation** |
| maxGroupDefinitionIdentifierParame ters | Maximum no. of RAN parameters used to determine a logical grouping of UEs. The value is <*255*>. |

</div>

### Partial UE ID

This IE is defined in [4] clause 6.2.2.18.

### Policy Condition ID

This IE defines an identifier for Policy Condition ID.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| Policy Condition ID | M |  | INTEGER (0..65535) |  |

</div>

### PLMN Identity

This IE is defined in [4] clause 6.2.3.1.

### Serving Cell Configuration Common

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| SSB Positions in Burst | M |  | OCTET STRING | *ssb-PositionsInBurst* IE in TS 38.331 [22]  Clause 6.3.2 |
| SSB Periodicity | M |  | ENUMERATED  {ms5, ms10, ms20, ms40, ms80, ms160, ...} | *ssb- periodicityServingCell* IE in TS 38.331 [22]  Clause 6.3.2 |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| SSB Subcarrier Spacing | M |  | ENUMERATED  {kHz15, kHz30, kHz60, kHz120, kHz240, kHz480-  v1700, kHz960- v1700, ...} | *ssbSubcarrierSpacing*  IE in TS 38.331 [22]  Clause 6.3.2 |

</div>

## Information Element Abstract Syntax (with ASN.1)

### General

E2SM-RC ASN.1 definition conforms to ITU-T Rec. X.680 [5] and ITU-T Rec. X.681 [6].

Sub clause 9.4.2 presents the Abstract Syntax of the E2SM information elements to be carried within the E2AP [3] protocol messages with ASN.1. In case there is contradiction between the ASN.1 definition in this sub clause and the tabular format in sub clause 9.2 and 9.3, the ASN.1 shall take precedence, except for the definition of conditions for the presence of conditional elements, in which the tabular format shall take precedence.

If an E2SM information element carried as an OCTET STRING in an E2AP [3] message that is not constructed as defined above is received, this shall be considered as Abstract Syntax Error, and the message shall be handled as defined for Abstract Syntax Error in clause 9.

### Information Element Definitions

-- ASN1START

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

-- E2SM-RC Information Element Definitions

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

E2SM-RC-IEs {

iso(1) identified-organization(3) dod(6) internet(1) private(4) enterprise(1) oran(53148) e2(1) version1(1) e2sm(2) e2sm-RC-IEs (3)}

DEFINITIONS AUTOMATIC TAGS ::= BEGIN

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

-- E2SM Common IEs

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

IMPORTS

CGI,

E-UTRA-ARFCN, EUTRA-CGI,

E-UTRA-PCI, E-UTRA-TAC, FiveGS-TAC,

InterfaceIdentifier, InterfaceType, Interface-MessageID, NRFrequencyInfo,

NR-CGI, NR-PCI,

PartialUEID, RANfunction-Name, RIC-Format-Type, RIC-Style-Name, RIC-Style-Type, RRC-MessageID, ServingCell-ARFCN, ServingCell-PCI, UEID

FROM E2SM-COMMON-IEs;

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

-- CONSTANTS

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| maxnoofMessages | INTEGER | ::= | 65535 |
| maxnoofE2InfoChanges | INTEGER | ::= | 65535 |
| maxnoofUEInfoChanges | INTEGER | ::= | 65535 |
| maxnoofRRCstate | INTEGER | ::= | 8 |
| maxnoofParametersToReport | INTEGER | ::= | 65535 |
| maxnoofPolicyConditions | INTEGER | ::= | 65535 |
| maxnoofAssociatedRANParameters | INTEGER | ::= | 65535 |
| maxnoofUEID | INTEGER | ::= | 65535 |
| maxnoofCellID | INTEGER | ::= | 65535 |
| maxnoofRANOutcomeParameters | INTEGER | ::= | 255 |
| maxnoofParametersinStructure | INTEGER | ::= | 65535 |
| maxnoofItemsinList | INTEGER | ::= | 65535 |
| maxnoofUEInfo | INTEGER | ::= | 65535 |
| maxnoofCellInfo | INTEGER | ::= | 65535 |
| maxnoofUEeventInfo | INTEGER | ::= | 65535 |
| maxnoofRANparamTest | INTEGER | ::= | 255 |
| maxnoofNeighbourCell | INTEGER | ::= | 65535 |
| maxnoofRICStyles | INTEGER | ::= | 63 |
| maxnoofCallProcessTypes | INTEGER | ::= | 65535 |
| maxnoofCallProcessBreakpoints | INTEGER | ::= | 65535 |
| maxnoofInsertIndication | INTEGER | ::= | 65535 |
| maxnoofControlAction | INTEGER | ::= | 65535 |
| maxnoofPolicyAction | INTEGER | ::= | 65535 |
| maxnoofInsertIndicationActions | INTEGER | ::= | 63 |
| maxnoofMulCtrlActions | INTEGER | ::= | 63 |
| maxGroupDefinitionIdentifierParameters | INTEGER | ::= | 255 |
| maxnoofAssociatedEntityFilters | INTEGER | ::= | 255 |
| maxnoofFormatTypes | INTEGER | ::= | 63 |

</div>

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

-- IEs

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\* LogicalOR ::= ENUMERATED {true, false, ...}

NeighbourCell-List ::= SEQUENCE (SIZE(1..maxnoofNeighbourCell)) OF NeighbourCell-Item

NeighbourCell-Item ::= CHOICE {

ranType-Choice-NR NeighbourCell-Item-Choice-NR,

ranType-Choice-EUTRA NeighbourCell-Item-Choice-E-UTRA,

...

}

NeighbourCell-Item-Choice-NR ::= SEQUENCE {

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
|  | nR-CGI nR-PCI  fiveGS-TAC | NR-CGI, NR-PCI,  FiveGS-TAC, |
| } | nR-mode-info nR-FreqInfo  x2-Xn-established hO-validated version  ... | ENUMERATED {fdd, tdd, ...},  NRFrequencyInfo,  ENUMERATED {true, false, ...}, ENUMERATED {true, false, ...}, INTEGER (1..65535, ...), |
| NeighbourCell-Item-Choice-E-UTRA ::= SEQUENCE { | | |
| } | eUTRA-CGI eUTRA-PCI eUTRA-ARFCN eUTRA-TAC  x2-Xn-established hO-validated version  ... | EUTRA-CGI, E-UTRA-PCI,  E-UTRA-ARFCN, E-UTRA-TAC,  ENUMERATED {true, false, ...}, ENUMERATED {true, false, ...}, INTEGER (1..65535, ...), |

</div>

NeighbourRelation-Info ::= SEQUENCE {

servingCellPCI ServingCell-PCI,

servingCellARFCN ServingCell-ARFCN,

neighbourCell-List NeighbourCell-List,

...

}

RRC-State ::= ENUMERATED {rrc-connected, rrc-inactive, rrc-idle, any, ...}

-- Event Trigger related IEs

EventTrigger-Cell-Info ::= SEQUENCE {

cellInfo-List SEQUENCE (SIZE(1..maxnoofCellInfo)) OF EventTrigger-Cell-Info- Item,

...

}

EventTrigger-Cell-Info-Item ::= SEQUENCE {

eventTriggerCellID RIC-EventTrigger-Cell-ID,

cellType CHOICE {

cellType-Choice-Individual EventTrigger-Cell-Info-Item-Choice-Individual, cellType-Choice-Group EventTrigger-Cell-Info-Item-Choice-Group,

...

},

logicalOR LogicalOR OPTIONAL,

...

}

EventTrigger-Cell-Info-Item-Choice-Individual ::= SEQUENCE { cellGlobalID CGI,

...

}

EventTrigger-Cell-Info-Item-Choice-Group ::= SEQUENCE { ranParameterTesting RANParameter-Testing,

...

}

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

ranParameterTesting RANParameter-Testing OPTIONAL,

...

}

EventTrigger-UE-Info-Item-Choice-Group ::= SEQUENCE { ranParameterTesting RANParameter-Testing,

...

}

EventTrigger-UEevent-Info ::= SEQUENCE {

ueEvent-List SEQUENCE (SIZE(1..maxnoofUEeventInfo)) OF EventTrigger-UEevent- Info-Item,

...

}

EventTrigger-UEevent-Info-Item ::= SEQUENCE {

ueEventID RIC-EventTrigger-UEevent-ID,

logicalOR LogicalOR OPTIONAL,

...

}

-- RAN Parameter related IEs

RANParameter-ID ::= INTEGER (1..4294967295, ...)

RANParameter-Name ::= PrintableString (SIZE(1..150, ...)) RANParameter-Definition ::= SEQUENCE {

ranParameter-Definition-Choice RANParameter-Definition-Choice,

...

}

RANParameter-Definition-Choice ::= CHOICE {

choiceLIST RANParameter-Definition-Choice-LIST,

choiceSTRUCTURE RANParameter-Definition-Choice-STRUCTURE,

...

}

RANParameter-Definition-Choice-LIST ::= SEQUENCE {

ranParameter-List SEQUENCE (SIZE(1..maxnoofItemsinList)) OF RANParameter- Definition-Choice-LIST-Item,

...

}

RANParameter-Definition-Choice-LIST-Item ::= SEQUENCE { ranParameter-ID RANParameter-ID,

ranParameter-name RANParameter-Name,

ranParameter-Definition RANParameter-Definition OPTIONAL,

...

}

RANParameter-Definition-Choice-STRUCTURE ::= SEQUENCE {

ranParameter-STRUCTURE SEQUENCE (SIZE(1..maxnoofParametersinStructure)) OF RANParameter-Definition-Choice-STRUCTURE-Item,

...

}

RANParameter-Definition-Choice-STRUCTURE-Item ::= SEQUENCE { ranParameter-ID RANParameter-ID,

ranParameter-name RANParameter-Name,

ranParameter-Definition RANParameter-Definition OPTIONAL,

...

}

RANParameter-Value ::= CHOICE {

valueBoolean BOOLEAN,

valueInt INTEGER,

valueReal REAL,

valueBitS BIT STRING,

valueOctS OCTET STRING,

valuePrintableString PrintableString,

...

}

RANParameter-ValueType ::= CHOICE {

ranP-Choice-ElementTrue RANParameter-ValueType-Choice-ElementTrue, ranP-Choice-ElementFalse RANParameter-ValueType-Choice-ElementFalse, ranP-Choice-Structure RANParameter-ValueType-Choice-Structure, ranP-Choice-List RANParameter-ValueType-Choice-List,

...

}

RANParameter-ValueType-Choice-ElementTrue ::= SEQUENCE { ranParameter-value RANParameter-Value,

...

}

RANParameter-ValueType-Choice-ElementFalse ::= SEQUENCE { ranParameter-value RANParameter-Value OPTIONAL,

-- C-ifControl: This IE shall be present if it is part of a RIC Control Request message. Otherwise it is optional.

...

}

RANParameter-ValueType-Choice-Structure ::= SEQUENCE { ranParameter-Structure RANParameter-STRUCTURE,

...

}

RANParameter-ValueType-Choice-List ::= SEQUENCE { ranParameter-List RANParameter-LIST,

...

}

RANParameter-STRUCTURE ::= SEQUENCE {

sequence-of-ranParameters SEQUENCE (SIZE(1..maxnoofParametersinStructure)) OF RANParameter-STRUCTURE-Item OPTIONAL,

...

}

RANParameter-STRUCTURE-Item ::= SEQUENCE {

ranParameter-ID RANParameter-ID,

ranParameter-valueType RANParameter-ValueType,

...

}

RANParameter-LIST ::= SEQUENCE {

list-of-ranParameter SEQUENCE (SIZE(1..maxnoofItemsinList)) OF RANParameter- STRUCTURE,

...

}

RANParameter-Testing ::= SEQUENCE (SIZE(1..maxnoofRANparamTest)) OF RANParameter-Testing-Item

RANParameter-TestingCondition ::= CHOICE {

ranP-Choice-comparison ENUMERATED {equal, difference, greaterthan, lessthan, contains, starts-with, ...},

ranP-Choice-presence ENUMERATED {present, configured, rollover, non-zero, ..., value-change},

...

}

RANParameter-Testing-Item ::= SEQUENCE {

ranParameter-ID RANParameter-ID,

ranParameter-Type CHOICE {

ranP-Choice-List RANParameter-Testing-Item-Choice-List,

ranP-Choice-Structure RANParameter-Testing-Item-Choice-Structure, ranP-Choice-ElementTrue RANParameter-Testing-Item-Choice-ElementTrue, ranP-Choice-ElementFalse RANParameter-Testing-Item-Choice-ElementFalse,

...

},

...

}

RANParameter-Testing-Item-Choice-List ::= SEQUENCE {

ranParameter-List RANParameter-Testing-LIST,

...

}

RANParameter-Testing-Item-Choice-Structure ::= SEQUENCE {

ranParameter-Structure RANParameter-Testing-STRUCTURE,

...

}

RANParameter-Testing-Item-Choice-ElementTrue ::= SEQUENCE { ranParameter-value RANParameter-Value,

...

}

RANParameter-Testing-Item-Choice-ElementFalse ::= SEQUENCE { ranParameter-TestCondition RANParameter-TestingCondition,

ranParameter-Value RANParameter-Value OPTIONAL,

logicalOR LogicalOR OPTIONAL,

...

}

RANParameter-Testing-LIST ::= SEQUENCE (SIZE(1..maxnoofItemsinList)) OF RANParameter-Testing-Item

RANParameter-Testing-STRUCTURE ::= SEQUENCE (SIZE(1..maxnoofParametersinStructure)) OF RANParameter- Testing-Item

UE-Group-Definition ::= SEQUENCE {

ueGroupDefinitionIdentifier-LIST SEQUENCE (SIZE(1..maxGroupDefinitionIdentifierParameters)) OF UEGroupDefinitionIdentifier-Item,

...

}

UEGroupDefinitionIdentifier-Item ::= SEQUENCE { ranParameter-ID RANParameter-ID,

ranParameter-valueType RANParameter-ValueType,

logicalOR LogicalOR OPTIONAL,

...

}

-- RIC Service related IEs

RAN-CallProcess-ID ::= INTEGER (1..4294967295, ...) RIC-CallProcessType-ID ::= INTEGER (1..65535, ...)

RIC-CallProcessType-Name ::= PrintableString (SIZE(1..150, ...)) RIC-CallProcessBreakpoint-ID ::= INTEGER (1..65535, ...)

RIC-CallProcessBreakpoint-Name ::= PrintableString (SIZE(1..150, ...)) RIC-ControlAction-ID ::= INTEGER (1..65535, ...)

RIC-ControlAction-Name ::= PrintableString (SIZE(1..150, ...)) RIC-EventTriggerCondition-ID ::= INTEGER (1..65535, ...)

RIC-EventTrigger-UE-ID ::= INTEGER (1..65535, ...)

RIC-EventTrigger-UEevent-ID ::= INTEGER (1..65535, ...) RIC-EventTrigger-Cell-ID ::= INTEGER (1..65535, ...)

RIC-InsertIndication-ID ::= INTEGER (1..65535, ...)

RIC-InsertIndication-Name ::= PrintableString (SIZE(1..150, ...)) UE-Group-ID ::= INTEGER (1..65535, ...)

EntityFilter-ID ::= INTEGER (1..255, ...)

Ric-PolicyConditionID ::= INTEGER (0.. 65535)

RIC-PolicyAction ::= SEQUENCE {

ric-PolicyAction-ID RIC-ControlAction-ID,

ranParameters-List SEQUENCE (SIZE(1..maxnoofAssociatedRANParameters)) OF RIC- PolicyAction-RANParameter-Item OPTIONAL,

...,

ric-PolicyDecision ENUMERATED {accept, reject, ...} OPTIONAL

}

RIC-PolicyAction-RANParameter-Item ::= SEQUENCE { ranParameter-ID RANParameter-ID,

ranParameter-valueType RANParameter-ValueType,

...

}

UE-Filter-ID ::= INTEGER (1..65535, ...)

Associated-UE-Info ::= SEQUENCE {

associatedUEInfo-List SEQUENCE (SIZE(1..maxnoofUEInfo)) OF Associated-UE-Info- Item,

...

}

Associated-UE-Info-Item ::= SEQUENCE {

ueFilterID UE-Filter-ID,

ueType CHOICE {

ueType-Choice-Individual EventTrigger-UE-Info-Item-Choice-Individual, ueType-Choice-Group EventTrigger-UE-Info-Item-Choice-Group,

...,

ueQuery UEQuery

},

logicalOR LogicalOR OPTIONAL,

...

}

UEQuery ::= SEQUENCE {

partialUEID PartialUEID,

ranParameterTesting RANParameter-Testing OPTIONAL,

...

}

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

-- E2SM-RC Service Model IEs

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

-- Event Trigger OCTET STRING contents

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

E2SM-RC-EventTrigger ::= SEQUENCE {

ric-eventTrigger-formats CHOICE {

eventTrigger-Format1 E2SM-RC-EventTrigger-Format1,

eventTrigger-Format2 E2SM-RC-EventTrigger-Format2,

eventTrigger-Format3 E2SM-RC-EventTrigger-Format3,

eventTrigger-Format4 E2SM-RC-EventTrigger-Format4,

eventTrigger-Format5 NULL,

...

},

...

}

E2SM-RC-EventTrigger-Format1 ::= SEQUENCE {

message-List SEQUENCE (SIZE(1..maxnoofMessages)) OF E2SM-RC- EventTrigger-Format1-Item,

globalAssociatedUEInfo EventTrigger-UE-Info OPTIONAL,

...

}

E2SM-RC-EventTrigger-Format1-Item ::= SEQUENCE {

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| ric-eventTriggerCondition-ID  messageType | RIC-EventTriggerCondition-ID,  MessageType-Choice, |  |
| messageDirection | ENUMERATED {incoming, outgoing, ...} | OPTIONAL, |
| associatedUEInfo | EventTrigger-UE-Info | OPTIONAL, |
| associatedUEEvent | EventTrigger-UEevent-Info | OPTIONAL, |
| logicalOR | LogicalOR | OPTIONAL, |
| ... |  |  |
| } |  |  |

</div>

MessageType-Choice ::= CHOICE {

messageType-Choice-NI MessageType-Choice-NI,

messageType-Choice-RRC MessageType-Choice-RRC,

...

}

MessageType-Choice-NI ::= SEQUENCE {

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| nI-Type | InterfaceType, |  |
| nI-Identifier | InterfaceIdentifier | OPTIONAL, |
| nI-Message | Interface-MessageID | OPTIONAL, |
| ... |  |  |

</div>

}

MessageType-Choice-RRC ::= SEQUENCE {

rRC-Message RRC-MessageID,

...

}

E2SM-RC-EventTrigger-Format2 ::= SEQUENCE {

ric-callProcessType-ID RIC-CallProcessType-ID,

ric-callProcessBreakpoint-ID RIC-CallProcessBreakpoint-ID, associatedE2NodeInfo RANParameter-Testing OPTIONAL,

associatedUEInfo EventTrigger-UE-Info OPTIONAL,

...

}

E2SM-RC-EventTrigger-Format3 ::= SEQUENCE {

e2NodeInfoChange-List SEQUENCE (SIZE(1..maxnoofE2InfoChanges)) OF E2SM-RC- EventTrigger-Format3-Item,

...

}

E2SM-RC-EventTrigger-Format3-Item ::= SEQUENCE {

ric-eventTriggerCondition-ID RIC-EventTriggerCondition-ID, e2NodeInfoChange-ID INTEGER (1..512, ...),

associatedCellInfo EventTrigger-Cell-Info OPTIONAL,

logicalOR LogicalOR OPTIONAL,

...

}

E2SM-RC-EventTrigger-Format4 ::= SEQUENCE {

uEInfoChange-List SEQUENCE (SIZE(1..maxnoofUEInfoChanges)) OF E2SM-RC- EventTrigger-Format4-Item,

...

}

E2SM-RC-EventTrigger-Format4-Item ::= SEQUENCE {

ric-eventTriggerCondition-ID RIC-EventTriggerCondition-ID, triggerType TriggerType-Choice,

associatedUEInfo EventTrigger-UE-Info OPTIONAL,

logicalOR LogicalOR OPTIONAL,

...

}

TriggerType-Choice ::= CHOICE {

triggerType-Choice-RRCstate TriggerType-Choice-RRCstate, triggerType-Choice-UEID TriggerType-Choice-UEID, triggerType-Choice-L2state TriggerType-Choice-L2state,

...,

triggerType-Choice-UEcontext TriggerType-Choice-UEcontext, triggerType-Choice-L2MACschChg TriggerType-Choice-L2MACschChg

}

TriggerType-Choice-RRCstate ::= SEQUENCE {

rrcState-List SEQUENCE (SIZE(1..maxnoofRRCstate)) OF TriggerType- Choice-RRCstate-Item,

...

}

TriggerType-Choice-RRCstate-Item ::= SEQUENCE { stateChangedTo RRC-State,

logicalOR LogicalOR OPTIONAL,

...

}

TriggerType-Choice-UEID ::= SEQUENCE {

ueIDchange-ID INTEGER (1..512, ...),

...

}

TriggerType-Choice-L2state ::= SEQUENCE {

associatedL2variables RANParameter-Testing,

...

}

TriggerType-Choice-UEcontext ::= SEQUENCE {

associatedUECtxtVariables RANParameter-Testing,

...

}

TriggerType-Choice-L2MACschChg ::= SEQUENCE {

l2MACschChgType L2MACschChgType-Choice,

...

}

L2MACschChgType-Choice ::= CHOICE {

triggerType-Choice-MIMOandBFconfig TriggerType-Choice-MIMOandBFconfig,

...

}

TriggerType-Choice-MIMOandBFconfig ::= SEQUENCE {

mIMOtransModeState ENUMERATED {enabled, disabled, ...},

...

}

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

-- Action Definition OCTET STRING contents

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

E2SM-RC-ActionDefinition ::= SEQUENCE {

ric-Style-Type RIC-Style-Type,

ric-actionDefinition-formats CHOICE {

actionDefinition-Format1 E2SM-RC-ActionDefinition-Format1, actionDefinition-Format2 E2SM-RC-ActionDefinition-Format2, actionDefinition-Format3 E2SM-RC-ActionDefinition-Format3,

...,

actionDefinition-Format4 E2SM-RC-ActionDefinition-Format4

},

...

}

E2SM-RC-ActionDefinition-Format1 ::= SEQUENCE {

ranP-ToBeReported-List SEQUENCE (SIZE(1..maxnoofParametersToReport)) OF E2SM- RC-ActionDefinition-Format1-Item,

...

}

E2SM-RC-ActionDefinition-Format1-Item ::= SEQUENCE { ranParameter-ID RANParameter-ID,

...,

ranParameter-Definition RANParameter-Definition OPTIONAL

}

E2SM-RC-ActionDefinition-Format2 ::= SEQUENCE {

ric-PolicyConditions-List SEQUENCE (SIZE(1..maxnoofPolicyConditions)) OF E2SM-RC- ActionDefinition-Format2-Item,

...

}

E2SM-RC-ActionDefinition-Format2-Item ::= SEQUENCE {

ric-PolicyAction RIC-PolicyAction,

ric-PolicyConditionDefinition RANParameter-Testing OPTIONAL,

...,

ric-PolicyConditionID Ric-PolicyConditionID OPTIONAL

}

E2SM-RC-ActionDefinition-Format3 ::= SEQUENCE {

ric-InsertIndication-ID RIC-InsertIndication-ID,

ranP-InsertIndication-List SEQUENCE (SIZE(1..maxnoofAssociatedRANParameters)) OF E2SM-RC-ActionDefinition-Format3-Item,

ueID UEID OPTIONAL,

...

}

E2SM-RC-ActionDefinition-Format3-Item ::= SEQUENCE { ranParameter-ID RANParameter-ID,

...,

ranParameter-Definition RANParameter-Definition OPTIONAL

}

E2SM-RC-ActionDefinition-Format4 ::= SEQUENCE {

ric-InsertStyle-List SEQUENCE (SIZE(1.. maxnoofRICStyles)) OF E2SM-RC- ActionDefinition-Format4-Style-Item,

ueID UEID OPTIONAL,

...

}

E2SM-RC-ActionDefinition-Format4-Style-Item ::= SEQUENCE { requested-Insert-Style-Type RIC-Style-Type,

ric-InsertIndication-List SEQUENCE (SIZE(1..maxnoofInsertIndicationActions)) OF E2SM-RC-ActionDefinition-Format4-Indication-Item,

...

}

E2SM-RC-ActionDefinition-Format4-Indication-Item ::= SEQUENCE {

ric-InsertIndication-ID RIC-InsertIndication-ID,

ranP-InsertIndication-List SEQUENCE (SIZE(1..maxnoofAssociatedRANParameters)) OF E2SM-RC-ActionDefinition-Format4-RANP-Item,

...

}

E2SM-RC-ActionDefinition-Format4-RANP-Item ::= SEQUENCE { ranParameter-ID RANParameter-ID,

...,

ranParameter-Definition RANParameter-Definition OPTIONAL

}

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

-- Indication Header OCTET STRING contents

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

E2SM-RC-IndicationHeader ::= SEQUENCE {

ric-indicationHeader-formats CHOICE {

indicationHeader-Format1 E2SM-RC-IndicationHeader-Format1, indicationHeader-Format2 E2SM-RC-IndicationHeader-Format2,

...,

indicationHeader-Format3 E2SM-RC-IndicationHeader-Format3

},

...

}

E2SM-RC-IndicationHeader-Format1 ::= SEQUENCE {

ric-eventTriggerCondition-ID RIC-EventTriggerCondition-ID OPTIONAL,

...

}

E2SM-RC-IndicationHeader-Format2 ::= SEQUENCE { ueID UEID,

ric-InsertStyle-Type RIC-Style-Type,

ric-InsertIndication-ID RIC-InsertIndication-ID,

...

}

E2SM-RC-IndicationHeader-Format3 ::= SEQUENCE {

ric-eventTriggerCondition-ID RIC-EventTriggerCondition-ID OPTIONAL, ueID UEID OPTIONAL,

...

}

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

-- Indication Message OCTET STRING contents

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

E2SM-RC-IndicationMessage ::= SEQUENCE {

ric-indicationMessage-formats CHOICE {

indicationMessage-Format1 E2SM-RC-IndicationMessage-Format1, indicationMessage-Format2 E2SM-RC-IndicationMessage-Format2, indicationMessage-Format3 E2SM-RC-IndicationMessage-Format3, indicationMessage-Format4 NULL,

indicationMessage-Format5 E2SM-RC-IndicationMessage-Format5,

...,

indicationMessage-Format6 E2SM-RC-IndicationMessage-Format6

},

...

}

E2SM-RC-IndicationMessage-Format1 ::= SEQUENCE {

ranP-Reported-List SEQUENCE (SIZE(1..maxnoofAssociatedRANParameters)) OF E2SM- RC-IndicationMessage-Format1-Item,

...

}

E2SM-RC-IndicationMessage-Format1-Item ::= SEQUENCE { ranParameter-ID RANParameter-ID,

ranParameter-valueType RANParameter-ValueType,

...

}

E2SM-RC-IndicationMessage-Format2 ::= SEQUENCE {

ueParameter-List SEQUENCE (SIZE(1..maxnoofUEID)) OF E2SM-RC- IndicationMessage-Format2-Item,

...

}

E2SM-RC-IndicationMessage-Format2-Item ::= SEQUENCE { ueID UEID,

ranP-List SEQUENCE (SIZE(1..maxnoofAssociatedRANParameters)) OF E2SM- RC-IndicationMessage-Format2-RANParameter-Item,

...

}

E2SM-RC-IndicationMessage-Format2-RANParameter-Item ::= SEQUENCE { ranParameter-ID RANParameter-ID,

ranParameter-valueType RANParameter-ValueType,

...

}

E2SM-RC-IndicationMessage-Format3 ::= SEQUENCE {

cellInfo-List SEQUENCE (SIZE(1..maxnoofCellID)) OF E2SM-RC- IndicationMessage-Format3-Item,

...

}

E2SM-RC-IndicationMessage-Format3-Item ::= SEQUENCE { cellGlobal-ID CGI,

cellContextInfo OCTET STRING OPTIONAL,

cellDeleted BOOLEAN OPTIONAL, neighbourRelation-Table NeighbourRelation-Info OPTIONAL,

...,

mib OCTET STRING OPTIONAL,

servingCellConfigCommon ServingCellConfigCommon OPTIONAL

}

ServingCellConfigCommon ::= SEQUENCE { ssbPositionsInBurst OCTET STRING,

ssbPeriodicity ENUMERATED {ms5, ms10, ms20, ms40, ms80, ms160, ...}, ssbSubcarrierSpacing ENUMERATED {kHz15, kHz30, kHz60, kHz120, kHz240, kHz480-

v1700, kHz960-v1700, ...},

...

}

E2SM-RC-IndicationMessage-Format5 ::= SEQUENCE{

ranP-Requested-List SEQUENCE (SIZE(0..maxnoofAssociatedRANParameters)) OF E2SM- RC-IndicationMessage-Format5-Item,

...

}

E2SM-RC-IndicationMessage-Format5-Item ::= SEQUENCE { ranParameter-ID RANParameter-ID,

ranParameter-valueType RANParameter-ValueType,

...

}

E2SM-RC-IndicationMessage-Format6 ::= SEQUENCE {

ric-InsertStyle-List SEQUENCE (SIZE(1.. maxnoofRICStyles)) OF E2SM-RC- IndicationMessage-Format6-Style-Item,

...

}

E2SM-RC-IndicationMessage-Format6-Style-Item ::= SEQUENCE { indicated-Insert-Style-Type RIC-Style-Type,

ric-InsertIndication-List SEQUENCE (SIZE(1..maxnoofInsertIndicationActions)) OF E2SM-RC-IndicationMessage-Format6-Indication-Item,

...

}

E2SM-RC-IndicationMessage-Format6-Indication-Item ::= SEQUENCE { ric-InsertIndication-ID RIC-InsertIndication-ID,

ranP-InsertIndication-List SEQUENCE (SIZE(0..maxnoofAssociatedRANParameters)) OF E2SM-RC-IndicationMessage-Format6-RANP-Item ,

...

}

E2SM-RC-IndicationMessage-Format6-RANP-Item ::= SEQUENCE { ranParameter-ID RANParameter-ID,

ranParameter-valueType RANParameter-ValueType,

...

}

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

-- Call Process ID OCTET STRING contents

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

E2SM-RC-CallProcessID ::= SEQUENCE {

ric-callProcessID-formats CHOICE {

callProcessID-Format1 E2SM-RC-CallProcessID-Format1,

...

},

...

}

E2SM-RC-CallProcessID-Format1 ::= SEQUENCE {

ric-callProcess-ID RAN-CallProcess-ID,

...

}

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

-- Control Header OCTET STRING contents

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

E2SM-RC-ControlHeader ::= SEQUENCE {

ric-controlHeader-formats CHOICE { controlHeader-Format1 E2SM-RC-ControlHeader-Format1,

...,

controlHeader-Format2 E2SM-RC-ControlHeader-Format2,

controlHeader-Format3 E2SM-RC-ControlHeader-Format3,

controlHeader-Format4 E2SM-RC-ControlHeader-Format4

},

...

}

E2SM-RC-ControlHeader-Format1 ::= SEQUENCE { ueID UEID,

ric-Style-Type RIC-Style-Type,

ric-ControlAction-ID RIC-ControlAction-ID,

ric-ControlDecision ENUMERATED {accept, reject, ...} OPTIONAL,

...

}

E2SM-RC-ControlHeader-Format2 ::= SEQUENCE {

ueID UEID OPTIONAL,

ric-ControlDecision ENUMERATED {accept, reject, ...} OPTIONAL,

...

}

E2SM-RC-ControlHeader-Format3 ::= SEQUENCE {

ue-Group-ID UE-Group-ID,

ue-Group-Definition UE-Group-Definition,

ric-Style-Type RIC-Style-Type,

ric-ControlAction-ID RIC-ControlAction-ID,

...

}

E2SM-RC-ControlHeader-Format4 ::= SEQUENCE { partial-ueID PartialUEID,

ric-Style-Type RIC-Style-Type,

ric-ControlAction-ID RIC-ControlAction-ID,

ric-ControlDecision ENUMERATED {accept, reject, ...} OPTIONAL,

...

}

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

-- Control Message OCTET STRING contents

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

E2SM-RC-ControlMessage ::= SEQUENCE {

ric-controlMessage-formats CHOICE {

controlMessage-Format1 E2SM-RC-ControlMessage-Format1,

...,

controlMessage-Format2 E2SM-RC-ControlMessage-Format2,

controlMessage-Format3 E2SM-RC-ControlMessage-Format3,

controlMessage-Format4 E2SM-RC-ControlMessage-Format4,

controlMessage-Format5 E2SM-RC-ControlMessage-Format5

},

...

}

E2SM-RC-ControlMessage-Format1 ::= SEQUENCE {

ranP-List SEQUENCE (SIZE(0..maxnoofAssociatedRANParameters)) OF E2SM- RC-ControlMessage-Format1-Item,

...

}

E2SM-RC-ControlMessage-Format1-Item ::= SEQUENCE { ranParameter-ID RANParameter-ID,

ranParameter-valueType RANParameter-ValueType,

...

}

E2SM-RC-ControlMessage-Format2 ::= SEQUENCE {

ric-ControlStyle-List SEQUENCE (SIZE(1.. maxnoofRICStyles)) OF E2SM-RC- ControlMessage-Format2-Style-Item,

...

}

E2SM-RC-ControlMessage-Format2-Style-Item ::= SEQUENCE { indicated-Control-Style-Type RIC-Style-Type,

ric-ControlAction-List SEQUENCE (SIZE(1..maxnoofMulCtrlActions)) OF E2SM-RC- ControlMessage-Format2-ControlAction-Item,

...

}

E2SM-RC-ControlMessage-Format2-ControlAction-Item ::= SEQUENCE { ric-ControlAction-ID RIC-ControlAction-ID,

ranP-List E2SM-RC-ControlMessage-Format1,

...

}

E2SM-RC-ControlMessage-Format3 ::= SEQUENCE {

listOfEntityFilters SEQUENCE (SIZE(0..maxnoofAssociatedEntityFilters)) OF E2SM-RC-EntityFilter OPTIONAL,

entityAgnosticControlRanP-List SEQUENCE (SIZE(0..maxnoofAssociatedRANParameters)) OF EntityAgnostic-ranP-ControlParameters OPTIONAL,

...

}

E2SM-RC-EntityFilter ::= SEQUENCE {

entityFilter-ID EntityFilter-ID,

entityFilter-Definition RANParameter-Testing, entitySpecificControlRanP-List SEQUENCE

(SIZE(1..maxnoofAssociatedRANParameters)) OF EntitySpecific-ranP-ControlParameters,

...

}

EntityAgnostic-ranP-ControlParameters ::= SEQUENCE { ranParameter-ID RANParameter-ID,

ranParameter-valueType RANParameter-ValueType,

...

}

EntitySpecific-ranP-ControlParameters ::= SEQUENCE { ranParameter-ID RANParameter-ID,

ranParameter-valueType RANParameter-ValueType,

...

}

E2SM-RC-ControlMessage-Format4 ::= SEQUENCE {

ranP-List SEQUENCE (SIZE(0..maxnoofAssociatedRANParameters)) OF E2SM- RC-ControlMessage-Format4-Item,

...

}

E2SM-RC-ControlMessage-Format4-Item ::= SEQUENCE { ranParameter-ID RANParameter-ID,

ranParameter-Definition RANParameter-Definition OPTIONAL,

...

}

E2SM-RC-ControlMessage-Format5 ::= NULL

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

-- Control Outcome OCTET STRING contents

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

E2SM-RC-ControlOutcome ::= SEQUENCE {

ric-controlOutcome-formats CHOICE {

controlOutcome-Format1 E2SM-RC-ControlOutcome-Format1,

...,

controlOutcome-Format2 E2SM-RC-ControlOutcome-Format2, controlOutcome-Format3 E2SM-RC-ControlOutcome-Format3 },

...

}

E2SM-RC-ControlOutcome-Format1 ::= SEQUENCE {

ranP-List SEQUENCE (SIZE(0..maxnoofRANOutcomeParameters)) OF E2SM-RC- ControlOutcome-Format1-Item,

...

}

E2SM-RC-ControlOutcome-Format1-Item ::= SEQUENCE { ranParameter-ID RANParameter-ID,

ranParameter-value RANParameter-Value,

...

}

E2SM-RC-ControlOutcome-Format2 ::= SEQUENCE {

ric-ControlStyle-List SEQUENCE (SIZE(1.. maxnoofRICStyles)) OF E2SM-RC- ControlOutcome-Format2-Style-Item,

...

}

E2SM-RC-ControlOutcome-Format2-Style-Item ::= SEQUENCE { indicated-Control-Style-Type RIC-Style-Type,

ric-ControlOutcome-List SEQUENCE (SIZE(1..maxnoofMulCtrlActions)) OF E2SM-RC- ControlOutcome-Format2-ControlOutcome-Item,

...

}

E2SM-RC-ControlOutcome-Format2-ControlOutcome-Item ::= SEQUENCE { ric-ControlAction-ID RIC-ControlAction-ID,

ranP-List SEQUENCE (SIZE(1..maxnoofAssociatedRANParameters)) OF E2SM-RC-ControlOutcome-Format2-RANP-Item,

...

}

E2SM-RC-ControlOutcome-Format2-RANP-Item ::= SEQUENCE { ranParameter-ID RANParameter-ID,

ranParameter-value RANParameter-Value,

...

}

E2SM-RC-ControlOutcome-Format3 ::= SEQUENCE {

ranP-List SEQUENCE (SIZE(0..maxnoofRANOutcomeParameters)) OF E2SM- RC-ControlOutcome-Format3-Item,

...

}

E2SM-RC-ControlOutcome-Format3-Item ::= SEQUENCE { ranParameter-ID RANParameter-ID,

ranParameter-valueType RANParameter-ValueType,

...

}

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

-- Query Header OCTET STRING contents

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

E2SM-RC-QueryHeader ::= SEQUENCE {

ric-queryHeader-formats CHOICE {

queryHeader-Format1 E2SM-RC-QueryHeader-Format1,

...

},

...

}

E2SM-RC-QueryHeader-Format1 ::= SEQUENCE {

ric-Style-Type RIC-Style-Type,

associatedE2NodeInfo RANParameter-Testing OPTIONAL, associatedUEInfo Associated-UE-Info OPTIONAL,

...

}

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

-- Query Definition OCTET STRING contents

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

E2SM-RC-QueryDefinition ::= SEQUENCE {

ric-queryDefinition-formats CHOICE {

queryRequest-Format1 E2SM-RC-QueryDefinition-Format1,

...

},

...

}

E2SM-RC-QueryDefinition-Format1 ::= SEQUENCE {

ranP-List SEQUENCE (SIZE(1..maxnoofAssociatedRANParameters)) OF E2SM- RC-QueryDefinition-Format1-Item,

...

}

E2SM-RC-QueryDefinition-Format1-Item ::= SEQUENCE { ranParameter-ID RANParameter-ID,

ranParameter-Definition RANParameter-Definition OPTIONAL,

...

}

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

-- Query Outcome OCTET STRING contents

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

E2SM-RC-QueryOutcome ::= SEQUENCE {

ric-queryOutcome-formats CHOICE {

queryOutcome-Format1 E2SM-RC-QueryOutcome-Format1, queryOutcome-Format2 E2SM-RC-QueryOutcome-Format2,

...

},

...

}

E2SM-RC-QueryOutcome-Format1 ::= SEQUENCE {

cellInfo-List SEQUENCE (SIZE(1..maxnoofCellID)) OF E2SM-RC- QueryOutcome-Format1-ItemCell,

...

}

E2SM-RC-QueryOutcome-Format1-ItemCell ::= SEQUENCE { cellGlobal-ID CGI,

ranP-List SEQUENCE (SIZE(0..maxnoofAssociatedRANParameters)) OF E2SM- RC-QueryOutcome-Format1-ItemParameters,

neighbourRelation-Table NeighbourRelation-Info OPTIONAL,

...,

servingCellConfigCommon ServingCellConfigCommon OPTIONAL

}

E2SM-RC-QueryOutcome-Format1-ItemParameters ::= SEQUENCE { ranParameter-ID RANParameter-ID,

ranParameter-valueType RANParameter-ValueType OPTIONAL,

...

}

E2SM-RC-QueryOutcome-Format2 ::= SEQUENCE {

ueInfo-List SEQUENCE (SIZE(0..maxnoofUEID)) OF E2SM-RC-QueryOutcome- Format2-ItemUE,

...

}

E2SM-RC-QueryOutcome-Format2-ItemUE::= SEQUENCE { ueID UEID,

ranP-List SEQUENCE (SIZE(0..maxnoofAssociatedRANParameters)) OF E2SM- RC-QueryOutcome-Format2-ItemParameters,

ueFilterID UE-Filter-ID OPTIONAL, ...

}

E2SM-RC-QueryOutcome-Format2-ItemParameters ::= SEQUENCE { ranParameter-ID RANParameter-ID,

ranParameter-valueType RANParameter-ValueType OPTIONAL,

...

}

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

-- RAN Function Definition IEs

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\* E2SM-RC-RANFunctionDefinition ::= SEQUENCE{

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| ranFunction-Name | RANfunction-Name, |  |
| ranFunctionDefinition-EventTrigger | RANFunctionDefinition-EventTrigger | OPTIONAL, |
| ranFunctionDefinition-Report | RANFunctionDefinition-Report | OPTIONAL, |
| ranFunctionDefinition-Insert | RANFunctionDefinition-Insert | OPTIONAL, |
| ranFunctionDefinition-Control | RANFunctionDefinition-Control | OPTIONAL, |
| ranFunctionDefinition-Policy | RANFunctionDefinition-Policy | OPTIONAL, |
| ..., |  |  |
| ranFunctionDefinition-Query | RANFunctionDefinition-Query | OPTIONAL |

</div>

}

-- Event Trigger

RANFunctionDefinition-EventTrigger ::= SEQUENCE {

ric-EventTriggerStyle-List SEQUENCE (SIZE(1..maxnoofRICStyles)) OF RANFunctionDefinition-EventTrigger-Style-Item,

ran-L2Parameters-List SEQUENCE (SIZE(1..maxnoofAssociatedRANParameters)) OF L2Parameters-RANParameter-Item OPTIONAL,

ran-CallProcessTypes-List SEQUENCE (SIZE(1..maxnoofCallProcessTypes)) OF RANFunctionDefinition-EventTrigger-CallProcess-Item OPTIONAL,

ran-UEIdentificationParameters-List SEQUENCE (SIZE(1..maxnoofAssociatedRANParameters)) OF UEIdentification-RANParameter-Item OPTIONAL,

ran-CellIdentificationParameters-List SEQUENCE (SIZE(1..maxnoofAssociatedRANParameters)) OF CellIdentification-RANParameter-Item OPTIONAL,

...

}

RANFunctionDefinition-EventTrigger-Style-Item ::= SEQUENCE { ric-EventTriggerStyle-Type RIC-Style-Type,

ric-EventTriggerStyle-Name RIC-Style-Name,

ric-EventTriggerFormat-Type RIC-Format-Type,

...

}

L2Parameters-RANParameter-Item ::= SEQUENCE {

ranParameter-ID RANParameter-ID,

ranParameter-name RANParameter-Name,

...,

ranParameter-Definition RANParameter-Definition OPTIONAL

}

UEIdentification-RANParameter-Item ::= SEQUENCE { ranParameter-ID RANParameter-ID,

ranParameter-name RANParameter-Name,

...,

ranParameter-Definition RANParameter-Definition OPTIONAL

}

CellIdentification-RANParameter-Item ::= SEQUENCE { ranParameter-ID RANParameter-ID,

ranParameter-name RANParameter-Name,

...,

ranParameter-Definition RANParameter-Definition OPTIONAL

}

RANFunctionDefinition-EventTrigger-CallProcess-Item ::= SEQUENCE { callProcessType-ID RIC-CallProcessType-ID,

callProcessType-Name RIC-CallProcessType-Name,

callProcessBreakpoints-List SEQUENCE (SIZE (1..maxnoofCallProcessBreakpoints)) OF RANFunctionDefinition-EventTrigger-Breakpoint-Item,

...

}

RANFunctionDefinition-EventTrigger-Breakpoint-Item ::= SEQUENCE { callProcessBreakpoint-ID RIC-CallProcessBreakpoint-ID,

callProcessBreakpoint-Name RIC-CallProcessBreakpoint-Name,

ran-CallProcessBreakpointParameters-List SEQUENCE (SIZE (1..maxnoofAssociatedRANParameters)) OF CallProcessBreakpoint-RANParameter-Item OPTIONAL,

...

}

CallProcessBreakpoint-RANParameter-Item ::= SEQUENCE { ranParameter-ID RANParameter-ID,

ranParameter-name RANParameter-Name,

...,

ranParameter-Definition RANParameter-Definition OPTIONAL

}

-- Report

RANFunctionDefinition-Report ::= SEQUENCE {

ric-ReportStyle-List SEQUENCE (SIZE(1..maxnoofRICStyles)) OF RANFunctionDefinition-Report-Item,

...

}

RANFunctionDefinition-Report-Item ::= SEQUENCE {

ric-ReportStyle-Type RIC-Style-Type,

ric-ReportStyle-Name RIC-Style-Name, ric-SupportedEventTriggerStyle-Type RIC-Style-Type, ric-ReportActionFormat-Type RIC-Format-Type, ric-IndicationHeaderFormat-Type RIC-Format-Type, ric-IndicationMessageFormat-Type RIC-Format-Type,

ran-ReportParameters-List SEQUENCE (SIZE (1..maxnoofAssociatedRANParameters)) OF Report-RANParameter-Item OPTIONAL,

...

}

Report-RANParameter-Item ::= SEQUENCE {

ranParameter-ID RANParameter-ID,

ranParameter-name RANParameter-Name,

...,

ranParameter-Definition RANParameter-Definition OPTIONAL

}

-- Insert

RANFunctionDefinition-Insert ::= SEQUENCE {

ric-InsertStyle-List SEQUENCE (SIZE(1..maxnoofRICStyles)) OF RANFunctionDefinition-Insert-Item,

...

}

RANFunctionDefinition-Insert-Item ::= SEQUENCE {

ric-InsertStyle-Type RIC-Style-Type,

ric-InsertStyle-Name RIC-Style-Name, ric-SupportedEventTriggerStyle-Type RIC-Style-Type, ric-ActionDefinitionFormat-Type RIC-Format-Type,

ric-InsertIndication-List SEQUENCE (SIZE(1..maxnoofInsertIndication)) OF RANFunctionDefinition-Insert-Indication-Item OPTIONAL,

ric-IndicationHeaderFormat-Type RIC-Format-Type,

ric-IndicationMessageFormat-Type RIC-Format-Type,

ric-CallProcessIDFormat-Type RIC-Format-Type,

...

}

RANFunctionDefinition-Insert-Indication-Item ::= SEQUENCE {

ric-InsertIndication-ID RIC-InsertIndication-ID,

ric-InsertIndication-Name RIC-InsertIndication-Name,

ran-InsertIndicationParameters-List SEQUENCE (SIZE (1..maxnoofAssociatedRANParameters)) OF InsertIndication-RANParameter-Item OPTIONAL,

...

}

InsertIndication-RANParameter-Item ::= SEQUENCE { ranParameter-ID RANParameter-ID,

ranParameter-name RANParameter-Name,

...,

ranParameter-Definition RANParameter-Definition OPTIONAL

}

-- Control

RANFunctionDefinition-Control ::= SEQUENCE {

ric-ControlStyle-List SEQUENCE (SIZE(1..maxnoofRICStyles)) OF RANFunctionDefinition-Control-Item,

...

}

RANFunctionDefinition-Control-Item ::= SEQUENCE {

ric-ControlStyle-Type RIC-Style-Type,

ric-ControlStyle-Name RIC-Style-Name,

ric-ControlAction-List SEQUENCE (SIZE(1..maxnoofControlAction)) OF RANFunctionDefinition-Control-Action-Item OPTIONAL,

ric-ControlHeaderFormat-Type RIC-Format-Type, ric-ControlMessageFormat-Type RIC-Format-Type,

ric-CallProcessIDFormat-Type RIC-Format-Type OPTIONAL, ric-ControlOutcomeFormat-Type RIC-Format-Type,

ran-ControlOutcomeParameters-List SEQUENCE (SIZE(1..maxnoofRANOutcomeParameters)) OF ControlOutcome-RANParameter-Item OPTIONAL,

...,

listOfAdditionalSupportedFormats ListOfAdditionalSupportedFormats OPTIONAL} ControlOutcome-RANParameter-Item ::= SEQUENCE {

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| ranParameter-ID | RANParameter-ID, |  |
| ranParameter-name | RANParameter-Name, |  |
| ..., |  |  |
| ranParameter-Definition | RANParameter-Definition | OPTIONAL |

</div>

}

RANFunctionDefinition-Control-Action-Item ::= SEQUENCE {

ric-ControlAction-ID RIC-ControlAction-ID,

ric-ControlAction-Name RIC-ControlAction-Name,

ran-ControlActionParameters-List SEQUENCE (SIZE (1..maxnoofAssociatedRANParameters)) OF ControlAction-RANParameter-Item OPTIONAL,

...,

ueGroup-ControlAction-Supported ENUMERATED {true, false, ...} OPTIONAL

}

ControlAction-RANParameter-Item ::= SEQUENCE { ranParameter-ID RANParameter-ID,

ranParameter-name RANParameter-Name,

...,

ranParameter-Definition RANParameter-Definition OPTIONAL

}

ListOfAdditionalSupportedFormats ::= SEQUENCE (SIZE(0..maxnoofFormatTypes)) OF AdditionalSupportedFormat

AdditionalSupportedFormat ::= SEQUENCE {

ric-ControlHeaderFormat-Type RIC-Format-Type, ric-ControlMessageFormat-Type RIC-Format-Type,

...,

ric-ControlOutcomeFormat-Type RIC-Format-Type OPTIONAL, ric-ControlAction-ID RIC-ControlAction-ID OPTIONAL

}

-- Policy

RANFunctionDefinition-Policy ::= SEQUENCE {

ric-PolicyStyle-List SEQUENCE (SIZE(1..maxnoofRICStyles)) OF RANFunctionDefinition-Policy-Item,

...

}

RANFunctionDefinition-Policy-Item ::= SEQUENCE {

ric-PolicyStyle-Type RIC-Style-Type,

ric-PolicyStyle-Name RIC-Style-Name, ric-SupportedEventTriggerStyle-Type RIC-Style-Type,

ric-PolicyAction-List SEQUENCE (SIZE(1..maxnoofPolicyAction)) OF RANFunctionDefinition-Policy-Action-Item OPTIONAL,

...

}

RANFunctionDefinition-Policy-Action-Item ::= SEQUENCE {

ric-PolicyAction-ID RIC-ControlAction-ID,

ric-PolicyAction-Name RIC-ControlAction-Name, ric-ActionDefinitionFormat-Type RIC-Format-Type,

ran-PolicyActionParameters-List SEQUENCE (SIZE (1..maxnoofAssociatedRANParameters)) OF PolicyAction-RANParameter-Item OPTIONAL,

ran-PolicyConditionParameters-List SEQUENCE (SIZE (1..maxnoofAssociatedRANParameters)) OF PolicyCondition-RANParameter-Item OPTIONAL,

...

}

PolicyAction-RANParameter-Item ::= SEQUENCE { ranParameter-ID RANParameter-ID,

ranParameter-name RANParameter-Name,

...,

ranParameter-Definition RANParameter-Definition OPTIONAL

}

PolicyCondition-RANParameter-Item ::= SEQUENCE { ranParameter-ID RANParameter-ID,

ranParameter-name RANParameter-Name,

...,

ranParameter-Definition RANParameter-Definition OPTIONAL

}

-- Query

RANFunctionDefinition-Query ::= SEQUENCE {

ric-QueryStyle-List SEQUENCE (SIZE(1..maxnoofRICStyles)) OF RANFunctionDefinition-Query-Item,

...

}

RANFunctionDefinition-Query-Item ::= SEQUENCE {

ric-QueryStyle-Type RIC-Style-Type,

ric-QueryStyle-Name RIC-Style-Name,

ric-QueryHeaderFormat-Type RIC-Format-Type,

ric-QueryDefinitionFormat-Type RIC-Format-Type, ric-QueryOutcomeFormat-Type RIC-Format-Type,

ran-QueryParameters-List SEQUENCE (SIZE (1..maxnoofAssociatedRANParameters)) OF Query-RANParameter-Item OPTIONAL,

...

}

Query-RANParameter-Item ::= SEQUENCE {

ranParameter-ID RANParameter-ID,

ranParameter-name RANParameter-Name,

ranParameter-Definition RANParameter-Definition OPTIONAL,

...

}

E2SM-RC-ServiceLayerCause::= CHOICE { ricRequest CauseRICrequest,

ricService CauseRICservice,

protocol CauseProtocol,

...

}

CauseRICservice ::= ENUMERATED{

RIC-Event-Trigger-Style-Type-not-supported, RIC-Event-Trigger-Format-Type-not-supported, RAN-Parameter-ID-not-supported,

Call-Process-Type-ID-not-supported,

Call-Process-Breakpoint-ID-not-supported, RIC-Report-Style-Type-not-supported,

Supported-RIC-Event-Trigger-Style-Type-not-supported, RIC-Action-Format-Type-not-supported,

RIC-Indication-Header-Format-Type-not-supported, RIC-Indication-Message-Format-Type-not-supported, RIC-Insert-Style-Type-not-supported,

Insert-Indication-ID-not-supported,

RIC-Call-Process-ID-Format-Type-not-supported, RIC-Control-Style-Type-not-supported,

Control-Action-ID-not-supported,

RIC-Control-Header-Format-Type-not-supported, RIC-Control-Message-Format-Type-not-supported, RIC-Control-Outcome-Format-Type-not-supported, RIC-Policy-Style-Type-not-supported,

Policy-Action-ID-not-supported,

RIC-Query-Style-Type-not-supported,

RIC-Query-Header-Format-Type-not-supported,

RIC-Query-Definition-Format-Type-not-supported, RIC-Query-Outcome-Format-Type-not-supported,

...

}

CauseProtocol ::= ENUMERATED { transfer-syntax-error, abstract-syntax-error-reject,

abstract-syntax-error-ignore-and-notify, message-not-compatible-with-receiver-state, semantic-error,

abstract-syntax-error-falsely-constructed-message, unspecified,

...

}

END

-- ASN1STOP

## Message transfer syntax

E2SM-RC shall use the ASN.1 Basic Packed Encoding Rules (BASIC-PER) Aligned Variant as transfer syntax, as specified in ITU-T Rec. X.691 [9].

# Handling of Unknown, Unforeseen and Erroneous Protocol Data

Clause 10 of TS 36.413 [13] is applicable for the purposes of the present document.

# Annex A (Informative):

# Examples on IE Contents

## Introduction

This annex presents example applications of selected use cases showing alternative solutions using different combinations of RIC Services Report, Insert, Control and/or Policy.

## Connected mode mobility based on UE measurement report

### Assumptions

This example is based on the following assumptions:

* + - 1. E2 Node, of type O-CU-CP, O-CU or gNB for aggregated deployments, has E2 interface to Near-RT RIC and supports one or more RIC services using E2SM-RC.
      2. UE is in RRC CONNECTED state using NR access and has successfully attached to a 5G Core Network (5GC)
      3. UE has been previously configured to send RRC Measurement Reports.
      4. UE sends a RRC Measurement Report containing one or more neighbour cell measurements applicable for an inter-cell connected mode mobility event (i.e. a Handover)
      5. E2 Node for aggregated deployments, uses one or more RIC Services to complete the handover decision and either execute handover (i.e. using procedure described in 3GPP 38.300 clause 9.2.3) or ignores measurement report.

Step 5 may be realized using one or more of the following solutions:

* + - * 1. According to a previously established RIC Subscription procedure, the arrival of the RRC Measurement Report triggers an Event Trigger which results in the E2 Node suspending the ongoing call process and sending a RIC Service INSERT message to the Near-RT RIC. The Near-RT RIC takes the Handover Decision and sends a RIC Service CONTROL message carrying the response which is used by the E2 node to resume the call process.
        2. According to a previously established RIC Subscription procedure the arrival of the RRC Measurement Report triggers an Event Trigger which results in the E2 Node executing a RIC Service POLICY which is used to modify the default Handover Decision and so modifies the remaining steps in the ongoing call process.

### Solution using RIC Services Insert and Control

#### Introduction

This section provides a solution for the Connected Mode Mobility event call flow using the RIC Service Insert (Style 3) and Control (Style 3) required for the handling of incoming RRC Measurement reports from a UE connected to a 5GC network using Standalone (SA) access. Corresponding example message content are provided for the *RIC Event Trigger Definition* IE and *RIC Action Definition* IE, used to set up the RIC Subscription for the Insert service, the *RIC Indication Header* IE and *RIC Indication Message* IE, used to send the Insert message to the Near-RT RIC and finally the *RIC Control Header* IE, *RIC Control Message* IE and *RIC Control Outcome* IE contents, used by the resulting RIC Control procedure to respond to the Insert message.

#### Assumptions

This example is based on the following design assumptions:

* + - * 1. Event trigger defined using Style 2 (Call Process Breakpoint), Type 3 (Mobility Management) and Call Breakpoint ID 1 (Handover Preparation) with the assumption that this breakpoint corresponds to the point of the UE call process code in a gNB where a handover decision is to be taken based on a received RRC Measurement report.

*Event Trigger Definition Format 2* IE RAN parameters for *Associated UE Info* IE are used to offer filtering of UE between UE subject to Insert service and UE to be handled using E2 Node internal mechanisms. In this example RAN parameters for discrimination based on Slice and Group (aka SPID) along with optional use of Explicit UE List membership are described (see A.2.2.2).

* + - * 1. Insert service, defined according to Insert Style 3 (Connected Mobile Mobility Control Request), Indication ID 1 (Handover control request), is defined using *RIC Action Definition Format 3* IE. In this example a single target primary cell along with lists of PDU, DRB and secondary cells to be handed over are described (see A.2.2.3)
        2. Insert message defined according to Insert Style 3 (Connected Mobile Mobility Control Request), Indication ID 1 (Handover control request) with *RIC Indication Header Format 2* IE, *RIC Indication Message Format 5* IE and *RIC Call Process ID Format 1* IE. In this example the insert message, used to carry preliminary handover

decision made by E2 Node (target primary cell selected and proposed lists of retained DRBs and secondary cells), is described (see A.2.2.4)

* + - * 1. Control message defined according to Control Style 3 (Connected Mobile Mobility Control), Control Action ID 1 (Handover control) with *RIC Control Header Format 1* IE, *RIC Control Message Format 1* IE, *RIC Call Process ID Format 1* IE and *RIC Control Outcome Format 1* IE, may be sent based on the outcome of the decision in the Near-RT RIC. Message is used to carry confirmed handover decision made by E2 Node (confirmed target primary cell and confirmed lists of retained DRBs and secondary cells).

The gNB may either:

Use the *RIC Call Process ID* IE to identify the target UE and decide to accept the RIC Control request. The E2 Node may then proceed with handover execution using information obtained from the measurement report, stored UE context information and contents of the RIC Control Request message (*RIC Control Header* IE and *RIC Control Message* IE) result of subsequent network transactions

Wait for the Time To Wait timer to expire and continue with any other required call processing, ignoring the measurement report

* + - * 1. *RIC Control Outcome* IE carried in RIC Control Acknowledge message, defined using Control Style 3 (Connected Mobile Mobility Control), Control Action ID 1 (Handover control), may be sent based on the outcome of the decision in the E2 Node

@startuml Skin rose

skinparam ParticipantPadding 50

skinparam BoxPadding 10 skinparam lifelineStrategy solid

Participant "Near-RT RIC" as RIC

Participant "gNB" as gNB Participant "UE" as UE

== Establish RIC subscriptions ==

RIC<->gNB: <color green>RIC SUBSCRIPTION (Insert: Handover measurement report)

RIC<-->gNB: <color green>RIC CONTROL (UE assignment to Explicit UE List)

loop While Subscription remains active

== Handover decision ==

UE->>gNB: RRC Measurement report gNB->gNB: Handover decision

gNB->gNB : <color green>Call Process Breakpoint

gNB->gNB: <color green>Event Trigger (test conditions) alt #lime Event Trigger Condition applies

note over gNB #pink: Associated procedure instance \*\*suspended\*\* #aqua: Start associated Time to Wait Timer

note over gNB

gNB->RIC: RIC Indication (Insert) based on Action Definition 
containing preliminary handover decision

alt #lime Near-RT RIC responds in time

RIC->RIC: Confirm preliminary handover decision and downselect 
retained DRBs and S-cells if required

RIC->gNB: RIC Control request (handover information)

note over gNB #pink: Associated procedure instance \*\*recovered\*\* gNB->gNB: Modify handover decision 
according to Control request gNB-->RIC: RIC Control Acknowledge

else Time to Wait timer Expires and Subsequent Action = Continue note over gNB #aqua: Associated Time to Wait Timer expires

note over gNB #pink: Associated procedure instance \*\*recovered\*\* end

end

alt Handover decision = TRUE gNB<->UE: Execute handover

else Handover decision = FALSE

gNB->gNB: Ignore measurement report end

end @enduml

Near RT RIC gNB UE

![]({{site.baseurl}}/assets/images/b72423ac5fc2.png)![]({{site.baseurl}}/assets/images/4ec4d5b2aa03.png)![]({{site.baseurl}}/assets/images/f154f784b3c4.png)![]({{site.baseurl}}/assets/images/ee188ca08232.png)![]({{site.baseurl}}/assets/images/b8095736354d.png)![]({{site.baseurl}}/assets/images/52997f4c3815.png)![]({{site.baseurl}}/assets/images/eb7c084ef45d.png)![]({{site.baseurl}}/assets/images/369e8b1dc59a.png)![]({{site.baseurl}}/assets/images/28ad1a99286a.png)![]({{site.baseurl}}/assets/images/7c5731f19868.png)![]({{site.baseurl}}/assets/images/6fab7c143788.png)![]({{site.baseurl}}/assets/images/d29b87c2bd41.png)![]({{site.baseurl}}/assets/images/b5af9eea67b4.png)![]({{site.baseurl}}/assets/images/d29b87c2bd41.png)![]({{site.baseurl}}/assets/images/b5af9eea67b4.png)![]({{site.baseurl}}/assets/images/3dfb62e6b3a6.png)![]({{site.baseurl}}/assets/images/c3bd80aa6284.png)![]({{site.baseurl}}/assets/images/d29b87c2bd41.png)![]({{site.baseurl}}/assets/images/d29b87c2bd41.png)![]({{site.baseurl}}/assets/images/d29b87c2bd41.png)![]({{site.baseurl}}/assets/images/16dd22f39f3f.png)![]({{site.baseurl}}/assets/images/a909277f65b2.png)![]({{site.baseurl}}/assets/images/4d0b539c57d6.png)![]({{site.baseurl}}/assets/images/815c6f8914c5.png)![]({{site.baseurl}}/assets/images/5630799cb205.png)![]({{site.baseurl}}/assets/images/d29b87c2bd41.png)![]({{site.baseurl}}/assets/images/904a57717de4.png)![]({{site.baseurl}}/assets/images/1fe668ae514c.png)![]({{site.baseurl}}/assets/images/a909277f65b2.png)![]({{site.baseurl}}/assets/images/d29b87c2bd41.png)![]({{site.baseurl}}/assets/images/d29b87c2bd41.png)![]({{site.baseurl}}/assets/images/03b6ec79ff79.png)![]({{site.baseurl}}/assets/images/8ed2382b8810.png)![]({{site.baseurl}}/assets/images/2e69482646a1.png)![]({{site.baseurl}}/assets/images/a909277f65b2.png)![]({{site.baseurl}}/assets/images/d29b87c2bd41.png)![]({{site.baseurl}}/assets/images/b5af9eea67b4.png)![]({{site.baseurl}}/assets/images/212206a7d3c2.png)

RIC SUBSCRI TION (Insert Handover measurement report)

RIC CONTRO (UE assignment to Explicit UE ist)

RRC Measurement report

Handover decision

Call rocess Breakpoint

Event Trigger (test conditions)

Associated procedure instance

Start associated Time to Wait Timer

RIC Indication (Insert) based on Action efinition

containing preliminary handover decision

Confirm preliminary handover decision and downselect retained RBs and S cells if required

RIC Control request (handover information)

Associated procedure instance

Modify handover decision according to Control request

RIC Control Acknowledge

Associated Time to Wait Timer expires

Associated procedure instance

Execute handover

Ignore measurement report

Near RT RIC gNB UE

Figure A.2.2.1-1: Example call flow for Handover preparation and execution with extensions added to implement RIC Insert and RIC Control service in GREEN

#### RIC Event Trigger Definition IE contents

*RIC Event Trigger Definition Format 2* IE contains RAN Parameter lists for *Associated E2 Node Info* IE and *Associated UE info* IE.

In this example:

1. *Associated E2 Node Info* IE, using RAN Parameters from clause 8.1.2.3.1, is not used.
2. *Associated UE Info* IE, using RAN Parameters from clause 8.1.3, is used where the set of target UEs for the event is defined by a given slice (SST=sst1, SD=sd1) and group (IRFSP=irfsp1) along with membership to an optional Explicit UE list. Additional sets of target UEs may be supported using the same RAN Parameter list with different target values for SST, SD and IRFSP and optionally Explicit UE List. In addition, individual target UE may be identified. These selection criteria would be combined within the *Event Trigger UE Information* IE using the optional "Logical OR" flag (see clause 9.3.26).

RAN Parameter Testing for Call Process Breakpoint (defined in 8.1.2.3.1), used to populate the *Associated E2 Node Info* IE, are as follows:

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **RAN Parameter ID** | **Value type** | **Key flag** | **Value** | **Test condition** | **Semantics Description** |
| (N/A) |  |  |  |  |  |

</div>

RAN Parameter Testing for UE Group (defined in 8.1.3), used to populate the *Associated UE Info* IE, are as follows:

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **RAN Parameter ID** | **Value type** | **Key flag** | **Value** | **Test condition** | **Semantics Description** |
| 35010 | STRUCTURE |  |  |  | S-NSSAI |
| 35011 | ELEMENT | FALSE | sst1 | equal | >SST |
| 35012 | ELEMENT | FALSE | sd1 | equal | >SD |
| 35020 | STRUCTURE |  |  |  | Group ID |
| 35021 | ELEMENT | FALSE | Irfsp1 | equal | >IRFSP |
| 35030 | ELEMENT | FALSE | HOList1 | Equal | Explicit UE List ID |

</div>

#### RIC Action Definition IE contents

*RIC Action Definition Format 3* IE used to define Insert service contains a single RAN Parameter list for the selection of information such as Target Primary Cell, List of PDU sessions to be handed over and List of DRBs to be handed over. This information is to be reported to Near-RT RIC within the INSERT message.

RAN parameters for Insert service (according to clause 8.3.4.1, these are defined in clause 8.4.4.1), used to populate the

*List of RAN parameters for Insert Indication* IE, are as follows:

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **RAN Parameter ID** | **Value type** | **Key flag** | **Value** | **Test condition** | **Semantics Description** |
| 1 | STRUCTURE |  |  |  | Target Primary Cell ID |
| 2 | STRUCTURE |  |  |  | >CHOICE Target Cell |
| 3 | STRUCTURE |  |  |  | >>NR Cell |
| 4 | ELEMENT | FALSE | Nr-cgi1 |  | >>>NR CGI |
| 7 | STRUCTURE |  |  |  | List of PDU sessions for handover |
| 8 | STRUCTURE |  |  |  | >>PDU session Item for handover |
| 9 | ELEMENT | TRUE | Pdu#M |  | >>PDU Session ID |
| 10 | STRUCTURE |  |  |  | >>List of QoS flows in the PDU session |
| 11 | STRUCTURE |  |  |  | >>>QoS flow Item |
| 12 | ELEMENT | TRUE | Qfi#N |  | >>>>QoS Flow Identifier |
| 13 | STRUCTURE |  |  |  | List of DRBs for handover |
| 14 | STRUCTURE |  |  |  | >DRB item for handover |
| 15 | ELEMENT | TRUE | Drb#P |  | > DRB ID |
| 16 | LIST |  |  |  | >>List of QoS flows in the DRB |
| 17 | STRUCTURE |  |  |  | >>>QoS flow item |
| 18 | ELEMENT | TRUE | Qfi#Q |  | >>>>QoS flow Identifier |
| 19 | LIST |  |  |  | List of Secondary cells to be setup |
| 20 | STRUCTURE |  |  |  | > Secondary cell item to be setup |
| 21 | ELEMENT |  | Scell#S |  | >>Secondary cell ID |

</div>

#### RIC Indication Message

RAN Parameters for Connected Mode Mobility Control (according to clause 8.3.4.1 these are defined in clause8.4.4.1), used to populate the *RIC Indication Message Format 5* IE, are the same as those defined in A.2.2.3 above.

NOTE: Only one target primary cell is supported in the current version of this specification.

#### RIC Control Message

RAN Parameters for Connected Mode Mobility Control (according to clause 8.3.4.1 these are defined in 8.4.4.1), used to populate the *RIC Control Message Format 1* IE, are the same as those defined in A.2.2.3 above.

### Solution using RIC Service Policy ("Offset" based approach)

#### Introduction

This section provides a solution for the Connected Mode Mobility event call flow using the RIC Service Policy using the "Offset" approach. Corresponding example message content are provided for the *RIC Event Trigger Definition* IE

and *RIC Action Definition* IE contents for the Connected Mode Mobility service (Policy Style 3) sent from the RIC to the E2 node to establish a policy used to provide guidance for the handling of incoming RRC Measurement reports from a UE connected to a 5GC network using Standalone (SA) access.

#### Assumptions

This example is based on the following design assumptions:

* + - * 1. Event trigger defined using Style 2 (Call Process Breakpoint), Type 3 (Mobility Management) and Call Breakpoint ID 1 (handover Preparation) with the assumption that this breakpoint corresponds to the point of the UE call process code in a gNB where a handover decision is to be taken based on a received RRC Measurement report.

*E2SM-RC Event Trigger Definition Format 2* IE RAN parameters for *Associated E2 Node Info* IE are not used

*E2SM-RC Event Trigger Definition Format 2* IE RAN parameters for *Associated UE Info* IE are used to offer filtering of UE between those subject to Policy handling and those to be handled using default parameters. In this example RAN parameters for discrimination based on Slice and Group (aka SPID) are described.

* + - * 1. Policy defined using Style 3 (Connected Mobile Mobility Policy), Policy Action ID 1 (Policy for Handover control) and installed using RIC Subscription procedure containing *E2SM-RC Action Definition Format 2* IE:

*Policy Condition Definition* IE RAN parameters used to map UE to an appropriate Policy Action. In this example RAN parameters based on Serving Cell and Explicit UE List membership are described.

*Policy Action* IE parameters used to define a set of offsets (+positive, zero or -negative values) to be applied to default measurement thresholds to calculate policy modified threshold used during Handover decision prior to Handover execution.

* + - * 1. Depending upon the outcome of the decision the gNB either:

Proceeds with handover execution using information obtained from the measurement report, stored UE context information and result of subsequent network transactions

Ignores measurement report and continues any other required call processing

@startuml Skin rose

skinparam ParticipantPadding 50

skinparam BoxPadding 10 skinparam lifelineStrategy solid

Participant "Near-RT RIC" as RIC

Participant "gNB" as gNB Participant "UE" as UE

== Establish RIC subscriptions ==

RIC<->gNB: <color green>RIC SUBSCRIPTION (Policy: Handover decision)

RIC<-->gNB: <color green>RIC CONTROL (UE assignment to Explicit UE List) loop While Subscription remains active

== Handover decision ==

UE->>gNB: 1) RRC Measurement report

gNB->gNB : <color green>Call Process Breakpoint

gNB->gNB: <color green>Event Trigger (test conditions) alt #lime Event Trigger Condition applies

alt #lime Policy condition applies (first match in list) gNB->gNB: Extract offset value(s) from Policy Action

else no Policy condition applies

gNB->gNB: Set offset value(s) to zero end

else Event Trigger condition does not apply

gNB->gNB : Set offset value(s) to zero end

gNB->gNB: Handover decision using default threshold <color green>modified 
<color green>according to offset value(s) in policy action </color>

alt Handover decision = TRUE gNB<->UE: Execute handover

else Handover decision = FALSE

gNB->gNB: Ignore measurement report end

end @enduml

![A picture containing text  Description automatically generated]({{site.baseurl}}/assets/images/0a879d4f8844.png)

Figure A.2.3.1-1: Example call flow for Handover preparation with extensions added to implement E2 Policy service in GREEN

#### RIC Event Trigger Definition IE contents

*RIC Event Trigger Definition* IE contains *E2SM-RC Event Trigger Definition Format 2* IE, which, in turn, contains RAN Parameter lists for *Associated E2 Node Info* IE and *Associated UE info* IE.

In this example:

1. *Associated E2 Node Info* IE is not used
2. *Associated UE Info* IE, using RAN Parameters from clause 8.1.3, is used where the set of target UEs for the event is defined by a given slice (SST=sst1, SD=sd1) and group (IRFSP=irfsp1)

Additional sets of target UEs may be supported using the same RAN Parameter list with different target values for SST, SD and IRFSP. These would be combined within the *Event Trigger UE Information* IE using the optional "Logical OR" flag (see clause 9.3.26).

*RAN Parameter Testing for UE Group* (defined in 8.1.3), used to populate the *Associated UE Info* IE, are as follows:

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **RAN Parameter ID** | **Value type** | **Key flag** | **Value** | **Test condition** | **Semantics Description** |
| 35010 | STRUCTURE |  |  |  | S-NSSAI |
| 35011 | ELEMENT | FALSE | sst1 | equal | >SST |
| 35012 | ELEMENT | FALSE | sd1 | equal | >SD |
| 35020 | STRUCTURE |  |  |  | Group ID |
| 35021 | ELEMENT | FALSE | Irfsp1 | equal | >IRFSP |

</div>

#### RIC Action Definition IE contents

*E2SM-RC Action Definition Format 2* IE contains RAN Parameter lists for *Policy Condition Definition* IE and *Policy Action* IE.

In this example the *Policy Condition Definition* IE is used to define the set of target UEs that are to be assigned a given *Policy Action* IE based on a given Serving Cell (nr-cgi1) and membership of a given Explicit UE List (HOList1). The corresponding *Policy Action* IE is used to set the measurement threshold offset for A3 RSRP measurement threshold (A3-rsrp-off1)

Different values of NR-CGI and/or Explicit UE List ID may be used in each Policy condition in the *Policy Action* IE, each with a corresponding different Policy Action definition.

RAN Parameters for Connected Mode Mobility Control (defined in clauses 8.5.4 and 8.1.3), used to populate the *Policy Condition Definition* IE, are as follows:

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **RAN Parameter ID** | **Value type** | **Key flag** | **Value** | **Test condition** | **Semantics Description** |
| 501 | LIST |  |  |  | List of Serving cells |
| 502 | STRUCTURE |  |  |  | >Serving cell item |
| 503 | STRUCTURE |  |  |  | >>CHOICE Serving Cell Type |
| 504 | STRUCTURE |  |  |  | >>>Serving NR Cell |
| 505 | ELEMENT | FALSE | nr-cgi1 | equal | >>>>Serving NR CGI |
| 35030 | ELEMENT | FALSE | HOList1 | Equal | Explicit UE List ID |

</div>

RAN Parameters for Handover Control (defined in clause 8.5.4.1), used to populate the *Policy Action* IE, are as follows:

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **RAN Parameter ID** | **Value type** | **Key flag** | **Value** | **Semantics Description** |
| 121 | STRUCTURE |  |  | A3 Event Threshold offset |
| 122 | ELEMENT | FALSE | A3-rsrp-off1 | >A3 RSRP offset (+/- x dB) |

</div>

# Revision History

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Date** | **Revision** | **Description** |
| 2020.09.25 | 00.00.01 | Initial instantiation of E2SM-UE |
| 2020.10.30 | 00.00.01 | Change of title to E2SM-RC |
| 2020.11.04 | 00.00.00 | Agreed baseline skeleton document with title E2SM-RC (RAN Control) |
| 2021.01.20 | 01.00.01 | Running version created with inclusion of approved sections 1-5 |
| 2021.04.28 | 01.00.02 | Addition of:  <NOK-2021.03.25-WG3-CR-0003-Section6.1-v04> agreed WG3#92  <NOK-2021.03.25-WG3-CR-0004-E2SM-RC-Section6.2-v04> agreed WG3#96  <NOK-2021.04.06-WG3-CR-0005-Section7-v04> agreed WG3#95 |
| 2021.05.06 | 01.00.03 | Addition of:  <RSYS-2021.04.13-WG3-D-E2SM-RC-REPORT-UEState\_CR\_v0.6> agreed WG3#96 |
| 2021.06.10 | 01.00.04 | Addition of:  <MAV.AO-2021-05-19-WG3-CR-0001-E2SM-RC+Control+Services\_v18> agreed at WG3#98  < NOK-2021.06.04-WG3-CR-0008-E2SM-RC rearrangement-v01> agreed at WG3#102  Also general editorial clean-up removing BOLD in headings, renumbering former section 8 references, adding editorial notes. |
| 2021.07.12 | 01.00.05 | Integration of Consensus CRs from Drafting Team  WG3-2021.07.09-WG3-E2SM-RC-EventTrigger-v14.docx WG3-2021.06.17-WG3- E2SM-RC-REPORTService-v07.docx  WG3-2021.07.04.WG3-CR.E2SM-RC-Insert Control Policy Services-v17.docx |
| 2021.07.14 | 01.00.06 | Inclusion of ASN.1 and clean up |
| 2021.08.10 | 01.00 | TSC Approved |
| 2021.08.18 | 01.01.00 | V01.01 baseline including editorial corrections |
| 2021.10.13 | 01.01.01 | Incorporated WG3 Agreed CRs -   * RSYS.AO-2021.07.26-WG3-CR-0006-E2SM-RC-REPORT-   CellIDInfo\_v0.6.docx - Agreed in WG3#111   * NOK.AO-2021.09.20-WG3-CR-0013-E2SM-RC-ASN1cleaning-v02.docx -   Agreed in WG3#114   * CICT-2021.09.28-WG3-CR-0006-E2SM-RC-Editorial modification-v1.docx - Agreed in WG3#116 * NOK-2021.07.31-WG3-CR-0010-E2SM-RC-AnnexA-policy-v04.docx - Agreed in WG3#116 |
| 2021.11.09 | 01.01.02 | Incorporated WG3 Agreed CRs -   * MAV.AO.2021-10-19.O-RAN.WG3.E2SM-RC-v01.01.01-CR-0002 on   Supported Service Style and RAN Parameter Corrections-v01.docx - Agreed in WG3#118   * RSYS.AO-2021.10.18-WG3-CR-0008-E2SM-RC-Corrections-II\_v4.docx -   Agreed in WG3#119   * NOK-2021.07.31-WG3-CR-0012-E2SM-RC-Section8.5reference8.1-v04.docx - Agreed in WG3#120 |
| 2021.11.16 | 01.01.03 | Incorporated WG3 Agreed CRs -   * MAV.AO-2021.11.04.WG3-CR-0005.E2SM-RC v01.01 CR on RAN Function   Definition-v06.docx |
| 2021.11.17 | 01.01.04 | Incorporated WG3 Agreed CRs -   * RSYS-2021.10.05-WG3-CR-0007-E2SM-RC-Corrections-I\_v0.2.docx - Agreed in WG3#117 |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
|  |  | * Editorial Cleanup |
| 2021.11.22 | 01.01.05 | Copyright year modified based on WG3 voting review |
| 2022.01.19 | 01.01.06 | Fixed Footer on Cover Sheet |
| 2022.02.07 | 01.01 | Final version for November 2021 publication |
| 2022.03.11 | 01.02.01 | Incorporated WG3 Agreed CRs -   * CICT.AO-2021.10.29-WG3-CR-0008-E2SM-RC-Multiple-Actions-v05.docx -   Agreed in WG3#128   * RSYS.AO-2022.02.06-WG3-CR-0009-E2SM-RC-Minor Fixes\_v2.docx -   Agreed in WG3#131 |
| 2022.03.24 | 01.02.02 | Incorporated WG3 Agreed CRs -   * NEC-2022.03.08-WG3-CR-0003-E2SM-RC- Wrong parameters and reference in DRB QoS Configuration -v02.docx- Agreed in WG3#136 * NOK.AO-2022.02.21-WG3-CR-0015-E2SM-RC-RAN function Definition correction-v04.docx - Agreed in WG3#136 * NOK-2022.03.14-WG3-CR-0016-E2SM-RC-RAN Parameter table corrections- v03.docx - Agreed in WG3#136 * MAV.RSYS-2022.03.09-WG3-CR-0002-E2SM-RC-Rapporteur Correction-I-   v03.docx - Agreed in WG3#137   * RSYS.AO-2022.03.09-WG3-CR-0011-E2SM-RC-PolicyDecisionNewIE-   v01.docx - Agreed in WG3#137   * MAV.AO-2022.03.15-WG3-CR-0009-E2SM-RC-Measurement Report   Configuration-v09.docx - Agreed in WG3#137 |
| 2022.04.01 | 01.02.03 | Editorial corrections based on the comments during voting.   * Modified upper case to lower case of "Name" in ranParameter-Name in ASN.1 in L2Parameters-RANParameter-Item * Typo of Table name in 7.8 corrected * Cross Reference provided for Table names in 7.8 |
| 2022.06.29 | 01.02 | Final version for March 2022 Publication |
| 2022.07.20 | 01.02.04 | Incorporated WG3 Agreed CRs -   * NOK-2022.06.08-WG3-CR-0017-E2SM-RC-RAN Parameter ID correction- v03.docx- Agreed in WG3#154 |
| 2022.07.20 | 01.02.05 | Aligned to new Template |
| 2022.11.12 | 01.03.01 | Incorporated WG3 Agreed CRs -   * NOK-2022.08.23-WG3-CR-0019-E2SM-RC-Policy service enhancements-v01 - Agreed in WG3#157 * INT-2022.10.28-WG3-CR-0023-E2SM-RC-enh\_mMIMO\_non-   GoB\_retrieval\_rev4.docx - Agreed in WG3#164   * INT.AO-2022.10.28-WG3-CR-0025-E2SM-RC-enh\_mMIMO\_non-   GoB\_control\_policy\_rev3\_ver3(control+genericPolicy+eventTriggerPolicy).docx - Agreed in WG3#165   * QCM-2022.09.08-WG3-CR-0001-E2SM-RC-E1AP reference correction- v02.docx - Agreed in WG3#161 * NEC-2022.10.05-WG3-CR-0007-E2SM-RC Neighbor Table Clarification v4.docx - Agreed in WG3#162 * AKA-2022.10.03-WG3-CR-0002-E2SM-RC-Neighor Relation Information table-v02.docx - Agreed in WG3#F2F * QCM.AO-2022.10.22-WG3-CR-0004-E2SM-RC-OnDemand Deprecate-   v02.docx - Agreed in WG3#165   * QCM.AO-2022.09.08-WG3-CR-0003-E2SM-RC-RIC Query Procedure-   v09.docx - Agreed in WG3#165   * MAV.AO-2022.10.05-WG3-CR-0010-E2SM-RC-UE group-based control action |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
|  |  | -v14.docx - Agreed in WG3#165 |
| 2022.11.12 | 01.03.02 | Incorporated WG3 Agreed CRs -   * MAV.AO-2022.10.05-WG3-CR-0010-E2SM-RC-UE group-based control action   -v16.docx - Agreed in WG3#165 |
| 2022.11.20 | 01.03.03 | Updated with Review comments during voting period |
| 2023.01.18 | 02.00 | Incorporated WG3 agreed Minor CR -   * NOK.AO-2023.01.11-WG3-CR-0022-E2SM-RC-ASN1-correction-v03.docx |
| 2023.01.18 | 02.00 | Incorporated WG3 agreed Minor CR -  NOK.AO-2023.01.11-WG3-CR-0022-E2SM-RC-ASN1-correction-v03.docx |
| 2023.02.08 | 03.00 | Final version for November 2022 Publication |
| 2023.06.12 | 03.00.01 | Incorporated WG3 agreed CR in F2F Feb2023 Prague -  NOK-2022.08.12-WG3-CR-0020-E2SM-RC-Annex A.2 Insert-Control-v05.docx |
| 2023.07.03 | 03.00.02 | Incorporated WG3 agreed CRs -   * MAV-2023-04-24-WG3-CR-0011-E2SMRC v03.00 ASN1 fix for list of   supported control format types-v01.docx   * MAV-2023-04-24-WG3-CR-0012-E2SMRC v03.00 UE group-based MR   configuration-v02.docx   * NOK.AO-2023.02.15-WG3-CR-0023-E2SM-RC-correcting control style 8- v03.docx * NOK-2023.03.01-WG3-CR-0024-E2SM-RC-bMRO-v04.docx * QCM.AO-2023.06.16-WG3-CR-0005-E2SM-RC-Rapporteur Corrections- v02.docx |
| 2023.07.17 | 03.00.03 | Incorporated WG3 agreed CRs -   * NOV-2023.06.10-WG3-CR-0025-E2SM-RC-text-IE-name-alignment#1-   v3.0.docx   * NOV-2023.06.10-WG3-CR-0026-E2SM-RC-text-IE-name-alignment#2-   v2.0.docx   * NOV-2023.06.10-WG3-CR-0027-E2SM-RC-text-IE-name-alignment#3-   v3.0.docx |
| 2023.07.27 | 03.00.04 | Incorporated review comments during voting period |
| 2023.11.09 | 04.00.01 | Incorporated WG3 agreed CRs -   * NOK.AO-2023.08.01-WG3-CR-0028-E2SM-RC-RAN Function definition stage 2-v06.docx * QCM-2023.10.19-WG3-CR-0007-E2SM-RC-UE Identifier for RIC   Query\_v02.docx   * NOK-2022.01.05-WG3-CR-0014-E2SM-RC-completing control style 8- v20.docx * NOK-202311.06-WG3-CR-0029-E2SM-RC-RDF extension for control- Approach 1 NBC-v1.docx * NEC-2023.10.10-WG3-CR-0023-E2SM-RC-   QoSIdentifier\_IEReference\_Correction-v01.docx |
| 2023.11.16 | 04.00.02 | Editorial corrections implementing WG3 voting period feedback |
| 2023.11.21 | 04.00.03 | Incorporated WG3 voting period feedback |
| 2024.03.25 | 05.00.01 | Incorporated WG3 agreed CRs -   * NOK-2023.11.27-WG3-CR-0031-E2SM-RC-PolicyConditionID-v02.docx * COT-2024.01.29-WG3-CR-0002-E2SM-RC-MU-MIMO-Optimization-E2-   Node-Config-v04.docx   * [COT-2024.02.13-WG3-CR-0003-E2SM-RC-MU-MIMO-Optimization-UE-](https://oranalliance.atlassian.net/wiki/download/attachments/3032121589/COT-2024.02.13-WG3-CR-0003-E2SM-RC-MU-MIMO-Optimization-UE-Context-Reporting-v02.docx?api=v2)   [Context-Reporting-v02.docx](https://oranalliance.atlassian.net/wiki/download/attachments/3032121589/COT-2024.02.13-WG3-CR-0003-E2SM-RC-MU-MIMO-Optimization-UE-Context-Reporting-v02.docx?api=v2)   * RSYS-2024.02.16-WG3-CR-0001-E2SM-RC CellAccessBarring Parameter addition-v06.docx |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
|  |  | * RSYS-2024.02.20-WG3-CR-0002-E2SM-RC UAC Barring for PLMN   correction-v04.docx   * NOK.AO-2024.03.13-WG3-CR-0032-E2SM-RC clause 3.1 and 4.3-v02.docx * NEC-2023.11.07-WG3-CR-0026-E2SM-RC-   Neighbor\_to\_Neighbour\_Editorial\_Correction\_v01.docx |
| 2024.03.27 | 05.00.02 | Editorial corrections during WG3 voting period |
| 2024.11.27 | 06.00.01 | Incorporated WG3 agreed CRs -   * CUC-2024.9.20-WG3-CR-0004-E2SM-RC-add descriptions of BF control and BF policy\_v01.docx * MAV.AO-2024.10.21.WG3-CR-0013.E2SM-RC CR on CSI-RS DMRS Opt-   v08.docx   * NOK-2024.11.12-E2SM-RC-CR-0034-ErrorHandling-v02.docx * CUC-2024.8.19-WG3-CR-0003-E2SM-RC-Correct connected mode mobility control\_v03.docx * COT-2024.05.24-WG3-CR-0006-E2SM-RC-MU-MIMO-Optimization-QoS-   Parameters-Reporting-v02.docx   * COT-2024.02.13-WG3-CR-0004-E2SM-RC-MU-MIMO-Optimization-   Controlling-Configurations-v05.docx |
| 2024.12.06 | 06.00.02 | Editorial corrections during WG3 voting period |

</div>

# History

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Date** | **Revision** | **Description** |
| 2021.08.10 | 01.00 | TSC Approved |
| 2022.02.07 | 01.01 | Final version for November 2021 publication |
| 2022.06.29 | 01.02 | Final version for March 2022 Publication |
| 2022.07.20 | 01.03 | Final version for July22 publication |
| 2022.11.21 | 02.00 | November 2022 Publication Withdrawn |
| 2023.02.08 | 03.00 | Final version for November 2022 Publication |
| 2023.07.31 | 04.00 | Final version for July 2023 Publication |
| 2023.11.21 | 05.00 | Final version for Nov 2023 Publication |
| 2024.04.01 | 06.00 | Final version for March 2024 Publication |
| 2024.12.09 | 07.00 | Final version for November 2024 Publication |

</div>
---

- View in [GitHub Mode]({{site.github_page_url}}/O-RAN.WG3.TS.E2SM-RC-R004-v07.00.docx.md).
- Go back to [Table of Contents]({{site.baseurl}}/).
- Download the [Original Document]({{site.download_url}}/O-RAN.WG3.TS.E2SM-RC-R004-v07.00.docx).
