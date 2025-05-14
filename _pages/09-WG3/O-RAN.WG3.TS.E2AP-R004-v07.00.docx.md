---
title: O-RAN.WG3.TS.E2AP-R004-v07.00.docx.md
author: O-RAN Alliance, WG3
layout: post
---

- View in [GitHub Mode]({{site.github_page_url}}/O-RAN.WG3.TS.E2AP-R004-v07.00.docx.md).
- Go back to [Table of Contents]({{site.baseurl}}/).
- Download the [Original Document]({{site.download_url}}/O-RAN.WG3.TS.E2AP-R004-v07.00.docx).

---

* toc
{:toc}

---

![webwxgetmsgimg (7).jpeg]({{site.baseurl}}/assets/images/28e22da37450.jpg)O-RAN.WG3.TS.E2AP-R004-v07.00

*Technical Specification*

**O-RAN Work Group 3 (WG-3) Near-Real-time RAN Intelligent Controller and E2 Interface**

**E2 Application Protocol (E2AP)**

Copyright (C) 2025 by the O-RAN ALLIANCE e.V.

The copying or incorporation into any other work of part or all of the material available in this specification in any form without the prior written permission of O-RAN ALLIANCE e.V. is prohibited, save that you may print or download extracts of the material of this specification for your personal use, or copy the material of this specification for the purpose of sending to individual third parties for their information provided that you acknowledge O-RAN ALLIANCE as the source of the material and that you inform the third party that these conditions apply to them and that they must comply with them.

O-RAN ALLIANCE e.V., Buschkauler Weg 27, 53347 Alfter, Germany Register of Associations, Bonn VR 11238, VAT ID DE321720189

"(C) 2019. 3GPP(TM) TSs and TRs are the property of ARIB, ATIS, CCSA, ETSI, TSDSI, TTA and TTC who jointly own the copyright in them. They are subject to further modifications and are therefore provided to you "as is" for information purposes only. Further use is strictly prohibited."

"(C) 2020. 3GPP(TM) TSs and TRs are the property of ARIB, ATIS, CCSA, ETSI, TSDSI, TTA and TTC who jointly own the copyright in them. They are subject to further modifications and are therefore provided to you "as is" for information purposes only. Further use is strictly prohibited."

Contents

List of figures 6

List of tables 6

Foreword 8

Modal verbs terminology 8

1. Scope 9
2. References 9
   1. Normative references 9
   2. Informative references 10
3. Definition of terms, symbols and abbreviations 10
   1. Terms 10
   2. Symbols 11
   3. Abbreviations 11
4. General 12
   1. Procedure specification principles 12
   2. Forwards and backwards compatibility 12
   3. Specification notations 12
5. E2AP Services 13
   1. E2AP procedure modules 13
   2. Parallel transactions 13
6. Services expected from signalling transport 13
7. Functions of E2AP 13
8. E2AP procedures 13
   1. Elementary procedures 13
   2. RIC Functional procedures 15
      1. RIC Subscription procedure 15
      2. RIC Subscription Delete procedure 18
      3. A RIC Subscription Delete Required procedure 19
      4. B RIC Subscription Audit procedure 20
      5. RIC Indication procedure 22
      6. RIC Control procedure 23
      7. RIC Subscription Modification procedure 24
      8. RIC Subscription Modification Required procedure 28
      9. RIC Query procedure 29
      10. RIC Service Load Status procedure 31
      11. RIC Service Load Update procedure 32
      12. RIC Subscription State Control procedure 33
      13. RIC Assistance procedure 35
      14. RIC Assistance Indication procedure 36
      15. RIC Assistance Halt procedure 37
   3. Global procedures 38
      1. E2 Setup procedure 38
      2. Reset procedure 40
      3. Error Indication 41
      4. RIC Service Update procedure 42
      5. A RIC Service Query procedure 44
      6. E2 Node Configuration Update procedure 45
      7. E2 Connection Update procedure 47
      8. E2 Removal procedure 48
9. Elements for E2AP communication 50
   1. General 50
   2. Message functional definition and content 51
      1. Messages for RIC Functional procedures 51
      2. Messages for Global Procedures 70
   3. Information Element definitions 83
      1. General 83
      2. Cause 83
      3. Criticality Diagnostics 86
      4. Message Type 87
      5. Global RIC ID 87
      6. Time to wait 88
      7. Global E2 Node ID 88
      8. RIC Request ID 88
      9. RAN Function ID 89
      10. RIC Event Trigger Definition 89
      11. RIC Action ID 89
      12. RIC Action Type 89
      13. RIC Action Definition 89
      14. RIC Subsequent Action 90
      15. RIC Indication Sequence Number (SN) 90
      16. RIC Indication Type 90
      17. RIC Indication message 90
      18. RIC Indication header 90
      19. RIC Call Process ID 91
      20. RIC Control message 91
      21. RIC Control header 91
      22. RIC Control Ack Request 91
      23. Void 91
      24. RAN Function Definition 92
      25. RAN Function Revision 92
      26. RIC Control Outcome 92
      27. E2 Node Component Interface Type 92
      28. E2 Node Component Configuration 92
      29. E2 Node Component Configuration Acknowledge 97
      30. Transport Layer Information 97
      31. TNL Association Usage 98
      32. RAN Function OID 98
      33. E2 Node Component ID 98
      34. Transaction ID 99
      35. RIC Subscription Time 99
      36. RIC Action Execution Order 99
      37. RIC Query Header 99
      38. RIC Query Definition 99
      39. RIC Query Outcome 100
      40. RIC Subscription Audit Flag 100
      41. Load Measurement ID 100
      42. RIC Load Information 100
      43. RIC Service Load Information 100
      44. RIC Load Request 101
      45. RIC Service Load Request 101
      46. RIC Load Confirm 101
      47. RIC Service Load Confirm 102
      48. RIC Assistance Header 102
      49. RIC Assistance Message 102
      50. RIC Assistance Update 102
      51. RIC Assistance Update Number 102
      52. RIC Assistance Outcome 103
      53. RIC Assistance SN 103
      54. Service Level Cause 103
   4. Message and Information Element Abstract Syntax (with ASN.1) 103
      1. General 103
      2. Usage of private message mechanism for non-standard use 104
      3. Elementary Procedure definitions 104
      4. PDU definitions 109
      5. Information Element definitions 142
      6. Common definitions 150
      7. Constant definitions 151
      8. Container definitions 154
   5. Message transfer syntax 156
   6. Timers 156
10. Handling of unknown, unforeseen and erroneous protocol data 157

Annex (informative): Change History 158

# List of figures

Figure 8.2.1.2-1: RIC Subscription procedure, successful operation 15

Figure 8.2.1.3-1: RIC Subscription procedure, unsuccessful operation 17

Figure 8.2.2.2-1: RIC Subscription Delete procedure, successful operation 18

Figure 8.2.2.3-1: RIC Subscription Delete procedure, unsuccessful operation 18

Figure 8.2.2A.2-1: RIC Subscription Delete Required procedure, successful operation 19

Figure 8.2.2B.2-1: RIC Subscription Audit procedure, successful operation 20

Figure 8.2.2B.3-1: RIC Subscription Audit procedure, unsuccessful operation 21

Figure 8.2.3.2-1: RIC Indication procedure, successful operation 22

Figure 8.2.4.2-1: RIC Control procedure, successful operation 23

Figure 8.2.4.3-1: RIC Control procedure, unsuccessful operation 24

Figure 8.2.5.2-1: RIC Subscription Modification procedure, successful operation 25

Figure 8.2.5.3-1: RIC Subscription Modification procedure, unsuccessful operation 27

Figure 8.2.6.2-1: RIC Subscription Modification Required procedure, successful operation 28

Figure 8.2.6.3-1: RIC Subscription Modification Required procedure, unsuccessful operation 29

Figure 8.2.7.2-1: RIC Query procedure, successful operation 30

Figure 8.2.7.3-1: RIC Query procedure, unsuccessful operation 30

Figure 8.2.8.2-1: RIC Load Status procedure, successful operation 31

Figure 8.2.8.3-1: RIC Service Load Status procedure, unsuccessful operation 32

Figure 8.2.9.2-1: RIC Service Load Update procedure, successful operation 33

Figure 8.2.10.2-1: RIC Subscription State Control procedure, successful operation 34

Figure 8.2.10.3-1: RIC Subscription State Control procedure, unsuccessful operation 35

Figure 8.2.11.2-1: RIC Assistance procedure, successful operation 35

Figure 8.2.11.3-1: RIC Assistance procedure, unsuccessful operation 36

Figure 8.2.12.2-1: RIC Assistance Indication procedure, successful operation 37

Figure 8.2.13.2-1: RIC Assistance Halt procedure, successful operation 38

Figure 8.3.1.2-1: E2 Setup procedure, successful operation 39

Figure 8.3.1.3-1: E2 Setup procedure, unsuccessful operation 39

Figure 8.3.2.2-1: Reset, successful operation (E2 Node Initiated) 40

Figure 8.3.2.2-2: Reset, successful operation (Near-RT RIC Initiated) 40

Figure 8.3.3.2-1: Error Indication, (E2 Node initiated) successful operation 41

Figure 8.3.3.2-2: Error Indication, (Near-RT RIC Initiated) successful operation 41

Figure 8.3.4.2-1: RIC Service Update procedure, successful operation 42

Figure 8.3.4.3-1: RIC Service Update procedure, unsuccessful operation 43

Figure 8.3.4A.2-1: RIC Service Query procedure, successful operation 44

Figure 8.3.5.2-1: E2 Node Configuration Update procedure, successful operation 45

Figure 8.3.5.3-1: E2 Node Configuration Update procedure, unsuccessful operation 46

Figure 8.3.6.2-1: E2 Connection Update procedure, successful operation 47

Figure 8.3.6.3-1: E2 Connection Update procedure, unsuccessful operation 48

Figure 8.3.7.2-1: E2 Removal, successful operation (E2 Node Initiated) 49

Figure 8.3.7.2-2: E2 Removal, successful operation (Near-RT RIC Initiated) 49

Figure 8.3.7.3-1: E2 Removal procedure (E2 Node Initiated), unsuccessful operation 50

Figure 8.3.7.3-2: E2 Removal procedure (Near-RT RIC Initiated), unsuccessful operation 50

# List of tables

Table 8.1-1: Class 1 Elementary Procedures 14

Table 8.1-2: Class 2 Elementary Procedures 15

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

The present document specifies the Near-RT RIC layer signalling protocol for the E2 interface.

The E2 interface provides means for interconnecting a Near-RT RIC and an E2 Node. The E2 Application Protocol (E2AP) supports the functions of E2 interface by signalling procedures defined in the present document. E2AP is developed in accordance with the general principles stated in O-RAN WG3.TS.E2GAP [2].

# References

## Normative references

References are either specific (identified by date of publication and/or edition number or version number) or non-specific. For specific references, only the cited version applies. For non-specific references, the latest version of the referenced document (including any amendments) applies.

NOTE 1: While any hyperlinks included in this clause were valid at the time of publication, O-RAN cannot guarantee their long-term validity.

NOTE 2: In the case of a reference to a 3GPP document (including a GSM document), a non-specific reference implicitly refers to the latest version of that document in 3GPP Release 18.

The following referenced documents are necessary for the application of the present document.

1. Void.
2. O-RAN WG3.TS.E2GAP: "O-RAN E2 General Aspects and Principles (E2GAP)".
3. O-RAN WG3.TS.E2SM: "O-RAN E2 Service Model (E2SM)".
4. Void.
5. Void.
6. Void.
7. Void.
8. Void.
9. Void.
10. Void.
11. Void.
12. Void.
13. Void.
14. Void.
15. Recommendation ITU-T X.691 (02/2021): "Information technology - ASN.1 encoding rules: Specification of Packed Encoding Rules (PER)".
16. Recommendation ITU-T X.680 (02/2021): "Information technology - Abstract Syntax Notation One (ASN.1): Specification of basic notation".
17. Recommendation ITU-T X.681 (02/2021): "Information technology - Abstract Syntax Notation One (ASN.1): Information object specification".
18. Void.
19. 3GPP TS 38.413: "NG-RAN; NG Application Protocol (NGAP)"
20. 3GPP TS 38.423: "NG-RAN; Xn application protocol (XnAP)"
21. 3GPP TS 37.483: "E1 Application Protocol (E1AP)"
22. 3GPP TS 38.473: "NG-RAN; F1 application protocol (F1AP)"
23. 3GPP TS 37.473: "W1 interface; Application Protocol (W1AP)"
24. 3GPP TS 36.413: "Evolved Universal Terrestrial Radio Access Network (E-UTRAN); S1 Application Protocol (S1AP)"
25. 3GPP TS 36.423: "Evolved Universal Terrestrial Radio Access Network (E-UTRAN); X2 application protocol (X2AP) "
26. IETF RFC 5905: "Network Time Protocol Version 4: Protocol and Algorithms Specification"
27. O-RAN WG1.TS.OAD: "O-RAN Architecture Description"

## Informative references

References are either specific (identified by date of publication and/or edition number or version number) or non-specific. For specific references, only the cited version applies. For non-specific references, the latest version of the referenced document (including any amendments) applies.

NOTE 1: While any hyperlinks included in this clause were valid at the time of publication, O-RAN cannot guarantee their long-term validity.

NOTE 2: In the case of a reference to a 3GPP document (including a GSM document), a non-specific reference implicitly refers to the latest version of that document in 3GPP Release 18.

The following referenced documents are not necessary for the application of the present document, but they assist the user with regard to a particular subject area.

[i.1] 3GPP TR 21.905: "Vocabulary for 3GPP Specifications".

[i.2] 3GPP TS 25.921 (version 7.0.0): "Guidelines and principles for protocol description and error handling".

# Definition of terms, symbols and abbreviations

## Terms

For the purposes of the present document, the terms given in 3GPP TR 21.905 [i.1], O-RAN WG1.TS.OAD [27], O-RAN WG3.TS.E2GAP [2] and the following apply.

NOTE: A term defined in the present document takes precedence over the definition of the same term, if any, in 3GPP TR 21.905 [i.1], O-RAN WG1.TS.OAD [27] and O-RAN WG3.TS.E2GAP [2].

**E2 Node Component ID**: local identifier used to uniquely identify an E2 Node component

**Elementary Procedure:** E2AP protocol consists of Elementary Procedures (EPs)

NOTE: An E2AP Elementary Procedure is a unit of interaction between the Near-RT RIC and an E2 Node. An EP consists of an initiating message and possibly a response message. Two kinds of EPs are used:

Class 1: Elementary Procedures with response (success or failure), Class 2: Elementary Procedures without response.

**Global E2 Node ID**: global identifier of an E2 Node. Defined as the global eNB or gNB identifier and an optional local identifier of an CU-UP or DU which is required when and if an individual DU or CU-UP supports a direct E2 interface

**Global RIC ID**: global identifier of a Near-RT RIC

**RAN Function ID**: local identifier of a specific RAN Function within an E2 Node that supports one or more RIC Services using a specific E2 Service Model

**RAN Function OID**: RAN Function Object Identifier used to identify specific RAN function definition (i.e. E2SM used by specific RAN Function)

**RIC Action ID**: local identifier used Near-RT RIC to identify a specific RIC Service Action within a specific RIC Subscription Request, used by E2 Node in subsequent RIC Indication messages

**RIC Call Process ID**: local identifier used by E2 Node to identify the associated procedure during an Insert RIC Service Action, used by Near-RT RIC in subsequent RIC Control procedure

**RIC Request ID**: local identifier used to identify a specific RIC Functional procedure among all ongoing parallel procedures of the same type initiated by the same protocol peer.

NOTE: Messages belonging to the same procedure use the same RIC Request ID. The RIC Request ID is determined by the initiating peer of a RIC Functional Procedure.

**Transaction ID**: local identifier used to uniquely identify a Global Procedure among all ongoing parallel procedures of the same type initiated by the same protocol peer

NOTE: Messages belonging to the same procedure use the same Transaction ID. The Transaction ID is determined by the initiating peer of a Global Procedure (Near-RT RIC or E2 Node).

## Symbols

Void.

## Abbreviations

For the purposes of the present document, the abbreviations given in 3GPP TR 21.905 [i.1], O-RAN WG1.TS.OAD [27] and the following apply.

NOTE: An abbreviation defined in the present document takes precedence over the definition of the same abbreviation, if any, in 3GPP TR 21.905 [i.1] and O-RAN WG1.TS.OAD [27].

EP Elementary Procedure

# General

## Procedure specification principles

The principle for specifying the procedure logic is to specify the functional behaviour of the terminating node exactly and completely. Any rule that specifies the behaviour of the originating node shall be possible to be verified with information that is visible within the system.

The following specification principles have been applied for the procedure text in clause 8:

* The procedure text discriminates between:
  1. Functionality which "shall" be executed.

The procedure text indicates that the receiving node "shall" perform a certain function Y under a certain condition. If the receiving node supports procedure X but cannot perform functionality Y requested in the REQUEST message of a Class 1 EP, the receiving node shall respond with the message used to report unsuccessful outcome for this procedure, containing an appropriate cause value.

* 1. Functionality which "shall, if supported" be executed.

The procedure text indicates that the receiving node "shall, if supported," perform a certain function Y under a certain condition. If the receiving node supports procedure X, but does not support functionality Y, the receiving node shall proceed with the execution of the EP, possibly informing the requesting node about the nonsupported functionality.

- Any required inclusion of an optional IE in a response message is explicitly indicated in the procedure text. If the procedure text does not explicitly indicate that an optional IE shall be included in a response message, the optional IE shall not be included. For requirements on including Criticality Diagnostics IE, see clause 10.

## Forwards and backwards compatibility

The forwards and backwards compatibility of the protocol is assured by mechanism where all current and future messages, and IEs or groups of related IEs, include ID and criticality fields that are coded in a standard format that will not be changed in the future. These parts can always be decoded regardless of the standard version.

## Specification notations

For the purposes of the present document, the following notations apply:

Procedure When referring to an Elementary Procedure (EP) in the present document the Procedure Name is written with the first letters in each word in upper case characters followed by the word "procedure", e.g.

Handover Preparation procedure.

Message When referring to a message in the present document the MESSAGE NAME is written with all letters in upper case characters followed by the word "message", e.g. HANDOVER REQUEST message.

IE When referring to an Information Element (IE) in the present document the *Information Element Name* is written with the first letters in each word in upper case characters and all letters in Italic font followed by the abbreviation "IE", e.g. *E-RAB ID* IE.

Value of an IE When referring to the value of an Information Element (IE) in the present document the "Value" is written as it is specified in the present document enclosed by quotation marks, e.g. "Value".

# E2AP Services

## E2AP procedure modules

The E2 interface E2AP procedures are divided into two modules as follows:

1. RIC Functional Procedures;
2. Global Procedures.

The RIC functional procedures module contains procedures used to pass application specific messages between Near-RT RIC applications and a target RAN Function in an E2 node as specified in O-RAN WG3.TS.E2GAP [2].

The Global Procedures module contains procedures that are not directly related to a specific application.

## Parallel transactions

Parallel transactions, that is, multiple ongoing E2AP procedures related to the same Application and E2 node, are supported.

# Services expected from signalling transport

The signalling connection shall provide in sequence delivery of E2AP messages. E2AP shall be notified if the signalling connection breaks.

# Functions of E2AP

The functions of E2AP are described in O-RAN WG3.TS.E2GAP [2].

# E2AP procedures

## Elementary procedures

In the Tables 8.1-1 and 8.1-2, all EPs are divided into Class 1 and Class 2 EPs.

###### Table 8.1-1: Class 1 Elementary Procedures

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **Initiated**  **by** | **Elementary**  **Procedure** | **Initiating Message** | **Successful Outcome** | **Unsuccessful Outcome** |
| **Response message** | **Response message** |
| Near-RT  RIC | RIC Subscription | RIC SUBSCRIPTION  REQUEST | RIC SUBSCRIPTION  RESPONSE | RIC SUBSCRIPTION  FAILURE |
| Near-RT  RIC | RIC Subscription  Delete | RIC SUBSCRIPTION  DELETE REQUEST | RIC SUBSCRIPTION  DELETE RESPONSE | RIC SUBSCRIPTION  DELETE FAILURE |
| Near-RT RIC | RIC Subscription Modification | RIC SUBSCRIPTION  MODIFICATION REQUEST | RIC SUBSCRIPTION  MODIFICATION RESPONSE | RIC SUBSCRIPTION MODIFICATION FAILURE |
| E2 Node | RIC Subscription  Modification Required | RIC SUBSCRIPTION  MODIFICATION REQUIRED | RIC SUBSCRIPTION  MODIFICATION CONFIRM | RIC SUBSCRIPTION MODIFICATION REFUSE |
| Near-RT RIC | RIC Subscription State Control | RIC SUBSCRIPTION STATE CONTROL  REQUEST | RIC SUBSCRIPTION STATE CONTROL  RESPONSE | RIC SUBSCRIPTION STATE CONTROL  FAILURE |
| Near-RT  RIC | RIC Subscription  Audit | RIC SUBSCRIPTION  AUDIT REQUEST | RIC SUBSCRIPTION  AUDIT RESPONSE | RIC SUBSCRIPTION  AUDIT FAILURE |
| E2 Node | RIC Assistance | RIC ASSISTANCE  REQUEST | RIC ASSISTANCE  RESPONSE | RIC ASSISTANCE  FAILURE |
| Near-RT  RIC | RIC Control | RIC CONTROL  REQUEST | RIC CONTROL  ACKNOWLEDGE | RIC CONTROL FAILURE |
| Near-RT  RIC | RIC Query | RIC QUERY  REQUEST | RIC QUERY  RESPONSE | RIC QUERY FAILURE |
| Near-RT  RIC | RIC Service Load  Status | RIC SERVICE LOAD  STATUS REQUEST | RIC SERVICE LOAD  STATUS RESPONSE | RIC SERVICE LOAD  STATUS FAILURE |
| E2 Node | E2 Setup | E2 SETUP REQUEST | E2 SETUP  RESPONSE | E2 SETUP FAILURE |
| E2 Node | RIC Service Update | RIC SERVICE UPDATE | RIC SERVICE  UPDATE ACKNOWLEDGE | RIC SERVICE UPDATE FAILURE |
| E2 Node | E2 Node Configuration Update | E2 NODE CONFIGURATION UPDATE | E2 NODE CONFIGURATION UPDATE  ACKNOWLEDGE | E2 NODE CONFIGURATION UPDATE FAILURE |
| Near-RT RIC | E2 Connection Update | E2 CONNECTION UPDATE | E2 CONNECTION UPDATE  ACKNOWLEDGE | E2 CONNECTION UPDATE FAILURE |
| Near-RT RIC or E2  Node | Reset | RESET REQUEST | RESET RESPONSE |  |
| Near-RT RIC or E2  Node | E2 Removal | E2 REMOVAL REQUEST | E2 REMOVAL RESPONSE | E2 REMOVAL FAILURE |

</div>

###### Table 8.1-2: Class 2 Elementary Procedures

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Initiated by** | **Elementary Procedure** | **Initiating Message** |
| Near-RT RIC | RIC Assistance Indication | RIC ASSISTANCE INDICATION |
| E2 Node | RIC Assistance Halt | RIC ASSISTANCE HALT |
| E2 Node | RIC Indication | RIC INDICATION |
| Near-RT RIC | RIC Service Query | RIC SERVICE QUERY |
| E2 Node | RIC Subscription Delete  Required | RIC SUBSCRIPTION DELETE  REQUIRED |
| E2 Node | RIC Service Load Update | RIC SERVICE LOAD UPDATE |
| E2 Node or Near-  RT RIC | Error Indication | ERROR INDICATION |

</div>

## RIC Functional procedures

### RIC Subscription procedure

##### General

This procedure is used to establish RIC Subscriptions on E2 Node consisting of an event trigger and a sequence of RIC Service Actions.

This procedure shall be initiated by the Near-RT RIC. This procedure uses RIC Service signalling.

##### Successful operation

![Generated by PlantUML]({{site.baseurl}}/assets/images/46ab025bebba.png)

###### Figure 8.2.1.2-1: RIC Subscription procedure, successful operation

The Near-RT RIC initiates the procedure by sending a RIC SUBSCRIPTION REQUEST message, which shall contain a unique *RIC Request ID* IE, assigned by the Near-RT RIC, to the E2 Node.

When the Near-RT RIC sends the RIC SUBSCRIPTION REQUEST message, it shall start the timer TRICEVENTcreate. At reception of the RIC SUBSCRIPTION REQUEST message the E2 Node shall:

* Determine the target RAN Function using the information in the *RAN Function ID* IE and configure the requested event trigger using information in the *RIC Subscription Details* IE.
* If one or more Report, Insert and/or Policy RIC Service Actions are included in the *RIC Subscription Details* IE then the target RAN Function shall validate the event trigger and requested action sequence and, if accepted, store the required *RIC Request ID, RIC Event Trigger Definition* IE and sequence of RIC Service Actions.
* If optional *RIC Subscription Start Time* IE is present and has expired, then the E2 Node shall ignore the optional *RIC Subscription Start Time* IE.

If the requested trigger and at least one required RIC Service Action are accepted by the E2 Node, the E2 Node shall reserve for each admitted RIC Service Action the necessary resources and send the RIC SUBSCRIPTION RESPONSE message back to the Near-RT RIC.

The E2 Node shall include in the response message the RIC Service Actions for which resources have been prepared at the E2 Node in the *RIC Actions Admitted List* IE.

The E2 Node shall include the RIC Service Actions that have not been admitted in the *RIC Actions Not Admitted List* IE with an appropriate cause value.

Upon reception of the RIC SUBSCRIPTION RESPONSE message the Near-RT RIC shall stop timer TRICEVENTcreate and terminate the RIC Subscription procedure.

If more than one RIC Service Actions has been accepted by the E2 Node then, at each occurrence of the common Event Trigger, the sequence of RIC Service Actions shall be executed according to the following considerations:

* If optional *RIC Action Execution Order* IE is not present or is present and set to 0 ("Any order"), then the specific RIC Service Action in the sequence of RIC Service Actions may be executed in any order irrespective of the execution order of the other RIC Service Actions.
* If optional *RIC Action Execution Order* IE is present and set to a value greater than 0, then the specific RIC Service Action shall be executed in order according to the *RIC Action Execution Order* IE.
* If two or more RIC Service Actions have the same value for the optional *RIC Action Execution Order* IE then these RIC Service Actions shall be executed in parallel.

If the optional *RIC Subscription Start Time* IE is present, the E2 Node shall only enable the event trigger from the indicated start time.

If the optional *RIC Subscription End Time* IE is present, the E2 Node shall disable the event trigger when the indicated end time has expired.

###### Interactions with RIC Subscription Delete Required procedure:

If the optional *RIC Subscription End Time* IE is present and the indicated end time has expired, the E2 Node may send the RIC SUBSCRIPTION DELETE REQUIRED message to the Near-RT RIC with an appropriate cause value.

###### Interactions with RIC Subscription Delete procedure:

If the optional *RIC Subscription End Time* IE is present, the Near-RT RIC may initiate an RIC Subscription Delete procedure when the expected *RIC Subscription End Time* has expired.

##### Unsuccessful operation

![Generated by PlantUML]({{site.baseurl}}/assets/images/4a1bb69471be.png)

###### Figure 8.2.1.3-1: RIC Subscription procedure, unsuccessful operation

If a failure occurs during the RIC Subscription procedure the E2 Node shall send the RIC SUBSCRIPTION FAILURE message to the Near-RT RIC containing an appropriate cause value.

If the E2 Node admits none of the requested RIC Service Actions, or detects an issue with the requested sequence of RIC Service Actions, or in the optional *RIC Subsequent Action* IE definitions, the E2 Node shall send the RIC SUBSCRIPTION FAILURE message to the Near-RT RIC containing an appropriate cause value.

If the RIC Subscription procedure contains an invalid optional *RIC Subscription Start Time* IE and/or *RIC Subscription End Time* IE, the E2 Node shall send the RIC SUBSCRIPTION FAILURE message to the Near-RT RIC containing an appropriate cause value.

Upon reception of the RIC SUBSCRIPTION FAILURE message the Near-RT RIC shall stop the timer TRICEVENTcreate and terminate the RIC Subscription procedure.

###### Interactions with RIC Subscription Delete procedure:

If there is no response from the E2 Node to the RIC SUBSCRIPTION REQUEST message before timer TRICEVENTcreate expires in the Near-RT RIC, the Near-RT RIC shall initiate the RIC Subscription Delete procedure containing *RIC Request ID* IE that was previously assigned by the Near-RT RIC to cancel the RIC Subscription towards the E2 Node. The Near-RT RIC shall ignore any RIC SUBSCRIPTION RESPONSE or RIC SUBSCRIPTION FAILURE message containing *RIC Request ID* IE that was previously assigned by the Near-RT RIC received after the initiation of the RIC Subscription Delete procedure and release any resources related to the concerned E2 Node.

##### Abnormal conditions

If the E2 Node receives a RIC SUBSCRIPTION REQUEST message containing *RIC Subscription Details* IE that does not align with the specific E2 Service Model, see O-RAN WG3.TS.E2SM [3], the E2 Node shall send the RIC SUBSCRIPTION FAILURE message to the Near-RT RIC containing an appropriate cause value.

If the E2 Node receives a RIC SUBSCRIPTION REQUEST message which contains an unknown *RAN Function ID* IE, the E2 Node shall send the RIC SUBSCRIPTION FAILURE message to the Near-RT RIC containing an appropriate cause value.

If the E2 Node receives a RIC SUBSCRIPTION REQUEST message containing identical contents the E2 Node shall send the RIC SUBSCRIPTION FAILURE message to the Near-RT RIC containing an appropriate cause value.

### RIC Subscription Delete procedure

##### General

This procedure is used to delete RIC Subscriptions on E2 Node. This procedure shall be initiated by the Near-RT RIC.

This procedure uses RIC Service signalling.

##### Successful operation

![Generated by PlantUML]({{site.baseurl}}/assets/images/6c1cdb71b998.png)

###### Figure 8.2.2.2-1: RIC Subscription Delete procedure, successful operation

The Near-RT RIC initiates the procedure by sending a RIC SUBSCRIPTION DELETE REQUEST message, containing *RIC Request ID* IE that was previously assigned by the Near-RT RIC during a successful RIC Subscription procedure, to the E2 Node.

When the Near-RT RIC sends the RIC SUBSCRIPTION DELETE REQUEST message, it shall start timer TRICEVENTdelete.

At reception of the RIC SUBSCRIPTION DELETE REQUEST message the E2 Node shall delete the indicated RIC Subscription and release the corresponding necessary resources.

The E2 Node shall send the RIC SUBSCRIPTION DELETE RESPONSE message back to the Near-RT RIC.

Upon reception of the RIC SUBSCRIPTION DELETE RESPONSE message the Near-RT RIC shall stop timer TRICEVENTdelete, release any necessary resources associated with that RIC Subscription and terminate the RIC Subscription Delete procedure.

##### Unsuccessful operation

![Generated by PlantUML]({{site.baseurl}}/assets/images/556bc86d7676.png)

###### Figure 8.2.2.3-1: RIC Subscription Delete procedure, unsuccessful operation

If a failure occurs during the RIC Subscription Delete procedure, the E2 Node shall send the RIC SUBSCRIPTION DELETE FAILURE message to the Near-RT RIC containing an appropriate cause value.

If the *RIC Request ID* IE included in the RIC SUBSCRIPTION DELETE REQUEST message is unknown, the E2 Node shall send the RIC SUBSCRIPTION DELETE FAILURE message to the Near-RT RIC containing an appropriate cause value

Upon reception of the RIC SUBSCRIPTION DELETE FAILURE message the Near-RT RIC shall stop timer TRICEVENTdelete and terminate the RIC Subscription Delete procedure.

##### Abnormal conditions

If the E2 Node receives a RIC SUBSCRIPTION DELETE REQUEST message contains an unknown *RAN Function ID* IE, the E2 Node shall send the RIC SUBSCRIPTION DELETE FAILURE message to the Near-RT RIC containing an appropriate cause value.

### A RIC Subscription Delete Required procedure

##### 8.2.2A.1 General

This procedure is used to enable the E2 Node to request deletion of the existing RIC Subscriptions in the E2 Node previously created for the Near-RT RIC.

This procedure shall be initiated by the E2 Node. This procedure uses RIC Service signalling.

##### 8.2.2A.2 Successful operation

![Generated by PlantUML]({{site.baseurl}}/assets/images/2447fd570c23.png)

###### Figure 8.2.2A.2-1: RIC Subscription Delete Required procedure, successful operation

The E2 Node initiates the procedure by sending a RIC SUBSCRIPTION DELTE REQUIRED message, containing *RIC Request ID* IE that was previously assigned by the Near-RT RIC during a successful RIC Subscription procedure, to the Near- RT RIC.

The message shall contain an appropriate cause value for each RIC Subscription requesting to remove.

At reception of the RIC SUBSCRIPTION DELETE REQUIRED message, for each RIC Subscription associated with the included *RIC Request ID* IE and *RAN Function ID* IE, the Near-RT RIC may initiate the RIC Subscription Delete procedure toward the E2 Node.

##### 8.2.2A.3 Abnormal conditions

If the Near-RT RIC receives a RIC SUBSCRIPTION DELETE REQUIRED message which contains an unknown *RIC Request ID* IE and *RAN Function ID* IE, the Near-RT RIC shall ignore the message.

### B RIC Subscription Audit procedure

##### 8.2.2B.1 General

This procedure is used to audit the list of establish RIC Subscriptions on E2 Node. This procedure shall be initiated by the Near-RT RIC.

This procedure uses RIC Service signalling.

##### 8.2.2B.2 Successful operation

![]({{site.baseurl}}/assets/images/848198292b49.png)![]({{site.baseurl}}/assets/images/6d0f18079666.png)![]({{site.baseurl}}/assets/images/28e0f58ac715.png)![]({{site.baseurl}}/assets/images/9658936aca02.png)![]({{site.baseurl}}/assets/images/5101aae4213c.png)![]({{site.baseurl}}/assets/images/93b6401ea629.png)

###### Figure 8.2.2B.2-1: RIC Subscription Audit procedure, successful operation

The Near-RT RIC initiates the procedure by sending a RIC SUBSCRIPTION AUDIT REQUEST message which shall contain a unique *RIC Request ID* IE, assigned by the Near-RT RIC to identify the procedure, and may contain the *RIC Subscription Audit List* IE with each item containing a *RIC Request ID* IE, that was previously assigned by the Near-RT RIC during a successful RIC Subscription procedure, to the E2 Node.

When the Near-RT RIC sends the RIC SUBSCRIPTION AUDIT REQUEST message, it shall start the timer TRICEVENTcreate. At reception of the RIC SUBSCRIPTION AUDIT REQUEST message the E2 Node shall:

* If the *RIC Subscription Audit List* IE is present and contains at least one RIC Subscription, identified by the *RIC Request ID* IE, that is recognized by the E2 Node, then the E2 Node shall record the confirmed RIC Subscriptions in the *RIC Subscription Confirmed List* IE.
* If the *RIC Subscription Audit List* IE is present and contains at least one RIC Subscription, identified by the *RIC Request ID* IE, that is not known to the E2 Node, then the E2 Node shall record the unknown RIC Subscriptions in the *RIC Subscription Unknown List* IE.
* If the *RIC Subscription Audit List* IE is present and if the *RIC Subscription Audit Flag* IE is not present and the E2 Node holds at least one established RIC Subscription that is not included in the *RIC Subscription Audit List* IE, then the E2 Node shall record the missing RIC Subscriptions in the *RIC Subscription Missing List* IE.
* If the *RIC Subscription Audit List* IE is present and if the *RIC Subscription Audit Flag* IE is present and the *Listed Records Only* IE is present and set to TRUE, then the E2 Node shall only respond with respect to the RIC Subscriptions in the *RIC Subscription Audit List* IE.
* If the *RIC Subscription Audit List* IE is not present, then the E2 Node shall record all established RIC Subscriptions in the *RIC Subscription Missing List* IE.

After processing the RIC SUBSCRIPTION AUDIT REQUEST message, if the E2 Node has at least one item in *RIC Subscription Confirmed List* IE, *RIC Subscription Unknown List* IE or *RIC Subscription Missing List* IE, the E2 Node shall send the RIC SUBSCRIPTION AUDIT RESPONSE message back to the Near-RT RIC.

The E2 Node shall include in the response message the confirmed RIC Subscriptions in the *RIC Subscription Confirmed List*

IE.

The E2 Node shall include in the response message the not known RIC Subscriptions in the *RIC Subscription Unknown List*

IE.

The E2 Node shall include in the response message the missing RIC Subscriptions in the *RIC Subscription Missing List* IE.

Upon reception of the RIC SUBSCRIPTION AUDIT RESPONSE message the Near-RT RIC shall stop timer TRICEVENTcreate and terminate the RIC Subscription Audit procedure.

##### 8.2.2B.3 Unsuccessful operation

![]({{site.baseurl}}/assets/images/848198292b49.png)![]({{site.baseurl}}/assets/images/6d0f18079666.png)![]({{site.baseurl}}/assets/images/28e0f58ac715.png)![]({{site.baseurl}}/assets/images/9658936aca02.png)![]({{site.baseurl}}/assets/images/04ce8365a610.png)![]({{site.baseurl}}/assets/images/da2f2677853e.png)

###### Figure 8.2.2B.3-1: RIC Subscription Audit procedure, unsuccessful operation

If a failure occurs during the RIC Subscription Audit procedure the E2 Node shall send the RIC SUBSCRIPTION AUDIT FAILURE message to the Near-RT RIC containing an appropriate cause value.

If the E2 Node after processing the RIC SUBSCRIPTION AUDIT REQUEST message, the E2 Node does not have at least one item in *RIC Subscription Confirmed List* IE, *RIC Subscription Unknown List* IE or *RIC Subscription Missing List* IE, the E2 Node shall send the RIC SUBSCRIPTION AUDIT FAILURE message to the Near-RT RIC containing an appropriate cause value.

Upon reception of the RIC SUBSCRIPTION AUDIT FAILURE message the Near-RT RIC shall stop the timer TRICEVENTcreate and terminate the RIC Subscription procedure.

##### 8.2.2B.4 Abnormal conditions

If the E2 Node receives a RIC SUBSCRIPTION AUDIT REQUEST message which contains an unknown *RAN Function ID* IE, the E2 Node shall send the RIC SUBSCRIPTION AUDIT FAILURE message to the Near-RT RIC containing an appropriate cause value.

### RIC Indication procedure

##### General

The purpose of the RIC Indication procedure is to transfer Report and/or Insert RIC Service Action associated with a RIC Subscription procedure.

This procedure shall be initiated by the E2 Node. This procedure uses RIC Service signalling.

##### Successful operation

![Generated by PlantUML]({{site.baseurl}}/assets/images/3dd3cb8e33e7.png)

###### Figure 8.2.3.2-1: RIC Indication procedure, successful operation

An E2 Node initiates the procedure by sending RIC INDICATION message to the Near-RT RIC containing the *RIC Request ID* IE, that was previously assigned by the Near-RT RIC during a successful RIC Subscription procedure.

If the RIC Indication message is in response to an Insert RIC Service Action, then the E2 Node shall provide the *RIC Call Process ID* IE within the RIC INDICATION message, and the E2 Node shall start the associated *RIC Time to Wait* timer, and wait for the corresponding response from the Near-RT RIC.

Near-RT RIC may use the *RIC Call Process ID* IE in a subsequent RIC Control procedure.

If an *RIC Subsequent Action* IE was associated to the RIC Service Action then, after successful transmission of the RIC INDICATION message, the originating E2 Node shall progress accordingly:

* If the *RIC Subsequent Action Type* IE was set to Continue or Halt, and the associated *RIC Time to Wait* timer has not expired, and a RIC CONTROL REQUEST message is received with the same *RIC Call Process ID* IE, then the associated procedure shall process the RIC CONTROL REQUEST and continue to execute any remaining actions in the sequence of RIC Actions defined in the RIC Subscription procedure.
* If the *RIC Subsequent Action Type* IE was set to Continue and the associated *RIC Time to Wait* timer has expired, then the E2 Node shall continue to execute any remaining RIC Service Actions in the sequence of RIC Service Actions defined in the RIC Subscription procedure.
* If the *RIC Subsequent Action Type* IE was set to Halt and the associated *RIC Time to Wait* timer has expired, then the E2 Node shall abort further processing of the associated procedure in the E2 node. In this case, any remaining or ongoing parallel RIC Service Actions in the sequence of RIC Actions defined in the RIC Subscription procedure shall also be aborted.

##### Unsuccessful operation

Not applicable.

##### Abnormal conditions

Not applicable.

### RIC Control procedure

##### General

The purpose of the RIC Control procedure is to initiate or resume a specific functionality in the E2 Node. This procedure shall be initiated by the Near-RT RIC.

This procedure uses RIC Service signalling.

##### Successful operation

![Generated by PlantUML]({{site.baseurl}}/assets/images/502aa93ef46b.png)

###### Figure 8.2.4.2-1: RIC Control procedure, successful operation

The Near-RT RIC initiates the procedure by sending a RIC CONTROL REQUEST message containing a unique *RIC Request ID* IE, assigned by the Near-RT RIC.

When the Near-RT RIC sends the RIC CONTROL REQUEST message and the optional *RIC Control Ack Request* IE has been set to "Ack", or is not present, the Near-RT RIC, it shall start the timer TRICcontrol.

At reception of the RIC CONTROL REQUEST message the E2 Node shall:

* Determine the target RAN Function using the information in the *RAN Function ID* IE and initiate the requested RIC Control procedure action using information in the *RIC Control Message* IE.
* If the *RIC Call Process ID* IE is included in the RIC CONTROL REQUEST message, the E2 Node shall use this IE to identify a specific call process that was indicated in the RIC INDICATION message.
* If the RIC CONTROL REQUEST message contains the optional *RIC Control Ack Request* IE set to "Ack", or if the optional *RIC Control Ack Request* IE is not present, and the E2 Node has successfully processed the requested RIC Control procedure action, then the E2 Node shall respond with the RIC CONTROL ACKNOWLEDGE message.
* If the RIC CONTROL REQUEST message contains the optional *RIC Control Ack Request* IE set to "NoAck" and the E2 Node has successfully processed the requested RIC Control procedure action, then the E2 Node shall not send the RIC CONTROL ACKNOWLEDGE message.

Upon reception of the RIC CONTROL ACKNOWLEDGE message, the Near-RT RIC shall stop timer TRICcontrol and terminate the RIC Control procedure.

The Near-RT RIC may use the information contained in the optional *RIC Control Outcome* IE to determine subsequent actions.

##### Unsuccessful operation

![Generated by PlantUML]({{site.baseurl}}/assets/images/6e03f64cf418.png)

###### Figure 8.2.4.3-1: RIC Control procedure, unsuccessful operation

If the RIC CONTROL REQUEST message contains an invalid *RIC Call Process ID* IE, then the E2 Node shall respond with the RIC CONTROL FAILURE message with an appropriate cause value.

If the RIC CONTROL REQUEST message contains the optional *RIC Call Process ID* IE for which the associated *RIC Time to Wait* timer had expired, then the E2 Node shall respond with the RIC CONTROL FAILURE message with an appropriate cause value.

If the E2 Node fails to execute the requested RIC Control procedure E2SM specific action, then the E2 Node shall respond with the RIC CONTROL FAILURE message with an appropriate cause value.

If the E2 Node detects an encoding or functional error in the E2SM specific IEs contained in the RIC CONTROL REQUEST message, then the E2 Node shall respond with the RIC CONTROL FAILURE message with an appropriate cause value.

If the E2 Node receives a RIC CONTROL REQUEST message which contains an unknown *RAN Function ID* IE the E2 Node shall respond with the RIC CONTROL FAILURE message containing an appropriate cause value.

If the E2 Node does not support the specific RIC Control procedure action, then the E2 Node shall respond with the RIC CONTROL FAILURE message containing an appropriate cause value.

Upon reception of the RIC CONTROL FAILURE message the Near-RT RIC shall stop timer TRICcontrol, if running, and terminate the RIC Control procedure.

The Near-RT RIC may use the information contained in the *Cause* IE and optional *RIC Control Outcome* IE to determine subsequent actions.

##### Abnormal conditions

Upon reception of the ERROR INDICATION message including the *RIC Request ID* IE associated to the RIC CONTROL REQUEST message, the Near-RT RIC shall stop timer TRICcontrol, if running, and terminate the RIC Control procedure.

If timer TRICcontrol was set when sending the RIC CONTROL REQUEST message and there was no response from the E2 node before the timer expiry, the Near-RT RIC shall send an ERROR INDICATION with the appropriate value for the *Cause* IE.

### RIC Subscription Modification procedure

##### General

The purpose of the RIC Subscription Modification procedure is to modify an existing RIC subscription on an E2 node, in terms of its event trigger definition and/or the sequence of actions.

This procedure shall be initiated by the Near-RT RIC. This procedure uses RIC Service signalling.

##### Successful operation

![Generated by PlantUML]({{site.baseurl}}/assets/images/df96ef65d8c4.png)

###### Figure 8.2.5.2-1: RIC Subscription Modification procedure, successful operation

The Near-RT RIC initiates this procedure by sending the RIC SUBSCRIPTION MODIFICATION REQUEST message to the E2 node, containing the *RIC Request ID* IE to uniquely identify the existing RIC Subscription in the E2 node.

When the Near-RT RIC sends the RIC SUBSCRIPTION MODIFICATION REQUEST message, it shall start timer TRICEVENTmodify.

Upon reception of the RIC SUBSCRIPTION MODIFICATION REQUEST message, the E2 node shall determine the existing RIC Subscription and the target RAN Function from the *RIC Request ID* IE and the *RAN Function ID* IE, respectively.

If the *RIC Event Trigger Definition to be Modified* IE is included, then the E2 node shall validate and modify the event trigger defined for the existing RIC subscription based on the contents of the IE.

If the *RIC Actions to be Removed List* IE is included, then for every *RIC Action ID* IE included in the list, the E2 node shall delete the requested action and release the corresponding necessary resources.

If the *RIC Actions to be Modified List* IE is included, then for every *RIC Action ID* IE included in the list for which there exists a corresponding *RIC Action Definition* IE and/or *RIC Subsequent Action* IE, the E2 node shall modify the existing behaviour for the action with the requested modification in the respective IEs and modify the corresponding necessary resources*.*

If the *RIC Actions to be Modified List* IE is included, then for every *RIC Action ID* IE included in the list for which there exists a *RIC Action Execution Order* IE, the E2 node shall replace the current execution order for the action in the sequence of actions with the new execution order for the action in the sequence, as given in the *RIC Action Execution Order* IE.

If the *RIC Actions to be Added List* IE is included, then the E2 node shall validate and add the requested actions to the existing sequence of RIC Actions in order of the *RIC Action Execution Order* IE and reserve the necessary resources for the new actions.

The E2 node shall send the RIC SUBSCRIPTION MODIFICATION RESPONSE message back to the Near-RT RIC when one of the following cases is successfully executed:

* If the *RIC Event Trigger Definition to be Modified* IE is present in the RIC SUBSCRIPTION MODIFICATION REQUEST message and if the requested modification for the event trigger definition was successfully performed by the E2 node, or
* If the *RIC Event Trigger Definition to be Modified* IE is not present (i.e., no modification to the event trigger definition was requested) in the RIC SUBSCRIPTION MODIFICATION REQUEST message and if at least one of the requested actions to be added or modified or removed as requested by the Near-RT RIC in *RIC Actions To Be*

*Added List* IE or *RIC Actions to be Modified List* IE or *RIC Actions to be Removed List* IE, respectively, in the RIC SUBSCRIPTION MODIFICATION REQUEST message, was successfully performed by the E2 node.

The E2 node shall report the result of all the requested modifications to the sequence of actions, if any, back to the Near-RT RIC in the RIC SUBSCRIPTION MODIFICATION RESPONSE message as follows:

* A list of actions requested to be removed, indexed by the *RIC Action ID* IE, which are successfully removed by the E2 node, shall be included in the *RIC Actions Removed List* IE.
* A list of actions requested to be removed, indexed by the *RIC Action ID* IE, which failed to get removed from the sequence by the E2 node, shall be included in the *RIC Actions Failed to be Removed List* IE, with appropriate cause values.
* A list of actions requested to be modified, indexed by the *RIC Action ID* IE, which are successfully modified by the E2 node, shall be included in the *RIC Actions Modified List* IE.
* A list of actions requested to be modified, indexed by the *RIC Action ID* IE, which failed to get modified by the E2 node, shall be included in the *RIC Actions Failed to be Modified List* IE with appropriate cause values.
* A list of actions requested to be added, indexed by the *RIC Action ID* IE, which are successfully added by the E2 node, shall be included in the *RIC Actions Added List* IE.
* A list of actions requested to be added, indexed by the *RIC Action ID* IE, which failed to get added to the sequence by the E2 node, shall be included in the *RIC Actions Failed to be Added List* IE with appropriate cause values.

If, for a given *RIC Action ID* IE in the *RIC Actions to be Modified List* IE, more than one modification to the RIC Service Action is requested in the form of *RIC Action Definition* IE and/or *RIC Action Execution Order* IE and/or *RIC Subsequent Action* IE, then the E2 node shall report that the requested action modification is successfully performed and shall include the action in the *RIC Actions Modified List* IE, if and only if, all the requested modifications to the action are successfully performed by the E2 node.

If one of the requested modifications to the RIC Service Action is not successfully performed by the E2 node, then the E2 node shall include the RIC Service Action in the *RIC Actions Failed to be Modified List* IE, along with an appropriate cause, to indicate failure for the requested modification to the RIC Service Action.

If, for a given *RIC Action ID* IE in the *RIC Actions to be Added* IE, either the action type in the *RIC Action Type* IE or the action definition in the *RIC Action Definition* IE or the action execution order in the *RIC Action Execution Order* IE or the subsequent action, if included, in the *RIC Subsequent Action* IE is not successfully processed by the E2 node, then the E2 node shall include the action in the *RIC Actions Failed to be Added List* IE with an appropriate cause, indicating failure to add the requested action to the existing sequence of actions.

If, after processing the RIC Subscription Modification procedure, more than one RIC Service Action remains accepted by the E2 Node then, at each occurrence of the common Event Trigger, the sequence of RIC Service Actions shall be executed according to the considerations defined in clause 8.2.1.2.

Upon reception of the RIC SUBSCRIPTION MODIFICATION RESPONSE message, the Near-RT RIC shall stop timer TRICEVENTmodify and terminate the RIC Subscription Modification procedure.

##### Unsuccessful operation

![Generated by PlantUML]({{site.baseurl}}/assets/images/d5f2951c8314.png)

###### Figure 8.2.5.3-1: RIC Subscription Modification procedure, unsuccessful operation

If a failure occurs during the RIC Subscription Modification procedure, the E2 node shall send a RIC SUBSCRIPTION MODIFICATION FAILURE message to the Near-RT RIC with an appropriate cause value.

If the *RIC Event Trigger Definition to be Modified* IE is present in the RIC SUBSCRIPTION MODIFICATION REQUEST message and if the requested modification for the event trigger definition is not accepted by the E2 node, the E2 node shall send a RIC SUBSCRIPTION MODIFICATION FAILURE message to the Near-RT RIC with an appropriate cause value.

If the *RIC Event Trigger Definition to be Modified* IE is not present (i.e., no modification to the event trigger definition was requested) and if none of the requested modifications to the sequence of actions were successfully performed, that is if all of the following apply, the E2 node shall send a RIC SUBSCRIPTION MODIFICATION FAILURE message to the Near-RT RIC with an appropriate cause value:

* *RIC Actions to be Added List* IE was present in the RIC SUBSCRIPTION MODIFICATION REQUEST message and if none of the requested additions were successfully performed
* *RIC Actions to be Modified List* IE was present in the RIC SUBSCRIPTION MODIFICATION REQUEST message and if none of the requested modifications were successfully performed
* *RIC Actions to be Removed List* IE was present in the RIC SUBSCRIPTION MODIFICATION REQUEST message and if none of the requested removals were successfully performed

If the E2 node detects an issue with the resulting sequence of actions after processing the *RIC Actions to be Added List* IE and/or *RIC Actions to be Modified List* IE and/or *RIC Actions to be Removed List* IE, the E2 node shall send a RIC SUBSCRIPTION MODIFICATION FAILURE message to the Near-RT RIC with an appropriate cause value.

If all RIC Service Actions in the existing RIC Subscription are proposed for removal, the E2 node shall send a RIC SUBSCRIPTION MODIFICATION FAILURE message to the Near-RT RIC with an appropriate cause value.

Upon reception of the RIC SUBSCRIPTION FAILURE message, the Near-RT RIC shall stop the timer TRICEVENTmodify and terminate the RIC Subscription Modification procedure.

##### Abnormal conditions

If the E2 node receives a RIC SUBSCRIPTION MODIFICATION REQUEST message including an unknown *RAN Function ID* IE, the E2 node shall send the RIC SUBSCRIPTION MODIFICATION FAILURE message to the Near-RT RIC with an appropriate cause value.

If the E2 node receives a RIC SUBSCRIPTION MODIFICATION REQUEST message including an unknown *RIC Request ID* IE, the E2 node shall send the RIC SUBSCRIPTION MODIFICATION FAILURE message to the Near-RT RIC with an appropriate cause value.

If the E2 node receives a RIC SUBSCRIPTION MODIFICATION REQUEST message containing the same *RIC Action ID* IE value across the *RIC Actions to be Added List* IE , *RIC Actions to be Modified List* IE and/or *RIC Actions to be Removed List* IE, then the E2 node shall send the RIC SUBSCRIPTION MODIFICATION FAILURE message to the Near-RT RIC with an appropriate cause value.

### RIC Subscription Modification Required procedure

##### General

This procedure is used by the E2 Node to request the Near-RT RIC for modifying an existing RIC Subscription in the E2 Node.

This procedure shall be initiated by the E2 Node. This procedure uses RIC Service signalling.

##### Successful operation

![Generated by PlantUML]({{site.baseurl}}/assets/images/bb038a8eb9c4.png)

###### Figure 8.2.6.2-1: RIC Subscription Modification Required procedure, successful operation

The E2 Node initiates the procedure by sending the RIC SUBSCRIPTION MODIFICATION REQUIRED message, containing *RIC Request ID* IE that was previously assigned by the Near-RT RIC during a successful RIC Subscription procedure, to the Near-RT RIC.

Upon reception of the RIC SUBSCRIPTION MODIFICATION REQUIRED message, the Near-RT RIC shall determine the RIC Subscription from the *RIC Request ID* IE and the target RAN Function from the *RAN Function ID* IE.

If at least one of the requested actions in *RIC Actions Required to be Modified List* IE or *RIC Actions Required to be Removed List* IE is successfully confirmed by the Near-RT RIC, then the Near-RT RIC shall perform the required procedures to update the RIC Subscription and shall send the RIC SUBSCRIPTION MODIFICATION CONFIRM message to the E2 node.

The Near-RT RIC shall report the result to the E2 node in the RIC SUBSCRIPTION MODIFICATION CONFIRM as follows:

* A list of actions requested to be modified, indexed by the *RIC Action ID* IE, which are successfully confirmed for modification by the Near-RT RIC, shall be included in the *RIC Actions Confirmed for Modification List* IE.
* A list of actions requested to be modified, indexed by the *RIC Action ID* IE, which are refused to be modified by the Near-RT RIC, shall be included in the *RIC Actions Refused to be Modified List* IE with appropriate cause values.
* A list of actions requested to be removed, indexed by the *RIC Action ID* IE, which are successfully confirmed for removal by the Near-RT RIC, shall be included in the *RIC Actions Confirmed for Removal List* IE.
* A list of actions requested to be removed, indexed by the *RIC Action ID* IE, which are refused to be removed by the Near-RT RIC, shall be included in the *RIC Actions Refused for Removal List* IE with appropriate cause values.

If, after processing the RIC Subscription Modification Required procedure, more than one RIC Service Action remains in effect at the E2 node, then at each occurrence of the common Event Trigger, the sequence of RIC Service Actions shall be executed according to the considerations defined in clause 8.2.1.2.

Upon reception of the RIC SUBSCRIPTION MODIFICATION CONFIRM message, the E2 Node shall release the necessary resources for the actions that are confirmed for removal in the *RIC Actions Confirmed for Removal List* IE, if present, and shall modify the necessary resources for the actions that are confirmed for modification in the *RIC Actions Confirmed for Modification List* IE, if present.

##### Unsuccessful operation

![Generated by PlantUML]({{site.baseurl}}/assets/images/17510eb45f0c.png)

###### Figure 8.2.6.3-1: RIC Subscription Modification Required procedure, unsuccessful operation

If a failure occurs during the RIC Subscription Modification Required procedure the Near-RT RIC shall send the RIC SUBSCRIPTION MODIFICATION REFUSE message to the E2 node. If none of the requested modifications to the actions in the RIC SUBSCRIPTION MODIFICATION REQUIRED message (i.e., in the *RIC Actions Required to be Modified List* IE and the *RIC Actions Required to be Removed List* IE, if present) is successfully confirmed, the Near-RT RIC shall send the RIC SUBSCRIPTION MODIFICATION REFUSE message to the E2 node with an appropriate cause.

If the Near-RT RIC detects an issue with the requested sequence of actions after processing the requested *RIC Actions Required to be Modified List* IE and/or the *RIC Actions Required to be Removed List* IE respectively, if present, the Near-RT RIC shall send the RIC SUBSCRIPTION MODIFICATION REFUSE message to the E2 node with an appropriate cause.

If all RIC Service Action in the existing RIC Subscription are proposed for removal, the Near-RT RIC shall send a RIC SUBSCRIPTION MODIFICATION REFUSE message to the E2 Node with an appropriate cause value.

##### Abnormal conditions

If the Near-RT RIC receives a RIC SUBSCRIPTION MODIFICATION REQUIRED message which contains an unknown *RAN Function ID* IE, the Near-RT RIC shall send the RIC SUBSCRIPTION MODIFICATION REFUSE message to the E2 Node with an appropriate cause value.

If the Near-RT RIC receives a RIC SUBSCRIPTION MODIFICATION REQUIRED message containing an unknown *RIC Request ID* IE, the Near-RT RIC shall send the RIC SUBSCRIPTION MODIFICATION REFUSE message to the E2 Node with an appropriate cause value.

### RIC Query procedure

##### General

This procedure is initiated by Near-RT RIC to request RAN and/or UE related information from E2 Node.

This procedure shall be initiated by the Near-RT RIC. This procedure uses RIC Service signalling.

##### Successful operation

![Generated by PlantUML]({{site.baseurl}}/assets/images/85f4113ba658.png)

###### Figure 8.2.7.2-1: RIC Query procedure, successful operation

The Near-RT RIC initiates the procedure by sending the RIC QUERY REQUEST message, which shall contain a unique *RIC Request ID* IE, assigned by the Near-RT RIC, to the E2 Node. When the Near-RT RIC sends the RIC QUERY REQUEST message, it shall start timer TRICquery.

At reception of the RIC QUERY REQUEST message the E2 Node shall:

* Determine the target RAN Function using the information in the *RAN Function ID* IE.
* Validate the *RIC Query Header* IE and *RIC Query Definition* IE and if the requested information is available at E2 Node, then E2 Node shall respond back with RIC QUERY RESPONSE message containing the requested information.

Upon reception of the RIC QUERY RESPONSE message the Near-RT RIC shall stop timer TRICquery and terminate the RIC Query procedure.

##### Unsuccessful operation

![Generated by PlantUML]({{site.baseurl}}/assets/images/34b3a0d1a070.png)

###### Figure 8.2.7.3-1: RIC Query procedure, unsuccessful operation

If the *RAN Function ID* IE in the RIC QUERY REQUEST message is not supported by E2 Node, then the E2 Node shall respond with the RIC QUERY FAILURE message to Near-RT RIC with an appropriate cause value.

If none of the requested information in the *RIC Query Definition* IE is available at E2 Node, then E2 Node shall respond with the RIC QUERY FAILURE message to Near-RT RIC with an appropriate cause value.

Upon reception of the RIC QUERY FAILURE message the Near-RT RIC shall stop timer TRICquery and terminate the RIC Query Procedure.

##### Abnormal conditions

Upon reception of the ERROR INDICATION message including the *RIC Request ID* IE corresponding to the previous RIC QUERY REQUEST message, the Near-RT RIC shall stop timer TRICquery, if running, and terminate the RIC Query procedure.

### RIC Service Load Status procedure

##### General

This procedure is used to control the reporting of RIC Service Load information for one or more RIC Services. This procedure shall be initiated by the Near-RT RIC.

This procedure uses RIC Service signalling.

##### Successful operation

![]({{site.baseurl}}/assets/images/a48093d134e0.png)![]({{site.baseurl}}/assets/images/1445bc376923.png)![]({{site.baseurl}}/assets/images/af0b811815e1.png)![]({{site.baseurl}}/assets/images/fc0dff4fd55f.png)![]({{site.baseurl}}/assets/images/04ce8365a610.png)![]({{site.baseurl}}/assets/images/1f505a0c3f98.png)

###### Figure 8.2.8.2-1: RIC Load Status procedure, successful operation

The Near-RT RIC initiates the procedure by sending a RIC LOAD STATUS REQUEST message to the E2 Node.

Upon reception of the RIC SERVICE LOAD STATUS REQUEST message the E2 Node shall process the message according to the following considerations:

The E2 Node:

* Shall initiate the requested load information reporting according to the parameters given in the request in case the

*Registration Request* IE set to "start"; or

* Shall stop all measurements and terminate the reporting in case the *Registration Request* IE is set to "stop"; or
* Shall add load measurements indicated in the request to the measurements initiated before for the given measurement IDs, in case the *Registration Request* IE is set to "add". If measurements are already initiated for a requested load measurement, this information shall be ignored.

For each RAN Function in the *RAN Function Load Request List* IE:

* If the *RAN Function Load Request* IE is present, the E2 Node shall collect overall load information for the RAN Function identified by the corresponding *RAN Function ID* IE.
* If the *RIC Service Load Request* IE is present in the RIC SERVICE LOAD STATUS REQUEST message, the E2 Node shall shall collect load information for requested RIC Services.
* If the *RIC Subscription Load Request List* IE is present and the *RIC Subscription Load Request* IE is also included, the E2 Node shall collect load information for the RIC Subscription identified by the *RIC Request ID* IE. If the *RIC Action Load Request List* IE is also present for a given RIC Subscription, the E2 Node shall collect load information only for each RIC Action identified by the corresponding *RIC Action ID* IE in the list. If the *RIC Action Load Request List* IE is not present for a given RIC Subscription, the E2 Node shall collect load information for all the RIC Actions associated with the RIC Subscription

After processing the RIC SERVICE LOAD STATUS REQUEST message, if the E2 Node has accepted at least one item in the *RAN Function Load Request List* IE and/or *RIC Service Load Request List* IE and/or at least one item in the *RIC Subscription Load Request List* IE, the E2 Node shall send the RIC SERVICE LOAD STATUS RESPONSE message to the Near-RT RIC, and initiate load reporting using the RIC Service Load Update procedure.

##### Unsuccessful operation

![]({{site.baseurl}}/assets/images/a48093d134e0.png)![]({{site.baseurl}}/assets/images/1445bc376923.png)![]({{site.baseurl}}/assets/images/7f39251ffeba.png)![]({{site.baseurl}}/assets/images/c6733704d8e5.png)![]({{site.baseurl}}/assets/images/a5f85e500eb2.png)![]({{site.baseurl}}/assets/images/da2f2677853e.png)

###### Figure 8.2.8.3-1: RIC Service Load Status procedure, unsuccessful operation

If the E2 Node cannot accept the RIC SERVICE LOAD STATUS REQUEST message, it shall respond with the RIC SERVICE LOAD STATUS FAILURE message with an appropriate cause value.

##### 8.3.8.4 Abnormal conditions

Void.

### RIC Service Load Update procedure

##### General

The purpose of the RIC Service Load Update procedure is to inform the Near-RT RIC of the load status in the E2 Node for one or more RIC Services.

This procedure shall be initiated by the E2 Node. This procedure uses RIC Service signalling.

##### Successful operation

![]({{site.baseurl}}/assets/images/a48093d134e0.png)![]({{site.baseurl}}/assets/images/27c8138869cd.png)![]({{site.baseurl}}/assets/images/fc5d5c71ad87.png)![]({{site.baseurl}}/assets/images/af10a3cc80a2.png)![]({{site.baseurl}}/assets/images/0ab3b19b4901.png)

###### Figure 8.2.9.2-1: RIC Service Load Update procedure, successful operation

The E2 Node initiates the procedure by sending a RIC LOAD UPDATE message.

* + - * + If the *RAN Function Load Information* IE is included in the *RAN Function Load List* IE, the Near-RT RIC shall consider that the load information in the *RAN Function Load Information* IE is for the overall RAN Function load information associated with the corresponding *RAN Function ID* IE.
        + If the *RIC Service Load Information* IE is included in the *RAN Function Load List* IE, the Near-RT RIC shall consider that the load information in the *RIC Service Load Information* IE is for the overall RIC Service load information associated with the corresponding *RIC Service type*.
        + If the *RIC Subscription Load List* IE is included, and the *RIC Subscription Load Information* IE is also included in the *RIC Subscription Load List* IE, the Near-RT RIC shall consider that the load information in the *RIC Subscription Load Information* IE is for the overall RIC Subscription load information associated with the corresponding *RIC Request ID* IE that was previously assigned by the Near-RT RIC during a successful RIC Subscription procedure. If the *RIC Action Load List* IE is also included in the *RIC Subscription Load List* IE, the Near-RT RIC shall consider that the load information in the *RIC Action Load Information* IE is for the overall RIC Action load information associated with the corresponding *RIC Action ID* IE.

##### Unsuccessful operation

Void.

##### Abnormal conditions

Void.

### RIC Subscription State Control procedure

##### General

This procedure is used to suspend and/or resume existing RIC Subscriptions. This procedure shall be initiated by the Near-RT RIC.

This procedure uses RIC Service signalling.

##### Successful operation

![]({{site.baseurl}}/assets/images/a48093d134e0.png)![]({{site.baseurl}}/assets/images/1445bc376923.png)![]({{site.baseurl}}/assets/images/af0f3c390cdb.png)![]({{site.baseurl}}/assets/images/1bf4e93e0fab.png)![]({{site.baseurl}}/assets/images/04ce8365a610.png)![]({{site.baseurl}}/assets/images/0ab3b19b4901.png)

###### Figure 8.2.10.2-1: RIC Subscription State Control procedure, successful operation

The Near-RT RIC initiates the procedure by sending a RIC SUBSCRIPTION STATE CONTROL REQUEST message to the E2 Node.

Upon reception of the RIC SUBSCRIPTION STATE CONTROL REQUEST message the E2 Node shall process the message according to the following considerations for each RAN Function in the *RAN Function State Control List* IE:

* If the *RIC Subscription To Be Suspended List* IE is present, the E2 Node shall suspend either the list of RIC Actions, if the corresponding *RIC Action List* IE is present, or the entire RIC Subscription.
* If the *RIC Subscription To Be Resumed List* IE is present, the E2 Node shall resume either the list of RIC Actions, if the corresponding *RIC Action List* IE is present, or the entire RIC Subscription.

After processing the RIC SUBSCRIPTION STATE CONTROL REQUEST message, if the E2 Node has at least one item to be included in the *RIC Subscription Suspended List* IE and/or the *RIC Subscription Resumed List* IE for any RAN Function requested in the *RAN Function State Control List* IE , the E2 Node shall send the RIC SUBSCRIPTION STATE CONTROL RESPONSE message to the Near-RT RIC.

If, after processing the RIC SUBSCRIPTION STATE CONTROL REQUEST message, one or more RIC Subscriptions have been accepted to be suspended by the E2 Node without the corresponding *RIC Action List* IE present then, the corresponding Event Trigger, defined in clause 8.2.1.2, shall be suspended.

If, after processing the RIC SUBSCRIPTION STATE CONTROL REQUEST message, one or more RIC Subscriptions have been accepted to be resumed by the E2 Node then, the corresponding Event Trigger, defined in clause 8.2.1.2, shall be resumed and at each occurrence of the corresponding Event Trigger, the sequence of RIC Service Actions shall be executed according to the considerations defined in clause 8.2.1.2.

##### Unsuccessful operation

![]({{site.baseurl}}/assets/images/a48093d134e0.png)![]({{site.baseurl}}/assets/images/1445bc376923.png)![]({{site.baseurl}}/assets/images/7543e2c7425a.png)![]({{site.baseurl}}/assets/images/aaf42106af89.png)![]({{site.baseurl}}/assets/images/04ce8365a610.png)![]({{site.baseurl}}/assets/images/0ab3b19b4901.png)

###### Figure 8.2.10.3-1: RIC Subscription State Control procedure, unsuccessful operation

If the E2 Node cannot accept the RIC SUBSCRIPTION STATE CONTROL REQUEST message it shall respond with the RIC SUBSCRIPTION STATE CONTROL FAILURE message with an appropriate cause value.

If the RIC Subscription State Control procedure failure occurs, the Near-RT RIC and E2 Node shall continue to operate with their existing configuration data.

##### Abnormal conditions

Void.

### RIC Assistance procedure

##### General

This procedure is used to utilize an assistance service offered by the Near-RT RIC. This procedure shall be initiated by the E2 Node.

This procedure uses RIC Service signalling.

##### Successful operation

![]({{site.baseurl}}/assets/images/a48093d134e0.png)![]({{site.baseurl}}/assets/images/1445bc376923.png)![]({{site.baseurl}}/assets/images/adbcb11ce92e.png)![]({{site.baseurl}}/assets/images/7dc9aa5af895.png)![]({{site.baseurl}}/assets/images/93b6401ea629.png)![]({{site.baseurl}}/assets/images/04ce8365a610.png)

###### Figure 8.2.11.2-1: RIC Assistance procedure, successful operation

The E2 Node initiates the procedure by sending a RIC ASSISTANCE REQUEST message which shall contain a unique *RIC Request ID* IE, assigned by the E2 Node, to the Near-RT RIC. When the E2 Node sends the RIC ASSISTANCE REQUEST message, it shall start timer TRICassist.

At reception of the RIC ASSITANCE REQUEST message the Near-RT RIC shall:

- Consider the *RIC Assistance Header* IE and *RIC Assistance Message* IE to determine the requested service and if available at Near-RT RIC, then Near-RT RIC shall respond back with RIC ASSISTANCE RESPONSE message for the requested service with the result contained in the *RIC Assistance Header* IE and *RIC Assistance Outcome* IE.

Upon reception of the RIC ASSISTANCE RESPONSE message the E2 Node shall stop timer TRICassist and terminate the RIC Assistance procedure.

###### Interactions with RIC Assistance Indication procedure:

If the optional *RIC Assistance Update* IE is present, the Near-RT RIC shall use the *RIC Assistance Update Number* IE, if present, to determine the maximum number of RIC ASSISTANCE INDICATION messages to the E2 Node to provide updates for the requested assistance service offered by the Near-RT RIC.

If the *RIC Assistance Update Number* IE is not present, then the Near-RT RIC shall continue to send RIC ASSISTANCE INDICATION messages until reception of the RIC ASSISTANCE HALT message.

##### Unsuccessful operation

![]({{site.baseurl}}/assets/images/a48093d134e0.png)![]({{site.baseurl}}/assets/images/1445bc376923.png)![]({{site.baseurl}}/assets/images/af0b811815e1.png)![]({{site.baseurl}}/assets/images/fc0dff4fd55f.png)![]({{site.baseurl}}/assets/images/da2f2677853e.png)![]({{site.baseurl}}/assets/images/04ce8365a610.png)

###### Figure 8.2.11.3-1: RIC Assistance procedure, unsuccessful operation

If the Near-RT RIC cannot accept the RIC ASSISTANCE REQUEST message it shall respond with the RIC ASSISTANCE FAILURE message with an appropriate cause value.

Upon reception of the RIC ASSISTANCE FAILURE message the E2 Node shall stop timer TRICassist and terminate the RIC Assistance Procedure.

##### Abnormal conditions

Void.

### RIC Assistance Indication procedure

##### General

This procedure is used to provide an update for an assistance service offered by the Near-RT RIC. This procedure shall be initiated by the Near-RT RIC.

This procedure uses RIC Service signalling.

##### Successful operation

![]({{site.baseurl}}/assets/images/a48093d134e0.png)![]({{site.baseurl}}/assets/images/27c8138869cd.png)![]({{site.baseurl}}/assets/images/57b24a5820ba.png)![]({{site.baseurl}}/assets/images/3e7a85d79811.png)![]({{site.baseurl}}/assets/images/04ce8365a610.png)

###### Figure 8.2.12.2-1: RIC Assistance Indication procedure, successful operation

The Near-RT RIC initiates the procedure by sending a RIC ASSISTANCE INDICATION message which shall contain a unique *RIC Request ID* IE, assigned by the E2 Node during a previous RIC Assistance procedure, to the E2 Node, and the updated assistance service result in *RIC Assistance Header* IE and *RIC Assistance Outcome* IE. Each update of the requested assistance service shall contain a unique *RIC Assistance SN* IE.

###### Interactions with RIC Assistance Halt procedure:

If the E2 Node sends a RIC ASSISTANCE HALT message, the Near-RT RIC shall halt sending RIC ASSISTANCE INDICATION messages corresponding to the *RIC Request ID* IE contained in the message.

##### Unsuccessful operation

Not applicable.

##### Abnormal conditions

Void.

### RIC Assistance Halt procedure

##### General

This procedure is used to halt updates for an assistance service offered by the Near-RT RIC. This procedure shall be initiated by the E2 Node.

This procedure uses RIC Service signalling.

##### Successful operation

![]({{site.baseurl}}/assets/images/a48093d134e0.png)![]({{site.baseurl}}/assets/images/27c8138869cd.png)![]({{site.baseurl}}/assets/images/adbcb11ce92e.png)![]({{site.baseurl}}/assets/images/ec8de5e8c614.png)![]({{site.baseurl}}/assets/images/0ab3b19b4901.png)

###### Figure 8.2.13.2-1: RIC Assistance Halt procedure, successful operation

The E2 Node initiates the procedure by sending a RIC ASSISTANCE HALT message which shall contain a unique *RIC Request ID* IE, assigned by the E2 Node during a previous RIC Assistance procedure, to the Near-RT RIC.

Upon reception the Near-RT RIC shall halt the requested updates to the RIC Assistance service.

##### Unsuccessful operation

Not applicable.

##### 8.3.13.4 Abnormal conditions

If the Near-RT RIC receives a RIC Assistance Halt request from the E2 Node that does not correspond to an ongoing RIC Assistance service, then the Near-RT RIC shall ignore the message.

## Global procedures

### E2 Setup procedure

##### General

The purpose of the E2 Setup procedure is to exchange application level data needed for the E2 Node and Near-RT RIC to correctly interoperate on the E2 interface. This procedure shall be the first E2AP procedure triggered after the TNL association has become operational.

This procedure erases any existing application level configuration data in the two nodes and replace it by the one received. This procedure shall be initiated by the E2 Node.

This procedure uses E2 Support Function signalling.

##### Successful operation

![Generated by PlantUML]({{site.baseurl}}/assets/images/c8160155aec0.png)

###### Figure 8.3.1.2-1: E2 Setup procedure, successful operation

The E2 Node initiates the procedure by sending the E2 SETUP REQUEST message including the appropriate data to a Near- RT RIC.

If the Near-RT RIC has successfully processed the *RAN Functions Added List* IE then Near-RT RIC shall contain, in the E2 SETUP RESPONSE message, the *RAN Functions Accepted List* IE and/or the *RAN Functions Rejected List* IE.

If the Near-RT RIC has successfully processed the *E2 Node Component Configuration Addition List* IE then Near-RT RIC shall contain, in the E2 SETUP RESPONSE message, the *E2 Node Component Configuration Addition Acknowledge List* IE.

##### Unsuccessful operation

![Generated by PlantUML]({{site.baseurl}}/assets/images/1fc538fad41d.png)

###### Figure 8.3.1.3-1: E2 Setup procedure, unsuccessful operation

If the Near-RT RIC cannot accept the setup it shall respond with an E2 SETUP FAILURE message with an appropriate cause value.

The Near-RT RIC may provide an alternative *Transport Layer Information* IE in the E2 SETUP FAILURE message for the E2 Node to use when reinitiating the E2 Setup procedure towards the Near-RT RIC.

If the E2 SETUP FAILURE message includes the *Time To Wait* IE, the E2 node shall wait at least for the indicated time before reinitiating the E2 Setup procedure towards the Near-RT RIC.

##### Abnormal conditions

If the first message received for a specific TNL association is not an E2 SETUP REQUEST, E2 SETUP RESPONSE, E2 SETUP FAILURE or E2 NODE CONFIGURATION UPDATE message then this shall be treated as a logical error.

### Reset procedure

##### General

The purpose of the Reset procedure is to initialize or re-initialize the E2 Node in the event of Near-RT RIC failure or vice- versa.

This procedure does not affect the application level data exchanged during the E2 Setup procedure, E2 Node Configuration Update procedure and RIC Service Update procedure.

This procedure shall be initiated by the E2 Node or the Near-RT RIC. This procedure uses E2 Support Function signalling.

##### Successful operation

This procedure may be initiated by either Near-RT RIC or E2 Node.

![Generated by PlantUML]({{site.baseurl}}/assets/images/c4de8cb15443.png)

###### Figure 8.3.2.2-1: Reset, successful operation (E2 Node Initiated)

![Generated by PlantUML]({{site.baseurl}}/assets/images/7ca05285ad61.png)

###### Figure 8.3.2.2-2: Reset, successful operation (Near-RT RIC Initiated)

When the Reset procedure is initiated, the Near-RT RIC and E2 Node shall:

* Delete any pre-established RIC Subscriptions.
* Gracefully terminate any ongoing Near-RT RIC call processes using Insert, Control or Policy RIC Service Actions while ensuring that impact to ongoing calls for connected UE is minimized.

After the Reset has been completed, the Near-RT RIC may re-issue any required RIC Subscriptions.

###### Interactions with other procedures:

If the RESET REQUEST message is received, any other ongoing procedure (except for another Reset procedure) on the same E2 interface related to ongoing RIC Services shall be aborted.

##### Unsuccessful operation

Void.

##### Abnormal conditions

Void.

### Error Indication

##### General

The Error Indication procedure is initiated by either the E2 Node or the Near-RT RIC to report detected errors in one incoming message, provided they cannot be reported by an appropriate failure message.

This procedure shall be initiated by the E2 Node or the Near-RT RIC.

If the error situation arises due to reception of a message utilizing RIC Service signalling, then the Error Indication procedure uses RIC Service signalling. Otherwise, the procedure uses E2 Support Function signalling.

##### Successful operation

![Generated by PlantUML]({{site.baseurl}}/assets/images/cd8313b93686.png)

###### Figure 8.3.3.2-1: Error Indication, (E2 Node initiated) successful operation

![Generated by PlantUML]({{site.baseurl}}/assets/images/29ca2c424ba3.png)

###### Figure 8.3.3.2-2: Error Indication, (Near-RT RIC Initiated) successful operation

When the conditions defined in clause 10 are fulfilled, the Error Indication procedure shall be initiated by an ERROR INDICATION message sent from the node detecting the error situation.

The ERROR INDICATION message shall contain at least either the *Cause* IE or the *Criticality Diagnostics* IE and may include *RAN Function ID* IE and *RIC Request ID* IE.

##### Unsuccessful operation

Not applicable.

##### Abnormal conditions

Not applicable.

### RIC Service Update procedure

##### General

The purpose of the RIC Service Update procedure is to update application level RIC Service related data needed for E2 Node and Near-RT RIC to interoperate correctly over the E2 interface.

This procedure shall be initiated by the E2 Node. This procedure uses E2 Support Function signalling.

##### Successful operation

![]({{site.baseurl}}/assets/images/097314b22b9e.png)![]({{site.baseurl}}/assets/images/bef74cb76b58.png)![]({{site.baseurl}}/assets/images/28e0f58ac715.png)![]({{site.baseurl}}/assets/images/9658936aca02.png)![]({{site.baseurl}}/assets/images/9b720afd9fd3.png)![]({{site.baseurl}}/assets/images/04ce8365a610.png)

###### Figure 8.3.4.2-1: RIC Service Update procedure, successful operation

An E2 Node initiates the procedure by sending a RIC SERVICE UPDATE message to the Near-RT RIC.

If the E2 Node has taken into operational use one or more RAN Functions supporting RIC Services, the RIC SERVICE UPDATE message shall include the *RAN Functions Added List* IE.

If the E2 Node has modified one or more RAN Functions supporting RIC Services, the RIC SERVICE UPDATE message shall include the *RAN Functions Modified List* IE.

If the E2 Node has removed from operational use one or more RAN Functions supporting RIC Services, the RIC SERVICE UPDATE message shall include the *RAN Functions Deleted List* IE.

Upon reception of a RIC SERVICE UPDATE message, Near-RT RIC shall update the application level data for E2 Node as follows:

* If the *RAN Function Added List* IE is contained in the RIC SERVICE UPDATE message, Near-RT RIC shall add each listed accepted RAN Function according to the information in the *RAN Function ID* IE and *RAN Function Definition* IE and store the corresponding *RAN Function Revision* IE.
* If the *RAN Function Modified List* IE is contained in the RIC SERVICE UPDATE message, Near-RT RIC shall modify accepted information of supported RAN Functions according to the information in the *RAN Function Definition* IE and update the corresponding *RAN Function Revision* IE.
* If the *RAN Function Deleted List* IE is contained in the RIC SERVICE UPDATE message, Near-RT RIC shall delete information of RAN Function indicated by the *RAN Function ID* IE along with the corresponding *RAN Function Revision* IE.

These changes may be processed in the Near-RT-RIC and may be used when issuing RIC SUBSCRIPTION REQUEST and RIC CONTROL to provide valid *RAN Function ID* IE.

If at least one RAN Function update request present in the RIC SERVICE UPDATE message is successful, then the Near-RT RIC shall send the RIC SERVICE UPDATE ACKNOWLEDGE message to the initiating E2 Node with:

* *RAN Functions Accepted List* IE indicating accepted requests to add, modify, and/or delete the corresponding RAN Function information.
* If required, the *RAN Functions Rejected List* IE indicating rejected requests to add, modify, and/or delete the corresponding RAN Function information.

If the Near-RT RIC receives a RIC SERVICE UPDATE message without any IE except for *Message Typ*e IE, then the Near- RT RIC shall reply with RIC SERVICE UPDATE ACKNOWLEDGE message without any IE except for *Message Typ*e IE, and shall not perform any updates to the existing application level data.

##### Unsuccessful operation

![]({{site.baseurl}}/assets/images/097314b22b9e.png)![]({{site.baseurl}}/assets/images/bef74cb76b58.png)![]({{site.baseurl}}/assets/images/28e0f58ac715.png)![]({{site.baseurl}}/assets/images/9658936aca02.png)![]({{site.baseurl}}/assets/images/93b6401ea629.png)![]({{site.baseurl}}/assets/images/de78e9595f29.png)

###### Figure 8.3.4.3-1: RIC Service Update procedure, unsuccessful operation

If the Near-RT RIC cannot accept the update it shall respond with a RIC SERVICE UPDATE FAILURE message with an appropriate cause value.

If the RIC SERVICE UPDATE FAILURE message includes the *Time To Wait* IE, the E2 Node shall wait at least for the indicated time before reinitiating the RIC Service Update procedure towards the same Near-RT RIC. Both nodes shall continue to operate the E2 with their existing RIC Service data.

##### Abnormal conditions

Void.

### A RIC Service Query procedure

##### 8.3.4A.1 General

The purpose of the RIC Service Query procedure is to ensure alignment between Near-RT RIC and E2 Node concerning application level RIC Service related data needed for E2 Node and Near-RT RIC to interoperate correctly over the E2 interface.

This procedure shall be initiated by the Near-RT RIC. This procedure uses E2 Support Function signalling.

##### 8.3.4A.2 Successful operation

![]({{site.baseurl}}/assets/images/097314b22b9e.png)![]({{site.baseurl}}/assets/images/bef74cb76b58.png)![]({{site.baseurl}}/assets/images/28e0f58ac715.png)![]({{site.baseurl}}/assets/images/9658936aca02.png)![]({{site.baseurl}}/assets/images/04ce8365a610.png)![]({{site.baseurl}}/assets/images/93b6401ea629.png)![]({{site.baseurl}}/assets/images/04ce8365a610.png)

###### Figure 8.3.4A.2-1: RIC Service Query procedure, successful operation

The Near-RT RIC initiates the procedure by sending a RIC SERVICE QUERY message to the E2 Node.

Upon reception of the RIC SERVICE QUERY message the E2 Node shall initiate the RIC Service Update procedure according to the following considerations:

* If the *RAN Function Accepted List* IE is not present in the RIC SERVICE QUERY message, the E2 Node shall send the RIC SERVICE UPDATE message with the complete list of supported RAN Functions in the *RAN Function Added List* IE.
* If the *RAN Function Accepted List* IE is present in the RIC SERVICE QUERY message and aligns with the list of supported RAN Functions at the E2 Node, the E2 Node shall send the RIC SERVICE UPDATE message without the *RAN Function Added List* IE, *RAN Function Modified List* IE and *RAN Function Deleted List* IE.
* If the *RAN Function Accepted List* IE is present in the RIC SERVICE QUERY message and the list of RAN Functions in the *RAN Function Accepted List* IE does not align with the list of supported RAN Functions at the E2 node, the E2 Node shall send the RIC SERVICE UPDATE message with the *RAN Function Added List* IE, *RAN Function Modified List* IE and/or *RAN Function Deleted List* IE to ensure realignment of RAN Functions between the E2 Node and the Near-RT RIC.

The Near-RT RIC completes the RIC Service Update procedure as described in clause 8.3.4.

##### 8.3.4A.3 Unsuccessful operation

Void.

##### 8.3.4A.4 Abnormal conditions

Void.

### E2 Node Configuration Update procedure

##### General

The purpose of the E2 Node Configuration Update procedure is to update application level E2 Node configuration data needed for E2 Node and Near-RT RIC to interoperate correctly over the E2 interface and to support E2 Node initiated TNL association removal.

This procedure shall be initiated by the E2 Node. This procedure uses E2 Support Function signalling.

##### Successful operation

![Generated by PlantUML]({{site.baseurl}}/assets/images/8bd3ebbf272e.png)

###### Figure 8.3.5.2-1: E2 Node Configuration Update procedure, successful operation

An E2 Node initiates the procedure by sending a E2 NODE CONFIGURATION UPDATE message to the Near-RT RIC. The message shall include an appropriate set of up-to-date E2 Node-related configuration data that the E2 Node has just taken into operational use.

Upon reception of the E2 NODE CONFIGURATION UPDATE message, Near-RT RIC shall update the application level data for the E2 Node as follows:

Update of E2 Node configuration information in Near-RT RIC:

* If *E2 Node Component Configuration Addition List* IE is contained in the E2 NODE CONFIGURATION UPDATE message, Near-RT RIC shall add the E2 Node Component Configuration information accordingly.
* If *E2 Node Component Configuration Update List* IE is contained in the E2 NODE CONFIGURATION UPDATE message, Near-RT RIC shall modify the E2 Node Component Configuration information accordingly.
* If *E2 Node Component Configuration Removal List* IE is contained in the E2 NODE CONFIGURATION UPDATE message, Near-RT RIC shall remove the E2 Node Component Configuration information accordingly.

If *Global E2 Node ID* IE is contained in the E2 NODE CONFIGURATION UPDATE message for a newly established SCTP association, the Near-RT RIC shall associate the TNL association with the related E2 Node.

If the E2 NODE CONFIGURATION UPDATE message includes *E2 Node TNL Association To Remove List* IE, and the

*Endpoint IP address* IE and the *Port Number* IE for both TNL endpoints of the TNL association(s) are included in the *E2 Node*

*TNL Association To Remove List* IE, the Near-RT RIC shall, if supported, consider that the TNL association(s) indicated by both received TNL endpoints will be removed by the E2 Node.

If the E2 NODE CONFIGURATION UPDATE message includes *E2 Node TNL Association To Remove List* IE, and the *Endpoint IP address* IE, or the *Endpoint IP address* IE and the *Port Number* IE for one or both of the TNL endpoints is included in the *E2 Node TNL Association To Remove List* IE in E2 NODE CONFIGURATION UPDATE message, the Near- RT RIC shall, if supported, consider that the TNL association(s) indicated by the received endpoint IP address(es) will be removed by the E2 Node.

After successful update of requested information, Near-RT RIC shall reply with the E2 NODE CONFIGURATION UPDATE ACKNOWLEDGE message to inform the initiating E2 Node that the requested update of application level data was performed successfully.

If the Near-RT RIC receives an E2 NODE CONFIGURATION UPDATE message without any IE except for *Message Typ*e IE and *Transaction ID* IE, the Near-RT RIC shall reply with the E2 NODE CONFIGURATION UPDATE ACKNOWLEDGE message without performing any updates to the existing configuration.

##### Unsuccessful operation

![Generated by PlantUML]({{site.baseurl}}/assets/images/6ec945bcd502.png)

###### Figure 8.3.5.3-1: E2 Node Configuration Update procedure, unsuccessful operation

If Near-RT RIC cannot accept the E2 NODE CONFIGURATION UPDATE message it shall respond with the E2 NODE CONFIGURATION UPDATE FAILURE message with an appropriate cause value.

If the E2 NODE CONFIGURATION UPDATE FAILURE message includes the *Time To Wait* IE the E2 Node shall wait at least for the indicated time before reinitiating the E2 Node Configuration Update procedure towards the same Near-RT RIC.

If the Near-RT RIC receives an E2 NODE CONFIGURATION UPDATE message containing an *E2 Node Component Configuration Update Item* IE for an E2 Node component that was not previously declared by an *E2 Node Component Configuration Addition Item* IE then the Near-RT RIC shall indicate to the E2 Node that the update failed with appropriate cause value.

If the E2 Node Configuration Update procedure failure occurs, the Near-RT RIC and E2 Node shall continue to operate with their existing configuration data.

##### Abnormal conditions

Void.

### E2 Connection Update procedure

##### General

The purpose of the E2 Connection Update procedure is to allow the Near-RT RIC to update the TNL information associated with the E2 interface connection between the E2 Node and Near-RT RIC.

This procedure shall be initiated by the Near-RT RIC. This procedure uses E2 Support Function signalling.

##### Successful operation

![Generated by PlantUML]({{site.baseurl}}/assets/images/139b0903dac2.png)

###### Figure 8.3.6.2-1: E2 Connection Update procedure, successful operation

The Near-RT RIC initiates the procedure by sending a E2 CONNECTION UPDATE message to the E2 Node. The message shall include an appropriate set of up-to-date E2 interface connection data that the E2 Node shall take into account when modifying the E2 interface connection.

Upon reception of a E2 CONNECTION UPDATE message, the E2 Node shall update as follows:

* If *E2 Connection To Add List* IE is contained in the E2 CONNECTION UPDATE message, then the E2 Node shall, if supported, use the information to establish additional TNL Association(s) and configure for use for RIC services and/or E2 support functions according to the *TNL Association Usage* IE in the message.
* If *E2 Connection To Modify List* IE is contained in the E2 CONNECTION UPDATE message, then the E2 Node shall, if supported, use the information to modify the existing usage for RIC services and/or E2 support functions, according to the *TNL Association Usage* IE in the message.
* If *E2 Connection To Remove List* IE is contained in the E2 CONNECTION UPDATE message, then the E2 Node shall, if supported, use the information to remove the existing connection(s). If only one connection remains after successful removal of other connections, the E2 Node shall use this remaining connection for all the RIC services and E2 support functions.

After successful update of E2 interface connection(s), the E2 Node shall reply with the E2 CONNECTION UPDATE ACKNOWLEDGE message to inform the initiating Near-RT RIC that the requested E2 connection update was performed successfully.

If the E2 Node receives a E2 CONNECTION UPDATE message without any IE except for *Message Typ*e IE and *Transaction ID* IE, the E2 Node shall reply with the E2 CONNECTION ACKNOWLEDGE message without performing any updates to the existing connections.

E2 NODE CONFIGURATION UPDATE procedure shall be the first E2AP procedure triggered on an additional TNLA of an already setup E2 interface instance after the TNL association has become operational, and the Near-RT RIC shall associate the TNLA to the E2 interface instance using the included *Global E2 Node ID*.

An empty E2 NODE CONFIGURATION UPDATE message (i.e. without any IE expect for *Message Type* IE and *Transaction ID* IE) shall be sent by the Near-RT RIC as the first E2AP procedure on the new TNLA, if the E2 Node does not have any Configuration to be updated to Near-RT RIC.

##### Unsuccessful operation

![Generated by PlantUML]({{site.baseurl}}/assets/images/b057b1cc91d8.png)

###### Figure 8.3.6.3-1: E2 Connection Update procedure, unsuccessful operation

If the E2 Node cannot accept the update, it shall respond with a E2 CONNECTION UPDATE FAILURE message with an appropriate cause value.

If the E2 CONNECTION UPDATE FAILURE message includes the *Time To Wait* IE, the Near-RT RIC shall wait at least for the indicated time before reinitiating the E2 Connection Update procedure towards the same E2 Node. Both nodes shall continue to operate with their existing connection(s).

##### Abnormal conditions

Void.

### E2 Removal procedure

##### General

The purpose of the E2 removal procedure is to remove the E2 signalling connection between the Near-RT RIC and the E2 node in a controlled manner.

This procedure shall be initiated by the E2 Node or the Near-RT RIC. This procedure uses E2 Support Function signalling.

##### Successful operation

This procedure may be initiated by either Near-RT RIC or E2 Node.

###### Successful E2 Removal, E2 Node initiated

![Generated by PlantUML]({{site.baseurl}}/assets/images/b5cd99bd5b56.png)

###### Figure 8.3.7.2-1: E2 Removal, successful operation (E2 Node Initiated)

The E2 Node shall initiate the procedure by sending the E2 REMOVAL REQUEST message to the Near-RT RIC.

Upon reception of the E2 REMOVAL REQUEST message, the Near-RT RIC shall reply with the E2 REMOVAL RESPONSE message.

After receiving the E2 REMOVAL RESPONSE message, the E2 Node shall initiate removal of the TNL association towards the Near-RT RIC, and shall release all resources associated with that E2 signalling connection.

The Near-RT RIC shall then release all resources associated with that E2 signalling connection and erase all application level data.

###### Successful E2 Removal, Near-RT RIC initiated

![Generated by PlantUML]({{site.baseurl}}/assets/images/0fd8372633c0.png)

###### Figure 8.3.7.2-2: E2 Removal, successful operation (Near-RT RIC Initiated)

The Near-RT RIC shall initiate the procedure by sending the E2 REMOVAL REQUEST message to the E2 node.

Upon reception of the E2 REMOVAL REQUEST message, the E2 node shall reply with the E2 REMOVAL RESPONSE message.

After receiving the E2 REMOVAL RESPONSE message, the Near-RT RIC may initiate removal of the TNL association towards the E2 node, and shall release all resources associated with that E2 signalling connection and erase all application level data.

The E2 node shall then release all resources associated with that E2 signalling connection.

###### Interactions with other procedures:

If the E2 REMOVAL REQUEST message is received, any other ongoing procedure on the same E2 interface related to ongoing RIC Services shall be aborted.

##### Unsuccessful operation

![Generated by PlantUML]({{site.baseurl}}/assets/images/c53b91ce34df.png)

###### Figure 8.3.7.3-1: E2 Removal procedure (E2 Node Initiated), unsuccessful operation

![Generated by PlantUML]({{site.baseurl}}/assets/images/3b3698fdbc8a.png)

###### Figure 8.3.7.3-2: E2 Removal procedure (Near-RT RIC Initiated), unsuccessful operation

If the E2 Node cannot accept the E2 REMOVAL REQUEST it shall respond with E2 REMOVAL FAILURE message with an appropriate cause value.

If the Near-RT RIC cannot accept the E2 REMOVAL REQUEST it shall respond with E2 REMOVAL FAILURE message with an appropriate cause value.

##### Abnormal conditions

Void.

# Elements for E2AP communication

## General

Clauses 9.1 and 9.2 describe the structure of the messages and information elements required for the E2AP protocol in tabular format. Clause 9.3 provides the corresponding ASN.1 definition.

The following attributes are used for the tabular description of the messages and information elements: Presence, Range Criticality and Assigned Criticality. Their definition and use can be found in 3GPP TS 36.413 [24].

NOTE: The messages have been defined in accordance with the guidelines specified in 3GPP TR 25.921 [i.2].

## Message functional definition and content

### Messages for RIC Functional procedures

#### RIC SUBSCRIPTION REQUEST

This message is sent by the Near-RT RIC to an E2 Node to create a new RIC Subscription in the E2 Node. Direction: Near-RT RIC ? E2 Node.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and**  **reference** | **Semantics**  **description** | **Criticality** | **Assigned**  **Criticality** |
| Message Type | M |  | 9.2.3 |  | YES | reject |
| RIC Request ID | M |  | 9.2.7 |  | YES | reject |
| RAN Function ID | M |  | 9.2.8 |  | YES | reject |
| RIC Subscription Details | M |  |  |  | YES | reject |
| >RIC Event Trigger  Definition | M |  | 9.2.9 |  | - |  |
| >Sequence of Actions |  | 1..  <maxofRICactio nID> |  |  | EACH | ignore |
| >>RIC Action ID | M |  | 9.2.10 |  | - |  |
| >>RIC Action Type | M |  | 9.2.11 |  | - |  |
| >>RIC Action Definition | O |  | 9.2.12 |  | - |  |
| >>RIC Subsequent Action | O |  | 9.2.13 |  | - |  |
| >>RIC Action Execution  Order | O |  | 9.2.35 | Used to  define a specific execution order. | - |  |
| RIC Subscription Start  Time | O |  | 9.2.34 |  | YES | reject |
| RIC Subscription End Time | O |  | 9.2.34 |  | YES | reject |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Range bound** | **Explanation** |
| maxofRICActionID | Maximum no. of Actions to be requested by Near-RT RIC. Value is 16. |

</div>

#### RIC SUBSCRIPTION RESPONSE

This message is sent by the E2 Node to accept the request from the Near-RT RIC to create a new RIC Subscription in the E2 Node.

Direction: E2 Node ? Near-RT RIC.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and**  **reference** | **Semantics**  **description** | **Criticality** | **Assigned**  **Criticality** |
| Message Type | M |  | 9.2.3 |  | YES | reject |
| RIC Request ID | M |  | 9.2.7 |  | YES | reject |
| RAN Function ID | M |  | 9.2.8 |  | YES | reject |
| RIC Actions Admitted List |  | 1..  <maxofRICactio nID> |  |  | YES | reject |
| >RIC Action ID | M |  | 9.2.10 |  | - |  |
| RIC Actions Not Admitted List |  | 0..  <maxofRICactio nID> |  |  | YES | reject |
| >RIC Action ID | M |  | 9.2.10 |  | - |  |
| >Cause | M |  | 9.2.1 |  | - |  |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Range bound** | **Explanation** |
| maxofRICActionID | Maximum no. of Actions to be requested by Near-RT RIC. Value is 16. |

</div>

#### RIC SUBSCRIPTION FAILURE

This message is sent by the E2 Node to inform the Near-RT RIC that the request to create a new RIC Subscription in the E2 Node failed.

Direction: E2 Node ? Near-RT RIC.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and**  **reference** | **Semantics**  **description** | **Criticality** | **Assigned**  **Criticality** |
| Message Type | M |  | 9.2.3 |  | YES | reject |
| RIC Request ID | M |  | 9.2.7 |  | YES | reject |
| RAN Function ID | M |  | 9.2.8 |  | YES | reject |
| Cause | M |  | 9.2.1 |  | YES | reject |
| Criticality Diagnostics | O |  | 9.2.2 |  | YES | ignore |

</div>

#### RIC SUBSCRIPTION DELETE REQUEST

This message is sent by the Near-RT RIC to an E2 Node to request the deletion of an existing Subscription in the E2 Node. Direction: Near-RT RIC ? E2 Node.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and**  **reference** | **Semantics**  **description** | **Criticality** | **Assigned**  **Criticality** |
| Message Type | M |  | 9.2.3 |  | YES | reject |
| RIC Request ID | M |  | 9.2.7 |  | YES | reject |
| RAN Function ID | M |  | 9.2.8 |  | YES | reject |

</div>

#### RIC SUBSCRIPTION DELETE RESPONSE

This message is sent by the E2 Node to accept the request from a Near-RT RIC to delete an existing RIC Subscription in the E2 Node

Direction: E2 Node ? Near-RT RIC.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and**  **reference** | **Semantics**  **description** | **Criticality** | **Assigned**  **Criticality** |
| Message Type | M |  | 9.2.3 |  | YES | reject |
| RIC Request ID | M |  | 9.2.7 |  | YES | reject |
| RAN Function ID | M |  | 9.2.8 |  | YES | reject |

</div>

#### RIC SUBSCRIPTION DELETE FAILURE

This message is sent by the E2 Node to inform the Near-RT RIC that the request to delete an existing RIC Subscription in the E2 Node failed.

Direction: E2 Node ? Near-RT RIC.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and**  **reference** | **Semantics**  **description** | **Criticality** | **Assigned**  **Criticality** |
| Message Type | M |  | 9.2.3 |  | YES | reject |
| RIC Request ID | M |  | 9.2.7 |  | YES | reject |
| RAN Function ID | M |  | 9.2.8 |  | YES | reject |
| Cause | M |  | 9.2.1 |  | YES | ignore |
| Criticality Diagnostics | O |  | 9.2.2 |  | YES | ignore |

</div>

#### A RIC SUBSCRIPTION DELETE REQUIRED

This message is sent by the E2 Node to request deletion of the existing RIC Subscriptions in the E2 Node. Direction: E2 Node ? Near-RT RIC.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and**  **reference** | **Semantics**  **description** | **Criticality** | **Assigned**  **Criticality** |
| Message Type | M |  | 9.2.3 |  | YES | reject |
| List of RIC Subscriptions  To Be Removed |  | *1..*  *<maxofRICreque stID>* |  |  | EACH | ignore |
| >RIC Request ID | M |  | 9.2.7 |  | - | - |
| >RAN Function ID | M |  | 9.2.8 |  | - | - |
| >Cause | M |  | 9.2.1 |  | - | - |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Range bound** | **Explanation** |
| maxofRICrequestID | Maximum no. of RIC subscription requests supported by Near-RT RIC toward an E2  Node. Value is <1024>. |

</div>

#### RIC INDICATION

This message is sent by an E2 Node to transfer Report and Insert RIC Service Action information to a Near-RT RIC. Direction: E2 Node ? Near-RT RIC.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and**  **reference** | **Semantics**  **description** | **Criticality** | **Assigned**  **Criticality** |
| Message Type | M |  | 9.2.3 |  | YES | reject |
| RIC Request ID | M |  | 9.2.7 |  | YES | reject |
| RAN Function ID | M |  | 9.2.8 |  | YES | reject |
| RIC Action ID | M |  | 9.2.10 |  | YES | reject |
| RIC Indication SN | O |  | 9.2.14 |  | YES | reject |
| RIC Indication Type | M |  | 9.2.15 |  | YES | reject |
| RIC Indication Header | M |  | 9.2.17 |  | YES | reject |
| RIC Indication Message | M |  | 9.2.16 |  | YES | reject |
| RIC Call process ID | O |  | 9.2.18 |  | YES | reject |

</div>

#### RIC CONTROL REQUEST

This message is sent by a Near-RT RIC to an E2 Node to initiate or resume a control function logic. Direction: Near-RT RIC ? E2 Node.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and**  **reference** | **Semantics**  **description** | **Criticality** | **Assigned**  **Criticality** |
| Message Type | M |  | 9.2.3 |  | YES | reject |
| RIC Request ID | M |  | 9.2.7 |  | YES | reject |
| RAN Function ID | M |  | 9.2.8 |  | YES | reject |
| RIC Call Process ID | O |  | 9.2.18 |  | YES | reject |
| RIC Control Header | M |  | 9.2.20 |  | YES | reject |
| RIC Control Message | M |  | 9.2.19 |  | YES | reject |
| RIC Control Ack Request | O |  | 9.2.21 |  | YES | reject |

</div>

#### RIC CONTROL ACKNOWLEDGE

This message is sent by the E2 Node to inform the Near-RT RIC that the RIC CONTROL REQUEST message was received and to provide information on the outcome of the request.

Direction: E2 Node ? Near-RT RIC.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and**  **reference** | **Semantics**  **description** | **Criticality** | **Assigned**  **Criticality** |
| Message Type | M |  | 9.2.3 |  | YES | reject |
| RIC Request ID | M |  | 9.2.7 |  | YES | reject |
| RAN Function ID | M |  | 9.2.8 |  | YES | reject |
| RIC Call process ID | O |  | 9.2.18 |  | YES | reject |
| RIC Control Outcome | O |  | 9.2.25 |  | YES | reject |

</div>

#### RIC CONTROL FAILURE

This message is sent by the E2 Node to inform the Near-RT RIC that the RIC CONTROL REQUEST message has failed to be executed.

Direction: E2 Node ? Near-RT RIC.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and**  **reference** | **Semantics**  **description** | **Criticality** | **Assigned**  **Criticality** |
| Message Type | M |  | 9.2.3 |  | YES | reject |
| RIC Request ID | M |  | 9.2.7 |  | YES | reject |
| RAN Function ID | M |  | 9.2.8 |  | YES | reject |
| RIC Call process ID | O |  | 9.2.18 |  | YES | reject |
| Cause | M |  | 9.2.1 |  | YES | ignore |
| RIC Control Outcome | O |  | 9.2.25 |  | YES | Reject |
| Criticality Diagnostics | O |  | 9.2.2 |  | YES | ignore |

</div>

#### RIC SUBSCRIPTION MODIFICATION REQUEST

This message is sent by the Near-RT RIC to an E2 Node to modify an existing Subscription in the E2 Node. Direction: Near-RT RIC ? E2 Node.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and**  **reference** | **Semantics**  **description** | **Criticality** | **Assigned**  **Criticality** |
| Message Type | M |  | 9.2.3 |  | YES | reject |
| RIC Request ID | M |  | 9.2.7 |  | YES | reject |
| RAN Function ID | M |  | 9.2.8 |  | YES | reject |
| RIC Event Trigger  Definition to be Modified | O |  | 9.2.9 |  | YES | ignore |
| **RIC Actions to be**  **Removed List** |  | *0..1* |  |  | YES | ignore |
| **>Action to be Removed**  **Item IEs** |  | *1..<maxofRICact*  *ionID>* |  |  | EACH | ignore |
| >>RIC Action ID | M |  | 9.2.10 |  | - |  |
| **RIC Actions to be**  **Modified List** |  | *0..1* |  |  | YES | ignore |
| >**Action to be Modified**  **Item IEs** |  | *1..<maxofRICact*  *ionID>* |  |  | EACH | ignore |
| >>RIC Action ID | M |  | 9.2.10 |  | - |  |
| >>RIC Action Definition | O |  | 9.2.12 |  | - |  |
| >>RIC Action Execution  Order | O |  | 9.2.35 |  |  |  |
| >>RIC Subsequent Action | O |  | 9.2.13 |  | - |  |
| **RIC Actions to be Added**  **List** |  | *0..1* |  |  | YES | ignore |
| >**Action to be Added**  **Item IEs** |  | *1..*<*maxofRICact*  *ionID*> |  |  | EACH | ignore |
| >>RIC Action ID | M |  | 9.2.10 |  | - |  |
| >>RIC Action Type | M |  | 9.2.11 |  | - |  |
| >>RIC Action Definition | M |  | 9.2.12 |  | - |  |
| >>RIC Action Execution  Order | M |  | 9.2.35 |  |  |  |
| >>RIC Subsequent Action | O |  | 9.2.13 |  | - |  |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Range bound** | **Explanation** |
| maxofRICActionID | Maximum no. of Actions to be requested by Near-RT RIC. Value is 16. |

</div>

#### RIC SUBSCRIPTION MODIFICATION RESPONSE

This message is sent by the E2 Node to accept the request from the Near-RT RIC to modify an existing E2 subscription in the E2 Node.

Direction: E2 Node ? Near-RT RIC.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and**  **reference** | **Semantics**  **description** | **Criticality** | **Assigned**  **Criticality** |
| Message Type | M |  | 9.2.3 |  | YES | reject |
| RIC Request ID | M |  | 9.2.7 |  | YES | reject |
| RAN Function ID | M |  | 9.2.8 |  | YES | reject |
| **RIC Actions Removed**  **List** |  | *0..1* |  |  | YES | ignore |
| **>Action Removed Item**  **IEs** |  | *1..<maxofRICact*  *ionID>* |  |  | EACH | ignore |
| >>RIC Action ID | M |  | 9.2.10 |  | - |  |
| **RIC Actions Failed to be**  **Removed List** |  | *0..1* |  |  | YES | ignore |
| **>Action Failed to be**  **Removed Item IEs** |  | *1..<maxofRICact*  *ionID>* |  |  | EACH | ignore |
| >>RIC Action ID | M |  | 9.2.10 |  | - |  |
| >>Cause | M |  | 9.2.1 |  | - |  |
| **RIC Actions Modified**  **List** |  | *0..1* |  |  | YES | ignore |
| **>Action Modified Item**  **IEs** |  | *1..<maxofRICact*  *ionID>* |  |  | EACH | ignore |
| >>RIC Action ID | M |  | 9.2.10 |  | - |  |
| **RIC Actions Failed to be**  **Modified List** |  | *0..1* |  |  | YES | ignore |
| **>Action Failed to be**  **Modified Item IEs** |  | *1..<maxofRICact*  *ionID>* |  |  | EACH | ignore |
| >>RIC Action ID | M |  | 9.2.10 |  | - |  |
| >>Cause | M |  | 9.2.1 |  | - |  |
| **RIC Actions Added List** |  | *0..1* |  |  | YES | ignore |
| **>Action Added Item IEs** |  | *1..<maxofRICact*  *ionID>* |  |  | EACH | ignore |
| >>RIC Action ID | M |  | 9.2.10 |  | - |  |
| **RIC Actions Failed to be**  **Added List** |  | *0..1* |  |  | YES | ignore |
| >**Action Failed to be**  **Added Item IEs** |  | *1..<maxofRICact*  *ionID>* |  |  | EACH | Ignore |
| >>RIC Action ID | M |  | 9.2.10 |  | - |  |
| >>Cause | M |  | 9.2.1 |  | - |  |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Range bound** | **Explanation** |
| maxofRICActionID | Maximum no. of Actions to be requested by Near-RT RIC. Value is 16. |

</div>

#### RIC SUBSCRIPTION MODIFICATION FAILURE

This message is sent by the E2 Node to inform the Near-RT RIC that the request to modify an existing E2 subscription in the E2 Node failed.

Direction: E2 Node ? Near-RT RIC.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and**  **reference** | **Semantics**  **description** | **Criticality** | **Assigned**  **Criticality** |
| Message Type | M |  | 9.2.3 |  | YES | reject |
| RIC Request ID | M |  | 9.2.7 |  | YES | reject |
| RAN Function ID | M |  | 9.2.8 |  | YES | reject |
| Cause | M |  | 9.2.1 |  | YES | reject |
| Criticality Diagnostics | O |  | 9.2.2 |  | YES | ignore |

</div>

#### RIC SUBSCRIPTION MODIFICATION REQUIRED

This message is sent by the E2 Node to request the Near-RT RIC to modify an existing E2 subscription in the E2 Node. Direction: E2 Node ? Near-RT RIC.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and**  **reference** | **Semantics**  **description** | **Criticality** | **Assigned**  **Criticality** |
| Message Type | M |  | 9.2.3 |  | YES | reject |
| RIC Request ID | M |  | 9.2.7 |  | YES | reject |
| RAN Function ID | M |  | 9.2.8 |  | YES | reject |
| **RIC Actions Required to**  **be Modified List** |  | *0..1* |  |  | YES | ignore |
| >**Action Required to be**  **Modified Item IEs** |  |  |  |  | EACH | ignore |
| >>RIC Action ID | M |  | 9.2.10 |  | - |  |
| >>RIC Time to Wait before  subsequent action | M |  | ENUMERATED  (1ms, 2ms, 5ms, 10ms, 20ms, 30ms, 40ms, 50ms, 100ms, 200ms, 500ms, 1s, 2s, 5s, 10s, 20s,  60s, ...) |  | - |  |
| **RIC Actions Required to**  **be Removed List** |  | *0..1* |  |  | YES | ignore |
| **>Action Required to be**  **Removed Item IEs** |  | *1..<maxofRICact*  *ionID>* |  |  | EACH | ignore |
| >>RIC Action ID | M |  | 9.2.10 |  | - |  |
| >>Cause | M |  | 9.2.1 |  | - |  |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Range bound** | **Explanation** |
| maxofRICActionID | Maximum no. of Actions to be requested by Near-RT RIC. Value is 16. |

</div>

#### RIC SUBSCRIPTION MODIFICATION CONFIRM

This message is sent by the Near-RT RIC to accept the request from the E2 Node to modify an existing E2 subscription in the E2 Node.

Direction: Near-RT RIC ? E2 Node.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and**  **reference** | **Semantics**  **description** | **Criticality** | **Assigned**  **Criticality** |
| Message Type | M |  | 9.2.3 |  | YES | reject |
| RIC Request ID | M |  | 9.2.7 |  | YES | reject |
| RAN Function ID | M |  | 9.2.8 |  | YES | reject |
| **RIC Actions Confirmed**  **for Modification List** |  | *0..1* |  |  | YES | ignore |
| **>RIC Action Confirmed**  **for Modification Item IEs** |  | *1..<maxofRICact*  *ionID>* |  |  | EACH | ignore |
| >>RIC Action ID | M |  | 9.2.10 |  | - |  |
| **RIC Actions Refused to**  **be Modified List** |  | *0..1* |  |  | YES | ignore |
| **>Action Refused to be**  **Modified Item IEs** |  | *1..<maxofRICact*  *ionID>* |  |  | EACH | ignore |
| >>RIC Action ID | M |  | 9.2.10 |  | - |  |
| >>Cause | M |  | 9.2.1 |  | - |  |
| **RIC Actions Confirmed**  **for Removal List** |  | *0..1* |  |  | YES | ignore |
| **>Action Confirmed for**  **Removal Item IEs** |  | *1..<maxofRICact*  *ionID>* |  |  | EACH | ignore |
| >>RIC Action ID | M |  | 9.2.10 |  | - |  |
| **RIC Actions Refused to**  **be Removed List** |  | *0..1* |  |  | YES | ignore |
| **>Action Refused to be**  **Removed Item IEs** |  | *1..<maxofRICact*  *ionID>* |  |  | EACH | ignore |
| >>RIC Action ID | M |  | 9.2.10 |  | - |  |
| >>Cause | M |  | 9.2.1 |  | - |  |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Range bound** | **Explanation** |
| maxofRICActionID | Maximum no. of Actions to be requested by Near-RT RIC. Value is 16. |

</div>

#### RIC SUBSCRIPTION MODIFICATION REFUSE

This message is sent by the Near-RT RIC to deny the request from the E2 Node to modify an existing E2 subscription in the E2 Node.

Direction: Near-RT RIC ? E2 Node.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and**  **reference** | **Semantics**  **description** | **Criticality** | **Assigned**  **Criticality** |
| Message Type | M |  | 9.2.3 |  | YES | reject |
| RIC Request ID | M |  | 9.2.7 |  | YES | reject |
| RAN Function ID | M |  | 9.2.8 |  | YES | reject |
| Cause | M |  | 9.2.1 |  | YES | reject |
| Criticality Diagnostics | O |  | 9.2.2 |  | YES | ignore |

</div>

#### RIC QUERY REQUEST

This message is sent by the Near-RT RIC to an E2 Node to request RAN and/or UE related information from the E2 Node. Direction: Near-RT RIC ? E2 Node.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and**  **reference** | **Semantics**  **description** | **Criticality** | **Assigned**  **Criticality** |
| Message Type | M |  | 9.2.3 |  | YES | reject |
| RIC Request ID | M |  | 9.2.7 |  | YES | reject |
| RAN Function ID | M |  | 9.2.8 |  | YES | reject |
| RIC Query Header | M |  | 9.2.36 |  | YES | reject |
| RIC Query Definition | M |  | 9.2.37 |  | YES | reject |

</div>

#### RIC QUERY RESPONSE

This message is sent by the E2 Node to Near-RT RIC in response to RAN and/or UE related information requested by Near- RT RIC.

Direction: E2 Node ? Near-RT RIC.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and**  **reference** | **Semantics**  **description** | **Criticality** | **Assigned**  **Criticality** |
| Message Type | M |  | 9.2.3 |  | YES | reject |
| RIC Request ID | M |  | 9.2.7 |  | YES | reject |
| RAN Function ID | M |  | 9.2.8 |  | YES | reject |
| RIC Query Outcome | M |  | 9.2.38 |  | YES | reject |

</div>

#### RIC QUERY FAILURE

This message is sent by the E2 Node to inform the Near-RT RIC that the requested RAN and/or UE related Information has failed.

Direction: E2 Node ? Near-RT RIC.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and**  **reference** | **Semantics**  **description** | **Criticality** | **Assigned**  **Criticality** |
| Message Type | M |  | 9.2.3 |  | YES | reject |
| RIC Request ID | M |  | 9.2.7 |  | YES | reject |
| RAN Function ID | M |  | 9.2.8 |  | YES | reject |
| Cause | M |  | 9.2.1 |  | YES | reject |
| Criticality Diagnostics | O |  | 9.2.2 |  | YES | ignore |

</div>

#### RIC SUBSCRIPTION AUDIT REQUEST

This message is sent by the Near-RT RIC to an E2 Node to initiate the RIC Subscription Audit procedure in the E2 Node. Direction: Near-RT RIC ? E2 Node.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and**  **reference** | **Semantics**  **description** | **Criticality** | **Assigned**  **Criticality** |
| Message Type | M |  | 9.2.3 |  | YES | reject |
| RIC Request ID | M |  | 9.2.7 | RIC Request ID for RIC Subscription Audit  procedure. | YES | reject |
| RIC Subscription Audit Flag | O |  | 9.2.39 |  | YES | reject |
| RIC Subscription Audit List | O |  |  |  | YES | reject |
| >Sequence of RIC Subscriptions |  | 1..  <maxofRICsubs criptions> |  |  | EACH | ignore |
| >>RIC Request ID | M |  | 9.2.7 | RIC Request ID for previously established RIC  Subscription. | - |  |
| >>RAN Function ID | M |  | 9.2.8 |  | - |  |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Range bound** | **Explanation** |
| maxofRICsubscriptions | Maximum no. of RIC Subscriptions to be provided by Near-RT RIC.  Value is 2147483648. |

</div>

#### RIC SUBSCRIPTION AUDIT RESPONSE

This message is sent by the E2 Node to accept the request from the Near-RT RIC to initiate a RIC Subscription Audit in the E2 Node.

Direction: E2 Node ? Near-RT RIC.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and**  **reference** | **Semantics**  **description** | **Criticality** | **Assigned**  **Criticality** |
| Message Type | M |  | 9.2.3 |  | YES | reject |
| RIC Request ID | M |  | 9.2.7 | RIC Request ID for RIC Subscription Audit  procedure. | YES | reject |
| RIC Subscription  Confirmed List | O |  |  |  | YES | reject |
| >Sequence of RIC Subscriptions |  | 1..  <maxofRICsubs criptions> |  |  | EACH | ignore |
| >>RIC Request ID | M |  | 9.2.7 | RIC Request ID for previously established RIC  Subscription. | - |  |
| >>RAN Function ID | M |  | 9.2.8 |  | - |  |
| >>RIC Action Admitted List | M | 1..  <maxofRICactio nID> |  |  |  |  |
| >>>RIC Action  ID | M |  | 9.2.10 |  |  |  |
| RIC Subscription Unknown  List | O |  |  |  | YES | reject |
| >Sequence of RIC Subscriptions |  | 1..  <maxofRICsubs criptions> |  |  | EACH | ignore |
| >>RIC Request ID | M |  | 9.2.7 | RIC Request ID for previously established RIC  Subscription. | - |  |
| >>RAN Function ID | M |  | 9.2.8 |  | - |  |
| RIC Subscription Missing  List | O |  |  |  | YES | reject |
| >Sequence of RIC Subscriptions |  | 1..  <maxofRICsubs criptions> |  |  | EACH | ignore |
| >>RIC Request ID | M |  | 9.2.7 | RIC Request ID for previously established RIC  Subscription. | - |  |
| >>RAN Function ID | M |  | 9.2.8 |  | - |  |
| >>RIC Action Admitted List | M | 1..  <maxofRICactio nID> |  |  |  |  |
| >>>RIC Action ID | M |  | 9.2.10 |  |  |  |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Range bound** | **Explanation** |
| maxofRICsubscriptions | Maximum no. of RIC Subscriptions to be provided by Near-RT RIC.  Value is 2147483648. |
| maxofRICActionID | Maximum no. of Actions to be requested by Near-RT RIC. Value is  16. |

</div>

#### RIC SUBSCRIPTION AUDIT FAILURE

This message is sent by the E2 Node to inform the Near-RT RIC that the request to perform the RIC Subscription Audit in the E2 Node failed.

Direction: E2 Node ? Near-RT RIC.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and**  **reference** | **Semantics**  **description** | **Criticality** | **Assigned**  **Criticality** |
| Message Type | M |  | 9.2.3 |  | YES | reject |
| RIC Request ID | M |  | 9.2.7 |  | YES | reject |
| Cause | M |  | 9.2.1 |  | YES | reject |
| Criticality Diagnostics | O |  | 9.2.2 |  | YES | ignore |

</div>

#### RIC SERVICE LOAD STATUS REQUEST

This message is sent by the Near-RT RIC to an E2 Node to request load reporting for one or more RIC Services. Direction: Near-RT RIC ? E2 Node.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and**  **reference** | **Semantics**  **description** | **Criticality** | **Assigned**  **Criticality** |
| Message Type | M |  | 9.2.3 |  | YES | reject |
| RIC Load Measurement ID | M |  | 9.2.40 | Allocated by  Near-RT RIC | YES | reject |
| E2 Node Load Measurement ID | C-  ifRegistrati onRequest StoporAdd |  | 9.2.40 | Allocated by E2 Node | YES | ignore |
| Registration Request | M |  | ENUMERAT  ED (start, stop,  , ...) | Type of request for which the RIC Service Load status is  required. | YES | ignore |
| RAN Function Load Request List | C-  ifRegistrati onRequest StartorAdd | *1..*  *<maxofRANfunct ionID>* |  | List of RAN functions requested to provide load  information | EACH | reject |
| >RAN Function ID | M |  | 9.2.8 | Id of the declared  Function | - |  |
| >RAN Function Load Request | O |  | 9.2.43 | Used to request reporting of overall RAN Function load  information | - |  |
| >RIC Service Load Request | O |  | 9.2.44 | Used to request reporting of overall RIC Service load  information | - |  |
| >RIC Subscription Load  Request List |  | *0..<maxofRICreq*  *uestID>* |  |  | EACH | reject |
| >>RIC Request ID | M |  | 9.2.7 |  | - |  |
| >>RIC Subscription Load Request | O |  | 9.2.43 | Used to request reporting of overall RIC Subscription  load information | - |  |
| >>RIC Action Load  Request List |  | *0..<maxofRICact*  *ionID>* |  |  | EACH | reject |
| >>>RIC Action ID | M |  | 9.2.10 |  | - |  |
| >>>RIC Action Load Request | M |  | 9.2.43 | Used to request reporting of overall RIC Action load  information | - |  |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- |
| Reporting Periodicity | O |  | ENUMERAT ED (500ms, 1000ms,  2000ms,  5000ms,100  00ms, ...) | Periodicity that can be used for reporting of indicated measurements. Also used as the averaging window length for all measurement object if supported.  This IE is ignored if the Registration Request IE is  s " ". | YES | ignore |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Condition** | **Explanation** |
| ifRegistrationRequestStoporAdd | This IE shall be present if the *Registration Request* IE is set to the  value "stop" or "add". |
| ifRegistrationRequestStartorAdd | This IE shall be present if the *Registration Request* IE is set to the  value "start" " ". |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Range bound** | **Explanation** |
| maxofRANfunctionID | Maximum no. of RAN Functions supported by E2 Node. Value is 256. |
| maxofRICrequestID | Maximum no. of RIC subscription requests supported by Near-RT RIC toward an E2  Node. Value is <1024>. |
| maxofRICActionID | Maximum no. of Actions to be requested by Near-RT RIC. Value is 16. |

</div>

#### RIC SERVICE LOAD STATUS RESPONSE

This message is sent by the E2 Node to the Near-RT RIC to accept the request for load reporting for one or more RIC Services. Direction: E2 Node ? Near-RT RIC.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and**  **reference** | **Semantics**  **description** | **Criticality** | **Assigned**  **Criticality** |
| Message Type | M |  | 9.2.3 |  | YES | reject |
| RIC Load Measurement ID | M |  | 9.2.40 | Allocated by  Near-RT RIC | YES | reject |
| E2 Node Load  Measurement ID | M |  | 9.2.40 | Allocated by E2  Node | YES | ignore |
| RAN Function Load Confirm List | C-  ifRegistrati onRequest StartorAdd | *1..*  *<maxofRANfunct ionID>* |  | List of RAN functions | EACH | reject |
| >RAN Function ID | M |  | 9.2.8 | Id of the  declared Function | - |  |
| >RAN Function Load Confirm | O |  | 9.2.45 | Used to confirm RAN Function level load  reporting | - |  |
| >RIC Service Load Confirm | O |  | 9.2.46 | Used to confirm RIC Service  load reporting | - |  |
| >RIC Subscription Load  Confirm List |  | *0..<maxofRICreq*  *uestID>* |  |  | EACH | reject |
| >>RIC Request ID | M |  | 9.2.7 |  | - |  |
| >>RIC Subscription Load Confirm | O |  | 9.2.45 | Used to confirm RIC  Subscription  level load reporting | - |  |
| >>RIC Action List |  | *0..<maxofRICact*  *ionID>* |  |  | EACH | reject |
| >>>RIC Action ID | M |  | 9.2.10 |  | - |  |
| >>>RIC Action Load Confirm | M |  | 9.2.45 | Used to confirm  RIC Action level load reporting | - |  |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Condition** | **Explanation** |
| ifRegistrationRequestStartorAdd | This IE shall be present if the *Registration Request* IE in RIC SERVICE LOAD STATUS REQUEST was set to the value "start" or  "add". |

</div>

#### RIC SERVICE LOAD STATUS FAILURE

This message is sent by the E2 Node to inform the Near-RT RIC that the request for load reporting for one or more RIC Services failed.

Direction: E2 Node ? Near-RT RIC.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and**  **reference** | **Semantics**  **description** | **Criticality** | **Assigned**  **Criticality** |
| Message Type | M |  | 9.2.3 |  | YES | reject |
| RIC Load Measurement ID | M |  | 9.2.40 | Allocated by Near-RT  RIC | YES | reject |
| E2 Node Load  Measurement ID | M |  | 9.2.40 | Allocated by  E2 Node | YES | ignore |
| Cause | M |  | 9.2.1 |  | YES | ignore |
| Criticality Diagnostics | O |  | 9.2.2 |  | YES | ignore |

</div>

#### RIC SERVICE LOAD UPDATE

This message is sent by an E2 Node to a Near-RT RIC to transfer RIC Service load status information. Direction: E2 Node ? Near-RT RIC

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and**  **reference** | **Semantics**  **description** | **Criticality** | **Assigned**  **Criticality** |
| Message Type | M |  | 9.2.3 |  | YES | reject |
| RIC Load Measurement ID | M |  | 9.2.40 | Allocated by  Near-RT RIC | YES | reject |
| E2 Node Load  Measurement ID | M |  | 9.2.40 | Allocated by E2  Node | YES | ignore |
| RAN Function Load List |  | *1..*  *<maxofRANfunct ionID>* |  | List of RAN  functions with load information | EACH | reject |
| >RAN Function ID | M |  | 9.2.8 | Id of the  declared Function | - |  |
| >RAN Function Load  Information | O |  | 9.2.41 | Used to provide  overall RAN Function load information | - |  |
| >RIC Service Load  Information | O |  | 9.2.42 | Used to provide  overall RIC Service load information | - |  |
| >RIC Subscription Load  List |  | *0..*  *<maxofRICreque stID>* |  |  | EACH | reject |
| >>RIC Request ID | M |  | 9.2.7 |  | - |  |
| >>RIC Subscription Load  Information | O |  | 9.2.41 | Used to provide  overall RIC Subscription load information | - |  |
| >>RIC Action Load List |  | *0..*  *<maxofRICactio nID>* |  |  | EACH | reject |
| >>>RIC Action ID | M |  | 9.2.10 |  | - |  |
| >>>RIC Action Load  Information | M |  | 9.2.41 | Used to provide  overall RIC Action load information | - |  |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Range bound** | **Explanation** |
| maxofRANfunctionID | Maximum no. of RAN Functions supported by E2 Node. Value is 256. |
| maxofRICrequestID | Maximum no. of RIC subscription requests supported by Near-RT RIC toward an E2  Node. Value is <1024>. |
| maxofRICActionID | Maximum no. of Actions to be requested by Near-RT RIC. Value is 16. |

</div>

#### RIC SUBSCRIPTION STATE CONTROL REQUEST

This message is sent by the Near-RT RIC to an E2 Node to suspend and/or resume one or more RIC Subscriptions. Direction: Near-RT RIC ? E2 Node.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and**  **reference** | **Semantics**  **description** | **Criticality** | **Assigned**  **Criticality** |
| Message Type | M |  | 9.2.3 |  | YES | reject |
| RIC Request ID | M |  | 9.2.7 |  | YES | reject |
| RAN Function State  Control List |  | *1..*  *<maxofRANfunct ionID>* |  | List of RAN  functions with RIC  subscriptions | EACH | reject |
| >RAN Function ID | M |  | 9.2.8 | Id of the  declared Function | - |  |
| >RIC Subscription To Be  Suspended List |  | *0..*  *<maxofRICreque stID>* |  |  | EACH | reject |
| >>RIC Request ID | M |  | 9.2.7 | RIC Request ID  of RIC Subscription to be suspended | - |  |
| >>RIC Action List |  | *0..*  *<maxofRICactio nID>* |  | If present, then  only the nominated RIC Actions are to be suspended | EACH | reject |
| >>>RIC Action ID | M |  | 9.2.10 |  | - |  |
| >RIC Subscription To Be  Resumed List |  | *0..*  *<maxofRICreque stID>* |  |  | EACH | reject |
| >>RIC Request ID | M |  | 9.2.7 | RIC Request ID  of RIC Subscription to be resumed | - |  |
| >>RIC Action List |  | *0..*  *<maxofRICactio nID>* |  | If present, then  only the nominated RIC Actions are to be resumed | EACH | reject |
| >>>RIC Action ID | M |  | 9.2.10 |  | - |  |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Range bound** | **Explanation** |
| maxofRANfunctionID | Maximum no. of RAN Functions supported by E2 Node. Value is 256. |
| maxofRICrequestID | Maximum no. of RIC subscription requests supported by Near-RT RIC toward an E2  Node. Value is <1024>. |

</div>

#### RIC SUBSCRIPTION STATE CONTROL RESPONSE

This message is sent by the E2 Node to the Near-RT RIC to accept the request to suspend and/or resume one or more RIC Subscriptions.

Direction: E2 Node ? Near-RT RIC.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and**  **reference** | **Semantics**  **description** | **Criticality** | **Assigned**  **Criticality** |
| Message Type | M |  | 9.2.3 |  | YES | reject |
| RIC Request ID | M |  | 9.2.7 |  | YES | reject |
| RAN Function State Confirm List |  | *1..*  *<maxofRANfunct ionID>* |  | List of RAN functions with RIC  subscriptions | EACH | reject |
| >RAN Function ID | M |  | 9.2.8 | Id of the declared  Function | - |  |
| >RIC Subscription Suspended List |  | *0..*  *<*maxofRICreque stID*>* |  |  | EACH | reject |
| >>RIC Request ID | M |  | 9.2.7 | RIC Request ID of suspended RIC  Subscription | - |  |
| >>RIC Action List |  | *0..*  *<maxofRICactio nID>* |  |  | EACH | reject |
| >>>RIC Action ID | M |  | 9.2.10 |  | - |  |
| >RIC Subscription Resumed List |  | *0..*  *<*maxofRICreque stID*>* |  |  | EACH | reject |
| >>RIC Request ID | M |  | 9.2.7 | RIC Request ID of resumed RIC  Subscription | - |  |
| >>RIC Action List |  | *0..*  *<maxofRICactio nID>* |  |  | EACH | reject |
| >>>RIC Action ID | M |  | 9.2.10 |  | - |  |

</div>

#### RIC SUBSCRIPTION STATE CONTROL FAILURE

This message is sent by the E2 Node to inform the Near-RT RIC that the request to suspend and/or resume one or more RIC Subscriptions in the E2 Node failed.

Direction: E2 Node ? Near-RT RIC.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and**  **reference** | **Semantics**  **description** | **Criticality** | **Assigned**  **Criticality** |
| Message Type | M |  | 9.2.3 |  | YES | reject |
| RIC Request ID | M |  | 9.2.7 |  | YES | reject |
| Cause | M |  | 9.2.1 |  | YES | reject |
| Criticality Diagnostics | O |  | 9.2.2 |  | YES | ignore |

</div>

#### RIC ASSISTANCE REQUEST

This message is sent by the E2 Node to Near-RT RIC to request an assistance service. Direction: E2 Node ? Near-RT RIC.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and**  **reference** | **Semantics**  **description** | **Criticality** | **Assigned**  **Criticality** |
| Message Type | M |  | 9.2.3 |  | YES | reject |
| RIC Request ID | M |  | 9.2.7 |  | YES | reject |
| RIC Assistance Header | M |  | 9.2.47 |  | YES | reject |
| RIC Assistance Message | M |  | 9.2.48 |  | YES | reject |
| RIC Assistance Update | O |  | 9.2.49 |  | YES | Ignore |
| RIC Assistance Update  Number | O |  | 9.2.50 |  | YES | Ignore |

</div>

#### RIC ASSISTANCE RESPONSE

This message is sent by the Near-RT RIC to the E2 Node to provide the requested assistance service. Direction: Near-RT RIC ? E2 Node.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and**  **reference** | **Semantics**  **description** | **Criticality** | **Assigned**  **Criticality** |
| Message Type | M |  | 9.2.3 |  | YES | reject |
| RIC Request ID | M |  | 9.2.7 |  | YES | reject |
| RIC Assistance Header | M |  | 9.2.47 |  | YES | reject |
| RIC Assistance Outcome | M |  | 9.2.51 |  | YES | ignore |

</div>

#### RIC ASSISTANCE FAILURE

This message is sent by the Near-RT RIC to inform the E2 Node that the requested RIC Assistance service failed. Direction: Near-RT RIC ? E2 Node.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and**  **reference** | **Semantics**  **description** | **Criticality** | **Assigned**  **Criticality** |
| Message Type | M |  | 9.2.3 |  | YES | reject |
| RIC Request ID | M |  | 9.2.7 |  | YES | reject |
| Cause | M |  | 9.2.1 |  | YES | reject |
| Criticality Diagnostics | O |  | 9.2.2 |  | YES | ignore |

</div>

#### RIC ASSISTANCE INDICATION

This message is sent by the Near-RT RIC to the E2 Node to provide an updated response to the requested assistance service. Direction: Near-RT RIC ? E2 Node.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and**  **reference** | **Semantics**  **description** | **Criticality** | **Assigned**  **Criticality** |
| Message Type | M |  | 9.2.3 |  | YES | reject |
| RIC Request ID | M |  | 9.2.7 |  | YES | reject |
| RIC Assistance SN | M |  | 9.2.52 |  | YES | ignore |
| RIC Assistance Header | M |  | 9.2.47 |  | YES | reject |
| RIC Assistance Outcome | M |  | 9.2.51 |  | YES | ignore |

</div>

#### RIC ASSISTANCE HALT

This message is sent by the E2 Node to the Near-RT RIC to halt further updates to the requested assistance service. Direction: Near-RT RIC ? E2 Node.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and**  **reference** | **Semantics**  **description** | **Criticality** | **Assigned**  **Criticality** |
| Message Type | M |  | 9.2.3 |  | YES | reject |
| RIC Request ID | M |  | 9.2.7 |  | YES | ignore |

</div>

### Messages for Global Procedures

#### ERROR INDICATION

This message is used to indicate that some error has been detected in the E2 Node or Near-RT RIC. Direction: E2 Node ? Near-RT RIC or Near-RT RIC ? E2 Node.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and**  **reference** | **Semantics**  **description** | **Criticality** | **Assigned**  **Criticality** |
| Message Type | M |  | 9.2.3 |  | YES | ignore |
| Transaction ID | O |  | 9.2.33 | Required if *RIC*  *Request ID* IE is not present. | YES | reject |
| RIC Request ID | O |  | 9.2.7 | Required if  *Transaction ID* IE is not present. | YES | reject |
| RAN Function ID | O |  | 9.2.8 |  | YES | reject |
| Cause | O |  | 9.2.1 |  | YES | ignore |
| Criticality Diagnostics | O |  | 9.2.2 |  | YES | ignore |

</div>

#### E2 SETUP REQUEST

This message is sent by an E2 Node to a Near-RT RIC to transfer the initialization information. Direction: E2 Node ? Near-RT RIC.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and**  **reference** | **Semantics**  **description** | **Criticality** | **Assigned**  **Criticality** |
| Message Type | M |  | 9.2.3 |  | YES | reject |
| Transaction ID | M |  | 9.2.33 | . | YES | reject |
| Global E2 Node ID | M |  | 9.2.6 |  | YES | reject |
| **RAN Functions Added List** |  | *1* |  | List of RAN functions in E2  node. | YES | reject |
| >RAN Function item |  | *1..*  *<maxofRANfunct ionID>* |  |  |  |  |
| >>RAN Function ID | M |  | 9.2.8 | Id of the  declared Function. | - |  |
| >>RAN Function Definition | M |  | 9.2.23 | Definition of  Function. | - |  |
| >>RAN Function Revision | M |  | 9.2.24 | Revision  counter. | - |  |
| >>RAN Function OID | M |  | 9.2.31 | Object identifier of corresponding  E2SM. | - |  |
| **E2 Node Component Configuration Addition List** |  | *1* |  | List of E2 Node component configuration  information. | YES | reject |
| >E2 Node Component Configuration Addition Item |  | *1..*  *<maxofE2nodeC omponents>* |  |  | EACH | reject |
| >>E2 Node Component Interface Type | M |  | 9.2.26 | E2 Node component  interface type. | - |  |
| >>E2 Node Component ID | O |  | 9.2.32 | E2 Node  Component Identifier. | - |  |
| >>E2 Node Component Configuration | M |  | 9.2.27 | Contents depends on component  interface type. | - |  |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Range bound** | **Explanation** |
| maxofRANfunctionID | Maximum no. of RAN Functions supported by E2 Node. Value is 256. |
| maxofE2nodeComponents | Maximum no. of E2 Node components supported by E2 Node. Value is 1024 |

</div>

#### E2 SETUP RESPONSE

This message is sent by a Near-RT RIC to an E2 Node to transfer the initialization information. Direction: Near-RT RIC ?E2 Node.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and**  **reference** | **Semantics**  **description** | **Criticality** | **Assigned**  **Criticality** |
| Message Type | M |  | 9.2.3 |  | YES | reject |
| Transaction ID | M |  | 9.2.33 | . | YES | reject |
| Global RIC ID | M |  | 9.2.4 |  | YES | reject |
| **RAN Functions Accepted List** |  | *0..1* |  | Complete list of Functions accepted by  Near-RT RIC. |  |  |
| >RAN Functions ID item |  | *1 ..*  *<maxofRANfunct ionID>* |  |  | YES | Reject |
| >>RAN Function ID | M |  | 9.2.8 | Id of the  declared Function. | - |  |
| >>RAN Function  Revision | M |  | 9.2.24 | Revision  counter. | - |  |
| **RAN Functions Rejected List** |  | *0..1* |  | Complete list of Functions not accepted by  Near-RT RIC. |  |  |
| >RAN Functions ID Cause Item |  | *1 ..*  *<maxofRANfunct ionID>* |  |  | YES | reject |
| >>RAN Function ID | M |  | 9.2.8 | Id of the  declared Function. | - |  |
| >>Cause | M |  | 9.2.1 | Reason for not  accepting function. | - |  |
| **E2 Node Component Configuration Addition Acknowledge List** |  | *1* |  | Complete list of E2 Node Components in the E2 SETUP REQUEST  message. | YES | reject |
| >E2 Node Component Configuration Addition  Acknowledge Item |  | *1..*  *<maxofE2nodeC omponents>* |  |  | EACH | reject |
| >>E2 Node Component Interface Type | M |  | 9.2.26 | E2 Node component  interface type. | - |  |
| >>E2 Node Component ID | M |  | 9.2.32 | E2 Node Component  Identifier. | - |  |
| >>E2 Node Component  Configuration Acknowledge | M |  | 9.2.28 | Success or  failure with Cause. | - |  |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Range bound** | **Explanation** |
| maxofRANfunctionID | Maximum no. of RAN Functions supported by E2 Node. Value is 256. |
| maxofE2nodeComponents | Maximum no. of E2 Node components supported by E2 Node. Value is 1024 |

</div>

#### E2 SETUP FAILURE

This message is sent by the Near-RT RIC to indicate E2 Setup failure. Direction: Near-RT RIC ? E2 Node.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and**  **reference** | **Semantics**  **description** | **Criticality** | **Assigned**  **Criticality** |
| Message Type | M |  | 9.2.3 |  | YES | reject |
| Transaction ID | M |  | 9.2.33 |  | YES | reject |
| Cause | M |  | 9.2.1 |  | YES | ignore |
| Time To Wait | O |  | 9.2.5 |  | YES | ignore |
| Criticality Diagnostics | O |  | 9.2.2 |  | YES | Ignore |
| Transport Layer Information | O |  | 9.2.29 |  | YES | ignore |

</div>

#### RESET REQUEST

This message is sent from a Near-RT RIC to an E2 Node or from an E2 Node to a Near-RT RIC and is used to request the E2 interface between the E2 node and the Near-RT RIC to be reset.

Direction: Near-RT RIC ? E2 Node, or E2 Node ? Near-RT RIC.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and**  **reference** | **Semantics**  **description** | **Criticality** | **Assigned**  **Criticality** |
| Message Type | M |  | 9.2.3 |  | YES | reject |
| Transaction ID | M |  | 9.2.33 |  | YES | reject |
| Cause | M |  | 9.2.1 |  | YES | ignore |

</div>

#### RESET RESPONSE

This message is sent by an E2 Node to a Near-RT RIC or from a Near-RT RIC to an E2 Node as a response to a RESET REQUEST message.

Direction: Near-RT RIC ? E2 Node, or E2 Node ? Near-RT RIC.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and**  **reference** | **Semantics**  **description** | **Criticality** | **Assigned**  **Criticality** |
| Message Type | M |  | 9.2.3 |  | YES | reject |
| Transaction ID | M |  | 9.2.33 |  | YES | reject |
| Criticality Diagnostics | O |  | 9.2.2 |  | YES | ignore |

</div>

#### RIC SERVICE UPDATE

This message is sent by an E2 Node to the Near-RT RIC to transfer updated information on RIC Services supported by the E2 Node.

Direction: E2 Node ? Near-RT RIC.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and**  **reference** | **Semantics**  **description** | **Criticality** | **Assigned**  **Criticality** |
| Message Type | M |  | 9.2.3 |  | YES | reject |
| Transaction ID | M |  | 9.2.33 |  | YES | reject |
| **RAN Functions Added List** |  | *0..1* |  | List of added RAN functions  in E2 node. |  |  |
| >RAN Functions Item |  | *1 ..*  *<maxofRANfunc tionID>* |  |  | YES | reject |
| >>RAN Function ID | M |  | 9.2.8 | Id of the declared  Function. | - |  |
| >>RAN Function Definition | M |  | 9.2.23 | Definition of  Function. | - |  |
| >>RAN Function Revision | M |  | 9.2.24 | Revision  counter. | - |  |
| >>RAN Function OID | M |  | 9.2.31 | Object identifier of corresponding  E2SM. | - |  |
| **RAN Functions Modified List** |  | *0..1* |  | List of Modified  RAN functions in E2 node. |  |  |
| >RAN Functions Item |  | *1 ..*  *<maxofRANfunc tionID>* |  |  | YES | reject |
| >>RAN Function ID | M |  | 9.2.8 | Id of the  declared Function. | - |  |
| >>RAN Function Definition | M |  | 9.2.23 | Definition of  Function. | - |  |
| >>RAN Function Revision | M |  | 9.2.24 | Revision  counter. | - |  |
| >>RAN Function OID | M |  | 9.2.31 | Object identifier of corresponding  E2SM. | - |  |
| **RAN Functions Deleted List** |  | *0..1* |  | List of deleted RAN functions  in E2 node. |  |  |
| >RAN Functions ID Item |  | *1 ..*  *<maxofRANfunc tionID>* |  |  | YES | reject |
| >>RAN Function ID | M |  | 9.2.8 | Id of the declared  Function. | - |  |
| >>RAN Function Revision | M |  | 9.2.24 | Revision  counter. | - |  |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Range bound** | **Explanation** |
| maxofRANfunctionID | Maximum no. of Functions accepted by Near-RT RIC. Value is 256. |

</div>

#### RIC SERVICE UPDATE ACKNOWLEDGE

This message is sent by the Near-RT RIC to the E2 Node to acknowledge update of RIC Services supported by the E2 Node. Direction: Near-RT RIC ? E2 Node.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and**  **reference** | **Semantics**  **description** | **Criticality** | **Assigned**  **Criticality** |
| Message Type | M |  | 9.2.3 |  | YES | reject |
| Transaction ID | M |  | 9.2.33 |  | YES | reject |
| **RAN Functions Accepted**  **List** |  | *0..1* |  | List of  Functions accepted by Near-RT RIC. |  |  |
| >RAN Functions ID Item |  | *1 ..*  *<maxofRANfunct ionID>* |  |  | YES | reject |
| >>RAN Function ID | M |  | 9.2.8 | Id of the  declared Function. | - |  |
| >>RAN Function Revision | M |  | 9.2.24 | Revision  counter. | - |  |
| **RAN Functions Rejected**  **List** |  | *0..1* |  | List of  Functions not accepted by Near-RT RIC. |  |  |
| >RAN Functions Cause  Item |  | *1 ..*  *<maxofRANfunct ionID>* |  |  | YES | reject |
| >>RAN Function ID | M |  | 9.2.8 | Id of the  declared Function. | - |  |
| >>Cause | M |  | 9.2.1 | Reason for not  accepting function. | - |  |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Range bound** | **Explanation** |
| maxofRANfunctionID | Maximum no. of Functions accepted by Near-RT RIC. Value is 256. |

</div>

#### RIC SERVICE UPDATE FAILURE

This message is sent by the Near-RT RIC to the E2 Node to indicate RIC SERVICE Update Failure. Direction: Near-RT RIC ? E2 Node.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and**  **reference** | **Semantics**  **description** | **Criticality** | **Assigned**  **Criticality** |
| Message Type | M |  | 9.2.3 |  | YES | reject |
| Transaction ID | M |  | 9.2.33 |  | YES | reject |
| Cause | M |  | 9.2.1 | Reason for  failure. | YES | reject |
| Time To Wait | O |  | 9.2.5 |  | YES | ignore |
| Criticality Diagnostics | O |  | 9.2.2 |  | YES | ignore |

</div>

#### RIC SERVICE QUERY

This message is sent by a Near-RT RIC to an E2 Node to request a E2 Node initiated RIC Service Update procedure. Direction: Near-RT RIC ? E2 Node.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and**  **reference** | **Semantics**  **description** | **Criticality** | **Assigned**  **Criticality** |
| Message Type | M |  | 9.2.3 |  | YES | reject |
| Transaction ID | M |  | 9.2.33 | . | YES | reject |
| **RAN Functions Accepted**  **List** |  | *0..1* |  | Complete list  of Functions previously accepted by Near-RT RIC. |  |  |
| >RAN Functions ID Item |  | *1 ..*  *<maxofRANfunct ionID>* |  |  | YES | reject |
| >>RAN Function ID | M |  | 9.2.8 | Id of the  declared Function. | - |  |
| >>RAN Function Revision | M |  | 9.2.24 | Revision  counter. | - |  |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Range bound** | **Explanation** |
| maxofRANfunctionID | Maximum no. of Functions accepted by Near-RT RIC. Value is 256. |

</div>

#### E2 NODE CONFIGURATION UPDATE

This message is sent by an E2 Node to the Near-RT RIC to transfer updated information on the E2 Node Configuration information.

Direction: E2 Node ? Near-RT RIC.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and**  **reference** | **Semantics**  **description** | **Criticality** | **Assigned**  **Criticality** |
| Message Type | M |  | 9.2.3 |  | YES | reject |
| Transaction ID | M |  | 9.2.33 |  | YES | reject |
| Global E2 Node ID | O |  | 9.2.6 | Required when sent as first message on new TNL  association. | YES | reject |
| **E2 Node Component Configuration Addition**  **List** |  | *0..1* |  |  | YES | reject |
| >E2 Node Component Configuration Addition Item |  | *1..*  *<maxofE2nodeC omponents>* |  |  | EACH | reject |
| >>E2 Node Component Interface Type | M |  | 9.2.26 | E2 Node  component interface type. | - |  |
| >>E2 Node Component ID | M |  | 9.2.32 | E2 Node Component  Identifier. | - |  |
| >>E2 Node Component Configuration | M |  | 9.2.27 | Contents depends on component  type. | - |  |
| **E2 Node Component**  **Configuration Update List** |  | *0..1* |  |  | YES | reject |
| >E2 Node Component Configuration Update Item |  | *1..*  *<maxofE2nodeC omponents>* |  |  | EACH | reject |
| >>E2 Node Component Interface Type | M |  | 9.2.26 | E2 Node component  interface type. | - |  |
| >>E2 Node Component ID | M |  | 9.2.32 | E2 Node  Component Identifier. | - |  |
| >>E2 Node Component Configuration | M |  | 9.2.27 | Contents depends on component  type. | - |  |
| **E2 Node Component Configuration Removal**  **List** |  | *0..1* |  |  | YES | reject |
| >E2 Node Component  Configuration Removal Item |  | *1..*  *<maxofE2nodeC omponents>* |  |  | EACH | reject |
| >>E2 Node Component Interface Type | M |  | 9.2.26 | E2 Node component  interface type. | - |  |
| >>E2 Node Component ID | M |  | 9.2.32 | E2 Node Component  Identifier. | - |  |
| **E2 Node TNL Association**  **To Remove List** |  | *0..1* |  |  | YES | reject |
| >E2 Node TNL Association  To Remove Item IEs |  | *1..<maxofTNLA>* |  |  | EACH | reject |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- |
| >> Transport Layer Information | M |  | 9.2.29 | Transport Layer  Address of the E2 node. | - | - |
| >> Transport Layer Information Near-RT RIC | O |  | 9.2.29 | Transport Layer Address of the  Near-RT RIC. | - | - |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Range bound** | **Explanation** |
| maxofE2nodeComponents | Maximum no. of E2 Node components supported by E2 Node. Value is 1024. |
| maxofTNLA | Maximum no. of TNL Associations supported by E2 Node. Value is 32. |

</div>

#### E2 NODE CONFIGURATION UPDATE ACKNOWLEDGE

This message is sent by Near-RT RIC to E2 Node to acknowledge update of E2 Node Configuration supported by the E2 Node.

Direction: Near-RT RIC ? E2 Node.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and**  **reference** | **Semantics**  **description** | **Criticality** | **Assigned**  **Criticality** |
| Message Type | M |  | 9.2.3 |  | YES | reject |
| Transaction ID | M |  | 9.2.33 | . | YES | reject |
| **E2 Node Component Configuration Addition**  **Acknowledge List** |  | *0..1* |  |  | YES | reject |
| >E2 Node Component  Configuration Addition Acknowledge Item |  | *1..*  *<maxofE2node Components>* |  |  | EACH | reject |
| >>E2 Node Component Interface Type | M |  | 9.2.26 | E2 Node component  interface type. | - |  |
| >>E2 Node Component ID | M |  | 9.2.32 | E2 Node Component  Identifier. | - |  |
| >>E2 Node Component Configuration Acknowledge | M |  | 9.2.28 | Success or failure with  Cause. | - |  |
| **E2 Node Component**  **Configuration Update Acknowledge List** |  | *0..1* |  |  | YES | reject |
| >E2 Node Component Configuration Update  Acknowledge Item |  | *1..*  *<maxofE2node Components>* |  |  | EACH | reject |
| >>E2 Node Component Interface Type | M |  | 9.2.26 | E2 Node component  interface type. | - |  |
| >>E2 Node Component ID | O |  | 9.2.32 | E2 Node Component  Identifier. | - |  |
| >>E2 Node Component Configuration Update  Acknowledge | M |  | 9.2.28 | Success or failure with  Cause. | - |  |
| **E2 Node Component Configuration Removal**  **Acknowledge List** |  | *0..1* |  |  | YES | reject |
| >E2 Node Component Configuration Removal  Acknowledge Item |  | *1..*  *<maxofE2node Components>* |  |  | EACH | reject |
| >>E2 Node Component Interface Type | M |  | 9.2.26 | E2 Node component  interface type. | - |  |
| >>E2 Node Component ID | M |  | 9.2.32 | E2 Node Component  Identifier. | - |  |
| >>E2 Node Component Configuration Acknowledge | M |  | 9.2.28 | Success or  failure with Cause. | - |  |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Range bound** | **Explanation** |
| maxofE2nodeComponents | Maximum no. of E2 Node components supported by E2 Node. Value is 1024. |

</div>

#### E2 NODE CONFIGURATION UPDATE FAILURE

This message is sent by Near-RT RIC to E2 Node to indicate E2 Node Configuration Update Failure. Direction: Near-RT RIC ? E2 Node.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and**  **reference** | **Semantics**  **description** | **Criticality** | **Assigned**  **Criticality** |
| Message Type | M |  | 9.2.3 |  | YES | reject |
| Transaction ID | M |  | 9.2.33 | . | YES | reject |
| Cause | M |  | 9.2.1 | Cause | YES | reject |
| Time To Wait | O |  | 9.2.5 |  | YES | ignore |
| Criticality Diagnostics | O |  | 9.2.2 |  | YES | ignore |

</div>

#### E2 CONNECTION UPDATE

This message is sent by Near-RT RIC to E2 Node to initiate update of E2 Connection supported by the E2 Node. Direction: Near-RT RIC ? E2 Node.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and**  **reference** | **Semantics**  **description** | **Criticality** | **Assigned**  **Criticality** |
| Message Type | M |  | 9.2.3 |  | YES | reject |
| Transaction ID | M |  | 9.2.33 |  | YES | reject |
| **E2 Connection To Add**  **List** |  | *0..1* |  |  | YES | ignore |
| >E2 Connection to Add  Item IEs |  | *1..*  *<maxofTNLA>* |  |  | EACH | ignore |
| >>Transport Layer Information | M |  | 9.2.29 | Transport layer address and port number of  Near-RT RIC. |  |  |
| >>TNL Association Usage | M |  | 9.2.30 | Indicates how E2 connection  is to be used. |  |  |
| **E2 Connection To**  **Remove List** |  | *0..1* |  |  | YES | ignore |
| >E2 Connection to  Remove Item IEs |  | *1..*  *<maxofTNLA>* |  |  | EACH | ignore |
| >>Transport Layer Information | M |  | 9.2.29 | Transport layer address and port number of  Near-RT RIC. |  |  |
| **E2 Connection To Modify**  **List** |  | *0..1* |  |  | YES | ignore |
| >E2 Connection to Modify  Item IEs |  | *1..*  *<maxofTNLA>* |  |  | EACH | ignore |
| >>Transport Layer Information | M |  | 9.2.29 | Transport layer address and port number of  Near-RT RIC. |  |  |
| >>TNL Association Usage | M |  | 9.2.30 | Indicates how E2 connection  is to be used. |  |  |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Range bound** | **Explanation** |
| maxofTNLA | Maximum no. of TNL Associations supported by E2 Node. Value is 32. |

</div>

#### E2 CONNECTION UPDATE ACKNOWLEDGE

This message is sent by E2 Node to the Near-RT RIC to acknowledge update of E2 Connection supported by the E2 Node. Direction: E2 Node ? Near-RT RIC.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and**  **reference** | **Semantics**  **description** | **Criticality** | **Assigned**  **Criticality** |
| Message Type | M |  | 9.2.3 |  | YES | reject |
| Transaction ID | M |  | 9.2.33 |  | YES | reject |
| **E2 Connection Setup List** |  | *0..1* |  |  | YES | ignore |
| >E2 Connection Setup  Item IEs |  | *1..*  *<maxofTNLA>* |  |  | EACH | ignore |
| >>Transport Layer Information | M |  | 9.2.29 | Transport layer address and port number of  Near-RT RIC. |  |  |
| >>TNL Association Usage | M |  | 9.2.30 | Indicates how  E2 connection is to be used. |  |  |
| **E2 Connection Failed to**  **Setup List** |  | *0..1* |  |  | YES | ignore |
| >E2 Connection failed to  setup Item IEs |  | *1..*  *<maxofTNLA>* |  |  | EACH | ignore |
| >>Transport Layer Information | M |  | 9.2.29 | Transport layer address and port number of  Near-RT RIC. |  |  |
| >>Cause | M |  | 9.2.1 |  |  |  |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Range bound** | **Explanation** |
| maxofTNLA | Maximum no. of TNL Associations supported by E2 Node. Value is 32. |

</div>

#### E2 CONNECTION UPDATE FAILURE

This message is sent by E2 Node to the Near-RT RIC to inform failure of the requested E2 Connection updates. Direction: E2 Node ? Near-RT RIC.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and**  **reference** | **Semantics**  **description** | **Criticality** | **Assigned**  **Criticality** |
| Message Type | M |  | 9.2.3 |  | YES | reject |
| Transaction ID | M |  | 9.2.33 |  | YES | reject |
| Cause | M |  | 9.2.1 |  | YES | reject |
| Time To Wait | O |  | 9.2.5 |  | YES | ignore |
| Criticality Diagnostics | O |  | 9.2.2 |  | YES | ignore |

</div>

#### E2 REMOVAL REQUEST

This message is sent by either the E2 Node or the Near-RT RIC to initiate the removal of the E2 signalling connection and the related resources.

Direction: Near-RT RIC ? E2 Node, or E2 Node ? Near-RT RIC.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and**  **reference** | **Semantics**  **description** | **Criticality** | **Assigned**  **Criticality** |
| Message Type | M |  | 9.2.3 |  | YES | reject |
| Transaction ID | M |  | 9.2.33 |  | YES | reject |

</div>

#### E2 REMOVAL RESPONSE

This message is sent by either the E2 Node or the Near-RT RIC to acknowledge the initiation of removal of the E2 signalling connection and the related resources.

Direction: Near-RT RIC ? E2 Node, or E2 Node ? Near-RT RIC.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and**  **reference** | **Semantics**  **description** | **Criticality** | **Assigned**  **Criticality** |
| Message Type | M |  | 9.2.3 |  | YES | reject |
| Transaction ID | M |  | 9.2.33 |  | YES | reject |
| Criticality Diagnostics | O |  | 9.2.2 |  | YES | ignore |

</div>

#### E2 REMOVAL FAILURE

This message is sent by either the E2 Node or the Near-RT RIC to indicate that removing the E2 signalling connection and the related resources cannot be accepted.

Direction: Near-RT RIC ? E2 Node, or E2 Node ? Near-RT RIC.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and**  **reference** | **Semantics**  **description** | **Criticality** | **Assigned**  **Criticality** |
| Message Type | M |  | 9.2.3 |  | YES | reject |
| Transaction ID | M |  | 9.2.33 |  | YES | reject |
| Cause | M |  | 9.2.1 |  | YES | ignore |
| Criticality Diagnostics | O |  | 9.2.2 |  | YES | ignore |

</div>

## Information Element definitions

### General

When specifying information elements which are to be represented by bit strings, if not otherwise specifically stated in the semantics description of the concerned IE or elsewhere, the following principle applies with regards to the ordering of bits:

* + - * The first bit (leftmost bit) contains the Most Significant Bit (MSB);
      * The last bit (rightmost bit) contains the Least Significant Bit (LSB);
      * When importing bit strings from other specifications, the first bit of the bit string contains the first bit of the concerned information.

### Cause

The purpose of the *Cause* IE is to indicate the reason for a particular event for the E2AP protocol.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE Type and Reference** | **Semantics**  **Description** |
| CHOICE Cause  Group | M |  |  |  |
| >RIC services |  |  |  |  |
| >>RIC Request | O |  | ENUMERATED  (RAN Function ID invalid, Action not supported, Excessive actions, Duplicate action, Duplicate Event Trigger, Function resource limit, RIC Request ID unknown,  Inconsistent Action/subsequent Action sequence, Control message invalid,  RIC Call process ID invalid, Control timer expired, Control failed to execute, System not ready, unspecified, ...,  RIC Subscription End Time expired, RIC Subscription Time invalid, Duplicate RIC Request ID,  Event Trigger not supported, Requested Information Unavailable,  Invalid Information Request) |  |
| >>RIC Service | O |  | ENUMERATED  RAN Function not supported, Excessive functions,  RIC resource l m ,...) |  |
| >>E2 Node | O |  | ENUMERATED  ( n m n n nkn wn, ...) |  |
| >Transport  Layer |  |  |  |  |
| >>Transport Layer Cause | M |  | ENUMERATED  (Unspecified,  Transport Resource Unavailable, ...) |  |
| >Protocol |  |  |  |  |
| >>Protocol Cause | M |  | ENUMERATED  (Transfer Syntax Error, Abstract Syntax Error (Reject),  Abstract Syntax Error (Ignore and Notify), Message not Compatible with Receiver State, Semantic Error,  Abstract Syntax Error (Falsely Constructed Message),  Unspecified, ...) |  |
| >Misc |  |  |  |  |
| >>Miscellaneou s Cause | M |  | ENUMERATED  (Control Processing Overload, Hardware Failure,  O&M Intervention,  Unspecified, ...) |  |
| >Service layer |  |  |  |  |
| >>Service layer  Cause | M |  | 9.2.53 |  |

</div>

The meaning of the different cause values is described in the following table. In general, "not supported" cause values indicate that the related capability is missing. On the other hand, "not available" cause values indicate that the related capability is present, but insufficient resources are available to perform the requested action.

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **RIC Request cause** | **Meaning** |
| Unspecified | Sent for RIC service cause when none of the specified cause values applies. |
| RAN Function ID invalid | Requested function Id invalid or not known by E2 Node. |
| Action not supported | Requested Action not supported by RAN function. |
| Excessive actions | Excessive number of actions requested for RAN Function. |
| Duplicate action | Same action requested more than once in same subscription request. |
| Duplicate Event Trigger | Subscription request has same event trigger as previously accepted subscription  request. |
| Function resource limit | RAN function has reached resource limit. |
| RIC Request ID unknown | RIC Request ID sent to Near-RT RIC is unknown. |
| Inconsistent Action/subsequent  Action sequence | RAN Function has detected inconsistent sequence of requested Action and Subsequent  Action. |
| Control message invalid | RAN Function has detected invalid RIC CONTROL REQUEST message. |
| RIC Call process ID invalid | RAN function has detected invalid RIC Call Process ID in RIC CONTROL REQUEST. |
| Control timer expired | RIC Control Request received by E2 Node after the associated RIC Time to Wait timer  had expired. |
| Control failed to execute | Requested control procedure initiated by RIC Control Request failed to be executed in  the E2 Node. |
| System not ready | RAN Function is not ready to receive RIC Subscription or RIC Control message. |
| RIC Subscription End Time  expired | RIC SUBSCRIPTION DELETE REQUIRED is triggered to inform Near-RT RIC that end  time has expired. |
| RIC Subscription Time invalid | E2 Node received RIC SUBSCRIPTION REQUEST containing an invalid RIC  Subscription Start Time and/or RIC Subscription End Time. |
| Duplicate RIC Request ID | E2 node does not support handling of same RIC Request ID as previously accepted  subscription request. |
| Event Trigger not supported | Requested event trigger definition or modification - not supported by RAN function. |
| Requested Information  Unavailable | Information requested by Near-RT RIC is not available at E2 Node. |
| Invalid Information Request | Information requested by Near-RT RIC is invalid. |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **RIC Service cause** | **Meaning** |
| RAN Function not supported | The RAN Function described by E2 Node is not supported by Near-RT RIC. |
| Excessive functions | RIC has reached a limit on the number of declared RAN functions. |
| RIC resource limit | RIC has reached a resource limit. |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **E2 Node configuration cause** | **Meaning** |
| E2 Node component unknown | The received message refers to an unknown E2 Node component. |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Transport Layer cause** | **Meaning** |
| Unspecified | Sent when none of the cause values below applies but still the cause is Transport  Network Layer related. |
| Transport Resource Unavailable | The required transport resources are not available. |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Protocol cause** | **Meaning** |
| Transfer Syntax Error | The received message included a transfer syntax error. |
| Abstract Syntax Error (Reject) | The received message included an abstract syntax error and the concerning criticality  indicated "reject". |
| Abstract Syntax Error (Ignore And  Notify) | The received message included an abstract syntax error and the concerning criticality  indicated "ignore and notify". |
| Message Not Compatible With  Receiver State | The received message was not compatible with the receiver state. |
| Semantic Error | The received message included a semantic error. |
| Abstract Syntax Error (Falsely  Constructed Message) | The received message contained IEs or IE groups in wrong order or with too many  occurrences. |
| Unspecified | Sent when none of the above cause values applies but still the cause is Protocol  related. |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Miscellaneous cause** | **Meaning** |
| Control Processing Overload | Control processing overload. |
| Hardware Failure | Action related to hardware failure. |
| O&M Intervention | The action is due to O&M intervention. |
| Unspecified Failure | Sent when none of the above cause values applies and the cause is not related to any  of the categories Radio Network Layer, Transport Network Layer, NAS or Protocol. |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Service Layer cause** | **Meaning** |
| Service Layer Cause | Used as a transparent container transporting the service layer specific cause  information |

</div>

### Criticality Diagnostics

The *Criticality Diagnostics* IE is sent by the E2 Node or the Near-RT RIC when parts of a received message have not been comprehended, or were missing, or if the message contained logical errors. When applicable, it contains information about which IEs were not comprehended or were missing.

For further details on how to use the *Criticality Diagnostics* IE, (see clause 10). The conditions for inclusion of the *Transaction ID* IE are described in clause 10.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and**  **reference** | **Semantics description** |
| Procedure Code | O |  | INTEGER (0..255) | Procedure Code is to be used if Criticality Diagnostics is part of Error Indication procedure, and not within the response message of the same procedure that  caused the error. |
| Triggering Message | O |  | ENUMERATED  (initiating message, successful outcome, unsuccessful  outcome) | The Triggering Message is used only if the Criticality Diagnostics is part of Error Indication procedure. |
| Procedure Criticality | O |  | ENUMERATED  (reject, ignore, notify) | This Procedure Criticality is used for reporting the Criticality of the Triggering  message (Procedure). |
| RIC Request ID | O |  | 9.2.7 |  |
| **Information Element**  **Criticality Diagnostics** |  | *0 .. <maxnoof*  *Errors>* |  |  |
| >IE Criticality | M |  | ENUMERATED  (reject, ignore, notify) | The IE Criticality is used for reporting the criticality of the triggering IE. The value  'ignore' shall not be used. |
| >IE ID | M |  | INTEGER  (0..65535) | The IE ID of the not understood or  missing IE. |
| >Type of Error | M |  | ENUMERATED (not  understood, missing, ...) |  |

</div>

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **Range bound** | **Explanation** |
| maxnoofErrors | Maximum no. of IE errors allowed to be reported with a single message. The value for  maxnoofErrors is 256. |

</div>

### Message Type

The *Message Type* IE uniquely identifies the message being sent. It is mandatory for all messages.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| Message Type |  |  |  |  |
| >Procedure Code | M |  | INTEGER (0..255) |  |
| >Type of Message | M |  | CHOICE (Initiating Message,  Successful Outcome, Unsuccessful Outcome, ...) |  |

</div>

### Global RIC ID

This IE is used to globally identify the Near-RT RIC.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics**  **description** |
| PLMN Identity | M |  | 3GPP TS 38.423 clause 9.2.2.4 |  |
| Near-RT RIC ID | M |  | BIT STRING (SIZE(20)) |  |

</div>

### Time to wait

This IE defines the minimum allowed waiting times.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| Time to wait | M |  | ENUMERATED(1s, 2s, 5s, 10s,  20s, 60s) |  |

</div>

### Global E2 Node ID

This IE is used to globally identify an E2 node.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| CHOICE | M |  |  |  |
| *>gNB* |  |  |  | To be used when E2 Node supports  gNB mode or both gNB and en-gNB modes. |
| >>Global gNB ID | M |  | 3GPP TS 38.423 clause  9.2.2.1 |  |
| >>Global en-gNB ID | O |  | 3GPP TS 36.423 clause  9.2.112 | Required when E2 node also  supports NR with en-gNB mode. |
| >>gNB-CU-UP ID | O |  | 3GPP TS 37.483 clause  9.3.1.15 | Required when E2 Node supports  only gNB-CU-UP functionality. |
| >>gNB-DU ID | O |  | 3GPP TS 38.473 clause  9.3.1.9 | Required when E2 Node supports  only gNB-DU functionality. |
| >en-gNB |  |  |  | To be used when E2 Node supports  en-gNB mode only. |
| >>Global en-gNB ID | M |  | 3GPP TS 36.423 clause  9.2.112 |  |
| >>en-gNB-CU-UP ID | O |  | 3GPP TS 37.483 clause  9.3.1.15 | Required when E2 Node supports  only gNB-CU-UP functionality. |
| >>en-gNB-DU ID | O |  | 3GPP TS 38.473 clause  9.3.1.9 | Required when E2 Node supports  only gNB-DU functionality. |
| >*ng-eNB* |  |  |  | To be used when E2 Node supports ng-eNB mode or both ng-eNB and  eNB modes. |
| >>Global ng-eNB ID | M |  | 3GPP TS 38.423 clause  9.2.2.2 |  |
| >>Global eNB ID | O |  | 3GPP TS 36.423 clause  9.2.22 | Required when E2 Node also  supports E-UTRA with eNB mode. |
| >>ng-eNB-DU ID | O |  | 3GPP TS 37.473 clause  9.3.1.9 | Required when E2 node supports  only ng-eNB DU functionality. |
| >eNB |  |  |  | To be used when E2 Node supports  eNB mode only. |
| >>Global eNB ID | M |  | 3GPP TS 36.423 clause  9.2.22 |  |

</div>

### RIC Request ID

This information element indicates the RIC Request ID , and shall be unique for a given E2 Node.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and**  **reference** | **Semantics description** |
| RIC Requestor ID | M |  | INTEGER (0.. 65535) |  |
| RIC Instance ID | M |  | INTEGER (0..65535) |  |

</div>

### RAN Function ID

This information element indicates the RAN Function ID, and shall be unique within a given E2 Node.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and**  **reference** | **Semantics description** |
| RAN Function ID | M |  | INTEGER (0..4095) | Value 0 reserved for Near-RT RIC  internal usage. |

</div>

### RIC Event Trigger Definition

This information element indicates the RIC event trigger description used by the RIC Subscription procedure.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and**  **reference** | **Semantics description** |
| RIC Event Trigger Definition | M |  | OCTET STRING | Defined in RAN Function specific E2 Service Model, see O-RAN  WG3.TS.E2SM [3]. |

</div>

### RIC Action ID

This information element indicates the Action ID number for a RIC Service Action, and shall be unique within the given RIC Request ID.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| RIC Action ID | M |  | INTEGER (0..255) |  |

</div>

### RIC Action Type

This IE defines the type of RIC Service Action to be executed.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| RIC Action Type | M |  | ENUMERATED (Insert,  , l y, ...) |  |

</div>

### RIC Action Definition

This information element provides parameters to used when executed a Report, Insert or Policy RIC Service Actions .

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| RIC Action Definition | M |  | OCTET STRING | Defined in RAN Function specific E2  Service Model, see O-RAN WG3.TS.E2SM [3]. |

</div>

### RIC Subsequent Action

This IE defines the subsequent action to be taken after completing a particular RIC Service Action and shall be present when RIC Action Type set to Insert.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| RIC Subsequent Action Type | M |  | ENUMERATED (Continue,  l , ...) |  |
| RIC Time to Wait | M |  | ENUMERATED (1ms, 2ms,  5ms, 10ms, 20ms, 30ms, 40ms, 50ms, 100ms, 200ms, 500ms, 1s, 2s, 5s,  10s, 0s, 60s, ...) |  |

</div>

### RIC Indication Sequence Number (SN)

This information element indicates the Indication Sequence Number (SN).

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| RIC Indication SN | M |  | INTEGER (0..65535) |  |

</div>

### RIC Indication Type

This IE defines the Indication Type.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| RIC Indication Type | M |  | ENUMERATED (Insert,  , ...) |  |

</div>

### RIC Indication message

This information element carries the RIC indication message used for Insert and Report RIC Service Actions.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| RIC Indication message | M |  | OCTET STRING | Defined in RAN Function specific E2 Service Model, see O-RAN WG3.TS.E2SM  [3]. |

</div>

### RIC Indication header

This information element carries the RIC indication header used for Insert and Report RIC Service Actions.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| RIC Indication header | M |  | OCTET STRING | Defined in RAN Function specific E2 Service Model, see O-RAN WG3.TS.E2SM  [3]. |

</div>

### RIC Call Process ID

This information element carries the RIC Call Process ID used for the Insert and Control RIC Service Actions. The RIC Call Process ID shall be unique within a given RAN Function on a given E2 Node.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| RIC Call Process ID | M |  | OCTET STRING | Defined in RAN Function specific E2 Service Model, see O-RAN WG3.TS.E2SM  [3]. |

</div>

### RIC Control message

This information element carries the RIC Control message.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| RIC Control Message | M |  | OCTET STRING | Defined in RAN Function specific E2 Service Model, see O-RAN WG3.TS.E2SM  [3]. |

</div>

### RIC Control header

This information element carries the RIC Control Header.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| RIC Control header | M |  | OCTET STRING | Defined in RAN Function specific E2 Service Model, see O-RAN WG3.TS.E2SM  [3]. |

</div>

### RIC Control Ack Request

This IE defines whether and when the RIC CONTROL ACKNOWLEDGE message shall be sent by the E2 Node as described in the below table.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| RIC Control Ack Request | M |  | ENUMERATED (NoAck, Ack,  ...) |  |

</div>

The meaning of the different values is described in the following table.

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| **RIC Service cause** | **Meaning** |
| NoAck | Optional RIC Control Acknowledgement is not required. |
| Ack | Optional RIC Control Acknowledgement is required. |

</div>

### Void

### RAN Function Definition

This information element carries the RAN Function Definition.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| RAN Function Definition | M |  | OCTET STRING | Defined in RAN Function specific E2 Service Model, see O-RAN WG3.TS.E2SM  [3]. |

</div>

### RAN Function Revision

This information element carries the RAN Function Revision.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| RAN Function Revision | M |  | INTEGER (0..4095) |  |

</div>

### RIC Control Outcome

This information element carries the RIC Control Outcome.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| RIC Control Outcome | M |  | OCTET STRING | Defined in RAN Function specific E2 Service Model, see O-RAN WG3.TS.E2SM  [3]. |

</div>

### E2 Node Component Interface Type

This IE is used to identify an E2 node component type.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| E2 node component  interface type | M |  | ENUMERATED (ng, xn, e1,  f1, w1, s1, x , ...) |  |

</div>

### E2 Node Component Configuration

This IE is used to carry the E2 Node component configuration update information of a specific E2 Node component.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| SEQUENCE | M |  |  |  |
| >E2 Node Component Request Part | M |  | OCTET STRING | Contents depend on component type and used to carry new or updated component configuration.  See the table below. |
| >E2 Node Component Response Part | M |  | OCTET STRING | Contents depend on component type and used to carry new or updated component configuration.  See the table below. |

</div>

NOTE: E2 node may generate the content of this IE using information derived from prior messages sent or received over the corresponding 3GPP Interfaces. For the E2 SETUP REQUEST message, the E2 node may derive the content of this IE from the prior messages pertaining to the Request part and the Response part of the Component Addition list in the following table and/or the Request part and the Response part of the Component Update list in the following table.

In all cases the information is a data structure defined by the applicable 3GPP specification as specified in the following table.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
|  | **Component Addition list** | | **Component Update list** | |
| **E2 Node component**  **message content** | **Request part** | **Response part** | **Request part** | **Response part** |
| **gNB case** | | | | |
| >NG  (AMF Name) | NG SETUP REQUEST, 3GPP TS 38.413 [19]  clause 9.2.6.1 | NG SETUP RESPONSE,  3GPP TS 38.413 [19]  clause 9.2.6.2 | RAN CONFIGURATION UPDATE,  3GPP TS 38.413 [19]  clause 9.2.6.4  Or | RAN CONFIGURATION UPDATE ACKNOWLEDGE, 3GPP TS 38.413 [19]  clause 9.2.6.5 Or |
|  |  |  | AMF CONFIGURATION UPDATE,  3GPP TS 38.413 [19]  clause 9.2.6.7 | AMF CONFIGURATION UPDATE ACKNOWLEDGE, 3GPP TS 38.413 [19]  clause 9.2.6.8 |
| >Xn  (Neighbour Global NG-RAN Node ID ) | XN SETUP REQUEST, 3GPP TS 38.423 [20]  clause 9.1.3.1 | XN SETUP RESPONSE,  3GPP TS 38.423 [20]  clause 9.1.3.2 | NG-RAN NODE CONFIGURATION UPDATE,  3GPP TS 38.423 [20]  clause 9.1.3.4 | NG-RAN NODE CONFIGURATION UPDATE ACKNOWLEDGE, 3GPP TS 38.423 [20]  clause 9.1.3.5 |
| >E1  (gNB-CU-UP ID) | GNB-CU-UP E1 SETUP REQUEST,  3GPP TS 37.483 [21]  clause 9.2.1.4 Or  GNB-CU-CP E1 SETUP REQUEST,  3GPP TS 37.483 [21]  clause 9.2.1.7 | GNB-CU-UP E1 SETUP RESPONSE, 3GPP TS 37.483 [21]  clause 9.2.1.5 Or  GNB-CU-CP E1 SETUP RESPONSE, 3GPP TS 37.483 [21]  clause 9.2.1.8 | GNB-CU-UP CONFIGRATION UPDATE,  3GPP TS 37.483 [21]  clause 9.2.1.10 Or  GNB-CU-CP CONFIGURATION UPDATE,  3GPP TS 37.483 [21]  clause 9.2.1.13 | GNB-CU-UP CONFIGRATION UPDATE ACKNOWLEDGE, 3GPP TS 37.483 [21]  clause 9.2.1.11 Or  GNB-CU-CP CONFIGURATION UPDATE ACKNOWLEDGE, 3GPP TS 37.483 [21]  clause 9.2.1.14 |
| >F1  (gNB-DU ID) | F1 SETUP REQUEST, 3GPP TS 38.473 [22]  clause 9.2.1.4 | F1 SETUP RESPONSE,  3GPP TS 38.473 [22]  clause 9.2.1.5 | GNB-DU CONFIGRATION UPDATE,  3GPP TS 38.473 [22]  clause 9.2.1.7 | GNB-DU CONFIGRATION UPDATE ACKNOWLEDGE, 3GPP TS 38.473 [22]  clause 9.2.1.8 |
|  |  |  | Or | Or |
|  |  |  | GNB-CU CONFIGURATION UPDATE,  3GPP TS 38.473 [22]  clause 9.2.1.10 | GNB-CU CONFIGURATION UPDATE ACKNOWLEDGE, 3GPP TS 38.473 [22]  clause 9.2.1.11 |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
|  | **Component Addition list** | | **Component Update list** | |
| **E2 Node component**  **message content** | **Request part** | **Response part** | **Request part** | **Response part** |
| >X2  (Neighbour Global eNB ID) | EN-DC X2 SETUP REQUEST,  3GPP TS 36.423 [25]  clause 9.1.2.31 | EN-DC X2 SETUP RESPONSE,  3GPP TS 36.423 [25]  clause 9.1.2.32 | EN-DC CONFIGURATION UPDATE,  3GPP TS 36.423 [25]  clause 9.1.2.34 | EN-DC CONFIGURATION UPDATE ACKNOWLEDGE, 3GPP TS 36.423 [25]  clause 9.1.2.35 |
| **eNB case** | | | | |
| >NG  (AMF Name) | NG SETUP REQUEST, 3GPP TS 38.413 [19]  clause 9.2.6.1 | NG SETUP RESPONSE,  3GPP TS 38.413 [19]  clause 9.2.6.2 | RAN CONFIGURATION UPDATE,  3GPP TS 38.413 [19]  clause 9.2.6.4 | RAN CONFIGURATION UPDATE ACKNOWLEDGE, 3GPP TS 38.413 [19]  clause 9.2.6.5 |
|  |  |  | Or |  |
|  |  |  |  | Or |
|  |  |  | AMF CONFIGURATION UPDATE,  3GPP TS 38.413 [19]  clause 9.2.6.7 | AMF CONFIGURATION UPDATE ACKNOWLEDGE, 3GPP TS 38.413 [19]  clause 9.2.6.8 |
| >Xn  (Neighbour Global NG-RAN Node ID) | XN SETUP REQUEST, 3GPP TS 38.423 [20]  clause 9.1.3.1 | XN SETUP RESPONSE,  3GPP TS 38.423 [20]  clause 9.1.3.2 | NG-RAN NODE CONFIGURATION UPDATE,  3GPP TS 38.423 [20]  clause 9.1.3.4 | NG-RAN NODE CONFIGURATION UPDATE ACKNOWLEDGE, 3GPP TS 38.423 [20]  clause 9.1.3.5 |
| >W1  (ng-eNB-DU ID) | W1 SETUP REQUEST, 3GPP TS 37.473 [23]  clause 9.2.1.4 | W1 SETUP RESPONSE,  3GPP TS 37.473 [23]  clause 9.2.1.5 | NG-ENB-DU CONFIGURATION UPDATE,  3GPP TS 37.473 [23]  clause 9.2.1.7  Or | NG-ENB-DU CONFIGURATION UPDATE ACKNOWLEDGE, 3GPP TS 37.473 [23]  clause 9.2.1.8 Or |
|  |  |  | NG-ENB-CU CONFIGURATION UPDATE,  3GPP TS 37.473 [23]  clause 9.2.1.10 | NG-ENB-CU CONFIGURATION UPDATE ACKNOWLEDGE, 3GPP TS 37.473 [23]  clause 9.2.1.11 |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
|  | **Component Addition list** | | **Component Update list** | |
| **E2 Node component**  **message content** | **Request part** | **Response part** | **Request part** | **Response part** |
| >S1  (MME Name) | S1 SETUP REQUEST, 3GPP TS 36.413 [24]  clause 9.1.8.4 | S1 SETUP RESPONSE,  3GPP TS 36.413 [24]  clause 9.1.8.5 | ENB CONFIGURATION UPDATE,  3GPP TS 36.413 [24]  clause 9.1.8.7 | ENB CONFIGRATION UPDATE ACKNOWLEDGE, 3GPP TS 36.413 [24]  clause 9.1.8.8 |
|  |  |  | Or |  |
|  |  |  |  | Or |
|  |  |  | MME CONFIGURATION UPDATE,  3GPP TS 36.413 [24]  clause 9.1.8.10 | MME CONFIGURATION UPDATE ACKNOWLEDGE, 3GPP TS 36.413 [24]  clause 9.1.8.11 |
| >X2  (when neighbour is eNB)  (Neighbour Global eNB ID) | X2 SETUP REQUEST, 3GPP TS 36.423 [25]  clause 9.1.2.3 | X2 SETUP RESPONSE,  3GPP TS 36.423 [25]  clause 9.1.2.4 | ENB CONFIGURATION UPDATE,  3GPP TS 36.423 [25]  clause 9.1.2.8 | ENB CONFIGRATION UPDATE ACKNOWLEDGE, 3GPP TS 36.423 [25]  clause 9.1.2.9 |
| >X2  (when neighbour is en-gNB)  (Neighbour Global eNB ID) | EN-DC X2 SETUP REQUEST,  3GPP TS 36.423 [25]  clause 9.1.2.31 | EN-DC X2 SETUP RESPONSE,  3GPP TS 36.423 [25]  clause 9.1.2.32 | EN-DC CONFIGURATION UPDATE,  3GPP TS 36.423 [25]  clause 9.1.2.34 | EN-DC CONFIGURATION UPDATE ACKNOWLEDGE, 3GPP TS 36.423 [25]  clause 9.1.2.35 |

</div>

### E2 Node Component Configuration Acknowledge

This IE is used to carry the E2 Node component configuration update acknowledge of a specific E2 Node component.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| Outcome | M |  | ENUMERATED (success,  f l ,...) |  |
| Cause | O |  | 9.2.1 | Cause for failure. |

</div>

### Transport Layer Information

This information element provides Near-RT RIC address and optionally port number to be used by an E2 Node.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and**  **reference** | **Semantics description** |
| Transport Layer Address | M |  | BIT STRING  ( Z (1..160,...)) | To be passed to transport layer without  interpretation. |
| Transport Layer Port | O |  | BIT STRING  (SIZE(16)) | To be passed to transport layer without  interpretation. |

</div>

### TNL Association Usage

This information element provides TNL association usage.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and**  **reference** | **Semantics description** |
| TNL Association Usage | M |  | ENUMERATED (ric  service, support functions, both,..) | Indicates whether E2 connection to be used for RIC services only, or E2  support functions only, or both. |

</div>

### RAN Function OID

This information element carries the RAN Function OID and shall uniquely refer to a specific E2 Service Model (E2SM).

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| RAN Function Service Model | M |  | PrintableString(SIZE(1..1000,.. | Object Identifier of the |
| OID |  | .)) | specific RAN Function |
|  |  |  | definition. Formatted as per |
|  |  |  | OID. |

</div>

### E2 Node Component ID

This IE is used to locally identify an E2 node component.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| CHOICE *E2 node*  *component interface type* | M |  |  |  |
| >NG |  |  |  |  |
| >>AMF name | M |  | 3GPP TS 38.413 [19] clause  9.3.3.21 | Serving AMF. |
| >Xn |  |  |  |  |
| >>Global NG-RAN  Node ID | M |  | 3GPP TS 38.423 [20] clause  9.2.2.3 | Neighbour gNB or ng-eNB. |
| >E1 |  |  |  |  |
| >>gNB-CU-UP ID | M |  | 3GPP TS 37.483 [21] clause  9.3.1.15 |  |
| >F1 |  |  |  |  |
| >>gNB-DU ID | M |  | 3GPP TS 38.473 [22] clause  9.3.1.9 |  |
| >W1 |  |  |  |  |
| >>ng-eNB-DU ID | M |  | 3GPP TS 37.473 [23] clause  9.3.1.9 |  |
| >S1 |  |  |  |  |
| >>MME name | M |  | 3GPP TS 36.413 [24], clause  9.1.8.5 | Serving MME. |
| >X2 |  |  |  |  |
| >>Global eNB ID | O |  | 3GPP TS 36.423 [25] clause  9.2.22 | Neighbour eNB. |
| >>Global en-gNB ID | O |  | 3GPP TS 36.423 [25] clause  9.2.112 | Neighbour en-gNB. |

</div>

### Transaction ID

The *Transaction ID* IE uniquely identifies a procedure among all ongoing parallel procedures of the same type initiated by the same protocol peer. Messages belonging to the same procedure shall use the same Transaction ID. The Transaction ID is determined by the initiating peer of a procedure.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| Transaction ID | M |  | (0.. 55, ...) |  |

</div>

### RIC Subscription Time

The *RIC Subscription Time* IE is used to set the start and end time of a RIC Subscription.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| RIC Subscription time | M |  | OCTET STRING (SIZE(8)) | Encoded using the 64-bit timestamp format as defined in  clause 6 of IETF RFC 5905 [26]. |

</div>

### RIC Action Execution Order

This IE is used to modify the default RIC service action execution order.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and**  **reference** | **Semantics description** |
| RIC Action Execution Order | M |  | INTEGER (0..255, ...) | 0 used to indicate " ny- "  1..255 Used to enforce a specific execution order. |

</div>

### RIC Query Header

This information element carries the RIC Query Header.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and**  **reference** | **Semantics description** |
| RIC Query Header | M |  | OCTET STRING | Defined in RAN Function specific E2  Service Model, see O-RAN WG3.TS.E2SM [3]. |

</div>

### RIC Query Definition

This information element carries the RIC Query Definition.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and**  **reference** | **Semantics description** |
| RIC Query Definition | M |  | OCTET STRING | Defined in RAN Function specific E2  Service Model, see O-RAN WG3.TS.E2SM [3]. |

</div>

### RIC Query Outcome

This information element carries the RIC Query Outcome.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and**  **reference** | **Semantics description** |
| RIC Query Outcome | M |  | OCTET STRING | Defined in RAN Function specific E2 Service Model, see O-RAN  WG3.TS.E2SM [3]. |

</div>

### RIC Subscription Audit Flag

The purpose of the *RIC Subscription Audit Flag* IE is to modify to E2 Node response to a RIC SUBSCRIPTION AUDIT REQUEST message.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE Type and**  **Reference** | **Semantics Description** |
| Listed Records Only | O |  | ENUMERATED  (true, ...) | If TRUE then E2 Node shall consider  the listed records only. |

</div>

### Load Measurement ID

This information element carries the Load Measurement ID allocated by Near-RT RIC and E2 Node.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and**  **reference** | **Semantics description** |
| Load measurement ID | M |  | INTEGER  (1..4095,...) |  |

</div>

### RIC Load Information

This information element is used to encode the load information from the E2 Node. At least one of the listed IE shall be present.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and**  **reference** | **Semantics description** |
| Load Status | O |  | ENUMERATED  (overload, not overload, ...) |  |
| Load Estimate | O |  | INTEGER (0..100) | Load estimation in percentage of  capacity |

</div>

### RIC Service Load Information

This information element carries the RIC Service Load Information for one or more RIC services.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and**  **reference** | **Semantics description** |
| RIC Service Report Load  Information | O |  | 9.2.41 | Used to carry load information on  REPORT service |
| RIC Service Insert Load  Information | O |  | 9.2.41 | Used to carry load information on  INSERT service |
| RIC Service Control Load  Information | O |  | 9.2.41 | Used to carry load information on  CONTROL service |
| RIC Service Policy Load  Information | O |  | 9.2.41 | Used to carry load information on  POLICY service |
| RIC Service Query Load  Information | O |  | 9.2.41 | Used to carry load information on  QUERY service |

</div>

### RIC Load Request

This information element requests reporting for the coreresponding RIC Load Information.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and**  **reference** | **Semantics description** |
| RIC Load Request | M |  | ENUMERATED  (true, ...) | If TRUE then the corresponding load  information reporting is requested |

</div>

### RIC Service Load Request

This information element requests reporting for the coreresponding RIC Load Information for one or more specific RIC services.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and**  **reference** | **Semantics description** |
| RIC Service Report Load  Request | O |  | 9.2.43 | Used to request reporting of load  information on REPORT service |
| RIC Service Insert Load  Request | O |  | 9.2.43 | Used to request reporting of load  information on INSERT service |
| RIC Service Control Load  Request | O |  | 9.2.43 | Used to request reporting of load  information on CONTROL service |
| RIC Service Policy Load  Request | O |  | 9.2.43 | Used to request reporting of load  information on POLICY service |
| RIC Service Query Load  Request | O |  | 9.2.43 | Used to request reporting of load  information on QUERY service |

</div>

### RIC Load Confirm

This information element cofirms reporting for the coreresponding RIC Load Information.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and**  **reference** | **Semantics description** |
| RIC Load Confirm | M |  | ENUMERATED  (true, ...) | If TRUE then the corresponding load  information reporting is confirmed |

</div>

### RIC Service Load Confirm

This information element confirms reporting for the coreresponding RIC Load Information for one or more specific RIC services.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and**  **reference** | **Semantics description** |
| RIC Service Report Load  Confirm | O |  | 9.2.45 | Used to confirm reporting of load  information on REPORT service |
| RIC Service Insert Load  Confirm | O |  | 9.2.45 | Used to confirm reporting of load  information on INSERT service |
| RIC Service Control Load  Confirm | O |  | 9.2.45 | Used to confirm reporting of load  information on CONTROL service |
| RIC Service Policy Load  Confirm | O |  | 9.2.45 | Used to confirm reporting of load  information on POLICY service |
| RIC Service Query Load  Confirm | O |  | 9.2.45 | Used to confirm reporting of load  information on QUERY service |

</div>

### RIC Assistance Header

This information element carries the RIC Assistance Header used to indicate a specific RIC Assistance service.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| RIC Assistance Header | M |  | OCTET STRING | Defined in RAN Function specific E2 Service Model, see O-RAN  WG3.TS.E2SM [3]. |

</div>

### RIC Assistance Message

This information element carries the RIC Assistance Message used to request a specific RIC Assistance service.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| RIC Assistance Message | M |  | OCTET STRING | Defined in RAN Function specific E2 Service Model, see O-RAN  WG3.TS.E2SM [3]. |

</div>

### RIC Assistance Update

This information element indicates if updates are requested for a RIC Assistance service.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| RIC Assistance Update | M |  | ENUMERATED (true, ...) | If TRUE, then the requested RIC Assistance service is to  be updated |

</div>

### RIC Assistance Update Number

This information element indicates the maximum number of updates for a requested RIC Assistance service.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| RIC Assistance Update  Number | M |  | INTEGER (0..65535) |  |

</div>

### RIC Assistance Outcome

This information element carries the RIC Assistance Outcome used to provide a specific RIC Assistance service.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| RIC Assistance Outcome | M |  | OCTET STRING | Defined in RAN Function specific E2  Service Model, see O-RAN WG3.TS.E2SM [3]. |

</div>

### RIC Assistance SN

This information element indicates the RIC Assistance SN (Sequence Number).

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| RIC Assistance SN | M |  | INTEGER (0..65535) |  |

</div>

### Service Level Cause

This information element carries the Service Level Cause message.

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| **IE/Group Name** | **Presence** | **Range** | **IE type and reference** | **Semantics description** |
| Service Level Cause | M |  | OCTET STRING | Defined in RAN Function specific E2 Service Model, see O-RAN WG3.TS.E2SM  [3]. |

</div>

## Message and Information Element Abstract Syntax (with ASN.1)

### General

E2AP ASN.1 definition conforms to Recommendation ITU-T X.691 [15], Recommendation ITU-T X.680 [16] and Recommendation ITU-T X.681 [17].

Sub clause 9.3 presents the Abstract Syntax of the E2AP protocol with ASN.1. In case there is contradiction between the ASN.1 definition in this sub clause and the tabular format in sub clause 9.1 and 9.2, the ASN.1 shall take precedence, except for the definition of conditions for the presence of conditional elements, in which the tabular format shall take precedence.

The ASN.1 definition specifies the structure and content of E2AP messages. E2AP messages can contain any IEs specified in the object set definitions for that message without the order or number of occurrences being restricted by ASN.1. However, for this version of the standard, a sending entity shall construct an E2AP message according to the PDU definitions module and with the following additional rules:

* IEs shall be ordered (in an IE container) in the order they appear in object set definitions.
* Object set definitions specify how many times IEs may appear. An IE shall appear exactly once if the presence field in an object has value "mandatory". An IE may appear at most once if the presence field in an object has value "optional" or "conditional". If in a tabular format there is multiplicity specified for an IE (i.e., an IE list) then in the corresponding ASN.1 definition the list definition is separated into two parts. The first part defines an IE container list where the list elements reside. The second part defines list elements. The IE container list appears as an IE of its own. For this version of the standard an IE container list may contain only one kind of list elements.

NOTE: In the above "IE" means an IE in the object set with an explicit ID. If one IE needs to appear more than once in one object set, then the different occurrences will have different IE IDs.

If an E2AP message that is not constructed as defined above is received, this shall be considered as Abstract Syntax Error, and the message shall be handled as defined for Abstract Syntax Error in clause 10.

### Usage of private message mechanism for non-standard use

The private message mechanism for non-standard use is not supported with E2AP.

### Elementary Procedure definitions

-- ASN1START

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

--

-- Elementary Procedure definitions

-- Derived from 3GPP 38.413 NGAP

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

E2AP-PDU-Descriptions {

iso(1) identified-organization(3) dod(6) internet(1) private(4) enterprise(1) 53148 e2(1) version2 (2) e2ap(1) e2ap-PDU-Descriptions (0) }

DEFINITIONS AUTOMATIC TAGS ::= BEGIN

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

--

-- IE parameter types from other modules.

--

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

IMPORTS

Criticality, ProcedureCode

FROM E2AP-CommonDataTypes

E2connectionUpdate, E2connectionUpdateAcknowledge, E2connectionUpdateFailure, E2nodeConfigurationUpdate, E2nodeConfigurationUpdateAcknowledge, E2nodeConfigurationUpdateFailure, E2RemovalRequest,

E2RemovalResponse, E2RemovalFailure, E2setupFailure, E2setupRequest, E2setupResponse, ErrorIndication, ResetRequest, ResetResponse, RICassistanceFailure, RICassistanceIndication, RICassistanceHalt,

RICassistanceRequest, RICassistanceResponse, RICcontrolAcknowledge, RICcontrolFailure, RICcontrolRequest, RICindication, RICserviceLoadStatusRequest, RICserviceLoadStatusResponse, RICserviceLoadStatusFailure, RICserviceLoadUpdate, RICserviceQuery, RICserviceUpdate, RICserviceUpdateAcknowledge, RICserviceUpdateFailure, RICsubscriptionFailure, RICsubscriptionRequest, RICsubscriptionResponse, RICsubscriptionAuditFailure, RICsubscriptionAuditRequest, RICsubscriptionAuditResponse, RICsubscriptionDeleteFailure, RICsubscriptionDeleteRequest, RICsubscriptionDeleteResponse, RICsubscriptionDeleteRequired,

RICsubscriptionModificationRequest, RICsubscriptionModificationResponse, RICsubscriptionModificationFailure, RICsubscriptionModificationRequired, RICsubscriptionModificationConfirm, RICsubscriptionModificationRefuse, RICsubscriptionStateControlRequest, RICsubscriptionStateControlResponse, RICsubscriptionStateControlFailure, RICqueryRequest,

RICqueryResponse, RICqueryFailure

FROM E2AP-PDU-Contents

id-E2connectionUpdate,

id-E2nodeConfigurationUpdate, id-E2removal,

id-E2setup,

id-ErrorIndication, id-Reset,

id-RICassistance,

id-RICassistanceIndication, id-RICassistanceHalt,

id-RICcontrol,

id-RICindication,

id-RICserviceLoadStatus, id-RICserviceLoadUpdate, id-RICserviceQuery,

id-RICserviceUpdate, id-RICsubscription,

id-RICsubscriptionAudit, id-RICsubscriptionDelete,

id-RICsubscriptionDeleteRequired, id-RICsubscriptionModification,

id-RICsubscriptionModificationRequired, id-RICsubscriptionStateControl,

id-RICquery

FROM E2AP-Constants;

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

--

-- Interface Elementary Procedure Class

--

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

E2AP-ELEMENTARY-PROCEDURE ::= CLASS {

&InitiatingMessage ,

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| &SuccessfulOutcome | OPTIONAL | , |
| &UnsuccessfulOutcome | OPTIONAL | , |
| &procedureCode | ProcedureCode UNIQUE , |  |

</div>

&criticality Criticality DEFAULT ignore

}

WITH SYNTAX {

INITIATING MESSAGE &InitiatingMessage [SUCCESSFUL OUTCOME &SuccessfulOutcome] [UNSUCCESSFUL OUTCOME &UnsuccessfulOutcome] PROCEDURE CODE &procedureCode

[CRITICALITY &criticality]

}

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

--

-- Interface PDU Definition

--

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

E2AP-PDU ::= CHOICE {

initiatingMessage InitiatingMessage,

successfulOutcome SuccessfulOutcome, unsuccessfulOutcome UnsuccessfulOutcome,

...

}

InitiatingMessage ::= SEQUENCE {

procedureCode E2AP-ELEMENTARY-PROCEDURE.&procedureCode ({E2AP-ELEMENTARY-PROCEDURES}),

criticality E2AP-ELEMENTARY-PROCEDURE.&criticality ({E2AP-ELEMENTARY- PROCEDURES}{@procedureCode}),

value E2AP-ELEMENTARY-PROCEDURE.&InitiatingMessage ({E2AP-ELEMENTARY- PROCEDURES}{@procedureCode})

}

SuccessfulOutcome ::= SEQUENCE {

procedureCode E2AP-ELEMENTARY-PROCEDURE.&procedureCode ({E2AP-ELEMENTARY-PROCEDURES}),

criticality E2AP-ELEMENTARY-PROCEDURE.&criticality ({E2AP-ELEMENTARY- PROCEDURES}{@procedureCode}),

value E2AP-ELEMENTARY-PROCEDURE.&SuccessfulOutcome ({E2AP-ELEMENTARY- PROCEDURES}{@procedureCode})

}

UnsuccessfulOutcome ::= SEQUENCE {

procedureCode E2AP-ELEMENTARY-PROCEDURE.&procedureCode ({E2AP-ELEMENTARY-PROCEDURES}),

criticality E2AP-ELEMENTARY-PROCEDURE.&criticality ({E2AP-ELEMENTARY- PROCEDURES}{@procedureCode}),

value E2AP-ELEMENTARY-PROCEDURE.&UnsuccessfulOutcome ({E2AP-ELEMENTARY- PROCEDURES}{@procedureCode})

}

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

--

-- Interface Elementary Procedure List

--

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

<div class="table-wrapper" markdown="block">

E2AP-ELEMENTARY-PROCEDURES E2AP-ELEMENTARY-PROCEDURE ::= { E2AP-ELEMENTARY-PROCEDURES-CLASS-1 | E2AP-ELEMENTARY-PROCEDURES-CLASS-2,

</div>

...

}

E2AP-ELEMENTARY-PROCEDURES-CLASS-1 E2AP-ELEMENTARY-PROCEDURE ::= {

<div class="table-wrapper" markdown="block">

|  |  |
| --- | --- |
| ricSubscription | | |
| ricSubscriptionAudit | | |
| ricSubscriptionDelete | | |
| ricSubscriptionModification | | |
| ricSubscriptionModificationRequired | | |
| ricSubscriptionStateControl | | |
| ricQuery | | |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
|  | ricServiceUpdate | | |
| ricAssistance | | |
| ricControl | | |
| ricServiceLoadStatus | | |
| e2setup | | |
| e2nodeConfigurationUpdate | | |
| e2connectionUpdate | | |
| reset | | |
| e2removal, |  |
| ... |  |
| } |  |  |

</div>

E2AP-ELEMENTARY-PROCEDURES-CLASS-2 E2AP-ELEMENTARY-PROCEDURE ::= {

<div class="table-wrapper" markdown="block">

ricAssistanceIndication |

</div>

<div class="table-wrapper" markdown="block">

ricAssistanceHalt |

</div>

<div class="table-wrapper" markdown="block">

ricIndication |

</div>

<div class="table-wrapper" markdown="block">

ricServiceQuery |

</div>

<div class="table-wrapper" markdown="block">

ricServiceLoadUpdate |

</div>

<div class="table-wrapper" markdown="block">

errorIndication |

</div>

ricSubscriptionDeleteRequired,

...

}

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

--

-- Interface Elementary Procedures

--

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

-- New for v01.01

e2connectionUpdate E2AP-ELEMENTARY-PROCEDURE ::= { INITIATING MESSAGE E2connectionUpdate

SUCCESSFUL OUTCOME E2connectionUpdateAcknowledge UNSUCCESSFUL OUTCOME E2connectionUpdateFailure PROCEDURE CODE id-E2connectionUpdate

CRITICALITY reject

}

e2nodeConfigurationUpdate E2AP-ELEMENTARY-PROCEDURE ::= { INITIATING MESSAGE E2nodeConfigurationUpdate

SUCCESSFUL OUTCOME E2nodeConfigurationUpdateAcknowledge UNSUCCESSFUL OUTCOME E2nodeConfigurationUpdateFailure PROCEDURE CODE id-E2nodeConfigurationUpdate CRITICALITY reject

}

-- New for v02.01

e2removal E2AP-ELEMENTARY-PROCEDURE ::= {

INITIATING MESSAGE E2RemovalRequest SUCCESSFUL OUTCOME E2RemovalResponse UNSUCCESSFUL OUTCOME E2RemovalFailure PROCEDURE CODE id-E2removal

CRITICALITY reject

}

e2setup E2AP-ELEMENTARY-PROCEDURE ::= {

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| } | INITIATING MESSAGE SUCCESSFUL OUTCOME UNSUCCESSFUL OUTCOME PROCEDURE CODE CRITICALITY | E2setupRequest E2setupResponse E2setupFailure id-E2setup reject |
| errorIndication E2AP-ELEMENTARY-PROCEDURE ::= { | | |
| } | INITIATING MESSAGE PROCEDURE CODE CRITICALITY | ErrorIndication  id-ErrorIndication ignore |

</div>

reset E2AP-ELEMENTARY-PROCEDURE ::= {

INITIATING MESSAGE ResetRequest

SUCCESSFUL OUTCOME ResetResponse PROCEDURE CODE id-Reset

CRITICALITY reject

}

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| ricAssistance E2AP-ELEMENTARY-PROCEDURE ::= { | | |
| } | INITIATING MESSAGE SUCCESSFUL OUTCOME UNSUCCESSFUL OUTCOME PROCEDURE CODE CRITICALITY | RICassistanceRequest RICassistanceResponse RICassistanceFailure id-RICassistance reject |
| ricAssistanceIndication E2AP-ELEMENTARY-PROCEDURE ::= { | | |
| } | INITIATING MESSAGE PROCEDURE CODE CRITICALITY | RICassistanceIndication  id-RICassistanceIndication reject |
| ricAssistanceHalt E2AP-ELEMENTARY-PROCEDURE ::= { | | |
| } | INITIATING MESSAGE PROCEDURE CODE CRITICALITY | RICassistanceHalt  id-RICassistanceHalt reject |
| ricControl E2AP-ELEMENTARY-PROCEDURE ::= { | | |
| } | INITIATING MESSAGE SUCCESSFUL OUTCOME UNSUCCESSFUL OUTCOME PROCEDURE CODE CRITICALITY | RICcontrolRequest RICcontrolAcknowledge RICcontrolFailure  id-RICcontrol reject |
| ricIndication E2AP-ELEMENTARY-PROCEDURE ::= { | | |
| } | INITIATING MESSAGE PROCEDURE CODE CRITICALITY | RICindication  id-RICindication ignore |

</div>

ricServiceLoadStatus E2AP-ELEMENTARY-PROCEDURE ::= { INITIATING MESSAGE RICserviceLoadStatusRequest SUCCESSFUL OUTCOME RICserviceLoadStatusResponse UNSUCCESSFUL OUTCOME RICserviceLoadStatusFailure PROCEDURE CODE id-RICserviceLoadStatus

CRITICALITY ignore

}

ricServiceLoadUpdate E2AP-ELEMENTARY-PROCEDURE ::= {

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
|  | INITIATING MESSAGE PROCEDURE CODE  CRITICALITY | RICserviceLoadUpdate  id-RICserviceLoadUpdate  ignore |
| } |  |  |
| ricServiceQuery E2AP-ELEMENTARY-PROCEDURE ::= { | | |
| } | INITIATING MESSAGE PROCEDURE CODE CRITICALITY | RICserviceQuery  id-RICserviceQuery ignore |
| ricServiceUpdate E2AP-ELEMENTARY-PROCEDURE ::= { | | |
| } | INITIATING MESSAGE SUCCESSFUL OUTCOME UNSUCCESSFUL OUTCOME PROCEDURE CODE CRITICALITY | RICserviceUpdate RICserviceUpdateAcknowledge RICserviceUpdateFailure  id-RICserviceUpdate reject |

</div>

ricSubscription E2AP-ELEMENTARY-PROCEDURE ::= { INITIATING MESSAGE RICsubscriptionRequest SUCCESSFUL OUTCOME RICsubscriptionResponse UNSUCCESSFUL OUTCOME RICsubscriptionFailure

PROCEDURE CODE id-RICsubscription

CRITICALITY reject

}

ricSubscriptionAudit E2AP-ELEMENTARY-PROCEDURE ::= { INITIATING MESSAGE RICsubscriptionAuditRequest SUCCESSFUL OUTCOME RICsubscriptionAuditResponse UNSUCCESSFUL OUTCOME RICsubscriptionAuditFailure PROCEDURE CODE id-RICsubscriptionAudit

CRITICALITY reject

}

ricSubscriptionDelete E2AP-ELEMENTARY-PROCEDURE ::= { INITIATING MESSAGE RICsubscriptionDeleteRequest SUCCESSFUL OUTCOME RICsubscriptionDeleteResponse UNSUCCESSFUL OUTCOME RICsubscriptionDeleteFailure PROCEDURE CODE id-RICsubscriptionDelete

CRITICALITY reject

}

ricSubscriptionDeleteRequired E2AP-ELEMENTARY-PROCEDURE ::= { INITIATING MESSAGE RICsubscriptionDeleteRequired PROCEDURE CODE id-RICsubscriptionDeleteRequired CRITICALITY ignore

}

ricSubscriptionModification E2AP-ELEMENTARY-PROCEDURE ::= { INITIATING MESSAGE RICsubscriptionModificationRequest SUCCESSFUL OUTCOME RICsubscriptionModificationResponse UNSUCCESSFUL OUTCOME RICsubscriptionModificationFailure PROCEDURE CODE id-RICsubscriptionModification CRITICALITY reject

}

ricSubscriptionModificationRequired E2AP-ELEMENTARY-PROCEDURE ::= { INITIATING MESSAGE RICsubscriptionModificationRequired SUCCESSFUL OUTCOME RICsubscriptionModificationConfirm UNSUCCESSFUL OUTCOME RICsubscriptionModificationRefuse PROCEDURE CODE id-RICsubscriptionModificationRequired CRITICALITY reject

}

ricSubscriptionStateControl E2AP-ELEMENTARY-PROCEDURE ::= { INITIATING MESSAGE RICsubscriptionStateControlRequest SUCCESSFUL OUTCOME RICsubscriptionStateControlResponse UNSUCCESSFUL OUTCOME RICsubscriptionStateControlFailure PROCEDURE CODE id-RICsubscriptionStateControl CRITICALITY reject

}

ricQuery E2AP-ELEMENTARY-PROCEDURE ::= {

INITIATING MESSAGE RICqueryRequest SUCCESSFUL OUTCOME RICqueryResponse UNSUCCESSFUL OUTCOME RICqueryFailure PROCEDURE CODE id-RICquery

CRITICALITY reject

}

END

-- ASN1STOP

### PDU definitions

-- ASN1START

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

--

-- PDU definitions for E2AP

-- Derived from 3GPP 38.413 (NGAP)

--

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\* E2AP-PDU-Contents {

iso(1) identified-organization(3) dod(6) internet(1) private(4) enterprise(1) 53148 e2(1) version2 (2) e2ap(1) e2ap-PDU-Contents (1) }

DEFINITIONS AUTOMATIC TAGS ::= BEGIN

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

--

-- IE parameter types from other modules.

--

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

IMPORTS

Cause, CriticalityDiagnostics, E2nodeComponentConfiguration,

E2nodeComponentConfigurationAck, E2nodeComponentID, E2nodeComponentInterfaceType, GlobalE2node-ID,

GlobalRIC-ID, LoadMeasurementID, RANfunctionDefinition, RANfunctionID, RANfunctionOID, RANfunctionRevision, RegistrationRequest, ReportingPeriodicity, RICactionDefinition, RICactionExecutionOrder, RICactionID, RICactionType, RICassistanceHeader, RICassistanceMessage, RICassistanceOutcome, RICassistanceSN, RICassistanceUpdate, RICassistanceUpdateNumber, RICcallProcessID, RICcontrolAckRequest, RICcontrolHeader, RICcontrolMessage, RICcontrolOutcome, RICeventTriggerDefinition, RICindicationHeader, RICindicationMessage, RICindicationSN, RICindicationType, RICloadConfirm, RICloadInformation, RICloadRequest, RICqueryHeader, RICqueryDefinition, RICqueryOutcome, RICrequestID, RICserviceLoadConfirm, RICserviceLoadInformation, RICserviceLoadRequest, RICsubsequentAction, RICsubscriptionTime, RICsubscriptionAuditFlag, RICtimeToWait,

TimeToWait, TNLinformation, TNLusage, TransactionID

FROM E2AP-IEs

ProtocolIE-Container{}, ProtocolIE-ContainerList{}, ProtocolIE-SingleContainer{}, E2AP-PROTOCOL-IES,

E2AP-PROTOCOL-IES-PAIR

FROM E2AP-Containers

id-Cause,

id-CriticalityDiagnostics, id-E2connectionSetup,

id-E2connectionSetupFailed,

id-E2connectionSetupFailed-Item, id-E2connectionFailed-Item,

id-E2connectionUpdate-Item, id-E2connectionUpdateAdd,

id-E2connectionUpdateModify, id-E2connectionUpdateRemove,

id-E2connectionUpdateRemove-Item, id-E2nodeComponentConfigAddition,

id-E2nodeComponentConfigAddition-Item, id-E2nodeComponentConfigAdditionAck,

id-E2nodeComponentConfigAdditionAck-Item, id-E2nodeComponentConfigRemoval,

id-E2nodeComponentConfigRemoval-Item, id-E2nodeComponentConfigRemovalAck,

id-E2nodeComponentConfigRemovalAck-Item, id-E2nodeComponentConfigUpdate,

id-E2nodeComponentConfigUpdate-Item, id-E2nodeComponentConfigUpdateAck,

id-E2nodeComponentConfigUpdateAck-Item, id-E2nodeLoadMeasurementID,

id-E2nodeTNLassociationRemoval,

id-E2nodeTNLassociationRemoval-Item, id-GlobalE2node-ID,

id-GlobalRIC-ID, id-RANfunctionID,

id-RANfunctionID-Item,

id-RANfunctionIEcause-Item, id-RANfunction-Item,

id-RANfunctionLoad-Item, id-RANfunctionLoad-List,

id-RANfunctionLoadConfirm-Item, id-RANfunctionLoadConfirm-List, id-RANfunctionLoadRequest-Item, id-RANfunctionLoadRequest-List, id-RANfunctionsAccepted,

id-RANfunctionsAdded, id-RANfunctionsDeleted,

id-RANfunctionsModified, id-RANfunctionsRejected,

id-RANfunctionStateConfirm-Item, id-RANfunctionStateConfirm-List, id-RANfunctionStateControl-Item, id-RANfunctionStateControl-List, id-RegistrationRequest,

id-ReportingPeriodicity, id-RICaction-Admitted-Item, id-RICactionID,

id-RICaction-NotAdmitted-Item, id-RICactions-Admitted,

id-RICactions-NotAdmitted, id-RICaction-ToBeSetup-Item,

id-RICactionsToBeRemovedForModification-List, id-RICaction-ToBeRemovedForModification-Item, id-RICactionsToBeModifiedForModification-List, id-RICaction-ToBeModifiedForModification-Item, id-RICactionsToBeAddedForModification-List,

id-RICaction-ToBeAddedForModification-Item, id-RICactionsRemovedForModification-List, id-RICaction-RemovedForModification-Item,

id-RICactionsFailedToBeRemovedForModification-List, id-RICaction-FailedToBeRemovedForModification-Item, id-RICactionsModifiedForModification-List,

id-RICaction-ModifiedForModification-Item,

id-RICactionsFailedToBeModifiedForModification-List, id-RICaction-FailedToBeModifiedForModification-Item, id-RICactionsAddedForModification-List,

id-RICaction-AddedForModification-Item,

id-RICactionsFailedToBeAddedForModification-List, id-RICaction-FailedToBeAddedForModification-Item, id-RICactionsRequiredToBeModified-List,

id-RICaction-RequiredToBeModified-Item, id-RICactionsRequiredToBeRemoved-List, id-RICaction-RequiredToBeRemoved-Item,

id-RICactionsConfirmedForModification-List, id-RICaction-ConfirmedForModification-Item, id-RICactionList-Item,

id-RICactionLoad-Item,

id-RICactionLoadConfirm-Item, id-RICactionLoadRequest-Item,

id-RICactionsRefusedToBeModified-List, id-RICaction-RefusedToBeModified-Item, id-RICactionsConfirmedForRemoval-List, id-RICaction-ConfirmedForRemoval-Item, id-RICactionsRefusedToBeRemoved-List, id-RICaction-RefusedToBeRemoved-Item, id-RICassistanceHeader,

id-RICassistanceMessage, id-RICassistanceOutcome, id-RICassistanceSN,

id-RICassistanceUpdate,

id-RICassistanceUpdateNumber, id-RICcallProcessID,

id-RICcontrolAckRequest, id-RICcontrolHeader,

id-RICcontrolMessage, id-RICcontrolOutcome,

id-RICeventTriggerDefinitionToBeModified, id-RICindicationHeader,

id-RICindicationMessage, id-RICindicationSN,

id-RICindicationType,

id-RICloadMeasurementID, id-RICrequestID,

id-RICserviceQuery,

id-RICsubscriptionAuditFlag, id-RICsubscriptionAuditList, id-RICsubscriptionAudit-Item,

id-RICsubscriptionAuditAction-Item, id-RICsubscriptionAuditConfirmedList, id-RICsubscriptionAuditMissingList, id-RICsubscriptionAuditUnkownList,

id-RICsubscriptionDetails, id-RICsubscriptionList-Item, id-RICsubscriptionLoad-Item,

id-RICsubscriptionLoadConfirm-Item, id-RICsubscriptionLoadRequest-Item, id-RICsubscriptionToBeRemoved,

id-RICsubscription-withCause-Item, id-RICsubscriptionStartTime,

id-RICsubscriptionEndTime, id-RICqueryHeader,

id-RICqueryDefinition, id-RICqueryOutcome,

id-TimeToWait,

id-TNLinformation, id-TransactionID,

maxofE2nodeComponents, maxofRANfunctionID, maxofRICactionID,

maxofRICrequestID, maxofRICsubscriptions, maxofTNLA

FROM E2AP-Constants;

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

--

-- MESSAGES FOR RIC FUNCTIONAL PROCEDURES

--

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

--

-- RIC Subscription Elementary Procedure

--

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

--

-- RIC SUBSCRIPTION REQUEST

--

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\* RICsubscriptionRequest ::= SEQUENCE {

protocolIEs ProtocolIE-Container { {RICsubscriptionRequest-IEs} },

...

}

RICsubscriptionRequest-IEs E2AP-PROTOCOL-IES ::= {

<div class="table-wrapper" markdown="block">

{ ID id-RICrequestID CRITICALITY reject TYPE RICrequestID PRESENCE mandatory}|

</div>

<div class="table-wrapper" markdown="block">

{ ID id-RANfunctionID CRITICALITY reject TYPE RANfunctionID PRESENCE mandatory}|

</div>

{ ID id-RICsubscriptionDetails CRITICALITY reject TYPE RICsubscriptionDetails PRESENCE mandatory},

...,

<div class="table-wrapper" markdown="block">

{ ID id-RICsubscriptionStartTime CRITICALITY reject TYPE RICsubscriptionTime PRESENCE optional}|

</div>

{ ID id-RICsubscriptionEndTime CRITICALITY reject TYPE RICsubscriptionTime PRESENCE optional}

}

RICsubscriptionDetails ::= SEQUENCE { ricEventTriggerDefinition RICeventTriggerDefinition, ricAction-ToBeSetup-List RICactions-ToBeSetup-List,

...

}

RICactions-ToBeSetup-List ::= SEQUENCE (SIZE(1..maxofRICactionID)) OF ProtocolIE-SingleContainer {

{RICaction-ToBeSetup-ItemIEs} }

RICaction-ToBeSetup-ItemIEs E2AP-PROTOCOL-IES ::= {

{ ID id-RICaction-ToBeSetup-Item CRITICALITY ignore TYPE RICaction-ToBeSetup-Item PRESENCE mandatory },

...

}

RICaction-ToBeSetup-Item ::= SEQUENCE { ricActionID RICactionID,

ricActionType RICactionType, ricActionDefinition RICactionDefinition OPTIONAL, ricSubsequentAction RICsubsequentAction OPTIONAL,

...,

ricActionExecutionOrder RICactionExecutionOrder OPTIONAL -- New in E2APv03.00

}

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

--

-- RIC SUBSCRIPTION RESPONSE

--

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\* RICsubscriptionResponse ::= SEQUENCE {

protocolIEs ProtocolIE-Container{ {RICsubscriptionResponse-IEs} },

...

}

RICsubscriptionResponse-IEs E2AP-PROTOCOL-IES ::= {

<div class="table-wrapper" markdown="block">

{ ID id-RICrequestID CRITICALITY reject TYPE RICrequestID PRESENCE mandatory } |

</div>

<div class="table-wrapper" markdown="block">

{ ID id-RANfunctionID CRITICALITY reject TYPE RANfunctionID PRESENCE mandatory } |

</div>

<div class="table-wrapper" markdown="block">

{ ID id-RICactions-Admitted CRITICALITY reject TYPE RICaction-Admitted-List PRESENCE mandatory } |

</div>

{ ID id-RICactions-NotAdmitted CRITICALITY reject TYPE RICaction-NotAdmitted-List PRESENCE optional },

...

}

RICaction-Admitted-List ::= SEQUENCE (SIZE(1..maxofRICactionID)) OF ProtocolIE-SingleContainer{ {RICaction- Admitted-ItemIEs} }

RICaction-Admitted-ItemIEs E2AP-PROTOCOL-IES ::= {

{ ID id-RICaction-Admitted-Item CRITICALITY ignore TYPE RICaction-Admitted-Item PRESENCE mandatory },

...

}

RICaction-Admitted-Item ::= SEQUENCE { ricActionID RICactionID,

...

}

RICaction-NotAdmitted-List ::= SEQUENCE (SIZE(0..maxofRICactionID)) OF ProtocolIE-SingleContainer {

{RICaction-NotAdmitted-ItemIEs} }

RICaction-NotAdmitted-ItemIEs E2AP-PROTOCOL-IES ::= {

{ ID id-RICaction-NotAdmitted-Item CRITICALITY ignore TYPE RICaction-NotAdmitted-Item PRESENCE mandatory },

...

}

RICaction-NotAdmitted-Item ::= SEQUENCE { ricActionID RICactionID,

cause Cause,

...

}

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

--

-- RIC SUBSCRIPTION FAILURE

--

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\* RICsubscriptionFailure ::= SEQUENCE {

protocolIEs ProtocolIE-Container { {RICsubscriptionFailure-IEs} },

...

}

RICsubscriptionFailure-IEs E2AP-PROTOCOL-IES ::= {

<div class="table-wrapper" markdown="block">

{ ID id-RICrequestID CRITICALITY reject TYPE RICrequestID PRESENCE mandatory }|

</div>

<div class="table-wrapper" markdown="block">

{ ID id-RANfunctionID CRITICALITY reject TYPE RANfunctionID PRESENCE mandatory }|

</div>

<div class="table-wrapper" markdown="block">

{ ID id-Cause CRITICALITY reject TYPE Cause PRESENCE mandatory }|

</div>

{ ID id-CriticalityDiagnostics CRITICALITY ignore TYPE CriticalityDiagnostics PRESENCE optional },

...

}

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

--

-- RIC Subscription Audit Elementary Procedure

--

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

--

-- RIC SUBSCRIPTION AUDIT REQUEST

--

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\* RICsubscriptionAuditRequest ::= SEQUENCE {

protocolIEs ProtocolIE-Container { {RICsubscriptionAuditRequest-IEs} },

...

}

RICsubscriptionAuditRequest-IEs E2AP-PROTOCOL-IES ::= {

<div class="table-wrapper" markdown="block">

{ ID id-RICrequestID CRITICALITY reject TYPE RICrequestID PRESENCE mandatory}|

</div>

<div class="table-wrapper" markdown="block">

{ ID id-RICsubscriptionAuditFlag CRITICALITY reject TYPE RICsubscriptionAuditFlag PRESENCE optional}|

</div>

{ ID id-RICsubscriptionAuditList CRITICALITY reject TYPE RICsubscriptionAuditList PRESENCE optional},

...

}

RICsubscriptionAuditList ::= SEQUENCE (SIZE(1..maxofRICsubscriptions)) OF ProtocolIE-SingleContainer {

{RICsubscriptionAudit-ItemIEs} }

RICsubscriptionAudit-ItemIEs E2AP-PROTOCOL-IES ::= {

{ ID id-RICsubscriptionAudit-Item CRITICALITY ignore TYPE RICsubscriptionAudit-Item PRESENCE mandatory },

...

}

RICsubscriptionAudit-Item ::= SEQUENCE { ricRequestID RICrequestID,

ranFunctionID RANfunctionID,

...

}

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

--

-- RIC SUBSCRIPTION AUDIT RESPONSE

--

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\* RICsubscriptionAuditResponse ::= SEQUENCE {

protocolIEs ProtocolIE-Container{ {RICsubscriptionAuditResponse-IEs} },

...

}

RICsubscriptionAuditResponse-IEs E2AP-PROTOCOL-IES ::= {

<div class="table-wrapper" markdown="block">

{ ID id-RICrequestID CRITICALITY reject TYPE RICrequestID PRESENCE mandatory } |

</div>

<div class="table-wrapper" markdown="block">

{ ID id-RICsubscriptionAuditConfirmedList CRITICALITY reject TYPE RICsubscriptionAuditActionList PRESENCE mandatory } |

</div>

<div class="table-wrapper" markdown="block">

{ ID id-RICsubscriptionAuditUnkownList CRITICALITY reject TYPE RICsubscriptionAuditList PRESENCE optional } |

</div>

{ ID id-RICsubscriptionAuditMissingList CRITICALITY reject TYPE RICsubscriptionAuditActionList PRESENCE optional },

...

}

RICsubscriptionAuditActionList ::= SEQUENCE (SIZE(1..maxofRICsubscriptions)) OF ProtocolIE-SingleContainer

{ {RICsubscriptionAuditAction-ItemIEs} }

RICsubscriptionAuditAction-ItemIEs E2AP-PROTOCOL-IES ::= {

{ ID id-RICsubscriptionAuditAction-Item CRITICALITY ignore TYPE RICsubscriptionAuditAction-Item PRESENCE mandatory },

...

}

RICsubscriptionAuditAction-Item ::= SEQUENCE { ricRequestID RICrequestID,

ranFunctionID RANfunctionID,

ricAction-Admitted-List RICaction-Admitted-List,

...

}

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

--

-- RIC SUBSCRIPTION AUDIT FAILURE

--

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\* RICsubscriptionAuditFailure ::= SEQUENCE {

protocolIEs ProtocolIE-Container { {RICsubscriptionAuditFailure-IEs} },

...

}

RICsubscriptionAuditFailure-IEs E2AP-PROTOCOL-IES ::= {

<div class="table-wrapper" markdown="block">

{ ID id-RICrequestID CRITICALITY reject TYPE RICrequestID PRESENCE mandatory }|

</div>

<div class="table-wrapper" markdown="block">

{ ID id-Cause CRITICALITY reject TYPE Cause PRESENCE mandatory }|

</div>

{ ID id-CriticalityDiagnostics CRITICALITY ignore TYPE CriticalityDiagnostics PRESENCE optional },

...

}

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

--

-- RIC Subscription Delete Elementary Procedure

--

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

--

-- RIC SUBSCRIPTION DELETE REQUEST

--

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\* RICsubscriptionDeleteRequest ::= SEQUENCE {

protocolIEs ProtocolIE-Container { {RICsubscriptionDeleteRequest-IEs} },

...

}

RICsubscriptionDeleteRequest-IEs E2AP-PROTOCOL-IES ::= {

<div class="table-wrapper" markdown="block">

{ ID id-RICrequestID CRITICALITY reject TYPE RICrequestID PRESENCE mandatory }|

</div>

{ ID id-RANfunctionID CRITICALITY reject TYPE RANfunctionID PRESENCE mandatory },

...

}

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

--

-- RIC SUBSCRIPTION DELETE RESPONSE

--

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\* RICsubscriptionDeleteResponse ::= SEQUENCE {

protocolIEs ProtocolIE-Container { {RICsubscriptionDeleteResponse-IEs} },

...

}

RICsubscriptionDeleteResponse-IEs E2AP-PROTOCOL-IES ::= {

<div class="table-wrapper" markdown="block">

{ ID id-RICrequestID CRITICALITY reject TYPE RICrequestID PRESENCE mandatory }|

</div>

{ ID id-RANfunctionID CRITICALITY reject TYPE RANfunctionID PRESENCE mandatory },

...

}

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

--

-- RIC SUBSCRIPTION DELETE FAILURE

--

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\* RICsubscriptionDeleteFailure ::= SEQUENCE {

protocolIEs ProtocolIE-Container { {RICsubscriptionDeleteFailure-IEs} },

...

}

RICsubscriptionDeleteFailure-IEs E2AP-PROTOCOL-IES ::= {

<div class="table-wrapper" markdown="block">

{ ID id-RICrequestID CRITICALITY reject TYPE RICrequestID PRESENCE mandatory }|

</div>

<div class="table-wrapper" markdown="block">

{ ID id-RANfunctionID CRITICALITY reject TYPE RANfunctionID PRESENCE mandatory }|

</div>

<div class="table-wrapper" markdown="block">

{ ID id-Cause CRITICALITY ignore TYPE Cause PRESENCE mandatory }|

</div>

{ ID id-CriticalityDiagnostics CRITICALITY ignore TYPE CriticalityDiagnostics PRESENCE optional },

...

}

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

--

-- RIC Subscription Delete Required Elementary Procedure

--

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

--

-- RIC SUBSCRIPTION DELETE REQUIRED

--

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

RICsubscriptionDeleteRequired ::= SEQUENCE {

protocolIEs ProtocolIE-Container { {RICsubscriptionDeleteRequired-IEs} },

...

}

RICsubscriptionDeleteRequired-IEs E2AP-PROTOCOL-IES ::= {

{ ID id-RICsubscriptionToBeRemoved CRITICALITY ignore TYPE RICsubscription-List-withCause PRESENCE mandatory },

...

}

RICsubscription-List-withCause ::= SEQUENCE (SIZE(1..maxofRICrequestID)) OF ProtocolIE-SingleContainer {

{RICsubscription-withCause-ItemIEs} }

RICsubscription-withCause-ItemIEs E2AP-PROTOCOL-IES ::= {

{ ID id-RICsubscription-withCause-Item CRITICALITY ignore TYPE RICsubscription-withCause-Item PRESENCE mandatory },

...

}

RICsubscription-withCause-Item ::= SEQUENCE { ricRequestID RICrequestID,

ranFunctionID RANfunctionID,

cause Cause,

...

}

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

--

-- RIC Subscription Modification Elementary Procedure

--

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

--

-- RIC SUBSCRIPTION MODIFICATION REQUEST

--

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

RICsubscriptionModificationRequest ::= SEQUENCE {

protocolIEs ProtocolIE-Container { {RICsubscriptionModificationRequest-IEs} },

...

}

RICsubscriptionModificationRequest-IEs E2AP-PROTOCOL-IES ::= {

<div class="table-wrapper" markdown="block">

{ ID id-RICrequestID CRITICALITY reject TYPE RICrequestID PRESENCE mandatory}|

</div>

<div class="table-wrapper" markdown="block">

{ ID id-RANfunctionID CRITICALITY reject TYPE RANfunctionID PRESENCE mandatory}|

</div>

<div class="table-wrapper" markdown="block">

{ ID id-RICeventTriggerDefinitionToBeModified CRITICALITY ignore TYPE RICeventTriggerDefinition PRESENCE optional}|

</div>

<div class="table-wrapper" markdown="block">

{ ID id-RICactionsToBeRemovedForModification-List CRITICALITY ignore TYPE RICactions- ToBeRemovedForModification-List PRESENCE optional}|

</div>

<div class="table-wrapper" markdown="block">

{ ID id-RICactionsToBeModifiedForModification-List CRITICALITY ignore TYPE RICactions- ToBeModifiedForModification-List PRESENCE optional}|

</div>

{ ID id-RICactionsToBeAddedForModification-List CRITICALITY ignore TYPE RICactions- ToBeAddedForModification-List PRESENCE optional},

...

}

RICactions-ToBeRemovedForModification-List ::= SEQUENCE (SIZE(0..maxofRICactionID)) OF ProtocolIE- SingleContainer { {RICaction-ToBeRemovedForModification-ItemIEs} }

RICaction-ToBeRemovedForModification-ItemIEs E2AP-PROTOCOL-IES ::= {

{ ID id-RICaction-ToBeRemovedForModification-Item CRITICALITY ignore TYPE RICaction- ToBeRemovedForModification-Item PRESENCE mandatory },

...

}

RICaction-ToBeRemovedForModification-Item ::= SEQUENCE { ricActionID RICactionID,

...

}

RICactions-ToBeModifiedForModification-List ::= SEQUENCE (SIZE(0..maxofRICactionID)) OF ProtocolIE- SingleContainer { {RICaction-ToBeModifiedForModification-ItemIEs} }

RICaction-ToBeModifiedForModification-ItemIEs E2AP-PROTOCOL-IES ::= {

{ ID id-RICaction-ToBeModifiedForModification-Item CRITICALITY ignore TYPE RICaction- ToBeModifiedForModification-Item PRESENCE mandatory },

...

}

RICaction-ToBeModifiedForModification-Item ::= SEQUENCE { ricActionID RICactionID,

ricActionDefinition RICactionDefinition OPTIONAL, ricActionExecutionOrder RICactionExecutionOrder OPTIONAL, ricSubsequentAction RICsubsequentAction OPTIONAL,

...

}

RICactions-ToBeAddedForModification-List ::= SEQUENCE (SIZE(0..maxofRICactionID)) OF ProtocolIE- SingleContainer { {RICaction-ToBeAddedForModification-ItemIEs} }

RICaction-ToBeAddedForModification-ItemIEs E2AP-PROTOCOL-IES ::= {

{ ID id-RICaction-ToBeAddedForModification-Item CRITICALITY ignore TYPE RICaction- ToBeAddedForModification-Item PRESENCE mandatory },

...

}

RICaction-ToBeAddedForModification-Item ::= SEQUENCE { ricActionID RICactionID,

ricActionType RICactionType, ricActionDefinition RICactionDefinition, ricActionExecutionOrder RICactionExecutionOrder, ricSubsequentAction RICsubsequentAction OPTIONAL,

...

}

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

--

-- RIC SUBSCRIPTION MODIFICATION RESPONSE

--

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\* RICsubscriptionModificationResponse ::= SEQUENCE {

protocolIEs ProtocolIE-Container { {RICsubscriptionModificationResponse-IEs} },

...

}

RICsubscriptionModificationResponse-IEs E2AP-PROTOCOL-IES ::= {

<div class="table-wrapper" markdown="block">

{ ID id-RICrequestID CRITICALITY reject TYPE RICrequestID PRESENCE mandatory}|

</div>

<div class="table-wrapper" markdown="block">

{ ID id-RANfunctionID CRITICALITY reject TYPE RANfunctionID PRESENCE mandatory}|

</div>

<div class="table-wrapper" markdown="block">

{ ID id-RICactionsRemovedForModification-List CRITICALITY ignore TYPE RICactions- RemovedForModification-List PRESENCE optional}|

</div>

<div class="table-wrapper" markdown="block">

{ ID id-RICactionsFailedToBeRemovedForModification-List CRITICALITY ignore TYPE RICactions- FailedToBeRemovedForModification-List PRESENCE optional}|

</div>

<div class="table-wrapper" markdown="block">

{ ID id-RICactionsModifiedForModification-List CRITICALITY ignore TYPE RICactions- ModifiedForModification-List PRESENCE optional}|

</div>

<div class="table-wrapper" markdown="block">

{ ID id-RICactionsFailedToBeModifiedForModification-List CRITICALITY ignore TYPE RICactions- FailedToBeModifiedForModification-List PRESENCE optional}|

</div>

<div class="table-wrapper" markdown="block">

{ ID id-RICactionsAddedForModification-List CRITICALITY ignore TYPE RICactions- AddedForModification-List PRESENCE optional}|

</div>

{ ID id-RICactionsFailedToBeAddedForModification-List CRITICALITY ignore TYPE RICactions- FailedToBeAddedForModification-List PRESENCE optional},

...

}

RICactions-RemovedForModification-List ::= SEQUENCE (SIZE(0..maxofRICactionID)) OF ProtocolIE- SingleContainer { {RICaction-RemovedForModification-ItemIEs} }

RICaction-RemovedForModification-ItemIEs E2AP-PROTOCOL-IES ::= {

{ ID id-RICaction-RemovedForModification-Item CRITICALITY ignore TYPE RICaction- RemovedForModification-Item PRESENCE mandatory },

...

}

RICaction-RemovedForModification-Item ::= SEQUENCE { ricActionID RICactionID,

...

}

RICactions-FailedToBeRemovedForModification-List ::= SEQUENCE (SIZE(0..maxofRICactionID)) OF ProtocolIE- SingleContainer { {RICaction-FailedToBeRemovedForModification-ItemIEs} }

RICaction-FailedToBeRemovedForModification-ItemIEs E2AP-PROTOCOL-IES ::= {

{ ID id-RICaction-FailedToBeRemovedForModification-Item CRITICALITY ignore TYPE RICaction- FailedToBeRemovedForModification-Item PRESENCE mandatory },

...

}

RICaction-FailedToBeRemovedForModification-Item ::= SEQUENCE { ricActionID RICactionID,

cause Cause,

...

}

RICactions-ModifiedForModification-List ::= SEQUENCE (SIZE(0..maxofRICactionID)) OF ProtocolIE- SingleContainer { {RICaction-ModifiedForModification-ItemIEs} }

RICaction-ModifiedForModification-ItemIEs E2AP-PROTOCOL-IES ::= {

{ ID id-RICaction-ModifiedForModification-Item CRITICALITY ignore TYPE RICaction- ModifiedForModification-Item PRESENCE mandatory },

...

}

RICaction-ModifiedForModification-Item ::= SEQUENCE { ricActionID RICactionID,

...

}

RICactions-FailedToBeModifiedForModification-List ::= SEQUENCE (SIZE(0..maxofRICactionID)) OF ProtocolIE- SingleContainer { {RICaction-FailedToBeModifiedForModification-ItemIEs} }

RICaction-FailedToBeModifiedForModification-ItemIEs E2AP-PROTOCOL-IES ::= {

{ ID id-RICaction-FailedToBeModifiedForModification-Item CRITICALITY ignore TYPE RICaction- FailedToBeModifiedForModification-Item PRESENCE mandatory },

...

}

RICaction-FailedToBeModifiedForModification-Item ::= SEQUENCE { ricActionID RICactionID,

cause Cause,

...

}

RICactions-AddedForModification-List ::= SEQUENCE (SIZE(0..maxofRICactionID)) OF ProtocolIE- SingleContainer { {RICaction-AddedForModification-ItemIEs} }

RICaction-AddedForModification-ItemIEs E2AP-PROTOCOL-IES ::= {

{ ID id-RICaction-AddedForModification-Item CRITICALITY ignore TYPE RICaction-AddedForModification- Item PRESENCE mandatory },

...

}

RICaction-AddedForModification-Item ::= SEQUENCE { ricActionID RICactionID,

...

}

RICactions-FailedToBeAddedForModification-List ::= SEQUENCE (SIZE(0..maxofRICactionID)) OF ProtocolIE- SingleContainer { {RICaction-FailedToBeAddedForModification-ItemIEs} }

RICaction-FailedToBeAddedForModification-ItemIEs E2AP-PROTOCOL-IES ::= {

{ ID id-RICaction-FailedToBeAddedForModification-Item CRITICALITY ignore TYPE RICaction- FailedToBeAddedForModification-Item PRESENCE mandatory },

...

}

RICaction-FailedToBeAddedForModification-Item ::= SEQUENCE { ricActionID RICactionID,

cause Cause,

...

}

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

--

-- RIC SUBSCRIPTION MODIFICATION FAILURE

--

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\* RICsubscriptionModificationFailure ::= SEQUENCE {

protocolIEs ProtocolIE-Container { {RICsubscriptionModificationFailure-IEs} },

...

}

RICsubscriptionModificationFailure-IEs E2AP-PROTOCOL-IES ::= {

<div class="table-wrapper" markdown="block">

{ ID id-RICrequestID CRITICALITY reject TYPE RICrequestID PRESENCE mandatory}|

</div>

<div class="table-wrapper" markdown="block">

{ ID id-RANfunctionID CRITICALITY reject TYPE RANfunctionID PRESENCE mandatory}|

</div>

<div class="table-wrapper" markdown="block">

{ ID id-Cause CRITICALITY reject TYPE Cause PRESENCE mandatory}|

</div>

{ ID id-CriticalityDiagnostics CRITICALITY ignore TYPE CriticalityDiagnostics PRESENCE optional},

...

}

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

--

-- RIC Subscription Modification Required Elementary Procedure

--

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

--

-- RIC SUBSCRIPTION MODIFICATION REQUIRED

--

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\* RICsubscriptionModificationRequired ::= SEQUENCE {

protocolIEs ProtocolIE-Container { {RICsubscriptionModificationRequired-IEs} },

...

}

RICsubscriptionModificationRequired-IEs E2AP-PROTOCOL-IES ::= {

<div class="table-wrapper" markdown="block">

{ ID id-RICrequestID CRITICALITY reject TYPE RICrequestID PRESENCE mandatory}|

</div>

<div class="table-wrapper" markdown="block">

{ ID id-RANfunctionID CRITICALITY reject TYPE RANfunctionID PRESENCE mandatory}|

</div>

<div class="table-wrapper" markdown="block">

{ ID id-RICactionsRequiredToBeModified-List CRITICALITY ignore TYPE RICactions-RequiredToBeModified- List PRESENCE optional}|

</div>

{ ID id-RICactionsRequiredToBeRemoved-List CRITICALITY ignore TYPE RICactions-RequiredToBeRemoved- List PRESENCE optional},

...

}

RICactions-RequiredToBeModified-List ::= SEQUENCE (SIZE(0..maxofRICactionID)) OF ProtocolIE- SingleContainer { {RICaction-RequiredToBeModified-ItemIEs} }

RICaction-RequiredToBeModified-ItemIEs E2AP-PROTOCOL-IES ::= {

{ ID id-RICaction-RequiredToBeModified-Item CRITICALITY ignore TYPE RICaction-RequiredToBeModified- Item PRESENCE mandatory },

...

}

RICaction-RequiredToBeModified-Item ::= SEQUENCE { ricActionID RICactionID,

ricTimeToWait RICtimeToWait,

...

}

RICactions-RequiredToBeRemoved-List ::= SEQUENCE (SIZE(0..maxofRICactionID)) OF ProtocolIE-SingleContainer

{ {RICaction-RequiredToBeRemoved-ItemIEs} }

RICaction-RequiredToBeRemoved-ItemIEs E2AP-PROTOCOL-IES ::= {

{ ID id-RICaction-RequiredToBeRemoved-Item CRITICALITY ignore TYPE RICaction-RequiredToBeRemoved- Item PRESENCE mandatory },

...

}

RICaction-RequiredToBeRemoved-Item ::= SEQUENCE { ricActionID RICactionID,

cause Cause,

...

}

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

--

-- RIC SUBSCRIPTION MODIFICATION CONFIRM

--

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\* RICsubscriptionModificationConfirm ::= SEQUENCE {

protocolIEs ProtocolIE-Container { {RICsubscriptionModificationConfirm-IEs} },

...

}

RICsubscriptionModificationConfirm-IEs E2AP-PROTOCOL-IES ::= {

<div class="table-wrapper" markdown="block">

{ ID id-RICrequestID CRITICALITY reject TYPE RICrequestID PRESENCE mandatory}|

</div>

<div class="table-wrapper" markdown="block">

{ ID id-RANfunctionID CRITICALITY reject TYPE RANfunctionID PRESENCE mandatory}|

</div>

<div class="table-wrapper" markdown="block">

{ ID id-RICactionsConfirmedForModification-List CRITICALITY ignore TYPE RICactions- ConfirmedForModification-List PRESENCE optional}|

</div>

<div class="table-wrapper" markdown="block">

{ ID id-RICactionsRefusedToBeModified-List CRITICALITY ignore TYPE RICactions- RefusedToBeModified-List PRESENCE optional}|

</div>

<div class="table-wrapper" markdown="block">

{ ID id-RICactionsConfirmedForRemoval-List CRITICALITY ignore TYPE RICactions- ConfirmedForRemoval-List PRESENCE optional}|

</div>

{ ID id-RICactionsRefusedToBeRemoved-List CRITICALITY ignore TYPE RICactions- RefusedToBeRemoved-List PRESENCE optional},

...

}

RICactions-ConfirmedForModification-List ::= SEQUENCE (SIZE(0..maxofRICactionID)) OF ProtocolIE- SingleContainer { {RICaction-ConfirmedForModification-ItemIEs} }

RICaction-ConfirmedForModification-ItemIEs E2AP-PROTOCOL-IES ::= {

{ ID id-RICaction-ConfirmedForModification-Item CRITICALITY ignore TYPE RICaction- ConfirmedForModification-Item PRESENCE mandatory },

...

}

RICaction-ConfirmedForModification-Item ::= SEQUENCE { ricActionID RICactionID,

...

}

RICactions-RefusedToBeModified-List ::= SEQUENCE (SIZE(0..maxofRICactionID)) OF ProtocolIE-SingleContainer

{ {RICaction-RefusedToBeModified-ItemIEs} }

RICaction-RefusedToBeModified-ItemIEs E2AP-PROTOCOL-IES ::= {

{ ID id-RICaction-RefusedToBeModified-Item CRITICALITY ignore TYPE RICaction- RefusedToBeModified-Item PRESENCE mandatory },

...

}

RICaction-RefusedToBeModified-Item ::= SEQUENCE { ricActionID RICactionID,

cause Cause,

...

}

RICactions-ConfirmedForRemoval-List ::= SEQUENCE (SIZE(0..maxofRICactionID)) OF ProtocolIE-SingleContainer

{ {RICaction-ConfirmedForRemoval-ItemIEs} }

RICaction-ConfirmedForRemoval-ItemIEs E2AP-PROTOCOL-IES ::= {

{ ID id-RICaction-ConfirmedForRemoval-Item CRITICALITY ignore TYPE RICaction- ConfirmedForRemoval-Item PRESENCE mandatory },

...

}

RICaction-ConfirmedForRemoval-Item ::= SEQUENCE { ricActionID RICactionID,

...

}

RICactions-RefusedToBeRemoved-List ::= SEQUENCE (SIZE(0..maxofRICactionID)) OF ProtocolIE-SingleContainer

{ {RICaction-RefusedToBeRemoved-ItemIEs} }

RICaction-RefusedToBeRemoved-ItemIEs E2AP-PROTOCOL-IES ::= {

{ ID id-RICaction-RefusedToBeRemoved-Item CRITICALITY ignore TYPE RICaction- RefusedToBeRemoved-Item PRESENCE mandatory },

...

}

RICaction-RefusedToBeRemoved-Item ::= SEQUENCE { ricActionID RICactionID,

cause Cause,

...

}

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

--

-- RIC SUBSCRIPTION MODIFICATION REFUSE

--

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\* RICsubscriptionModificationRefuse ::= SEQUENCE {

protocolIEs ProtocolIE-Container { {RICsubscriptionModificationRefuse-IEs} },

...

}

RICsubscriptionModificationRefuse-IEs E2AP-PROTOCOL-IES ::= {

<div class="table-wrapper" markdown="block">

{ ID id-RICrequestID CRITICALITY reject TYPE RICrequestID PRESENCE mandatory}|

</div>

<div class="table-wrapper" markdown="block">

{ ID id-RANfunctionID CRITICALITY reject TYPE RANfunctionID PRESENCE mandatory}|

</div>

<div class="table-wrapper" markdown="block">

{ ID id-Cause CRITICALITY reject TYPE Cause PRESENCE mandatory}|

</div>

{ ID id-CriticalityDiagnostics CRITICALITY ignore TYPE CriticalityDiagnostics PRESENCE optional},

...

}

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

--

-- RIC Subscription State Control Elementary Procedure

--

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

--

-- RIC SUBSCRIPTION STATE CONTROL REQUEST

--

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\* RICsubscriptionStateControlRequest ::= SEQUENCE {

protocolIEs ProtocolIE-Container { {RICsubscriptionStateControlRequest- IEs} },

...

}

RICsubscriptionStateControlRequest-IEs E2AP-PROTOCOL-IES ::= {

<div class="table-wrapper" markdown="block">

{ ID id-RICrequestID CRITICALITY reject TYPE RICrequestID PRESENCE mandatory }|

</div>

{ ID id-RANfunctionStateControl-List CRITICALITY reject TYPE RANfunctionStateControl-List PRESENCE mandatory },

...

}

RANfunctionStateControl-List ::= SEQUENCE (SIZE(1..maxofRANfunctionID)) OF ProtocolIE-SingleContainer {

{RANfunctionStateControl-ItemIEs} }

RANfunctionStateControl-ItemIEs E2AP-PROTOCOL-IES ::= {

{ ID id-RANfunctionStateControl-Item CRITICALITY reject TYPE RANfunctionStateControl-Item PRESENCE mandatory },

...

}

RANfunctionStateControl-Item ::= SEQUENCE { ranFunctionID RANfunctionID,

ricSubscriptionToBeSuspended-list RICsubscriptionToBeSuspended-List OPTIONAL, ricSubscriptionToBeResumed-list RICsubscriptionToBeResumed-List OPTIONAL,

...

}

RICsubscriptionToBeSuspended-List ::= SEQUENCE (SIZE(1..maxofRICrequestID)) OF ProtocolIE-SingleContainer

{ {RICsubscriptionList-ItemIEs} }

RICsubscriptionToBeResumed-List ::= SEQUENCE (SIZE(1..maxofRICrequestID)) OF ProtocolIE-SingleContainer {

{RICsubscriptionList-ItemIEs} }

RICsubscriptionList-ItemIEs E2AP-PROTOCOL-IES ::= {

{ ID id-RICsubscriptionList-Item CRITICALITY reject TYPE RICsubscriptionList-Item PRESENCE mandatory },

...

}

RICsubscriptionList-Item ::= SEQUENCE {

ricRequestID RICrequestID,

ricAction-list RICaction-List OPTIONAL,

...

}

RICaction-List ::= SEQUENCE (SIZE(1..maxofRICactionID)) OF ProtocolIE-SingleContainer { {RICaction- ItemIEs} }

RICaction-ItemIEs E2AP-PROTOCOL-IES ::= {

{ ID id-RICactionList-Item CRITICALITY reject TYPE RICactionList-Item PRESENCE mandatory },

...

}

RICactionList-Item ::= SEQUENCE {

ricActionID RICactionID,

...

}

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

--

-- RIC SUBSCRIPTION STATE CONTROL RESPONSE

--

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\* RICsubscriptionStateControlResponse ::= SEQUENCE {

protocolIEs ProtocolIE-Container { {RICsubscriptionStateControlResponse-IEs} },

...

}

RICsubscriptionStateControlResponse-IEs E2AP-PROTOCOL-IES ::= {

<div class="table-wrapper" markdown="block">

{ ID id-RICrequestID CRITICALITY reject TYPE RICrequestID PRESENCE mandatory }|

</div>

{ ID id-RANfunctionStateConfirm-List CRITICALITY reject TYPE RANfunctionStateConfirm-List PRESENCE mandatory },

...

}

RANfunctionStateConfirm-List ::= SEQUENCE (SIZE(1..maxofRANfunctionID)) OF ProtocolIE-SingleContainer {

{RANfunctionStateConfirm-ItemIEs} }

RANfunctionStateConfirm-ItemIEs E2AP-PROTOCOL-IES ::= {

{ ID id-RANfunctionStateConfirm-Item CRITICALITY reject TYPE RANfunctionStateConfirm-Item PRESENCE mandatory },

...

}

RANfunctionStateConfirm-Item ::= SEQUENCE { ranFunctionID RANfunctionID,

ricSubscriptionSuspended-list RICsubscriptionSuspended-List OPTIONAL, ricSubscriptionResumed-list RICsubscriptionResumed-List OPTIONAL,

...

}

RICsubscriptionSuspended-List ::= SEQUENCE (SIZE(1..maxofRICrequestID)) OF ProtocolIE-SingleContainer {

{RICsubscriptionList-ItemIEs} }

RICsubscriptionResumed-List ::= SEQUENCE (SIZE(1..maxofRICrequestID)) OF ProtocolIE-SingleContainer {

{RICsubscriptionList-ItemIEs} }

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

--

-- RIC SUBSCRIPTION STATE CONTROL FAILURE

--

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\* RICsubscriptionStateControlFailure ::= SEQUENCE {

protocolIEs ProtocolIE-Container { {RICsubscriptionStateControlFailure-IEs} },

...

}

RICsubscriptionStateControlFailure-IEs E2AP-PROTOCOL-IES ::= {

<div class="table-wrapper" markdown="block">

{ ID id-RICrequestID CRITICALITY reject TYPE RICrequestID PRESENCE mandatory }|

</div>

<div class="table-wrapper" markdown="block">

{ ID id-Cause CRITICALITY reject TYPE Cause PRESENCE mandatory }|

</div>

{ ID id-CriticalityDiagnostics CRITICALITY ignore TYPE CriticalityDiagnostics PRESENCE optional },

...

}

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

--

-- RIC Assistance Elementary Procedure

--

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

--

-- RIC ASSISTANCE REQUEST

--

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\* RICassistanceRequest ::= SEQUENCE {

protocolIEs ProtocolIE-Container { {RICassistanceRequest-IEs} },

...

}

RICassistanceRequest-IEs E2AP-PROTOCOL-IES ::= {

<div class="table-wrapper" markdown="block">

{ ID id-RICrequestID CRITICALITY reject TYPE RICrequestID PRESENCE mandatory }|

</div>

<div class="table-wrapper" markdown="block">

{ ID id-RICassistanceHeader CRITICALITY reject TYPE RICassistanceHeader PRESENCE mandatory }|

</div>

<div class="table-wrapper" markdown="block">

{ ID id-RICassistanceMessage CRITICALITY reject TYPE RICassistanceMessage PRESENCE mandatory }|

</div>

<div class="table-wrapper" markdown="block">

{ ID id-RICassistanceUpdate CRITICALITY reject TYPE RICassistanceUpdate PRESENCE optional }|

</div>

{ ID id-RICassistanceUpdateNumber CRITICALITY reject TYPE RICassistanceUpdateNumber PRESENCE optional },

...

}

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

--

-- RIC ASSISTANCE RESPONSE

--

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\* RICassistanceResponse ::= SEQUENCE {

protocolIEs ProtocolIE-Container { {RICassistanceResponse-IEs} },

...

}

RICassistanceResponse-IEs E2AP-PROTOCOL-IES ::= {

<div class="table-wrapper" markdown="block">

{ ID id-RICrequestID CRITICALITY reject TYPE RICrequestID PRESENCE mandatory }|

</div>

<div class="table-wrapper" markdown="block">

{ ID id-RICassistanceHeader CRITICALITY reject TYPE RICassistanceHeader PRESENCE mandatory }|

</div>

{ ID id-RICassistanceOutcome CRITICALITY reject TYPE RICassistanceOutcome PRESENCE mandatory },

...

}

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

--

-- RIC ASSISTANCE FAILURE

--

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\* RICassistanceFailure ::= SEQUENCE {

protocolIEs ProtocolIE-Container { {RICassistanceFailure-IEs} },

...

}

RICassistanceFailure-IEs E2AP-PROTOCOL-IES ::= {

<div class="table-wrapper" markdown="block">

{ ID id-RICrequestID CRITICALITY reject TYPE RICrequestID PRESENCE mandatory }|

</div>

<div class="table-wrapper" markdown="block">

{ ID id-Cause CRITICALITY ignore TYPE Cause PRESENCE mandatory }|

</div>

{ ID id-CriticalityDiagnostics CRITICALITY ignore TYPE CriticalityDiagnostics PRESENCE optional },

...

}

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

--

-- RIC Assistance Indication Elementary Procedure

--

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

--

-- RIC ASSISTANCE INDICATION

--

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\* RICassistanceIndication ::= SEQUENCE {

protocolIEs ProtocolIE-Container { {RICassistanceIndication-IEs} },

...

}

RICassistanceIndication-IEs E2AP-PROTOCOL-IES ::= {

<div class="table-wrapper" markdown="block">

{ ID id-RICrequestID CRITICALITY reject TYPE RICrequestID PRESENCE mandatory }|

</div>

<div class="table-wrapper" markdown="block">

{ ID id-RICassistanceSN CRITICALITY reject TYPE RICassistanceSN PRESENCE mandatory }|

</div>

<div class="table-wrapper" markdown="block">

{ ID id-RICassistanceHeader CRITICALITY reject TYPE RICassistanceHeader PRESENCE mandatory }|

</div>

{ ID id-RICassistanceOutcome CRITICALITY reject TYPE RICassistanceOutcome PRESENCE mandatory },

...

}

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

--

-- RIC Assistance Halt Elementary Procedure

--

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

--

-- RIC ASSISTANCE HALT

--

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\* RICassistanceHalt ::= SEQUENCE {

protocolIEs ProtocolIE-Container { {RICassistanceHalt-IEs} },

...

}

RICassistanceHalt-IEs E2AP-PROTOCOL-IES ::= {

{ ID id-RICrequestID CRITICALITY reject TYPE RICrequestID PRESENCE mandatory },

...

}

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

--

-- RIC Indication Elementary Procedure

--

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

--

-- RIC INDICATION

--

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\* RICindication ::= SEQUENCE {

protocolIEs ProtocolIE-Container { {RICindication-IEs} },

...

}

RICindication-IEs E2AP-PROTOCOL-IES ::= {

<div class="table-wrapper" markdown="block">

{ ID id-RICrequestID CRITICALITY reject TYPE RICrequestID PRESENCE mandatory }|

</div>

<div class="table-wrapper" markdown="block">

{ ID id-RANfunctionID CRITICALITY reject TYPE RANfunctionID PRESENCE mandatory }|

</div>

<div class="table-wrapper" markdown="block">

{ ID id-RICactionID CRITICALITY reject TYPE RICactionID PRESENCE mandatory }|

</div>

<div class="table-wrapper" markdown="block">

{ ID id-RICindicationSN CRITICALITY reject TYPE RICindicationSN PRESENCE optional }|

</div>

<div class="table-wrapper" markdown="block">

{ ID id-RICindicationType CRITICALITY reject TYPE RICindicationType PRESENCE mandatory }|

</div>

<div class="table-wrapper" markdown="block">

{ ID id-RICindicationHeader CRITICALITY reject TYPE RICindicationHeader PRESENCE mandatory }|

</div>

<div class="table-wrapper" markdown="block">

{ ID id-RICindicationMessage CRITICALITY reject TYPE RICindicationMessage PRESENCE mandatory }|

</div>

{ ID id-RICcallProcessID CRITICALITY reject TYPE RICcallProcessID PRESENCE optional },

...

}

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

--

-- RIC Control Elementary Procedure

--

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

--

-- RIC CONTROL REQUEST

--

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\* RICcontrolRequest ::= SEQUENCE {

protocolIEs ProtocolIE-Container { {RICcontrolRequest-IEs} },

...

}

RICcontrolRequest-IEs E2AP-PROTOCOL-IES ::= {

<div class="table-wrapper" markdown="block">

{ ID id-RICrequestID CRITICALITY reject TYPE RICrequestID PRESENCE mandatory }|

</div>

<div class="table-wrapper" markdown="block">

{ ID id-RANfunctionID CRITICALITY reject TYPE RANfunctionID PRESENCE mandatory }|

</div>

<div class="table-wrapper" markdown="block">

{ ID id-RICcallProcessID CRITICALITY reject TYPE RICcallProcessID PRESENCE optional }|

</div>

<div class="table-wrapper" markdown="block">

{ ID id-RICcontrolHeader CRITICALITY reject TYPE RICcontrolHeader PRESENCE mandatory }|

</div>

<div class="table-wrapper" markdown="block">

{ ID id-RICcontrolMessage CRITICALITY reject TYPE RICcontrolMessage PRESENCE mandatory }|

</div>

{ ID id-RICcontrolAckRequest CRITICALITY reject TYPE RICcontrolAckRequest PRESENCE optional },

...

}

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

--

-- RIC CONTROL ACKNOWLEDGE

--

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\* RICcontrolAcknowledge ::= SEQUENCE {

protocolIEs ProtocolIE-Container { {RICcontrolAcknowledge-IEs} },

...

}

RICcontrolAcknowledge-IEs E2AP-PROTOCOL-IES ::= {

<div class="table-wrapper" markdown="block">

{ ID id-RICrequestID CRITICALITY reject TYPE RICrequestID PRESENCE mandatory }|

</div>

<div class="table-wrapper" markdown="block">

{ ID id-RANfunctionID CRITICALITY reject TYPE RANfunctionID PRESENCE mandatory }|

</div>

<div class="table-wrapper" markdown="block">

{ ID id-RICcallProcessID CRITICALITY reject TYPE RICcallProcessID PRESENCE optional }|

</div>

{ ID id-RICcontrolOutcome CRITICALITY reject TYPE RICcontrolOutcome PRESENCE optional },

...

}

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

--

-- RIC CONTROL FAILURE

--

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\* RICcontrolFailure ::= SEQUENCE {

protocolIEs ProtocolIE-Container { {RICcontrolFailure-IEs} },

...

}

RICcontrolFailure-IEs E2AP-PROTOCOL-IES ::= {

<div class="table-wrapper" markdown="block">

{ ID id-RICrequestID CRITICALITY reject TYPE RICrequestID PRESENCE mandatory }|

</div>

<div class="table-wrapper" markdown="block">

{ ID id-RANfunctionID CRITICALITY reject TYPE RANfunctionID PRESENCE mandatory }|

</div>

<div class="table-wrapper" markdown="block">

{ ID id-RICcallProcessID CRITICALITY reject TYPE RICcallProcessID PRESENCE optional }|

</div>

<div class="table-wrapper" markdown="block">

{ ID id-Cause CRITICALITY ignore TYPE Cause PRESENCE mandatory }|

</div>

{ ID id-RICcontrolOutcome CRITICALITY reject TYPE RICcontrolOutcome PRESENCE optional },

...,

{ ID id-CriticalityDiagnostics CRITICALITY ignore TYPE CriticalityDiagnostics PRESENCE optional }

}

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

--

-- RIC QUERY Elementary Procedure

--

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

--

-- RIC QUERY REQUEST

--

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\* RICqueryRequest ::= SEQUENCE {

protocolIEs ProtocolIE-Container { {RICqueryRequest-IEs} },

...

}

RICqueryRequest-IEs E2AP-PROTOCOL-IES ::= {

<div class="table-wrapper" markdown="block">

{ ID id-RICrequestID CRITICALITY reject TYPE RICrequestID PRESENCE mandatory }|

</div>

<div class="table-wrapper" markdown="block">

{ ID id-RANfunctionID CRITICALITY reject TYPE RANfunctionID PRESENCE mandatory }|

</div>

<div class="table-wrapper" markdown="block">

{ ID id-RICqueryHeader CRITICALITY reject TYPE RICqueryHeader PRESENCE mandatory }|

</div>

{ ID id-RICqueryDefinition CRITICALITY reject TYPE RICqueryDefinition PRESENCE mandatory },

...

}

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

--

-- RIC QUERY RESPONSE

--

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\* RICqueryResponse ::= SEQUENCE {

protocolIEs ProtocolIE-Container { {RICqueryResponse-IEs} },

...

}

RICqueryResponse-IEs E2AP-PROTOCOL-IES ::= {

<div class="table-wrapper" markdown="block">

{ ID id-RICrequestID CRITICALITY reject TYPE RICrequestID PRESENCE mandatory }|

</div>

<div class="table-wrapper" markdown="block">

{ ID id-RANfunctionID CRITICALITY reject TYPE RANfunctionID PRESENCE mandatory }|

</div>

{ ID id-RICqueryOutcome CRITICALITY reject TYPE RICqueryOutcome PRESENCE mandatory },

...

}

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

--

-- RIC QUERY FAILURE

--

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\* RICqueryFailure ::= SEQUENCE {

protocolIEs ProtocolIE-Container { {RICqueryFailure-IEs} },

...

}

RICqueryFailure-IEs E2AP-PROTOCOL-IES ::= {

<div class="table-wrapper" markdown="block">

{ ID id-RICrequestID CRITICALITY reject TYPE RICrequestID PRESENCE mandatory }|

</div>

<div class="table-wrapper" markdown="block">

{ ID id-RANfunctionID CRITICALITY reject TYPE RANfunctionID PRESENCE mandatory }|

</div>

<div class="table-wrapper" markdown="block">

{ ID id-Cause CRITICALITY ignore TYPE Cause PRESENCE mandatory }|

</div>

{ ID id-CriticalityDiagnostics CRITICALITY ignore TYPE CriticalityDiagnostics PRESENCE optional },

...

}

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

--

-- RIC Service Load Status Elementary Procedure

--

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

--

-- RIC SERVICE LOAD STATUS REQUEST

--

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\* RICserviceLoadStatusRequest ::= SEQUENCE {

protocolIEs ProtocolIE-Container { {RICserviceLoadStatusRequest-IEs} },

...

}

RICserviceLoadStatusRequest-IEs E2AP-PROTOCOL-IES ::= {

<div class="table-wrapper" markdown="block">

{ ID id-RICloadMeasurementID CRITICALITY reject TYPE LoadMeasurementID PRESENCE mandatory }|

</div>

<div class="table-wrapper" markdown="block">

{ ID id-E2nodeLoadMeasurementID CRITICALITY ignore TYPE LoadMeasurementID PRESENCE conditional}|

</div>

<div class="table-wrapper" markdown="block">

{ ID id-RegistrationRequest CRITICALITY ignore TYPE RegistrationRequest PRESENCE mandatory }|

</div>

<div class="table-wrapper" markdown="block">

{ ID id-RANfunctionLoadRequest-List CRITICALITY reject TYPE RANfunctionLoadRequest-List PRESENCE conditional }|

</div>

{ ID id-ReportingPeriodicity CRITICALITY ignore TYPE ReportingPeriodicity PRESENCE optional },

...

}

RANfunctionLoadRequest-List ::= SEQUENCE (SIZE(1..maxofRANfunctionID)) OF ProtocolIE-SingleContainer {

{RANfunctionLoadRequest-ItemIEs} }

RANfunctionLoadRequest-ItemIEs E2AP-PROTOCOL-IES ::= {

{ ID id-RANfunctionLoadRequest-Item CRITICALITY reject TYPE RANfunctionLoadRequest-Item PRESENCE mandatory },

...

}

RANfunctionLoadRequest-Item ::= SEQUENCE { ranFunctionID RANfunctionID,

ranFunctionLoadRequest RICloadRequest OPTIONAL, ricServiceLoadRequest RICserviceLoadRequest OPTIONAL, ricSubscriptionLoadRequest-list RICsubscriptionLoadRequest-List OPTIONAL,

...

}

RICsubscriptionLoadRequest-List ::= SEQUENCE (SIZE(1..maxofRICrequestID)) OF ProtocolIE-SingleContainer {

{RICsubscriptionLoadRequest-ItemIEs} } RICsubscriptionLoadRequest-ItemIEs E2AP-PROTOCOL-IES ::= {

{ ID id-RICsubscriptionLoadRequest-Item CRITICALITY reject TYPE RICsubscriptionLoadRequest-ItemIE PRESENCE mandatory },

...

}

RICsubscriptionLoadRequest-ItemIE ::= SEQUENCE { ricRequestID RICrequestID,

ricSubscriptionLoadRequest RICloadRequest OPTIONAL, ricActionLoadRequest-list RICactionLoadRequest-List OPTIONAL,

...

}

RICactionLoadRequest-List ::= SEQUENCE (SIZE(1..maxofRICactionID)) OF ProtocolIE-SingleContainer {

{RICactionLoadRequest-ItemIEs} }

RICactionLoadRequest-ItemIEs E2AP-PROTOCOL-IES ::= {

{ ID id-RICactionLoadRequest-Item CRITICALITY reject TYPE RICactionLoadRequest-Item PRESENCE mandatory },

...

}

RICactionLoadRequest-Item ::= SEQUENCE { ricActionID RICactionID,

ricActionLoadRequest RICloadRequest,

...

}

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

--

-- RIC SERVICE LOAD STATUS RESPONSE

--

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\* RICserviceLoadStatusResponse ::= SEQUENCE {

protocolIEs ProtocolIE-Container { {RICserviceLoadStatusResponse-IEs} },

...

}

RICserviceLoadStatusResponse-IEs E2AP-PROTOCOL-IES ::= {

<div class="table-wrapper" markdown="block">

{ ID id-RICloadMeasurementID CRITICALITY reject TYPE LoadMeasurementID PRESENCE mandatory }|

</div>

<div class="table-wrapper" markdown="block">

{ ID id-E2nodeLoadMeasurementID CRITICALITY ignore TYPE LoadMeasurementID PRESENCE mandatory }|

</div>

{ ID id-RANfunctionLoadConfirm-List CRITICALITY reject TYPE RANfunctionLoadConfirm-List PRESENCE conditional },

...

}

RANfunctionLoadConfirm-List ::= SEQUENCE (SIZE(1..maxofRANfunctionID)) OF ProtocolIE-SingleContainer {

{RANfunctionLoadConfirm-ItemIEs} }

RANfunctionLoadConfirm-ItemIEs E2AP-PROTOCOL-IES ::= {

{ ID id-RANfunctionLoadConfirm-Item CRITICALITY reject TYPE RANfunctionLoadConfirm-Item PRESENCE mandatory },

...

}

RANfunctionLoadConfirm-Item ::= SEQUENCE { ranFunctionID RANfunctionID,

ranFunctionLoadConfirm RICloadConfirm OPTIONAL, ricServiceLoadConfirm RICserviceLoadConfirm OPTIONAL, ricSubscriptionLoadConfirm-list RICsubscriptionLoadConfirm-List OPTIONAL,

...

}

RICsubscriptionLoadConfirm-List ::= SEQUENCE (SIZE(1..maxofRICrequestID)) OF ProtocolIE-SingleContainer {

{RICsubscriptionLoadConfirm-ItemIEs} }

RICsubscriptionLoadConfirm-ItemIEs E2AP-PROTOCOL-IES ::= {

{ ID id-RICsubscriptionLoadConfirm-Item CRITICALITY reject TYPE RICsubscriptionLoadConfirm-ItemIE PRESENCE mandatory },

...

}

RICsubscriptionLoadConfirm-ItemIE ::= SEQUENCE { ricRequestID RICrequestID,

ricSubscriptionLoadConfirm RICloadConfirm OPTIONAL, ricActionLoadConfirm-list RICactionLoadConfirm-List OPTIONAL,

...

}

RICactionLoadConfirm-List ::= SEQUENCE (SIZE(1..maxofRICactionID)) OF ProtocolIE-SingleContainer {

{RICactionLoadConfirm-ItemIEs} }

RICactionLoadConfirm-ItemIEs E2AP-PROTOCOL-IES ::= {

{ ID id-RICactionLoadConfirm-Item CRITICALITY reject TYPE RICactionLoadConfirm-Item PRESENCE mandatory },

...

}

RICactionLoadConfirm-Item ::= SEQUENCE { ricActionID RICactionID,

ricActionLoadConfirm RICloadConfirm,

...

}

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

--

-- RIC SERVICE LOAD STATUS FAILURE

--

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\* RICserviceLoadStatusFailure ::= SEQUENCE {

protocolIEs ProtocolIE-Container { {RICserviceLoadStatusFailure-IEs} },

...

}

RICserviceLoadStatusFailure-IEs E2AP-PROTOCOL-IES ::= {

<div class="table-wrapper" markdown="block">

{ ID id-RICloadMeasurementID CRITICALITY reject TYPE LoadMeasurementID PRESENCE mandatory }|

</div>

<div class="table-wrapper" markdown="block">

{ ID id-E2nodeLoadMeasurementID CRITICALITY ignore TYPE LoadMeasurementID PRESENCE mandatory }|

</div>

<div class="table-wrapper" markdown="block">

{ ID id-Cause CRITICALITY ignore TYPE Cause PRESENCE mandatory }|

</div>

{ ID id-CriticalityDiagnostics CRITICALITY ignore TYPE CriticalityDiagnostics PRESENCE optional },

...

}

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

--

-- RIC Service Load Update Elementary Procedure

--

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

--

-- RIC SERVICE LOAD UPDATE

--

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\* RICserviceLoadUpdate ::= SEQUENCE {

protocolIEs ProtocolIE-Container { {RICserviceLoadUpdate-IEs} },

...

}

RICserviceLoadUpdate-IEs E2AP-PROTOCOL-IES ::= {

<div class="table-wrapper" markdown="block">

{ ID id-RICloadMeasurementID CRITICALITY reject TYPE LoadMeasurementID PRESENCE mandatory }|

</div>

<div class="table-wrapper" markdown="block">

{ ID id-E2nodeLoadMeasurementID CRITICALITY ignore TYPE LoadMeasurementID PRESENCE mandatory }|

</div>

{ ID id-RANfunctionLoad-List CRITICALITY reject TYPE RANfunctionLoad-List PRESENCE mandatory },

...

}

RANfunctionLoad-List ::= SEQUENCE (SIZE(1..maxofRANfunctionID)) OF ProtocolIE-SingleContainer {

{RANfunctionLoad-ItemIEs} }

RANfunctionLoad-ItemIEs E2AP-PROTOCOL-IES ::= {

{ ID id-RANfunctionLoad-Item CRITICALITY reject TYPE RANfunctionLoad-Item PRESENCE mandatory },

...

}

RANfunctionLoad-Item ::= SEQUENCE {

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| ranFunctionID | RANfunctionID, |  |
| ranFunctionLoadInformation | RICloadInformation | OPTIONAL, |
| ricServiceLoadInformation | RICserviceLoadInformation | OPTIONAL, |
| ricSubscriptionLoad-list | RICsubscriptionLoad-List | OPTIONAL, |
| ... |  |  |

</div>

}

RICsubscriptionLoad-List ::= SEQUENCE (SIZE(1..maxofRICrequestID)) OF ProtocolIE-SingleContainer {

{RICsubscriptionLoad-ItemIEs} }

RICsubscriptionLoad-ItemIEs E2AP-PROTOCOL-IES ::= {

{ ID id-RICsubscriptionLoad-Item CRITICALITY reject TYPE RICsubscriptionLoad-ItemIE PRESENCE mandatory },

...

}

RICsubscriptionLoad-ItemIE ::= SEQUENCE { ricRequestID RICrequestID,

ricSubscriptionLoadInformation RICloadInformation OPTIONAL, ricActionLoad-list RICactionLoad-List OPTIONAL,

...

}

RICactionLoad-List ::= SEQUENCE (SIZE(1..maxofRICactionID)) OF ProtocolIE-SingleContainer {

{RICactionLoad-ItemIEs} }

RICactionLoad-ItemIEs E2AP-PROTOCOL-IES ::= {

{ ID id-RICactionLoad-Item CRITICALITY reject TYPE RICactionLoad-Item PRESENCE mandatory },

...

}

RICactionLoad-Item ::= SEQUENCE {

ricActionID RICactionID,

ricActionLoadInformation RICloadInformation,

...

}

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

--

-- MESSAGES FOR GLOBAL PROCEDURES

--

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

--

-- Error Indication Elementary Procedure

--

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

--

-- ERROR INDICATION

--

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\* ErrorIndication ::= SEQUENCE {

protocolIEs ProtocolIE-Container { {ErrorIndication-IEs} },

...

}

ErrorIndication-IEs E2AP-PROTOCOL-IES ::= {

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |
| --- | --- | --- | --- | --- |
| { ID  optional | id-TransactionID  }| | CRITICALITY reject | TYPE TransactionID | PRESENCE |
| { ID | id-RICrequestID | CRITICALITY reject | TYPE RICrequestID | PRESENCE |
| optional | }| |  |  |  |
| { ID | id-RANfunctionID | CRITICALITY reject | TYPE RANfunctionID | PRESENCE |
| optional | }| |  |  |  |
| { ID | id-Cause | CRITICALITY ignore | TYPE Cause | PRESENCE |
| optional | }| |  |  |  |
| { ID | id-CriticalityDiagnostics | CRITICALITY ignore | TYPE CriticalityDiagnostics | PRESENCE |
| optional | }, |  |  |  |

</div>

...

}

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

--

-- E2 Setup Elementary Procedure

--

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

--

-- E2 SETUP REQUEST

--

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

E2setupRequest ::= SEQUENCE {

protocolIEs ProtocolIE-Container { {E2setupRequestIEs} },

...

}

E2setupRequestIEs E2AP-PROTOCOL-IES ::= {

<div class="table-wrapper" markdown="block">

{ ID id-TransactionID CRITICALITY reject TYPE TransactionID PRESENCE mandatory }|

</div>

<div class="table-wrapper" markdown="block">

{ ID id-GlobalE2node-ID CRITICALITY reject TYPE GlobalE2node-ID PRESENCE mandatory }|

</div>

<div class="table-wrapper" markdown="block">

{ ID id-RANfunctionsAdded CRITICALITY reject TYPE RANfunctions-List PRESENCE mandatory }|

</div>

{ ID id-E2nodeComponentConfigAddition CRITICALITY reject TYPE E2nodeComponentConfigAddition-List PRESENCE mandatory },

...

}

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

--

-- E2 SETUP RESPONSE

--

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

E2setupResponse ::= SEQUENCE {

protocolIEs ProtocolIE-Container { {E2setupResponseIEs} },

...

}

E2setupResponseIEs E2AP-PROTOCOL-IES ::= {

<div class="table-wrapper" markdown="block">

{ ID id-TransactionID CRITICALITY reject TYPE TransactionID PRESENCE mandatory }|

</div>

<div class="table-wrapper" markdown="block">

{ ID id-GlobalRIC-ID CRITICALITY reject TYPE GlobalRIC-ID PRESENCE mandatory }|

</div>

<div class="table-wrapper" markdown="block">

{ ID id-RANfunctionsAccepted CRITICALITY reject TYPE RANfunctionsID-List PRESENCE optional }|

</div>

<div class="table-wrapper" markdown="block">

{ ID id-RANfunctionsRejected CRITICALITY reject TYPE RANfunctionsIDcause-List PRESENCE optional }|

</div>

{ ID id-E2nodeComponentConfigAdditionAck CRITICALITY reject TYPE E2nodeComponentConfigAdditionAck- List PRESENCE mandatory },

...

}

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

--

-- E2 SETUP FAILURE

--

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

E2setupFailure ::= SEQUENCE {

protocolIEs ProtocolIE-Container { {E2setupFailureIEs} },

...

}

E2setupFailureIEs E2AP-PROTOCOL-IES ::= {

<div class="table-wrapper" markdown="block">

{ ID id-TransactionID CRITICALITY reject TYPE TransactionID PRESENCE mandatory }|

</div>

<div class="table-wrapper" markdown="block">

{ ID id-Cause CRITICALITY ignore TYPE Cause PRESENCE mandatory }|

</div>

<div class="table-wrapper" markdown="block">

{ ID id-TimeToWait CRITICALITY ignore TYPE TimeToWait PRESENCE optional }|

</div>

<div class="table-wrapper" markdown="block">

{ ID id-CriticalityDiagnostics CRITICALITY ignore TYPE CriticalityDiagnostics PRESENCE optional }|

</div>

{ ID id-TNLinformation CRITICALITY ignore TYPE TNLinformation PRESENCE optional },

...

}

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

--

-- E2 Connection Update Elementary Procedure

--

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

--

-- E2 CONNECTION UPDATE

--

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\* E2connectionUpdate ::= SEQUENCE {

protocolIEs ProtocolIE-Container { {E2connectionUpdate-IEs} },

...

}

E2connectionUpdate-IEs E2AP-PROTOCOL-IES ::= {

<div class="table-wrapper" markdown="block">

{ ID id-TransactionID CRITICALITY reject TYPE TransactionID PRESENCE mandatory }|

</div>

<div class="table-wrapper" markdown="block">

{ ID id-E2connectionUpdateAdd CRITICALITY reject TYPE E2connectionUpdate-List PRESENCE optional }|

</div>

<div class="table-wrapper" markdown="block">

{ ID id-E2connectionUpdateRemove CRITICALITY reject TYPE E2connectionUpdateRemove-List PRESENCE optional }|

</div>

{ ID id-E2connectionUpdateModify CRITICALITY reject TYPE E2connectionUpdate-List PRESENCE optional },

...

}

E2connectionUpdate-List ::= SEQUENCE (SIZE(1..maxofTNLA)) OF ProtocolIE-SingleContainer {

{E2connectionUpdate-ItemIEs} }

E2connectionUpdate-ItemIEs E2AP-PROTOCOL-IES ::= {

{ ID id-E2connectionUpdate-Item CRITICALITY ignore TYPE E2connectionUpdate-Item PRESENCE mandatory },

...

}

E2connectionUpdate-Item ::= SEQUENCE { tnlInformation TNLinformation,

tnlUsage TNLusage,

...

}

E2connectionUpdateRemove-List ::= SEQUENCE (SIZE(1..maxofTNLA)) OF ProtocolIE-SingleContainer {

{E2connectionUpdateRemove-ItemIEs} }

E2connectionUpdateRemove-ItemIEs E2AP-PROTOCOL-IES ::= {

{ ID id-E2connectionUpdateRemove-Item CRITICALITY ignore TYPE E2connectionUpdateRemove-Item PRESENCE mandatory },

...

}

E2connectionUpdateRemove-Item ::= SEQUENCE { tnlInformation TNLinformation,

...

}

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

--

-- E2 CONNECTION UPDATE ACKNOWLEDGE

--

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\* E2connectionUpdateAcknowledge ::= SEQUENCE {

protocolIEs ProtocolIE-Container { {E2connectionUpdateAck-IEs} },

...

}

E2connectionUpdateAck-IEs E2AP-PROTOCOL-IES ::= {

<div class="table-wrapper" markdown="block">

{ ID id-TransactionID CRITICALITY reject TYPE TransactionID PRESENCE mandatory }|

</div>

<div class="table-wrapper" markdown="block">

{ ID id-E2connectionSetup CRITICALITY reject TYPE E2connectionUpdate-List PRESENCE optional }|

</div>

{ ID id-E2connectionSetupFailed CRITICALITY reject TYPE E2connectionSetupFailed-List PRESENCE optional },

...

}

E2connectionSetupFailed-List ::= SEQUENCE (SIZE(1..maxofTNLA)) OF ProtocolIE-SingleContainer {

{E2connectionSetupFailed-ItemIEs} }

E2connectionSetupFailed-ItemIEs E2AP-PROTOCOL-IES ::= {

{ ID id-E2connectionSetupFailed-Item CRITICALITY ignore TYPE E2connectionSetupFailed-Item PRESENCE mandatory },

...

}

E2connectionSetupFailed-Item ::= SEQUENCE { tnlInformation TNLinformation,

cause Cause,

...

}

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

--

-- E2 CONNECTION UPDATE FAILURE

--

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\* E2connectionUpdateFailure ::= SEQUENCE {

protocolIEs ProtocolIE-Container { {E2connectionUpdateFailure-IEs} },

...

}

E2connectionUpdateFailure-IEs E2AP-PROTOCOL-IES ::= {

<div class="table-wrapper" markdown="block">

{ ID id-TransactionID CRITICALITY reject TYPE TransactionID PRESENCE mandatory }|

</div>

<div class="table-wrapper" markdown="block">

{ ID id-Cause CRITICALITY reject TYPE Cause PRESENCE optional }|

</div>

<div class="table-wrapper" markdown="block">

{ ID id-TimeToWait CRITICALITY ignore TYPE TimeToWait PRESENCE optional }|

</div>

{ ID id-CriticalityDiagnostics CRITICALITY ignore TYPE CriticalityDiagnostics PRESENCE optional },

...

}

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

--

-- E2 Node Configuration Update Elementary Procedure

--

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

--

-- E2 NODE CONFIGURATION UPDATE

--

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\* E2nodeConfigurationUpdate ::= SEQUENCE {

protocolIEs ProtocolIE-Container { {E2nodeConfigurationUpdate-IEs} },

...

}

E2nodeConfigurationUpdate-IEs E2AP-PROTOCOL-IES ::= {

<div class="table-wrapper" markdown="block">

{ ID id-TransactionID CRITICALITY reject TYPE TransactionID PRESENCE mandatory }|

</div>

<div class="table-wrapper" markdown="block">

{ ID id-GlobalE2node-ID CRITICALITY reject TYPE GlobalE2node-ID PRESENCE optional }|

</div>

<div class="table-wrapper" markdown="block">

{ ID id-E2nodeComponentConfigAddition CRITICALITY reject TYPE E2nodeComponentConfigAddition-List PRESENCE optional }|

</div>

<div class="table-wrapper" markdown="block">

{ ID id-E2nodeComponentConfigUpdate CRITICALITY reject TYPE E2nodeComponentConfigUpdate-List PRESENCE optional }|

</div>

<div class="table-wrapper" markdown="block">

{ ID id-E2nodeComponentConfigRemoval CRITICALITY reject TYPE E2nodeComponentConfigRemoval-List PRESENCE optional }|

</div>

{ ID id-E2nodeTNLassociationRemoval CRITICALITY reject TYPE E2nodeTNLassociationRemoval-List PRESENCE optional },

...

}

E2nodeComponentConfigAddition-List ::= SEQUENCE (SIZE(1..maxofE2nodeComponents)) OF ProtocolIE- SingleContainer { {E2nodeComponentConfigAddition-ItemIEs} }

E2nodeComponentConfigAddition-ItemIEs E2AP-PROTOCOL-IES ::= {

{ ID id-E2nodeComponentConfigAddition-Item CRITICALITY reject TYPE E2nodeComponentConfigAddition- Item PRESENCE mandatory },

...

}

E2nodeComponentConfigAddition-Item ::= SEQUENCE { e2nodeComponentInterfaceType E2nodeComponentInterfaceType, e2nodeComponentID E2nodeComponentID, e2nodeComponentConfiguration E2nodeComponentConfiguration,

...

}

E2nodeComponentConfigUpdate-List ::= SEQUENCE (SIZE(1..maxofE2nodeComponents)) OF ProtocolIE- SingleContainer { {E2nodeComponentConfigUpdate-ItemIEs} }

E2nodeComponentConfigUpdate-ItemIEs E2AP-PROTOCOL-IES ::= {

{ ID id-E2nodeComponentConfigUpdate-Item CRITICALITY reject TYPE E2nodeComponentConfigUpdate-Item PRESENCE mandatory },

...

}

E2nodeComponentConfigUpdate-Item ::= SEQUENCE { e2nodeComponentInterfaceType E2nodeComponentInterfaceType, e2nodeComponentID E2nodeComponentID, e2nodeComponentConfiguration E2nodeComponentConfiguration,

...

}

E2nodeComponentConfigRemoval-List ::= SEQUENCE (SIZE(1..maxofE2nodeComponents)) OF ProtocolIE- SingleContainer { {E2nodeComponentConfigRemoval-ItemIEs} }

E2nodeComponentConfigRemoval-ItemIEs E2AP-PROTOCOL-IES ::= {

{ ID id-E2nodeComponentConfigRemoval-Item CRITICALITY reject TYPE E2nodeComponentConfigRemoval-Item PRESENCE mandatory },

...

}

E2nodeComponentConfigRemoval-Item ::= SEQUENCE { e2nodeComponentInterfaceType E2nodeComponentInterfaceType, e2nodeComponentID E2nodeComponentID,

...

}

E2nodeTNLassociationRemoval-List ::= SEQUENCE (SIZE(1..maxofTNLA)) OF ProtocolIE-SingleContainer {

{E2nodeTNLassociationRemoval-ItemIEs} }

E2nodeTNLassociationRemoval-ItemIEs E2AP-PROTOCOL-IES ::= {

{ ID id-E2nodeTNLassociationRemoval-Item CRITICALITY reject TYPE E2nodeTNLassociationRemoval-Item PRESENCE mandatory },

...

}

E2nodeTNLassociationRemoval-Item ::= SEQUENCE { tnlInformation TNLinformation,

tnlInformationRIC TNLinformation,

...

}

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

--

-- E2 NODE CONFIGURATION UPDATE ACKNOWLEDGE

--

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\* E2nodeConfigurationUpdateAcknowledge ::= SEQUENCE {

protocolIEs ProtocolIE-Container { {E2nodeConfigurationUpdateAcknowledge-IEs} },

...

}

E2nodeConfigurationUpdateAcknowledge-IEs E2AP-PROTOCOL-IES ::= {

<div class="table-wrapper" markdown="block">

{ ID id-TransactionID CRITICALITY reject TYPE TransactionID PRESENCE mandatory }|

</div>

<div class="table-wrapper" markdown="block">

{ ID id-E2nodeComponentConfigAdditionAck CRITICALITY reject TYPE E2nodeComponentConfigAdditionAck-List PRESENCE optional }|

</div>

<div class="table-wrapper" markdown="block">

{ ID id-E2nodeComponentConfigUpdateAck CRITICALITY reject TYPE E2nodeComponentConfigUpdateAck-List PRESENCE optional }|

</div>

{ ID id-E2nodeComponentConfigRemovalAck CRITICALITY reject TYPE E2nodeComponentConfigRemovalAck-List PRESENCE optional },

...

}

E2nodeComponentConfigAdditionAck-List ::= SEQUENCE (SIZE(1..maxofE2nodeComponents)) OF ProtocolIE- SingleContainer { {E2nodeComponentConfigAdditionAck-ItemIEs} }

E2nodeComponentConfigAdditionAck-ItemIEs E2AP-PROTOCOL-IES ::= {

{ ID id-E2nodeComponentConfigAdditionAck-Item CRITICALITY reject TYPE E2nodeComponentConfigAdditionAck-Item PRESENCE mandatory },

...

}

E2nodeComponentConfigAdditionAck-Item ::= SEQUENCE { e2nodeComponentInterfaceType E2nodeComponentInterfaceType, e2nodeComponentID E2nodeComponentID, e2nodeComponentConfigurationAck E2nodeComponentConfigurationAck,

...

}

E2nodeComponentConfigUpdateAck-List ::= SEQUENCE (SIZE(1..maxofE2nodeComponents)) OF ProtocolIE- SingleContainer { {E2nodeComponentConfigUpdateAck-ItemIEs} }

E2nodeComponentConfigUpdateAck-ItemIEs E2AP-PROTOCOL-IES ::= {

{ ID id-E2nodeComponentConfigUpdateAck-Item CRITICALITY reject TYPE E2nodeComponentConfigUpdateAck-Item PRESENCE mandatory },

...

}

E2nodeComponentConfigUpdateAck-Item ::= SEQUENCE { e2nodeComponentInterfaceType E2nodeComponentInterfaceType, e2nodeComponentID E2nodeComponentID, e2nodeComponentConfigurationAck E2nodeComponentConfigurationAck,

...

}

E2nodeComponentConfigRemovalAck-List ::= SEQUENCE (SIZE(1..maxofE2nodeComponents)) OF ProtocolIE- SingleContainer { {E2nodeComponentConfigRemovalAck-ItemIEs} }

E2nodeComponentConfigRemovalAck-ItemIEs E2AP-PROTOCOL-IES ::= {

{ ID id-E2nodeComponentConfigRemovalAck-Item CRITICALITY reject TYPE E2nodeComponentConfigRemovalAck-Item PRESENCE mandatory },

...

}

E2nodeComponentConfigRemovalAck-Item ::= SEQUENCE { e2nodeComponentInterfaceType E2nodeComponentInterfaceType, e2nodeComponentID E2nodeComponentID, e2nodeComponentConfigurationAck E2nodeComponentConfigurationAck,

...

}

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

--

-- E2 NODE CONFIGURATION UPDATE FAILURE

--

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\* E2nodeConfigurationUpdateFailure ::= SEQUENCE {

protocolIEs ProtocolIE-Container { {E2nodeConfigurationUpdateFailure-IEs} },

...

}

E2nodeConfigurationUpdateFailure-IEs E2AP-PROTOCOL-IES ::= {

<div class="table-wrapper" markdown="block">

{ ID id-TransactionID CRITICALITY reject TYPE TransactionID PRESENCE mandatory }|

</div>

<div class="table-wrapper" markdown="block">

{ ID id-Cause CRITICALITY ignore TYPE Cause PRESENCE mandatory }|

</div>

<div class="table-wrapper" markdown="block">

{ ID id-TimeToWait CRITICALITY ignore TYPE TimeToWait PRESENCE optional }|

</div>

{ ID id-CriticalityDiagnostics CRITICALITY ignore TYPE CriticalityDiagnostics PRESENCE optional },

...

}

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

--

-- Reset Elementary Procedure

--

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

--

-- RESET REQUEST

--

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

ResetRequest ::= SEQUENCE {

protocolIEs ProtocolIE-Container { {ResetRequestIEs} },

...

}

ResetRequestIEs E2AP-PROTOCOL-IES ::= {

<div class="table-wrapper" markdown="block">

{ ID id-TransactionID CRITICALITY reject TYPE TransactionID PRESENCE mandatory }|

</div>

{ ID id-Cause CRITICALITY ignore TYPE Cause PRESENCE mandatory },

...

}

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

--

-- RESET RESPONSE

--

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

ResetResponse ::= SEQUENCE {

protocolIEs ProtocolIE-Container { {ResetResponseIEs} },

...

}

ResetResponseIEs E2AP-PROTOCOL-IES ::= {

<div class="table-wrapper" markdown="block">

{ ID id-TransactionID CRITICALITY reject TYPE TransactionID PRESENCE mandatory }|

</div>

{ ID id-CriticalityDiagnostics CRITICALITY ignore TYPE CriticalityDiagnostics PRESENCE optional },

...

}

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

--

-- RIC Service Update Elementary Procedure

--

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

--

-- RIC SERVICE UPDATE

--

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\* RICserviceUpdate ::= SEQUENCE {

protocolIEs ProtocolIE-Container { {RICserviceUpdate-IEs} },

...

}

RICserviceUpdate-IEs E2AP-PROTOCOL-IES ::= {

<div class="table-wrapper" markdown="block">

{ ID id-TransactionID CRITICALITY reject TYPE TransactionID PRESENCE mandatory }|

</div>

<div class="table-wrapper" markdown="block">

{ ID id-RANfunctionsAdded CRITICALITY reject TYPE RANfunctions-List PRESENCE optional }|

</div>

<div class="table-wrapper" markdown="block">

{ ID id-RANfunctionsModified CRITICALITY reject TYPE RANfunctions-List PRESENCE optional }|

</div>

{ ID id-RANfunctionsDeleted CRITICALITY reject TYPE RANfunctionsID-List PRESENCE optional },

...

}

RANfunctions-List ::= SEQUENCE (SIZE(1..maxofRANfunctionID)) OF ProtocolIE-SingleContainer { {RANfunction- ItemIEs} }

RANfunction-ItemIEs E2AP-PROTOCOL-IES ::= {

{ ID id-RANfunction-Item CRITICALITY ignore TYPE RANfunction-Item PRESENCE mandatory },

...

}

RANfunction-Item ::= SEQUENCE {

ranFunctionID RANfunctionID, ranFunctionDefinition RANfunctionDefinition, ranFunctionRevision RANfunctionRevision, ranFunctionOID RANfunctionOID,

...

}

RANfunctionsID-List ::= SEQUENCE (SIZE(1..maxofRANfunctionID)) OF ProtocolIE- SingleContainer{ {RANfunctionID-ItemIEs} }

RANfunctionID-ItemIEs E2AP-PROTOCOL-IES ::= {

{ ID id-RANfunctionID-Item CRITICALITY ignore TYPE RANfunctionID-Item PRESENCE mandatory },

...

}

RANfunctionID-Item ::= SEQUENCE { ranFunctionID RANfunctionID,

ranFunctionRevision RANfunctionRevision,

...

}

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

--

-- RIC SERVICE UPDATE ACKNOWLEDGE

--

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\* RICserviceUpdateAcknowledge ::= SEQUENCE {

protocolIEs ProtocolIE-Container { {RICserviceUpdateAcknowledge-IEs} },

...

}

RICserviceUpdateAcknowledge-IEs E2AP-PROTOCOL-IES ::= {

<div class="table-wrapper" markdown="block">

{ ID id-TransactionID CRITICALITY reject TYPE TransactionID PRESENCE mandatory }|

</div>

<div class="table-wrapper" markdown="block">

{ ID id-RANfunctionsAccepted CRITICALITY reject TYPE RANfunctionsID-List PRESENCE optional }|

</div>

{ ID id-RANfunctionsRejected CRITICALITY reject TYPE RANfunctionsIDcause-List PRESENCE optional },

...

}

RANfunctionsIDcause-List ::= SEQUENCE (SIZE(1..maxofRANfunctionID)) OF ProtocolIE-SingleContainer {

{RANfunctionIDcause-ItemIEs} }

RANfunctionIDcause-ItemIEs E2AP-PROTOCOL-IES ::= {

{ ID id-RANfunctionIEcause-Item CRITICALITY ignore TYPE RANfunctionIDcause-Item PRESENCE mandatory },

...

}

RANfunctionIDcause-Item ::= SEQUENCE { ranFunctionID RANfunctionID,

cause Cause,

...

}

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

--

-- RIC SERVICE UPDATE FAILURE

--

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\* RICserviceUpdateFailure ::= SEQUENCE {

protocolIEs ProtocolIE-Container { {RICserviceUpdateFailure-IEs} },

...

}

RICserviceUpdateFailure-IEs E2AP-PROTOCOL-IES ::= {

<div class="table-wrapper" markdown="block">

{ ID id-TransactionID CRITICALITY reject TYPE TransactionID PRESENCE mandatory }|

</div>

<div class="table-wrapper" markdown="block">

{ ID id-Cause CRITICALITY reject TYPE Cause PRESENCE mandatory }|

</div>

<div class="table-wrapper" markdown="block">

{ ID id-TimeToWait CRITICALITY ignore TYPE TimeToWait PRESENCE optional }|

</div>

{ ID id-CriticalityDiagnostics CRITICALITY ignore TYPE CriticalityDiagnostics PRESENCE optional },

...

}

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

--

-- RIC Service Query Elementary Procedure

--

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

--

-- RIC SERVICE QUERY

--

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\* RICserviceQuery ::= SEQUENCE {

protocolIEs ProtocolIE-Container { {RICserviceQuery-IEs} },

...

}

RICserviceQuery-IEs E2AP-PROTOCOL-IES ::= {

<div class="table-wrapper" markdown="block">

{ ID id-TransactionID CRITICALITY reject TYPE TransactionID PRESENCE mandatory }|

</div>

{ ID id-RANfunctionsAccepted CRITICALITY reject TYPE RANfunctionsID-List PRESENCE optional },

...

}

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

--

-- E2 Removal Elementary Procedure

--

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

--

-- E2 REMOVAL REQUEST

--

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

E2RemovalRequest ::= SEQUENCE {

protocolIEs ProtocolIE-Container { {E2RemovalRequestIEs} },

...

}

E2RemovalRequestIEs E2AP-PROTOCOL-IES ::= {

{ ID id-TransactionID CRITICALITY reject TYPE TransactionID PRESENCE mandatory },

...

}

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

--

-- E2 REMOVAL RESPONSE

--

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

E2RemovalResponse ::= SEQUENCE {

protocolIEs ProtocolIE-Container { {E2RemovalResponseIEs} },

...

}

E2RemovalResponseIEs E2AP-PROTOCOL-IES ::= {

<div class="table-wrapper" markdown="block">

{ ID id-TransactionID CRITICALITY reject TYPE TransactionID PRESENCE mandatory }|

</div>

{ ID id-CriticalityDiagnostics CRITICALITY ignore TYPE CriticalityDiagnostics PRESENCE optional },

...

}

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

--

-- E2 REMOVAL FAILURE

--

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

E2RemovalFailure ::= SEQUENCE {

protocolIEs ProtocolIE-Container { {E2RemovalFailureIEs} },

...

}

E2RemovalFailureIEs E2AP-PROTOCOL-IES ::= {

<div class="table-wrapper" markdown="block">

{ ID id-TransactionID CRITICALITY reject TYPE TransactionID PRESENCE mandatory }|

</div>

<div class="table-wrapper" markdown="block">

{ ID id-Cause CRITICALITY ignore TYPE Cause PRESENCE mandatory }|

</div>

{ ID id-CriticalityDiagnostics CRITICALITY ignore TYPE CriticalityDiagnostics PRESENCE optional },

...

}

END

-- ASN1STOP

### Information Element definitions

-- ASN1START

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

-- E2AP

-- Information Element Definitions

--

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

E2AP-IEs {

iso(1) identified-organization(3) dod(6) internet(1) private(4) enterprise(1) 53148 e2(1) version2 (2) e2ap(1) e2ap-IEs (2)}

DEFINITIONS AUTOMATIC TAGS ::= BEGIN

IMPORTS

Criticality, Presence, ProcedureCode, ProtocolIE-ID, TriggeringMessage

FROM E2AP-CommonDataTypes

maxnoofErrors, maxProtocolIEs

FROM E2AP-Constants;

-- A

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

-- [New for E2AP v02.00] copied from 3GPP 38.413 (NGAP) IEs

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\* AMFName ::= PrintableString (SIZE(1..150, ...))

-- B

-- C

Cause ::= CHOICE {

ricRequest CauseRICrequest,

ricService CauseRICservice,

e2Node CauseE2node,

transport CauseTransport,

protocol CauseProtocol,

misc CauseMisc,

...,

serviceLayer CauseServiceLayer

}

CauseE2node ::= ENUMERATED { e2node-component-unknown,

...

}

CauseMisc ::= ENUMERATED { control-processing-overload, hardware-failure,

om-intervention, unspecified,

...

}

CauseProtocol ::= ENUMERATED { transfer-syntax-error, abstract-syntax-error-reject,

abstract-syntax-error-ignore-and-notify, message-not-compatible-with-receiver-state,

semantic-error,

abstract-syntax-error-falsely-constructed-message, unspecified,

...

}

CauseRICrequest ::= ENUMERATED { ran-function-id-invalid, action-not-supported, excessive-actions,

duplicate-action, duplicate-event-trigger, function-resource-limit, request-id-unknown,

inconsistent-action-subsequent-action-sequence, control-message-invalid,

ric-call-process-id-invalid, control-timer-expired, control-failed-to-execute, system-not-ready, unspecified,

... ,

ric-subscription-end-time-expired, ric-subscription-end-time-invalid, duplicate-ric-request-id, eventTriggerNotSupported, requested-information-unavailable, invalid-information-request

}

CauseRICservice ::= ENUMERATED{ ran-function-not-supported, excessive-functions,

ric-resource-limit,

...

}

CauseServiceLayer ::= SEQUENCE { serviceLayerCause ServiceLayerCause,

...

}

CauseTransport ::= ENUMERATED { unspecified,

transport-resource-unavailable,

...

}

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

-- copied from 3GPP 38.413 (NGAP) IEs

-- note: ie-Extensions removed

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\* CriticalityDiagnostics ::= SEQUENCE {

procedureCode ProcedureCode OPTIONAL,

triggeringMessage TriggeringMessage OPTIONAL,

procedureCriticality Criticality OPTIONAL,

ricRequestorID RICrequestID OPTIONAL, iEsCriticalityDiagnostics CriticalityDiagnostics-IE-List OPTIONAL,

...

}

CriticalityDiagnostics-IE-List ::= SEQUENCE (SIZE(1..maxnoofErrors)) OF CriticalityDiagnostics-IE-Item CriticalityDiagnostics-IE-Item ::= SEQUENCE {

iECriticality Criticality,

iE-ID ProtocolIE-ID,

typeOfError TypeOfError,

...

}

-- D

-- E

-- Following IE used to carry 3GPP defined SETUP and RAN Configuration messages defined in F1AP, E1AP, XnAP, etc.

E2nodeComponentConfiguration ::= SEQUENCE{ e2nodeComponentRequestPart OCTET STRING, e2nodeComponentResponsePart OCTET STRING,

...

}

E2nodeComponentConfigurationAck ::= SEQUENCE{

updateOutcome ENUMERATED {success, failure, ...}, failureCause Cause OPTIONAL,

...

}

E2nodeComponentInterfaceType ::= ENUMERATED {ng, xn, e1, f1, w1, s1, x2,...}

E2nodeComponentID ::= CHOICE{

e2nodeComponentInterfaceTypeNG E2nodeComponentInterfaceNG, e2nodeComponentInterfaceTypeXn E2nodeComponentInterfaceXn, e2nodeComponentInterfaceTypeE1 E2nodeComponentInterfaceE1, e2nodeComponentInterfaceTypeF1 E2nodeComponentInterfaceF1, e2nodeComponentInterfaceTypeW1 E2nodeComponentInterfaceW1, e2nodeComponentInterfaceTypeS1 E2nodeComponentInterfaceS1, e2nodeComponentInterfaceTypeX2 E2nodeComponentInterfaceX2,

...

}

E2nodeComponentInterfaceE1 ::= SEQUENCE{ gNB-CU-UP-ID GNB-CU-UP-ID,

...

}

E2nodeComponentInterfaceF1 ::= SEQUENCE{ gNB-DU-ID GNB-DU-ID,

...

}

E2nodeComponentInterfaceNG ::= SEQUENCE{ amf-name AMFName,

...

}

E2nodeComponentInterfaceS1 ::= SEQUENCE{ mme-name MMEname,

...

}

E2nodeComponentInterfaceX2 ::= SEQUENCE{

global-eNB-ID GlobalENB-ID OPTIONAL, global-en-gNB-ID GlobalenGNB-ID OPTIONAL,

...

}

E2nodeComponentInterfaceXn ::= SEQUENCE{

global-NG-RAN-Node-ID GlobalNG-RANNode-ID,

...

}

E2nodeComponentInterfaceW1 ::= SEQUENCE{ ng-eNB-DU-ID NGENB-DU-ID,

...

}

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

-- copied from 3GPP 36.423 (X2AP) IEs

-- note: ie-Extensions removed

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\* ENB-ID ::= CHOICE {

macro-eNB-ID BIT STRING (SIZE (20)),

home-eNB-ID BIT STRING (SIZE (28)),

... ,

short-Macro-eNB-ID BIT STRING (SIZE(18)), long-Macro-eNB-ID BIT STRING (SIZE(21))

}

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

-- copied from 3GPP 38.423 (XnAP) IEs

-- note: choice-extension removed

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\* ENB-ID-Choice ::= CHOICE {

enb-ID-macro BIT STRING (SIZE(20)),

enb-ID-shortmacro BIT STRING (SIZE(18)), enb-ID-longmacro BIT STRING (SIZE(21)),

...

}

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

-- copied from 3GPP 36.423 (X2AP) IEs

-- note: ie-Extensions removed

-- Note: to avoid duplicate names with XnAP, GNB-ID renamed ENGNB-ID, GlobalGNB-ID renamed GlobalenGNB-ID

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\* ENGNB-ID ::= CHOICE {

gNB-ID BIT STRING (SIZE (22..32)),

...

}

-- F

-- G

GlobalE2node-ID ::= CHOICE{

gNB GlobalE2node-gNB-ID,

en-gNB GlobalE2node-en-gNB-ID,

ng-eNB GlobalE2node-ng-eNB-ID,

eNB GlobalE2node-eNB-ID,

...

}

GlobalE2node-en-gNB-ID ::= SEQUENCE{ global-en-gNB-ID GlobalenGNB-ID,

en-gNB-CU-UP-ID GNB-CU-UP-ID OPTIONAL, en-gNB-DU-ID GNB-DU-ID OPTIONAL,

...

}

GlobalE2node-eNB-ID ::= SEQUENCE{ global-eNB-ID GlobalENB-ID,

...

}

GlobalE2node-gNB-ID ::= SEQUENCE{ global-gNB-ID GlobalgNB-ID,

global-en-gNB-ID GlobalenGNB-ID OPTIONAL, gNB-CU-UP-ID GNB-CU-UP-ID OPTIONAL, gNB-DU-ID GNB-DU-ID OPTIONAL,

...

}

GlobalE2node-ng-eNB-ID ::= SEQUENCE{ global-ng-eNB-ID GlobalngeNB-ID,

global-eNB-ID GlobalENB-ID OPTIONAL, ngENB-DU-ID NGENB-DU-ID OPTIONAL,

...

}

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

-- copied from 3GPP 36.423 (X2AP) IEs

-- note: ie-Extensions removed

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

GlobalENB-ID ::= SEQUENCE {

pLMN-Identity PLMN-Identity,

eNB-ID ENB-ID,

...

}

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

-- copied from 3GPP 36.423 (X2AP) IEs

-- Note: to avoid duplicate names with XnAP, GNB-ID renamed ENGNB-ID, GlobalGNB-ID renamed GlobalenGNB-ID

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\* GlobalenGNB-ID ::= SEQUENCE {

pLMN-Identity PLMN-Identity,

gNB-ID ENGNB-ID,

...

}

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

-- copied from 3GPP 38.423 (XnAP) IEs

-- note: choice-extension removed

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\* GlobalgNB-ID ::= SEQUENCE {

plmn-id PLMN-Identity,

gnb-id GNB-ID-Choice,

...

}

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

-- copied from 3GPP 38.423 (XnAP) IEs

-- note: choice-extension removed

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\* GlobalngeNB-ID ::= SEQUENCE {

plmn-id PLMN-Identity,

enb-id ENB-ID-Choice,

...

}

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

-- [NEW for E2AP v02.00] copied from 3GPP 38.423 (XnAP) IEs

-- Note: extension field removed

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

GlobalNG-RANNode-ID ::= CHOICE {

gNB GlobalgNB-ID,

ng-eNB GlobalngeNB-ID,

...

}

GlobalRIC-ID ::= SEQUENCE{

pLMN-Identity PLMN-Identity,

ric-ID BIT STRING (SIZE (20)),

...

}

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

-- copied from 3GPP 37.483 (E1AP) IEs

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\* GNB-CU-UP-ID::= INTEGER (0..68719476735)

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

-- copied from 3GPP 38.473 (F1AP) IEs

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\* GNB-DU-ID::= INTEGER (0..68719476735)

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

-- copied from 3GPP 38.423 (XnAP) IEs

-- note: choice-extension removed

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\* GNB-ID-Choice ::= CHOICE {

gnb-ID BIT STRING (SIZE(22..32)),

...

}

-- H

-- I

-- J

-- K

-- L

ListedRecordsOnly ::= ENUMERATED {true, ...}

LoadMeasurementID ::= INTEGER(1..4095,...)

-- M

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

-- [New for E2AP v02.00] copied from 3GPP 36.413 (S1AP) IEs

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\* MMEname ::= PrintableString (SIZE (1..150,...))

-- N

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

-- copied from 3GPP 37.473 (W1AP) IEs

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\* NGENB-DU-ID ::= INTEGER (0..68719476735)

-- O

-- P

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

-- copied from 3GPP 36.423 (X2AP) IEs

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\* PLMN-Identity ::= OCTET STRING (SIZE(3))

-- Q

-- R

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

-- Following IE defined in E2SM

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\* RANfunctionDefinition ::= OCTET STRING

RANfunctionID ::= INTEGER (0..4095)

RANfunctionOID ::= PrintableString(SIZE(1..1000,...)) RANfunctionRevision ::= INTEGER (0..4095) RegistrationRequest ::= ENUMERATED{start, stop, add, ...}

ReportingPeriodicity ::= ENUMERATED{ms500, ms1000, ms2000, ms5000, ms10000, ...}

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

-- Following IE defined in E2SM

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\* RICactionDefinition ::= OCTET STRING

-- new in E2AP-v03.00

RICactionExecutionOrder ::= INTEGER (0..255, ...) RICactionID ::= INTEGER (0..255)

RICactionType ::= ENUMERATED{ report,

insert, policy,

...

}

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

-- Following IE defined in E2SM

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\* RICassistanceHeader ::= OCTET STRING

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

-- Following IE defined in E2SM

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\* RICassistanceMessage ::= OCTET STRING

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

-- Following IE defined in E2SM

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

RICassistanceOutcome ::= OCTET STRING RICassistanceSN ::=INTEGER (0..65535)

RICassistanceUpdate::= ENUMERATED{ true,

...

}

RICassistanceUpdateNumber ::=INTEGER (0..65535)

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

-- Following IE defined in E2SM

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\* RICcallProcessID ::= OCTET STRING

RICcontrolAckRequest ::= ENUMERATED{ noAck,

ack,

...

}

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

-- Following IE defined in E2SM

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\* RICcontrolHeader ::= OCTET STRING

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

-- Following IE defined in E2SM

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\* RICcontrolMessage ::= OCTET STRING

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

-- Following IE defined in E2SM

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\* RICcontrolOutcome ::= OCTET STRING

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

-- Following IE defined in E2SM

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\* RICeventTriggerDefinition ::= OCTET STRING

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

-- Following IE defined in E2SM

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\* RICindicationHeader ::= OCTET STRING

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

-- Following IE defined in E2SM

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\* RICindicationMessage ::= OCTET STRING

RICindicationSN ::= INTEGER (0..65535)

RICindicationType ::= ENUMERATED{ report,

insert,

...

}

RICloadConfirm ::= ENUMERATED{ true,

...

}

RICloadInformation ::= SEQUENCE{

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| loadStatus | ENUMERATED{overload, notoverload, ...} | OPTIONAL, |
| loadEstimate | INTEGER (0..100) | OPTIONAL, |
| ... |  |  |
| } |  |  |

</div>

RICloadRequest ::= ENUMERATED{ true,

...

}

RICrequestID ::= SEQUENCE {

ricRequestorID INTEGER (0..65535),

ricInstanceID INTEGER (0..65535),

...

}

RICserviceLoadConfirm ::= SEQUENCE{

ricServiceReportLoadConfirm RICloadConfirm OPTIONAL, ricServiceInsertLoadConfirm RICloadConfirm OPTIONAL, ricServiceControlLoadConfirm RICloadConfirm OPTIONAL, ricServicePolicyLoadConfirm RICloadConfirm OPTIONAL, ricServiceQueryLoadConfirm RICloadConfirm OPTIONAL,

...

}

RICserviceLoadInformation ::= SEQUENCE{ ricServiceReportLoadInformation RICloadInformation OPTIONAL, ricServiceInsertLoadInformation RICloadInformation OPTIONAL, ricServiceControlLoadInformation RICloadInformation OPTIONAL, ricServicePolicyLoadInformation RICloadInformation OPTIONAL, ricServiceQueryLoadInformation RICloadInformation OPTIONAL,

...

}

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| RICserviceLoadRequest ::= SEQUENCE{ |  | |
| ricServiceReportLoadRequest | RICloadRequest | OPTIONAL, |
| ricServiceInsertLoadRequest | RICloadRequest | OPTIONAL, |
| ricServiceControlLoadRequest | RICloadRequest | OPTIONAL, |
| ricServicePolicyLoadRequest | RICloadRequest | OPTIONAL, |
| ricServiceQueryLoadRequest | RICloadRequest | OPTIONAL, |
| ... |  |  |

</div>

}

RICsubscriptionTime ::= OCTET STRING (SIZE(8))

RICsubsequentAction ::=SEQUENCE{

ricSubsequentActionType RICsubsequentActionType, ricTimeToWait RICtimeToWait,

...

}

RICsubscriptionAuditFlag ::= SEQUENCE{

listedRecordsOnly ListedRecordsOnly OPTIONAL,

...

}

RICsubsequentActionType ::= ENUMERATED{ continue,

wait,

...

}

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

-- Following IE defined in E2SM

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\* RICqueryHeader ::= OCTET STRING

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

-- Following IE defined in E2SM

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\* RICqueryDefinition ::= OCTET STRING

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

-- Following IE defined in E2SM

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

RICqueryOutcome ::= OCTET STRING RICtimeToWait ::= ENUMERATED{

w1ms, w2ms, w5ms, w10ms, w20ms, w30ms, w40ms, w50ms, w100ms, w200ms, w500ms, w1s, w2s, w5s, w10s, w20s, w60s,

...

}

-- S

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

-- Following IE defined in E2SM

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\* ServiceLayerCause ::= OCTET STRING

-- T

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

-- copied from 3GPP 38.413 (NGAP) IEs

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\* TimeToWait ::= ENUMERATED {v1s, v2s, v5s, v10s, v20s, v60s, ...}

TNLinformation ::= SEQUENCE{

tnlAddress BIT STRING (SIZE(1..160,...)), tnlPort BIT STRING (SIZE(16)) OPTIONAL,

...

}

TNLusage ::= ENUMERATED{ric-service, support-function, both, ...} TransactionID ::= INTEGER (0..255,...)

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

-- copied from 3GPP 38.413 (NGAP) IEs

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\* TypeOfError ::= ENUMERATED {

not-understood, missing,

...

}

-- U

-- V

-- W

-- X

-- Y

-- Z

END

-- ASN1STOP

### Common definitions

-- ASN1START

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

--

-- Common definitions

-- Derived from 3GPP 38.413 (NGAP)

--

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

E2AP-CommonDataTypes {

iso(1) identified-organization(3) dod(6) internet(1) private(4) enterprise(1) 53148 e2(1) version2 (2) e2ap(1) e2ap-CommonDataTypes (3) }

DEFINITIONS AUTOMATIC TAGS ::= BEGIN

Criticality ::= ENUMERATED { reject, ignore, notify }

Presence ::= ENUMERATED { optional, conditional, mandatory } ProcedureCode ::= INTEGER (0..255)

ProtocolIE-ID ::= INTEGER (0..65535)

TriggeringMessage ::= ENUMERATED { initiating-message, successful-outcome, unsuccessfull-outcome } END

-- ASN1STOP

### Constant definitions

-- ASN1START

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

--

-- Constant definitions

--

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

E2AP-Constants {

iso(1) identified-organization(3) dod(6) internet(1) private(4) enterprise(1) 53148 e2(1) version2 (2) e2ap(1) e2ap-Constants (4) }

DEFINITIONS AUTOMATIC TAGS ::= BEGIN

IMPORTS

ProcedureCode, ProtocolIE-ID

FROM E2AP-CommonDataTypes;

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

--

-- Elementary Procedures

--

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| id-E2setup | ProcedureCode | ::= | 1 |
| id-ErrorIndication | ProcedureCode | ::= | 2 |
| id-Reset | ProcedureCode | ::= | 3 |
| id-RICcontrol | ProcedureCode | ::= | 4 |
| id-RICindication | ProcedureCode | ::= | 5 |
| id-RICserviceQuery | ProcedureCode | ::= | 6 |
| id-RICserviceUpdate | ProcedureCode | ::= | 7 |
| id-RICsubscription | ProcedureCode | ::= | 8 |
| id-RICsubscriptionDelete | ProcedureCode | ::= | 9 |
| id-E2nodeConfigurationUpdate | ProcedureCode | ::= | 10 |
| id-E2connectionUpdate | ProcedureCode | ::= | 11 |
| id-RICsubscriptionDeleteRequired | ProcedureCode | ::= | 12 |
| id-E2removal | ProcedureCode | ::= | 13 |
| id-RICsubscriptionModification | ProcedureCode | ::= | 14 |
| id-RICsubscriptionModificationRequired | ProcedureCode | ::= | 15 |

</div>

id-RICquery ProcedureCode ::= 16

id-RICsubscriptionAudit ProcedureCode ::= 17

id-RICserviceLoadStatus ProcedureCode ::= 18

id-RICserviceLoadUpdate ProcedureCode ::= 19

id-RICsubscriptionStateControl ProcedureCode ::= 20

id-RICassistance ProcedureCode ::= 21

id-RICassistanceIndication ProcedureCode ::= 22

id-RICassistanceHalt ProcedureCode ::= 23

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

--

-- Extension constants

--

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\* maxProtocolIEs INTEGER ::= 65535

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

--

-- Lists

--

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\* maxnoofErrors INTEGER ::= 256

maxofE2nodeComponents INTEGER ::= 1024

maxofRANfunctionID INTEGER ::= 256

maxofRICactionID INTEGER ::= 16

maxofTNLA INTEGER ::= 32

maxofRICrequestID INTEGER ::= 1024

maxofRICsubscriptions INTEGER ::= 2147483648

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

--

-- IEs

--

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| id-Cause | ProtocolIE-ID | ::= | 1 |
| id-CriticalityDiagnostics | ProtocolIE-ID | ::= | 2 |
| id-GlobalE2node-ID | ProtocolIE-ID | ::= | 3 |
| id-GlobalRIC-ID | ProtocolIE-ID | ::= | 4 |
| id-RANfunctionID | ProtocolIE-ID | ::= | 5 |
| id-RANfunctionID-Item | ProtocolIE-ID | ::= | 6 |
| id-RANfunctionIEcause-Item | ProtocolIE-ID | ::= | 7 |
| id-RANfunction-Item | ProtocolIE-ID | ::= | 8 |
| id-RANfunctionsAccepted | ProtocolIE-ID | ::= | 9 |
| id-RANfunctionsAdded | ProtocolIE-ID | ::= | 10 |
| id-RANfunctionsDeleted | ProtocolIE-ID | ::= | 11 |
| id-RANfunctionsModified | ProtocolIE-ID | ::= | 12 |
| id-RANfunctionsRejected | ProtocolIE-ID | ::= | 13 |
| id-RICaction-Admitted-Item | ProtocolIE-ID | ::= | 14 |
| id-RICactionID | ProtocolIE-ID | ::= | 15 |
| id-RICaction-NotAdmitted-Item | ProtocolIE-ID | ::= | 16 |
| id-RICactions-Admitted | ProtocolIE-ID | ::= | 17 |
| id-RICactions-NotAdmitted | ProtocolIE-ID | ::= | 18 |
| id-RICaction-ToBeSetup-Item | ProtocolIE-ID | ::= | 19 |
| id-RICcallProcessID | ProtocolIE-ID | ::= | 20 |
| id-RICcontrolAckRequest | ProtocolIE-ID | ::= | 21 |
| id-RICcontrolHeader | ProtocolIE-ID | ::= | 22 |
| id-RICcontrolMessage | ProtocolIE-ID | ::= | 23 |
| id-RICcontrolStatus | ProtocolIE-ID | ::= | 24 |
| id-RICindicationHeader | ProtocolIE-ID | ::= | 25 |
| id-RICindicationMessage | ProtocolIE-ID | ::= | 26 |
| id-RICindicationSN | ProtocolIE-ID | ::= | 27 |
| id-RICindicationType | ProtocolIE-ID | ::= | 28 |
| id-RICrequestID | ProtocolIE-ID | ::= | 29 |
| id-RICsubscriptionDetails | ProtocolIE-ID | ::= | 30 |
| id-TimeToWait | ProtocolIE-ID | ::= | 31 |
| id-RICcontrolOutcome | ProtocolIE-ID | ::= | 32 |
| id-E2nodeComponentConfigUpdate | ProtocolIE-ID | ::= | 33 |
| id-E2nodeComponentConfigUpdate-Item | ProtocolIE-ID | ::= | 34 |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| id-E2nodeComponentConfigUpdateAck | ProtocolIE-ID | ::= | 35 |
| id-E2nodeComponentConfigUpdateAck-Item | ProtocolIE-ID | ::= | 36 |
| id-E2connectionSetup | ProtocolIE-ID | ::= | 39 |
| id-E2connectionSetupFailed | ProtocolIE-ID | ::= | 40 |
| id-E2connectionSetupFailed-Item | ProtocolIE-ID | ::= | 41 |
| id-E2connectionFailed-Item | ProtocolIE-ID | ::= | 42 |
| id-E2connectionUpdate-Item | ProtocolIE-ID | ::= | 43 |
| id-E2connectionUpdateAdd | ProtocolIE-ID | ::= | 44 |
| id-E2connectionUpdateModify | ProtocolIE-ID | ::= | 45 |
| id-E2connectionUpdateRemove | ProtocolIE-ID | ::= | 46 |
| id-E2connectionUpdateRemove-Item | ProtocolIE-ID | ::= | 47 |
| id-TNLinformation | ProtocolIE-ID | ::= | 48 |
| id-TransactionID | ProtocolIE-ID | ::= | 49 |
| id-E2nodeComponentConfigAddition | ProtocolIE-ID | ::= | 50 |
| id-E2nodeComponentConfigAddition-Item | ProtocolIE-ID | ::= | 51 |
| id-E2nodeComponentConfigAdditionAck | ProtocolIE-ID | ::= | 52 |
| id-E2nodeComponentConfigAdditionAck-Item | ProtocolIE-ID | ::= | 53 |
| id-E2nodeComponentConfigRemoval | ProtocolIE-ID | ::= | 54 |
| id-E2nodeComponentConfigRemoval-Item | ProtocolIE-ID | ::= | 55 |
| id-E2nodeComponentConfigRemovalAck | ProtocolIE-ID | ::= | 56 |
| id-E2nodeComponentConfigRemovalAck-Item | ProtocolIE-ID | ::= | 57 |
| id-E2nodeTNLassociationRemoval | ProtocolIE-ID | ::= | 58 |
| id-E2nodeTNLassociationRemoval-Item | ProtocolIE-ID | ::= | 59 |
| id-RICsubscriptionToBeRemoved | ProtocolIE-ID | ::= | 60 |
| id-RICsubscription-withCause-Item | ProtocolIE-ID | ::= | 61 |
| id-RICsubscriptionStartTime | ProtocolIE-ID | ::= | 62 |
| id-RICsubscriptionEndTime | ProtocolIE-ID | ::= | 63 |
| id-RICeventTriggerDefinitionToBeModified | ProtocolIE-ID | ::= | 64 |
| id-RICactionsToBeRemovedForModification-List | ProtocolIE-ID | ::= | 65 |
| id-RICaction-ToBeRemovedForModification-Item | ProtocolIE-ID | ::= | 66 |
| id-RICactionsToBeModifiedForModification-List | ProtocolIE-ID | ::= | 67 |
| id-RICaction-ToBeModifiedForModification-Item | ProtocolIE-ID | ::= | 68 |
| id-RICactionsToBeAddedForModification-List | ProtocolIE-ID | ::= | 69 |
| id-RICaction-ToBeAddedForModification-Item | ProtocolIE-ID | ::= | 70 |
| id-RICactionsRemovedForModification-List | ProtocolIE-ID | ::= | 71 |
| id-RICaction-RemovedForModification-Item | ProtocolIE-ID | ::= | 72 |
| id-RICactionsFailedToBeRemovedForModification-List | ProtocolIE-ID | ::= | 73 |
| id-RICaction-FailedToBeRemovedForModification-Item | ProtocolIE-ID | ::= | 74 |
| id-RICactionsModifiedForModification-List | ProtocolIE-ID | ::= | 75 |
| id-RICaction-ModifiedForModification-Item | ProtocolIE-ID | ::= | 76 |
| id-RICactionsFailedToBeModifiedForModification-List | ProtocolIE-ID | ::= | 77 |
| id-RICaction-FailedToBeModifiedForModification-Item | ProtocolIE-ID | ::= | 78 |
| id-RICactionsAddedForModification-List | ProtocolIE-ID | ::= | 79 |
| id-RICaction-AddedForModification-Item | ProtocolIE-ID | ::= | 80 |
| id-RICactionsFailedToBeAddedForModification-List | ProtocolIE-ID | ::= | 81 |
| id-RICaction-FailedToBeAddedForModification-Item | ProtocolIE-ID | ::= | 82 |
| id-RICactionsRequiredToBeModified-List | ProtocolIE-ID | ::= | 83 |
| id-RICaction-RequiredToBeModified-Item | ProtocolIE-ID | ::= | 84 |
| id-RICactionsRequiredToBeRemoved-List | ProtocolIE-ID | ::= | 85 |
| id-RICaction-RequiredToBeRemoved-Item | ProtocolIE-ID | ::= | 86 |
| id-RICactionsConfirmedForModification-List | ProtocolIE-ID | ::= | 87 |
| id-RICaction-ConfirmedForModification-Item | ProtocolIE-ID | ::= | 88 |
| id-RICactionsRefusedToBeModified-List | ProtocolIE-ID | ::= | 89 |
| id-RICaction-RefusedToBeModified-Item | ProtocolIE-ID | ::= | 90 |
| id-RICactionsConfirmedForRemoval-List | ProtocolIE-ID | ::= | 91 |
| id-RICaction-ConfirmedForRemoval-Item | ProtocolIE-ID | ::= | 92 |
| id-RICactionsRefusedToBeRemoved-List | ProtocolIE-ID | ::= | 93 |
| id-RICaction-RefusedToBeRemoved-Item | ProtocolIE-ID | ::= | 94 |
| id-RICqueryHeader | ProtocolIE-ID | ::= | 95 |
| id-RICqueryDefinition | ProtocolIE-ID | ::= | 96 |
| id-RICqueryOutcome | ProtocolIE-ID | ::= | 97 |
| id-RICsubscriptionAuditFlag | ProtocolIE-ID | ::= | 98 |
| id-RICsubscriptionAuditList | ProtocolIE-ID | ::= | 99 |
| id-RICsubscriptionAudit-Item | ProtocolIE-ID | ::= | 100 |
| id-RICsubscriptionAuditAction-Item | ProtocolIE-ID | ::= | 101 |
| id-RICsubscriptionAuditConfirmedList | ProtocolIE-ID | ::= | 102 |
| id-RICsubscriptionAuditMissingList | ProtocolIE-ID | ::= | 103 |
| id-RICsubscriptionAuditUnkownList | ProtocolIE-ID | ::= | 104 |
| id-E2nodeLoadMeasurementID | ProtocolIE-ID | ::= | 105 |
| id-RANfunctionLoad-Item | ProtocolIE-ID | ::= | 106 |
| id-RANfunctionLoad-List | ProtocolIE-ID | ::= | 107 |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| id-RANfunctionLoadConfirm-Item | ProtocolIE-ID | ::= | 108 |
| id-RANfunctionLoadConfirm-List | ProtocolIE-ID | ::= | 109 |
| id-RANfunctionLoadRequest-Item | ProtocolIE-ID | ::= | 110 |
| id-RANfunctionLoadRequest-List | ProtocolIE-ID | ::= | 111 |
| id-RegistrationRequest | ProtocolIE-ID | ::= | 112 |
| id-ReportingPeriodicity | ProtocolIE-ID | ::= | 113 |
| id-RICactionLoad-Item | ProtocolIE-ID | ::= | 114 |
| id-RICactionLoadConfirm-Item | ProtocolIE-ID | ::= | 115 |
| id-RICactionLoadRequest-Item | ProtocolIE-ID | ::= | 116 |
| id-RICloadMeasurementID | ProtocolIE-ID | ::= | 117 |
| id-RICsubscriptionLoad-Item | ProtocolIE-ID | ::= | 118 |
| id-RICsubscriptionLoadConfirm-Item | ProtocolIE-ID | ::= | 119 |
| id-RICsubscriptionLoadRequest-Item | ProtocolIE-ID | ::= | 120 |
| id-RANfunctionStateConfirm-Item | ProtocolIE-ID | ::= | 121 |
| id-RANfunctionStateConfirm-List | ProtocolIE-ID | ::= | 122 |
| id-RANfunctionStateControl-Item | ProtocolIE-ID | ::= | 123 |
| id-RANfunctionStateControl-List | ProtocolIE-ID | ::= | 124 |
| id-RICactionList-Item | ProtocolIE-ID | ::= | 125 |
| id-RICsubscriptionList-Item | ProtocolIE-ID | ::= | 126 |
| id-RICassistanceHeader | ProtocolIE-ID | ::= | 127 |
| id-RICassistanceMessage | ProtocolIE-ID | ::= | 128 |
| id-RICassistanceOutcome | ProtocolIE-ID | ::= | 129 |
| id-RICassistanceSN | ProtocolIE-ID | ::= | 130 |
| id-RICassistanceUpdate | ProtocolIE-ID | ::= | 131 |
| id-RICassistanceUpdateNumber | ProtocolIE-ID | ::= | 132 |
| END |  |  |  |
| -- ASN1STOP |  |  |  |

</div>

### Container definitions

-- ASN1START

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

--

-- Container definitions

--

-- derived from 3GPP 38.413 (NGAP)

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

E2AP-Containers {

iso(1) identified-organization(3) dod(6) internet(1) private(4) enterprise(1) 53148 e2(1) version2 (2) e2ap(1) e2ap-Containers (5) }

DEFINITIONS AUTOMATIC TAGS ::= BEGIN

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

--

-- IE parameter types from other modules.

--

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\* IMPORTS

Criticality, Presence, ProtocolIE-ID

FROM E2AP-CommonDataTypes

maxProtocolIEs FROM E2AP-Constants;

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

--

-- Class Definition for Protocol IEs

--

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

E2AP-PROTOCOL-IES ::= CLASS {

&id ProtocolIE-ID UNIQUE,

&criticality Criticality, &Value,

&presence Presence

}

WITH SYNTAX {

ID &id

CRITICALITY &criticality TYPE &Value

PRESENCE &presence

}

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

--

-- Class Definition for Protocol IEs

--

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

E2AP-PROTOCOL-IES-PAIR ::= CLASS {

&id ProtocolIE-ID UNIQUE, &firstCriticality Criticality,

&FirstValue,

&secondCriticality Criticality, &SecondValue,

&presence Presence

}

WITH SYNTAX {

ID &id

FIRST CRITICALITY &firstCriticality FIRST TYPE &FirstValue

SECOND CRITICALITY &secondCriticality SECOND TYPE &SecondValue

PRESENCE &presence

}

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

--

-- Container for Protocol IEs

--

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

ProtocolIE-Container {E2AP-PROTOCOL-IES : IEsSetParam} ::= SEQUENCE (SIZE (0..maxProtocolIEs)) OF

ProtocolIE-Field { {IEsSetParam} }

ProtocolIE-SingleContainer {E2AP-PROTOCOL-IES : IEsSetParam} ::= ProtocolIE-Field { {IEsSetParam} }

ProtocolIE-Field {E2AP-PROTOCOL-IES : IEsSetParam} ::= SEQUENCE {

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| id | E2AP-PROTOCOL-IES.&id | ({IEsSetParam}), |
| criticality | E2AP-PROTOCOL-IES.&criticality | ({IEsSetParam}{@id}), |
| value | E2AP-PROTOCOL-IES.&Value | ({IEsSetParam}{@id}) |
| } |  |  |

</div>

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

--

-- Container for Protocol IE Pairs

--

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

ProtocolIE-ContainerPair {E2AP-PROTOCOL-IES-PAIR : IEsSetParam} ::= SEQUENCE (SIZE (0..maxProtocolIEs)) OF

ProtocolIE-FieldPair { {IEsSetParam} }

ProtocolIE-FieldPair {E2AP-PROTOCOL-IES-PAIR : IEsSetParam} ::= SEQUENCE {

id E2AP-PROTOCOL-IES-PAIR.&id ({IEsSetParam}),

firstCriticality E2AP-PROTOCOL-IES-PAIR.&firstCriticality ({IEsSetParam}{@id}), firstValue E2AP-PROTOCOL-IES-PAIR.&FirstValue ({IEsSetParam}{@id}), secondCriticality E2AP-PROTOCOL-IES-PAIR.&secondCriticality ({IEsSetParam}{@id}),

secondValue E2AP-PROTOCOL-IES-PAIR.&SecondValue ({IEsSetParam}{@id})

}

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

--

-- Container Lists for Protocol IE Containers

--

-- \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

ProtocolIE-ContainerList {INTEGER : lowerBound, INTEGER : upperBound, E2AP-PROTOCOL-IES : IEsSetParam} ::= SEQUENCE (SIZE (lowerBound..upperBound)) OF

ProtocolIE-SingleContainer { {IEsSetParam} }

ProtocolIE-ContainerPairList {INTEGER : lowerBound, INTEGER : upperBound, E2AP-PROTOCOL-IES-PAIR : IEsSetParam} ::=

SEQUENCE (SIZE (lowerBound..upperBound)) OF ProtocolIE-ContainerPair { {IEsSetParam} }

END

-- ASN1STOP

## Message transfer syntax

E2AP shall use the ASN.1 Basic Packed Encoding Rules (BASIC-PER) Aligned Variant as transfer syntax, as specified in Recommendation ITU-T X.691 [15].

## Timers

The following Timers are defined for use over the E2 interface in Near-RT RIC and E2 Node. TRICEVENTcreate

* Specifies the maximum time for the RIC Subscription procedure in the Near-RT RIC. TRICEVENTdelete
* Specifies the maximum time for the RIC Subscription Deletion procedure in the Near-RT RIC. TRICEVENTmodify
* Specifies the maximum time for the RIC Subscription Modification procedure in the Near-RT RIC. TRICcontrol
* Specifies the maximum time for the RIC Control procedure in the Near-RT RIC. TRICquery
* Specifies the maximum time for the RIC Query procedure in the Near-RT RIC.

# Handling of unknown, unforeseen and erroneous protocol data

Clause 10 of 3GPP TS 36.413 [24] is applicable for the purposes of the present document.

# Annex (informative): Change History

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Date** | **Revision** | **Description** |
| **2020.01.22** | **01.00.00** | **Specification renamed v01.00.00 for approval** |
| **2020.01.28** | **01.00.00** | **Initial version** |
|  |  |  |
| 2020.07.08 | 01.00.01 | Addition of CR adopted during meeting #60 |
| 2020.07.13 | 01.00.02 | ASN.1 corrections, Table correction to align with ASN.1 |
| **2020.07.15** | **01.01** | **Editorial and functional corrections** |
|  |  |  |
| 2021.01.13 | 02.00.01 | Addition of CR <RSY-2021.01.13-WG3-CR-0001-E2AP Spec v1.01 Corrections-v14>  agreed at WG3#80 meeting, plus editorial corrections |
| 2021.04.21 | 02.00.02 | Addition of CRs  <NOK-2021.03.02-WG3-E2AP-CR-0002-TNLA removal-v01.docx > agreed at WG3#88  <NOK.AO-2021.01.26-WG3-CR-0001-E2AP-RANconfig-v04.docx> agreed at WG3#94 |
| 2021.05.27 | 02.00.03 | Addition of CR  <INT-2021.05.26-WG3-CR-0005-E2AP-RICsubs\_delete.docx> agreed at WG3#99. Endorsed WG3#100 |
| 2021.06.09 | 02.00.04 | Addition of CR: < NOK.AO-2021.05.26-WG3-CR-0003-E2AP-RIC control-v01> agreed at WG3#100  Re-implementation of part of <NOK.AO-2021.01.26-WG3-CR-0001-E2AP-RANconfig-  v04.docx> agreed at WG3#94 correcting error introduced in v02.00.02 |
| 2021.07.11 | 02.00.05 | NOK-2021-06-09.WG3.CR-0004-E2AP-v02.00.04editorials-v01 |
| **2021.08.10** | **02.00** | **New features: RIC Subscription Delete, TNLA Removal. Corrections to all RIC**  **service procedures. Change to ASN.1 version** |
|  |  |  |
| 2021.09.20 | 02.01.00 | Addition of CR < NOK-2021.09.01-WG3-CR-0006-E2APv2.0-errata9.3.7-v01 > |
| 2021.11.02 | 02.01.01 | Addition of CR <SAM-2021.10.19-WG3-CR-0001-E2AP\_E2Removal-v03 > approved WG3#117  Aligned format for July21 publication changes |
| 2021.11.22 | 02.01.02 | Corrections based on E2APv02.01 WG3 approval review process |
| **2022.02.07** | **02.01** | **New feature: E2 removal. Editorial and functional corrections** |
|  |  |  |
| 2022.02.08 | 02.02.01 | Addition of CR < NOK.AO-2022.01.05-WG3-CR-0008-E2AP-Global-gNB-ID-v01 >  approved at WG3#127 |
| 2022.03.25 | 02.02.02 | Addition of CRs approved at WG3#134  < NOK.AO-2022.02.21-WG3-CR-0010-E2AP-RIC Service Query clarification-v01>  < NEC-2022.02.28-WG3-CR-0002-E2AP- RIC CONTROL FAILURE -v03>  < NOK.AO-2022.03.03-WG3-CR-0012-E2AP-RIC Service Update Ack clarification-v02>  < NOK-2022.01.03-WG3-CR-0011-E2AP-Reducing MAX limits-v02> approved at WG3#137  Note: This version contains non-backward compatible change with respect to v02.01  impacting RIC Subscription Delete Required message |
| 2022.04.04 | 02.02.03 | Editorial changes based on remarks during WG3 approval |
| **2022.06.29** | **02.02** | **Clarification to RIC Service Update, RIC Control. Editorial and functional**  **corrections** |
|  |  |  |
| 2022.06.20 | 02.02.04 | Addition of CR < NOK.AO-2022.05.24-WG3-CR-0013-E2AP-EditorialCorrections-v02 > |
| 2022.07.15 | 02.02.05 | Addition of <NOK.AO-2022.06.24-WG3-CR-0015-E2AP-RIC Service Update Ack  (ASN.1)-v03> |
| **2022.07.20** | **02.03** | **Editorial and functional corrections** |
|  |  |  |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Date** | **Revision** | **Description** |
| 2022.11.02 | 02.03.01 | Addition of CR:  < NOK.AO-2022.09.02-WG3-CR-0017-E2AP-RIC Subscription duration limit-v06 >  < NOK-2022.09.01-WG3-CR-0016-E2AP-E1AP reference correction-v03 >, error in CR corrected (ref [21] should be 37.483)  n f "sk n s " ll l n M s RAN look |
| 2022.11.10 | 02.03.02 | Editorial changes:   * Correction to ASN.1 (correcting error in E2APv02.03.01) * Rearrangement of Table 8.1-1: Class 1 Elementary Procedures * Added missing Timer definitions   Addition of CRs:  < NOK-2022.06.21-WG3-CR-0014-E2AP-RIC subscription handling improvements-v06>, error in CR corrected (ASN.1 for Cause value aligned to name in 9.2.1)  < MAV.AO-2022.03.03.WG3-CR-0014.E2AP 02.03 RIC\_Subscription\_Modification procedure-v15>  <QCM.AO-2022.09.08-WG3-CR-0002-E2AP-RIC\_Query\_Procedure\_v11>, error in CR  corrected (ASN.1 for Cause value aligned to name in 9.2.1) |
| 2022.11.16 | 02.03.03 | Changes reflecting remarks received during WG3 approval process   * Alignment to latest O-RAN template * Added R003 to file name * Updated copyright year * m " n y " f m bs n M f n l gn w h l   submitted revised CR (impacts 8.2.5, 9.1.1.11, 9.3.4)   * Corrected errors in CRs implemented in previous drafts   - .1 l b l "g -CU-CP- " "g -CU-UP- " n s n 9.3.5 |
| **2022.12.07** | **03.00** | **New features: RIC Subscription Modification, RIC Query. Clarifications to RIC**  **Subscription. Editorial and functional corrections** |
|  |  |  |
| 2023.01.27 | 03.00.01 | CR < NOK-2023.01.09-WG3-CR-0019-E2AP-PAS step1-v01 > approved WG3#171 |
| 2023.02.16 | 03.00.02 | CR <NOK-2023.02.15-WG3-CR-0020-E2AP-PAS step2-v02> approved Prague F2F  16/2/2023 |
| 2023.03.17 | 03.00.03 | CR <NOK-2023.03.13-WG3-CR-0021-E2AP-PAS step3-v4> approved by  correspondence after WG3#176 |
| 2023.03.24 | 03.00.04 | Inclusion of corrections agreed during WG3 approval process as per < O-  RAN.WG3.E2AP-R003-v03.00.03-approvalChanges-v3 > |
| **2023.03.24** | **03.01** | **Alignment of O-RAN Drafting Rules (ODR) in preparation for ETSI PAS submission** |
|  |  |  |
| 2023.05.15 | 03.01.01 | CR <NOK-2023.04.28-WG3-CR-0022-E2AP-Correction to clause 2.1-v01> approved  WG3#183 |
| 2023.06.27 | 03.01.02 | CR <NOK-2023.05.26-WG3-CR-0024-E2AP-Critical ASN.1 correction-v01> approved  WG3#189 |
| 2023.07.11 | 03.01.03 | CR <SAM.AO-2023.05.10-WG3-CR-0001-E2AP-E2 Nod Component Configuration-v04>  approved WG3#189 |
| 2023.07.26 | 03.01.04 | Editorial corrections based on comments received during WG3 poll. |
| 2023.07.28 | 03.01.05 | Editorial changes to align to O-RAN TS template v01.01 |
| **2023.07.28** | **04.00** | **Clarification on E2 Node components configuration. Editorial and functional**  **corrections** |
|  |  |  |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Date** | **Revision** | **Description** |
| 2023.10.04 | 04.00.01 | CR <NOK.AO-2023.05.22-WG3-CR-0023-E2AP-SubscriptionAudit-v10.docx> approved  WG3#201 and editorial corrections to figure title text. |
| 2023.11.15 | 04.00.02 | Editorial corrections implementing WG3 voting period feedback |
| 2023.11.21 | 04.00.03 | Restored full revision history into Annex: Change History and deletion of Annex: History |
| **2023.11.21** | **05.00** | **New feature: RIC Subscription Audit. Editorial and functional corrections** |
|  |  |  |
| 2024.02.29 | 05.00.01 | CR <NOK-2023.11.24-WG3-CR-0025-E2AP-Cleanup-v01> approved WG3#207  CR <NOK-2024.02.13-WG3-CR-0026-E2AP-Change history-v01> approved F2F Athens |
| 2024.05.22 | 05.00.02 | CR < NOK-2024.04.09-WG3-CR-0027-E2AP-Editorial corrections for PAS-step4-v04> approved WG3#225  ls n l s l h ng s l gn w h " l " h ng s ng  processing of v04.00 |
| 2024.06.21 | 05.00.03 | CR <NOK-2025.06.04-E2AP-CR-0028-Clause 8.2.1.3 inconsistency term-v01> approved WG3 Incheon F2F  CR <NOK-2025.06.04-E2AP-CR-0029-Clause 8.2.3.2 changes for PAS-v01> approved WG3 Incheon F2F  CR < NOK-2025.06.04-E2AP-CR-0030-Clause 8.2.5.3+8.2.6.3 changes for PAS-v02 >  approved WG3 Incheon F2F  CR <NOK-2025.06.04-E2AP-CR-0031-Clause 8.2.7.3 changes for PAS-v01> approved WG3 Incheon F2F  CR <NOK-2025.06.19-E2AP-CR-0032-Splitting Clause 8.3.4 RIC Service Update-v01>  approved WG3#230 |
| 2024.07.26 | 05.00.04 | Editorial corrections implementing review comments collected during July24 train  approval |
| **2024.07.26** | **06.00** | **Alignment to ETSI Drafting Rules and implementation of all agreed ETSI PAS**  **comments** |
|  |  |  |
| 2024.10.09 | 06.00.01 | CR <NOK-2024.09.27-E2AP-CR-0034-EditHelp alignment-v1> approved WG3#241 |
| 2024.11.22 | 06.00.02 | Editorial changes to align with O-RAN WORKPROC v04.00  CR <NOK-2024.10.23-WG3-CR-0036-E2AP-Handling LS from MSG-v04> approved F2F  Montreal  CR < NOK-2024.10.1-E2AP-CR-0035-ErrorHandling added in Cause - v06> approved WG3 ArchTG#113  CR <NOK.AO-2024.09.16-WG3-CR-0033-E2AP-E2 Overload-v05> approved WG3 ArchTG#113  CR < NOK.AO-2024.09.16-WG3-CR-0037-E2AP-RIC Subscription State Control-v4> approved WG3 ArchTG#113  CR < NOK-2024.11.13-WG3-CR-0039-E2AP-Clause 9.3.1 correction-v1> approved WG3#245  CR < NOK-2024.11.08-E2AP-CR-0038-RIC Assistance-v06> approved WG3#245  Editorial corrections to clause 9.2 and ASN.1 |
| 2024.12.03 | 06.00.03 | CR <LGE-2024.10.25-WG3-CR-0002-E2AP-Correction\_RICaudit\_v01> approved F2F Montreal  Editorial corrections implementing comments received during Nov24 train approval  process |
| **2024.12.04** | **07.00** | **New features: RIC Subscription State Control, RIC Assistance, Service Level error**  **handling. Implementation of changes related to ETSI MSG Liaison** |
|  |  |  |

</div>
---

- View in [GitHub Mode]({{site.github_page_url}}/O-RAN.WG3.TS.E2AP-R004-v07.00.docx.md).
- Go back to [Table of Contents]({{site.baseurl}}/).
- Download the [Original Document]({{site.download_url}}/O-RAN.WG3.TS.E2AP-R004-v07.00.docx).
