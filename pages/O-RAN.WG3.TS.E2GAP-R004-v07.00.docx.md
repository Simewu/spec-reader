## O-RAN.WG3.TS.E2GAP-R004-v07.00.docx

- View in [Reader Mode](https://simewu.com/spec-reader/pages/10-WG3/O-RAN.WG3.TS.E2GAP-R004-v07.00.docx).
- Go back to [Table of Contents](../README.md).
- Download the [Original Document](https://github.com/Simewu/spec-reader/raw/refs/heads/main/documents/O-RAN.WG3.TS.E2GAP-R004-v07.00.docx).

---

![webwxgetmsgimg (7).jpeg](../assets/images/28e22da37450.jpg)O-RAN.WG3.TS.E2GAP-R004-v07.00

*Technical Specification*

**O-RAN Work Group 3 (Near-RT RIC and E2 Interface) E2 General Aspects and Principles (E2GAP)**

Copyright (C) 2025 by the O-RAN ALLIANCE e.V.

The copying or incorporation into any other work of part or all of the material available in this specification in any form without the prior written permission of O-RAN ALLIANCE e.V. is prohibited, save that you may print or download extracts of the material of this specification for your personal use, or copy the material of this specification for the purpose of sending to individual third parties for their information provided that you acknowledge O-RAN ALLIANCE as the source of the material and that you inform the third party that these conditions apply to them and that they must comply with them.

O-RAN ALLIANCE e.V., Buschkauler Weg 27, 53347 Alfter, Germany Register of Associations, Bonn VR 11238, VAT ID DE321720189

"(C) 2020. 3GPP(TM) TSs and TRs are the property of ARIB, ATIS, CCSA, ETSI, TSDSI, TTA and TTC who jointly own the copyright in them. They are subject to further modifications and are therefore provided to you "as is" for information purposes only. Further use is strictly prohibited."

Contents

List of figures 5

List of tables 5

Foreword 6

Modal verbs terminology 6

1. Scope 7
2. References 7
   1. Normative references 7
   2. Informative references 8
3. Definition of terms, symbols and abbreviations 8
   1. Terms 8
   2. Symbols 8
   3. Abbreviations 9
4. E2 interface architecture 9
   1. General architecture principles 9
   2. O-RAN architecture considerations 9
5. E2 interface 11
   1. E2 interface requirements and general principles 11
      1. E2 interface requirements 11
      2. E2 interface general principles 11
   2. E2 interface specification objectives 12
   3. Functions of the E2 interface 12
      1. General 12
      2. RIC services and related procedures 13
      3. Combining RIC services within a common RIC Subscription 28
      4. Combining RIC services as a sequence of RIC services 28
   4. RAN Function E2 Service Model 29
   5. Global procedures 30
      1. General 30
      2. E2 Setup procedure 30
      3. Reset procedure 31
      4. RIC Service Update procedure 33
      5. A RIC Service Query procedure 34
      6. E2 Node Configuration Update procedure 34
      7. E2 Removal procedure 35
      8. E2 Resource Status 36
      9. E2 Resource Status Update 37
6. E2 interface signalling 37
   1. E2 control plane protocol (E2AP) 37
   2. Multiple TNLAs over E2 38
7. Security for the E2 interface 41
   1. General 41
   2. Requirements for the E2 interfaces 41
   3. Security mechanism for the E2 interface 41
8. Other E2 interface specifications 42
   1. O-RAN E2 interface: E2 Application Protocol (E2AP) (ORAN-WG3.E2AP) 42
   2. O-RAN E2 interface: E2 Service Model (E2SM) specifications 42

Annex A (normative): Deployment considerations 43

* 1. Deployment use cases 43

Annex B (informative): Change history 45

# List of figures

Figure 4.2-1: O-RAN architecture overview showing Near-RT RIC interfaces 10

Figure 5.1.2-1: Relationship between Near-RT RIC and E2 Node 12

Figure 5.3.2.2-1: RIC Service REPORT 14

Figure 5.3.2.3-1: RIC Service INSERT with subsequent RIC Service CONTROL responses 15

Figure 5.3.2.4-1: RIC Service CONTROL as response to RIC Service INSERT 17

Figure 5.3.2.4-2: RIC Service CONTROL initiated by NEAR-RT RIC 18

Figure 5.3.2.5-1: RIC Service POLICY 19

Figure 5.3.2.5A-1: RIC Service QUERY 20

Figure 5.3.2.5B-1: RIC Service ASSISTANCE 21

Figure 5.3.2.6-1: RIC Subscription, RIC Subscription Modification, RIC Subscription Delete, RIC Subscription Audit and RIC Subscription State Control procedures 26

Figure 5.3.2.6-2: RIC Subscription Delete Required and RIC Subscription Delete procedures 27

Figure 5.3.2.6-3: RIC Subscription Modification Required procedure 27

Figure 5.3.2.6-4: RIC Service Load Status and RIC Service Load Update procedures 28

Figure 5.5.2-1: E2 Setup procedure 31

Figure 5.5.3-1: Reset procedure (E2 Node initiated) 32

Figure 5.5.3-2: Reset procedure (Near-RT RIC initiated) 33

Figure 5.5.4-1: RIC Service Update procedure 34

Figure 5.5.4A-1: RIC Service Query procedure 34

Figure 5.5.5-1: E2 Node Configuration Update procedure 35

Figure 5.5.6-1: E2 Removal procedure (E2 Node initiated) 36

Figure 5.5.6-2: E2 Removal procedure (Near-RT RIC initiated) 36

Figure 5.5.7-1: E2 Resource Status procedure 36

Figure 5.5.8-1: E2 Resource Status Update procedure 37

Figure 6.1-1: E2AP protocol stack 38

Figure 6.2-1: TNL management examples (E2 Setup and Near-RT RIC initiated TNL Addition) 39

Figure 6.2-2: TNL management examples (Near-RT RIC initiated TNL Modification and TNL Removal) 40

Figure 6.2-3: TNL management examples (E2 Node initiated TNL Addition and TNL Removal) 41

Figure A.1-1: Example deployment use case with single E2 Node supporting both O-CU-CP and O-CU-UP roles 43

Figure A.1-2: Example deployment use case with single E2 Node supporting O-CU-CP, O-CU-UP and O-DU roles 44

# List of tables

Table 5.3.2.6-1A: Relationship between RIC Services and E2AP Procedures related to RIC Subscriptions 23

Table 5.3.2.6-1B: Relationship between RIC Services and E2AP Procedures related to other RIC Functional procedures 24

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

The present document describes the general aspects and principles of the E2 interface between Near-RT RIC and one or more E2 Nodes, including the interaction with applications hosted in the Near-RT RIC.

# References

## Normative references

References are either specific (identified by date of publication and/or edition number or version number) or non-specific. For specific references, only the cited version applies. For non-specific references, the latest version of the referenced document (including any amendments) applies.

NOTE 1: While any hyperlinks included in this clause were valid at the time of publication, O-RAN cannot guarantee their long-term validity.

NOTE 2: In the case of a reference to a 3GPP document (including a GSM document), a non-specific reference implicitly refers to the latest version of that document in 3GPP Release 18.

The following referenced documents are necessary for the application of the present document.

1. Void.
2. O-RAN WG3.TS.E2AP, "O-RAN E2 Application Protocol (E2AP)".
3. Void.
4. Void.
5. 3GPP TS 36.401: "Evolved Universal Terrestrial Radio Access Network (E-UTRAN); Architecture Description".
6. 3GPP TS 38.401: "NG-RAN; Architecture description".
7. Void.
8. Void.
9. Void.
10. Void.
11. Void.
12. IETF RFC 4960: "Stream Control Transmission Protocol".
13. Void.
14. Void.
15. Void.
16. 3GPP TS 38.300 NR; "NR and NG-RAN Overall Description; Stage 2".
17. O-RAN WG3.TS.E2SM; "O-RAN E2 Service Model (E2SM)".
18. O-RAN WG1.TS.OAD, "O-RAN Architecture Description".
19. Void.
20. IETF RFC 4303, "IP Encapsulating Security Payload (ESP)"
21. 3GPP TS 33.210: Technical Specification Group Services and System Aspects; Network Domain Security (NDS); IP network layer security
22. 3GPP TS 33.310: "Universal Mobile Telecommunications System (UMTS); LTE; 5G; Network Domain Security (NDS); Authentication Framework (AF)"
23. IETF RFC 6335, "Internet Assigned Numbers Authority (IANA) Procedures for the Management of the Service Name and Transport Protocol Port Number Registry"
24. Void.
25. 3GPP TS 36.300: "Evolved Universal Terrestrial Radio Access (E-UTRA) and Evolved Universal Terrestrial Radio Access Network (E-UTRAN) "

## Informative references

References are either specific (identified by date of publication and/or edition number or version number) or non-specific. For specific references, only the cited version applies. For non-specific references, the latest version of the referenced document (including any amendments) applies.

NOTE 1: While any hyperlinks included in this clause were valid at the time of publication, O-RAN cannot guarantee their long-term validity.

NOTE 2: In the case of a reference to a 3GPP document (including a GSM document), a non-specific reference implicitly refers to the latest version of that document in 3GPP Release 18.

The following referenced documents are not necessary for the application of the present document, but they assist the user with regard to a particular subject area.

[i.1] 3GPP TR 21.905: "Vocabulary for 3GPP Specifications"

# Definition of terms, symbols and abbreviations

## Terms

For the purposes of the present document, the terms given in 3GPP TR 21.905 [i.1], O-RAN WG1.TS.OAD [18] and the following apply:

**E2 Service Model**: collection of E2AP IEs that are specified in O-RAN WG3.TS.E2AP [2] to have RAN Function specific definitions.

**RAN Function**: specific functionality in a E2 Node that supports one or more RIC Services exposed by the E2 Node to the Near-RT RIC.

**RIC Service:** service provided on an E2 Node or Near-RT RIC for use over the E2 interface.

**SCTP association:** As defined in IETF RFC 4960 [12]. In the present document, SCTP association is interchangeably used by TNL (Transport Network Layer) association.

**SCTP endpoint (or end-point):** As defined in IETF RFC 4960 [12].

## Symbols

Void.

## Abbreviations

For the purposes of the present document, the abbreviations given in 3GPP TR 21.905 [i.1], O-RAN WG1.TS.OAD [18] and the following apply:

RAT Radio Access Technology

TNL Transport Network Layer

TNLA TNL Association

# E2 interface architecture

## General architecture principles

The general principles guiding the definition of the E2 interface between Near-RT RIC and E2 Nodes are the following:

* Near-RT RIC and E2 Node functions are fully separated from transport functions. Addressing scheme used in Near- RT RIC and the E2 Nodes shall not be tied to the addressing schemes of transport functions.
* The E2 Nodes support all protocol layers and interfaces defined within 3GPP radio access networks that include eNB for E-UTRAN, 3GPP TS 36.300 [25] and 3GPP TS 36.401 [5], and gNB/ ng-eNB for NG-RAN, 3GPP TS 38.300

[16] and 3GPP TS 38.401 [6].

* Near-RT RIC may use the set of RIC Services that are exposed by an E2 Node.
* E2 Node may use the set of RIC Services that are exposed by the Near-RT RIC.
* The E2 Node shall describe the available RIC Services using a series of RAN function and Radio Access Technology (RAT) dependent "E2 Service Models".
* E2 interfaces are defined along the following principles:
  + Interfaces are based on a logical model of the entity controlled through this interface.
  + One physical network element can implement multiple logical nodes.

## O-RAN architecture considerations

The Near-RT RIC and E2 Nodes connected by the E2 interface, as presented in Figure 4.2-1, are part of the overall O-RAN Architecture O-RAN WG1.TS.OAD [18].

E2

**E2 Node**

E2

E1

**E2 Node**

**E2 Node**

E2

E2

F1-c

F1-u

**Open Fronthaul**

**O-RU**

**O-DU**

**E2**

**Node**

**O-CU-UP**

**O-CU-CP**

**Near-RT RIC**

**O-eNB**

##### Figure 4.2-1: O-RAN architecture overview showing Near-RT RIC interfaces

With respect to the E2 interface:

* E2 is a logical interface connecting the Near-RT RIC with an E2 Node:
  + The Near-RT RIC is connected to the O-CU-CP;
  + The Near-RT RIC is connected to the O-CU-UP;
  + The Near-RT RIC is connected to the O-DU;
  + The Near-RT RIC is connected to the O-eNB.
* An E2 Node is connected to only one Near-RT RIC.
* A Near-RT RIC can be connected to multiple E2 Nodes, i.e. multiple O-CU-CPs, O-CU-UPs, O-DUs and O-eNBs.
* F1 (F1-C, F1-U) and E1 are logical 3GPP interfaces, whose protocols, termination points and cardinalities are specified in NG-RAN, 3GPP TS 38.401 [6].

The Near-RT RIC use E2 interface to collect near real-time information (e.g. UE basis, Cell basis) and provide value added services.

The protocols over E2 interface are based exclusively on Control plane protocols and are defined in O-RAN WG3.TS.E2AP [2].

# E2 interface

## E2 interface requirements and general principles

### E2 interface requirements

The E2 interface shall support the following requirements:

* E2 interface requirements and general principes shall comply with the general O-RAN architecture principles specified in O-RAN WG1.TS.OAD [18].
* E2 interface shall uniquely identify each E2 Node configured to directly provide RIC Services to the Near-RT RIC.
* A given Near-RT RIC may support E2 connections from multiple E2 Nodes, each supporting a specific RAT type.
* E2 interface shall expose from the E2 Node a list of RAN Functions supporting RIC Services and the corresponding E2 Service Model.
* E2 interface shall allow the Near-RT RIC to address specific RAN Functions in a specific E2 Node.
* E2 node shall function independently of the Near-RT RIC when and if the E2 interface and/or Near-RT RIC fails.
* E2 interface shall support latency requirements for near-real-time optimization, i.e. from 10 milliseconds up to 1 second as specified in O-RAN WG1.TS.OAD [18].
* RAN Functions supported over E2 interface shall be subject to the capability of the E2 Node exposed over the E2 interface by means of the E2 Service Model.
* E2 Service Model shall describe the RAN Functions in the E2 Node that may be optimized by the Near RT RIC.
* For a RAN Function exposed in the E2 Service Model, the Near-RT RIC may e.g. monitor, override or control via policies the behaviour of E2 node.

### E2 interface general principles

The general principles for the specification of the E2 interface are as follows:

* E2 interface is open;
* E2 interface supports the exchange of control signalling information between the endpoints;
* E2 is a point-to-point interface between the endpoints on Near-RT RIC and E2 Node;
* E2 interface definition supports interface management procedures based on principles from 3GPP RAN interfaces;
* E2 interface provides the capability to send predefined information towards the Near-RT RIC based on a pre- configured trigger event;
* E2 interface supports the ability to provide UE ID information towards the Near-RT RIC based on a pre-configured trigger event;
* E2 interface enables the Near-RT-RIC to direct the E2 Node to interrupt an associated procedure and forward the relevant information to the Near-RT RIC based on a pre-configured trigger event;
* E2 interface supports the ability to send control messages (e.g. UE basis, Cell basis) to the E2 Node;
* E2 interface supports the ability to provide the E2 Node with a set of policies to use when defined events occur;
* E2 interface supports the ability for E2 Node to inform the Near-RT RIC of what functionality it supports;
* E2 interface supports the ability to query the E2 Node for relevant RAN- and/or UE-related information;
* E2 interface supports the ability for E2 node to consume services produced by the Near-RT RIC.

With respect to the E2 interface, the E2 Node consists of:

* Logical E2 Agent used to terminate the E2 interface, support global services and to forward/receive RIC service messages towards RAN Functions.
* One or more RAN Functions that support RIC services exposed by the E2 Node to the Near-RT RIC.
* Other RAN functions that do not support RIC Services.

|  |  |  |
| --- | --- | --- |
| RAN Func(1) |  | RAN Func(N) |
|  |

##### Figure 5.1.2-1: Relationship between Near-RT RIC and E2 Node

E2

E2 Node

E2 Agent

Near-RT RIC

Other functions

## E2 interface specification objectives

The E2 interface specifications shall facilitate the following:

* Connectivity between Near-RT RIC and E2 Node supplied by different vendors;
* Exposure of selected E2 Node data (e.g. configuration information (cell configuration, supported slices, PLMNs, etc.), network measurements, context information, etc.) towards the Near-RT RIC;
* Enables the Near-RT RIC to control selected RAN functions on the E2 Node.

## Functions of the E2 interface

### General

The E2 functions are grouped into the following categories:

RIC services supported by RIC functional procedures:

* RIC Services (**REPORT**, **INSERT**, **CONTROL**, **POLICY**, **QUERY** and **ASSISTANCE**), as described in clause

5.3.2) supported by RIC functional procedures (RIC Subscription, RIC Subscription Modification, RIC Subscription Modification Required, RIC Subscription Delete, RIC Subscription Delete Required, RIC Subscription Audit, RIC Subscription State Control, RIC Indication, RIC Control, RIC Query, RIC Service Load Status, RIC Service Load Update, RIC Assistance, RIC Assistance Indication, RIC Assistance Halt).

Global procedures:

* Interface Management procedures (E2 Setup, Reset, E2 Node Configuration Update, E2 connection Update, E2 Removal, E2 Resource Status, E2 Resource Status Update, Error Indication)
* RAN Function procedures (RIC Service Update, RIC Service Query).

### RIC services and related procedures

#### RIC services

Near-RT RIC may use the following RIC services provided by an E2 node:

* + - * + **REPORT**: Near-RT RIC uses a RIC Subscription and/or RIC Subscription Modification procedures to request that E2 Node sends a **REPORT** message to Near-RT RIC and the associated procedure continues in the E2 Node after each occurrence of a defined RIC Subscription procedure Event Trigger.
        + **INSERT**: Near-RT RIC uses a RIC Subscription and/or RIC Subscription Modification procedures to request that E2 Node sends an **INSERT** message to Near-RT RIC after each occurrence of a defined RIC Subscription procedure Event Trigger.
        + **CONTROL**: Near-RT RIC sends a **CONTROL** message to E2 Node to initiate a new associated procedure or resume an associated procedure in the E2 Node.
        + **POLICY:** Near-RT RIC uses a RIC Subscription and/or RIC Subscription Modification procedures to request that E2 Node executes a specific **POLICY** during functioning of the E2 Node after each occurrence of a defined RIC Subscription procedure Event Trigger.
        + **QUERY**: Near-RT RIC sends a **QUERY** message to the E2 node to retrieve RAN-related and/or UE-related information from the E2 Node.

E2 Node may use the following RIC services provided by the Near-RT RIC:

* + - * + **ASSISTANCE**: E2 Node sends an **ASSISTANCE** message to the Near-RT RIC to utilize a service offered by the Near-RT RIC.

#### REPORT service

The **REPORT** service involves following steps:

1. Near-RT RIC configures, and subsequently may modify, a RIC Subscription in the E2 Node with information for Indication (Report) that is to be sent by the E2 Node with each occurrence of RIC trigger event condition
2. During normal functioning of an associated procedure in the E2 Node, a RIC Event Trigger is detected.
3. After completing any previous RIC actions, E2 Node sends RIC INDICATION message to Near-RT RIC containing the requested **REPORT** information along with the originating Request ID.
4. Associated procedure continues in the E2 Node, including any subsequent RIC actions.

![](../assets/images/a48093d134e0.png)![](../assets/images/00625682bbc2.png)![](../assets/images/3bc133d841ef.png)![](../assets/images/372c32f01920.png)![](../assets/images/d06da37976c9.png)![](../assets/images/59790f481e2f.png)![](../assets/images/e88c129d1a28.png)![](../assets/images/c2404d99aba5.png)![](../assets/images/d5d64117cde5.png)![](../assets/images/66b37bbbacb6.png)![](../assets/images/d06da37976c9.png)![](../assets/images/fd2e6acf55fa.png)![](../assets/images/1ac0f20454d4.png)

##### Figure 5.3.2.2-1: RIC Service REPORT

#### INSERT service

The **INSERT** service involves following steps:

1. Near-RT RIC configures, and subsequently may modify, a RIC Subscription in the E2 Node with information for an INSERT action, along with an associated Subsequent Action Information (Subsequent Action type, Time to Wait timer), that is to be performed by E2 Node with each occurrence of Event.
2. During normal functioning of an associated procedure in the E2 Node, a trigger event is detected.
3. After completing any previous RIC actions, E2 Node waits for the corresponding response for up to a defined Time to Wait period.
4. E2 Node sends RIC INDICATION message to Near-RT RIC containing the requested **INSERT** information along with the originating Request ID and information to identify the associated procedure.
5. According to the Time to Wait timer state, arrival of RIC CONTROL procedure, and Subsequent Action parameter in the RIC Subscription, the E2 Node may then:
   1. RIC CONTROL REQUEST message arrives in time: This case is described in clause 5.3.2.4.
   2. The associated Time to Wait timer expires and Subsequent Action Type set to Continue:

Continue the original associated procedure, including any subsequent RIC actions, if and when the associated Time to Wait timer expires. If the Near-RT RIC subsequently sends a RIC CONTROL REQUEST message with the Call Process ID for the same associated procedure, then the E2 Node shall respond with the RIC CONTROL FAILURE message with a cause to indicate that the timer has expired. See also clause 5.3.2.4.

* 1. The associated Time to Wait timer expires and Subsequent Action Type set to Halt:

Halt the original associated procedure, including any subsequent RIC actions, if and when the associated Time to Wait timer expires. If the Near-RT RIC subsequently sends a RIC CONTROL REQUEST message with the Call Process ID for the same associated procedure, then the E2 Node shall respond with the RIC CONTROL FAILURE message with a cause to indicate that the timer has expired. See also clause 5.3.2.4.

![](../assets/images/1e9013a4a367.png)![](../assets/images/0ee0594a8628.png)![](../assets/images/83be338936be.png)![](../assets/images/d02c24c258dc.png)![](../assets/images/754bd33c88be.png)![](../assets/images/133bbd164bf1.png)![](../assets/images/49a6568a4c4f.png)![](../assets/images/133bbd164bf1.png)![](../assets/images/49a6568a4c4f.png)![](../assets/images/4662756a1e9a.png)![](../assets/images/6a9f1137ee73.png)![](../assets/images/ae4e24ee2c73.png)![](../assets/images/1751a2d45a75.png)![](../assets/images/bd52cd2e85ab.png)![](../assets/images/ae41e818e913.png)![](../assets/images/133bbd164bf1.png)![](../assets/images/119914f79f97.png)![](../assets/images/2a016ac89d89.png)![](../assets/images/49a6568a4c4f.png)![](../assets/images/94745f624e8b.png)![](../assets/images/2a016ac89d89.png)![](../assets/images/92eae112926c.png)![](../assets/images/ae41e818e913.png)![](../assets/images/c268308f640b.png)![](../assets/images/8c47790f7428.png)![](../assets/images/49a6568a4c4f.png)![](../assets/images/133bbd164bf1.png)![](../assets/images/e66e255c49fb.png)![](../assets/images/739ee8e23145.png)![](../assets/images/58a88f343a63.png)![](../assets/images/ecf76d40611d.png)![](../assets/images/49a6568a4c4f.png)![](../assets/images/133bbd164bf1.png)

##### Figure 5.3.2.3-1: RIC Service INSERT with subsequent RIC Service CONTROL responses

#### CONTROL service

The **CONTROL** service involves following steps:

Near-RT RIC detects an event trigger. This step may be triggered by either:

1. a previous RIC INDICATION message sent by E2 Node;
2. internal to Near-RT RIC.
3. Near-RT RIC performs an action.
4. Near-RT RIC sends a RIC CONTROL REQUEST message to E2 Node. This message may contain information to identify the associated procedure, and may request acknowledgement from the E2 Node. The Near-RT RIC shall set the timer TRICcontrol if either acknowledgement has been requested or the optional acknowledgement request was not present in the RIC CONTROL REQUEST message.
5. The E2 Node cancels the associated Time to Wait timer if previously set, and initiates or resumes the associated procedure.
6. E2 Node then:
   1. If the requested control service is successfully executed, and if acknowledgement was requested or if the optional RIC Control Ack Request was not present, the E2 Node sends the RIC CONTROL ACKNOWLEDGE message with the optional RIC Control Outcome providing information about the result of the request Control service.
   2. If the requested control service fails to execute or the request is not accepted, the E2 Node sends the RIC CONTROL FAILURE message with a cause indicating the reason for failure or rejection and the optional RIC Control outcome providing information about the reason for failure to execute.
7. If previously set, the Near-RT RIC shall cancel the TRICcontrol timer

![](../assets/images/25e4fcaa49ce.png)![](../assets/images/1d586bb45876.png)![](../assets/images/67fff80fe8d8.png)![](../assets/images/61ff5ffe6afc.png)![](../assets/images/ae239560c19c.png)![](../assets/images/64a78a7b9635.png)![](../assets/images/b063740dc8a3.png)![](../assets/images/86884bc0518a.png)![](../assets/images/48c02b2f7ab2.png)![](../assets/images/af9667fc321e.png)![](../assets/images/bad4dce0d435.png)![](../assets/images/a9c31dc8e9db.png)![](../assets/images/f1c1265e0611.png)![](../assets/images/2ef7f33ee20c.png)![](../assets/images/b79733e62b9a.png)![](../assets/images/86884bc0518a.png)![](../assets/images/8fce08f5792d.png)![](../assets/images/3986e17ed378.png)![](../assets/images/48c02b2f7ab2.png)![](../assets/images/e7b0bdcb76d7.png)![](../assets/images/561b7eef85b8.png)![](../assets/images/a04beba05d79.png)![](../assets/images/3986e17ed378.png)![](../assets/images/f16d5542c957.png)![](../assets/images/4727416f1db9.png)![](../assets/images/67b2f9c6de2f.png)![](../assets/images/ccd59572b189.png)![](../assets/images/af9667fc321e.png)![](../assets/images/af9667fc321e.png)![](../assets/images/86884bc0518a.png)![](../assets/images/5ddc0e434325.png)![](../assets/images/b79733e62b9a.png)![](../assets/images/af9667fc321e.png)![](../assets/images/af9667fc321e.png)![](../assets/images/3fdb0b71eeb0.png)![](../assets/images/926a5e8fabab.png)

##### Figure 5.3.2.4-1: RIC Service CONTROL as response to RIC Service INSERT

![](../assets/images/628ec60e1078.png)![](../assets/images/243d6691ec0e.png)![](../assets/images/a589577113ef.png)![](../assets/images/90ae8e546933.png)![](../assets/images/64a78a7b9635.png)![](../assets/images/cbd84a517ca5.png)![](../assets/images/4a2d2af66d11.png)![](../assets/images/a4a43753c1ca.png)![](../assets/images/abe2d51af85f.png)![](../assets/images/2867f357f741.png)![](../assets/images/7b332908228e.png)![](../assets/images/a4a43753c1ca.png)![](../assets/images/d6c198d6254f.png)![](../assets/images/ee3ed4121c3f.png)![](../assets/images/847b9778576f.png)![](../assets/images/64e96fc8fb2e.png)![](../assets/images/2a016ac89d89.png)![](../assets/images/1d0ce7767ddb.png)![](../assets/images/ed79d16c4fc5.png)![](../assets/images/133bbd164bf1.png)![](../assets/images/133bbd164bf1.png)![](../assets/images/133bbd164bf1.png)![](../assets/images/d229412c12d3.png)![](../assets/images/8015621d61e3.png)

##### Figure 5.3.2.4-2: RIC Service CONTROL initiated by NEAR-RT RIC

#### POLICY service

The **POLICY** service involves following steps:

1. Near-RT RIC configures, and subsequently may modify, a RIC Subscription in the E2 Node with information used to configure a **POLICY** that is to be performed by E2 Node with each occurrence of trigger event
2. During normal functioning of the E2 Node, a trigger event is detected.
3. After completing any previous RIC actions, E2 Node modifies ongoing call process according to information contained in the **POLICY** description statement
4. Associated procedure continues in the E2 Node, including any subsequent RIC actions.

Note that if previously configured with a dedicated RIC Subscription, the E2 Node may send a REPORT used to provide information on the associated procedure outcome. See clause 5.3.2.2 for details.

![](../assets/images/a48093d134e0.png)![](../assets/images/05a19d0a881e.png)![](../assets/images/93be13859f0b.png)![](../assets/images/2ee9652e6297.png)![](../assets/images/ef610caa35c3.png)![](../assets/images/e6843d828f88.png)![](../assets/images/8a412b2ceb58.png)![](../assets/images/933bc3e99a67.png)![](../assets/images/ef610caa35c3.png)![](../assets/images/e6843d828f88.png)![](../assets/images/4df2e483070a.png)![](../assets/images/2867f357f741.png)![](../assets/images/8dc5b5ccc022.png)![](../assets/images/2867f357f741.png)![](../assets/images/fb0bb447343a.png)![](../assets/images/87ef8f3bc146.png)![](../assets/images/ef610caa35c3.png)

##### Figure 5.3.2.5-1: RIC Service POLICY

#### 5.3.2.5A QUERY service

The **QUERY** service involves following steps:

1. Near-RT RIC determines need for RAN and/or UE-related information from the E2 node.
2. Near-RT RIC sends a RIC QUERY REQUEST message to E2 Node. This message contains the requested information that needs to be fetched from the E2 Node. The Near-RT RIC shall set the timer TRICquery awaiting response from the E2 node.
3. E2 node attempts to retrieve the requested information for the Near-RT RIC.
4. E2 Node then:
   1. If the E2 node successfully retrieves the requested information for the Near-RT RIC, then the E2 node sends the RIC QUERY RESPONSE message containing the desired information.
   2. If the E2 node fails to handle the request or fails to retrieve the requested information for the Near-RT RIC, then the E2 node sends the RIC QUERY FAILURE message along with the cause for failure.

![](../assets/images/62d28c7d47dc.png)![](../assets/images/6f0c9e19e5dd.png)![](../assets/images/6a9c9f42c5fa.png)![](../assets/images/7d8fdef061f7.png)![](../assets/images/e533402d101c.png)![](../assets/images/d858456e22eb.png)![](../assets/images/a4a43753c1ca.png)![](../assets/images/c2404d99aba5.png)![](../assets/images/81e65efdca8b.png)![](../assets/images/8df479540af0.png)![](../assets/images/6e928271c9f5.png)![](../assets/images/2a016ac89d89.png)![](../assets/images/7898fe8be7df.png)![](../assets/images/2a016ac89d89.png)![](../assets/images/51ff3177bfda.png)![](../assets/images/bfcb360bc66d.png)![](../assets/images/44c4756a4e6a.png)![](../assets/images/51ff3177bfda.png)![](../assets/images/ac70618769b3.png)![](../assets/images/8df479540af0.png)

##### Figure 5.3.2.5A-1: RIC Service QUERY

#### B ASSISTANCE services

The **ASSISTANCE** request/response service involves following steps:

* + - * 1. E2 Node determines need for RIC Assistance service from the Near-RT RIC.
        2. E2 Node sends a RIC ASSISTANCE REQUEST message to Near-RT RIC. This message contains information about the service to be provided from the Near-RT RIC and may contain request for one or more subsequent updates.
        3. Near-RT RIC attempts to provide the requested service for the E2 Node.
        4. Near-RT RIC then:

If the Near-RT RIC successfully provides the requested assistance service for the E2 Node, then the Near-RT RIC sends the RIC ASSISTANCE RESPONSE message containing the desired information. This step may require Near-RT RIC to fetch information from one or more E2 Nodes.

If the Near-RT RIC fails to handle the request for the E2 Node, then the Near-RT RIC sends the RIC ASSISTANCE FAILURE message along with the cause for failure.

* + - * 1. If requested and if the Near-RT RIC may subsequently provide an updated assistance service for the E2 Node, then the Near-RT RIC sends one or more ASSISTANCE INDICATION message. This step may require Near-RT RIC to fetch information from one or more E2 Nodes.
        2. E2 Node may send RIC ASSISTANCE HALT message to halt the subsequent updates of the requested assistance service

![](../assets/images/df75c0564549.png)![](../assets/images/5eaa92fd30a9.png)![](../assets/images/02a034d33255.png)![](../assets/images/f66f2d64a203.png)![](../assets/images/1d8bd198dc38.png)![](../assets/images/a4c090724bab.png)![](../assets/images/ad0fbd4e0dab.png)![](../assets/images/9bdd40642649.png)![](../assets/images/5dcfed66a381.png)![](../assets/images/477d4ec67a31.png)![](../assets/images/41145bfe78bb.png)![](../assets/images/ad708acade48.png)![](../assets/images/10771b8fb4c4.png)![](../assets/images/5700ed83ae11.png)![](../assets/images/6190b8a7bf96.png)![](../assets/images/fdf39e2a3d94.png)![](../assets/images/6190b8a7bf96.png)![](../assets/images/51ff3177bfda.png)![](../assets/images/99ea0800a19d.png)![](../assets/images/10771b8fb4c4.png)![](../assets/images/f9ebd3ecffaa.png)![](../assets/images/99ea0800a19d.png)![](../assets/images/5eef8a291ac0.png)![](../assets/images/75ac94dfe616.png)![](../assets/images/10771b8fb4c4.png)![](../assets/images/6f1e5182f35f.png)![](../assets/images/51ff3177bfda.png)![](../assets/images/49a6568a4c4f.png)![](../assets/images/6f1e5182f35f.png)![](../assets/images/51ff3177bfda.png)![](../assets/images/1dffdde10638.png)![](../assets/images/6190b8a7bf96.png)![](../assets/images/99ea0800a19d.png)

##### Figure 5.3.2.5B-1: RIC Service ASSISTANCE

#### RIC service realization and relationship with E2AP procedures

The RIC Services may be realized using the following RIC Functional procedures:

RIC Subscription procedure (Near-RT RIC initiated)

* Used to install Event Trigger and associated sequence of Actions corresponding to one or more RIC services

**REPORT**, **INSERT** and/or **POLICY**

RIC Subscription Modification procedure (Near-RT RIC initiated)

* Used to modify Event Trigger and/or add, modify and/or remove associated sequence of Actions corresponding to one or more RIC services **REPORT**, **INSERT** and/or **POLICY**

RIC Subscription Modification Required procedure (E2 Node initiated)

* Used to request modification and/or removal of associated sequence of Actions corresponding to one or more RIC services **REPORT**, **INSERT** and/or **POLICY**

RIC Subscription Delete procedure (Near-RT RIC initiated)

* Used to delete previously installed RIC Subscription RIC Subscription Delete Required procedure (E2 Node initiated)
* Used to indicate that one or more previously installed RIC Subscriptions are required to be deleted RIC Subscription Audit procedure (Near-RT RIC initiated)
* Used to audit list of previously installed RIC Subscriptions RIC Subscription State Control procedure (Near-RT RIC initiated)
* Used to suspend and/or resume a list of previously installed RIC Subscriptions RIC Indication procedure (E2 Node initiated)
* Used to carry outcome of RIC services **REPORT** and **INSERT**

RIC Control procedure (Near-RT RIC initiated)

* Used to initiate RIC service **CONTROL**

RIC Query procedure (Near-RT RIC initiated)

* Used to request RAN and/or UE related information from E2 Node RIC Service Load Status procedure (Near-RT RIC initiated)
* Used to request that E2 Node reports RIC Service level load updates RIC Service Load Update procedure (E2 Node initiated)
* Used to report load status information for one or more RIC services

The relationship between RIC Services and E2AP procedures related to RIC Subscription is presented in table 5.3.2.6-1A and the relationship between RIC Services and other E2AP procedures is presented in table 5.3.2.6-1B.

##### Table 5.3.2.6-1A: Relationship between RIC Services and E2AP Procedures related to RIC Subscriptions

|  |  |  |  |
| --- | --- | --- | --- |
| **E2AP Procedure** | **RIC Service** | | |
| **REPORT** | **INSERT** | **POLICY** |
| **RIC Subscription** | Installs one or more REPORT Services associated with a RIC  Subscription | Installs one or more INSERT Services associated with a RIC  Subscription | Installs one or more POLICY Services associated with a RIC  Subscription |
| **RIC Subscription Modification** | Adds, Modifies and/or Removes one or more REPORT  Services associated with a RIC  Subscription | Adds, Modifies and/or Removes one or more INSERT  Services associated with a RIC  Subscription | Adds, Modifies and/or Removes one or more POLICY  Services associated with a RIC  Subscription |
| **RIC Subscription Modification Required** | Requests Modification and/or Removal of one or more REPORT  Services associated with a RIC  Subscription | Requests Modification and/or Removal of one or more INSERT  Services associated with a RIC  Subscription | Requests Modification and/or Removal of one or more POLICY  Services associated with a RIC  Subscription |
| **RIC Subscription Delete** | Deletes all REPORT  Services associated with one or more RIC  Subscriptions | Deletes all INSERT  Services associated with one or more RIC  Subscriptions | Deletes all POLICY Service associated with one or more RIC  Subscriptions |
| **RIC Subscription Delete Required** | Requests Near- RT RIC to  delete all REPORT  Services associated with one or more RIC  Subscriptions | Requests Near- RT RIC to  delete all INSERT  Services associated with one or more RIC  Subscriptions | Requests Near- RT RIC to  delete all POLICY  Services associated with one or more RIC  Subscriptions |
| **RIC Subscription State Control** | Suspends and/or Resumes one or more REPORT  Services associated with one or more RIC  Subscriptions | Suspends and/or Resumes one or more INSERT  Services associated with one or more RIC  Subscriptions | Suspends and/or Resumes one or more POLICY  Services associated with one or more RIC  Subscriptions |
| **RIC Subscription**  **Audit** | Audits list of established RIC Subscriptions | | |

##### Table 5.3.2.6-1B: Relationship between RIC Services and E2AP Procedures related to other RIC Functional procedures

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **E2AP Procedure** | **RIC Service** | | | | |
| **REPORT** | **INSERT** | **CONTROL** | **POLICY** | **QUERY** |
| **RIC Indication** | Carries outcome of REPORT  Service | Carries outcome of INSERT Service |  |  |  |
| **RIC Control** |  |  | Initiates CONTROL  Service |  |  |
| **RIC Query** |  |  |  |  | Initiates QUERY  service |
| **RIC Service Load Status** | Initiates reporting on load of REPORT  service | Initiates reporting on load of INSERT service | Initiates reporting on load of CONTROL  service | Initiates reporting on load of POLICY service | Initiates reporting on load of QUERY service |
| **RIC Service Load Update** | Carries information on load of REPORT  service | Carries information on load of INSERT service | Carries information on load of CONTROL  service | Carries information on load of POLICY service | Carries information on load of QUERY service |

The RIC Subscription, RIC Subscription Modification, RIC Subscription Modification Required, RIC Subscription Delete, and RIC Subscription Delete Required procedures are used to establish, modify or delete RIC subscriptions on the E2 Node. The RIC Subscription State Control procedure is used to suspend and/or resume one or more RIC Subscriptions. The RIC Subscription Audit procedure is used to audit the list of established RIC Subscriptions.

The RIC Subscription, RIC Subscription Modification, RIC Subscription Delete, RIC Subscription Audit and RIC Subscription State Control procedures are initiated by the Near-RT RIC (Figure 5.3.2.6-1). In addition, the E2 Node may initiate a RIC Subscription Delete Required procedure to request removal of one or more existing RIC Subscriptions (Figure 5.3.2.6-2) and a

RIC Subscription Modification Required procedure to request the modification or removal of one or more existing RIC services within an existing RIC Subscription (Figure 5.3.2.6-3).

RIC Service Load Update procedure is used by the E2 Node to report the RIC Service load information related to one or more RIC Services. These reports shall be sent by the E2 Node if requested by the Near-RT RIC using the RIC Service Load Status procedure (Figure 5.3.2.6-4).

![](../assets/images/5c2abc44be2e.png)![](../assets/images/e54b121f590e.png)![](../assets/images/c6b764c818e9.png)![](../assets/images/3bc133d841ef.png)![](../assets/images/81553a30d593.png)![](../assets/images/fa7980059115.png)![](../assets/images/e87dfd4bcb92.png)![](../assets/images/588af26d9eca.png)![](../assets/images/6253b5710bd0.png)![](../assets/images/457351396d0d.png)![](../assets/images/6ac892e7575e.png)![](../assets/images/a5d5c3f8b60b.png)![](../assets/images/4a829a015b29.png)![](../assets/images/d0cf1613acea.png)![](../assets/images/dfe82befa3e6.png)![](../assets/images/c0a25d8338fd.png)![](../assets/images/1236122a6c8e.png)![](../assets/images/588af26d9eca.png)![](../assets/images/588af26d9eca.png)![](../assets/images/6253b5710bd0.png)![](../assets/images/6545b1d77378.png)![](../assets/images/e87dfd4bcb92.png)![](../assets/images/588af26d9eca.png)![](../assets/images/6253b5710bd0.png)![](../assets/images/ed45b6b2a321.png)![](../assets/images/6ac892e7575e.png)![](../assets/images/a5d5c3f8b60b.png)![](../assets/images/4a829a015b29.png)![](../assets/images/c59d583d22c3.png)![](../assets/images/6501586b53da.png)![](../assets/images/a5d5c3f8b60b.png)![](../assets/images/4a829a015b29.png)![](../assets/images/3c2291ed762a.png)![](../assets/images/e87dfd4bcb92.png)![](../assets/images/588af26d9eca.png)![](../assets/images/6253b5710bd0.png)

##### Figure 5.3.2.6-1: RIC Subscription, RIC Subscription Modification, RIC Subscription Delete, RIC Subscription Audit and RIC Subscription State Control procedures

![](../assets/images/d5f08c816d9f.png)![](../assets/images/09e2ac47b39b.png)![](../assets/images/e640c0c225b2.png)![](../assets/images/8aa81a0eb3ce.png)![](../assets/images/718bf21e0163.png)![](../assets/images/b27a2636c923.png)![](../assets/images/d9819c77eaf9.png)![](../assets/images/b27a2636c923.png)![](../assets/images/d9819c77eaf9.png)![](../assets/images/af081e71d698.png)![](../assets/images/552699ec556d.png)![](../assets/images/b2edbfb634b3.png)![](../assets/images/c1f8f79d40b6.png)![](../assets/images/0ef58083448e.png)![](../assets/images/b2edbfb634b3.png)![](../assets/images/6f1e5182f35f.png)

##### Figure 5.3.2.6-2: RIC Subscription Delete Required and RIC Subscription Delete procedures

![](../assets/images/097314b22b9e.png)![](../assets/images/7047621eed71.png)![](../assets/images/7d8fdef061f7.png)![](../assets/images/b94fd17272d8.png)![](../assets/images/ab6e62334aca.png)![](../assets/images/59790f481e2f.png)![](../assets/images/8927873bfd8f.png)![](../assets/images/ffa1326b4cc5.png)![](../assets/images/ab6e62334aca.png)![](../assets/images/59790f481e2f.png)

##### Figure 5.3.2.6-3: RIC Subscription Modification Required procedure

![](../assets/images/1b56c134f713.png)![](../assets/images/a4d797760f3d.png)![](../assets/images/ea71e8a4b62c.png)![](../assets/images/61aa3dba2705.png)![](../assets/images/791db0b40141.png)![](../assets/images/452b9c0e3bf4.png)![](../assets/images/d9819c77eaf9.png)![](../assets/images/452b9c0e3bf4.png)![](../assets/images/d9819c77eaf9.png)![](../assets/images/452b9c0e3bf4.png)![](../assets/images/d9819c77eaf9.png)![](../assets/images/df00274d09e5.png)![](../assets/images/552699ec556d.png)![](../assets/images/452b9c0e3bf4.png)

##### Figure 5.3.2.6-4: RIC Service Load Status and RIC Service Load Update procedures

### Combining RIC services within a common RIC Subscription

RIC services defined in clause 5.3.2 may be combined within a common Subscription with each RIC Service implemented as part of a sequence of Actions.

Where appropriate in these cases, successive **REPORT** or **INSERT** messages sent to Near-RT RIC under the same subscription event trigger would contain the same assigned Subscription Request identifier, the same optional sequence number and each message with the unique assigned Action identifier.

Examples include:

* **POLICY** then **REPORT**. In this case, at each occurrence of the defined Event Trigger, the E2 Node would be instructed to first execute a defined POLICY and then send a defined REPORT message
* **REPORT** then **REPORT**. In this case, at each occurrence of the defined Event Trigger, the E2 Node would be instructed to first send a defined REPORT message to be followed by a second defined REPORT message containing normally different information.

When more than one RIC service action has been accepted by the E2 Node then actions shall be executed as specified in O- RAN WG3.TS.E2AP [2].

### Combining RIC services as a sequence of RIC services

RIC services defined in clause 5.3.2 may be combined using a sequence of different RIC services implemented using a procedure executed within the Near-RT RIC.

Examples include:

* **REPORT** followed by **POLICY.** In this case, at each occurrence of the defined Event Trigger, the E2 Node would be instructed to send a defined **REPORT** message. The Near-RT RIC would use the information from one or more successive **REPORT** messages as input to a procedure that may result in a change or establishment of a RIC **POLICY** service.
* **INSERT** followed by **CONTROL.** In this case, at each occurrence of the defined Event Trigger, the E2 Node would be instructed to send a defined **INSERT** message containing information used to identify the associated procedure and then the Near-RT RIC would send a corresponding **CONTROL** message containing information used to identify a previous suspended associated procedure.
* **REPORT** followed by **CONTROL.** In this case, at each occurrence of the defined Event Trigger, the E2 Node would be instructed to send a defined **REPORT** message. The Near-RT RIC would use the information from one or more successive REPORT messages as input to a procedure that may result in a RIC **CONTROL** service message being sent to initiate an associated procedure in the E2 Node.

## RAN Function E2 Service Model

As described in clause 5.1 the E2 interface is used to carry messages between a given E2 Node and Near-RT RIC. These messages may contain RAN Function specific content which is described in the corresponding RAN Function specific E2 Service Model.

Each RAN Function is described in the following terms:

* *RAN Function Definition*. Defines the RAN Function Name and describes the RIC Services that the specific RAN Function is currently configured to present over the E2 interface.
* *RIC Event Trigger Definition* approach. Describes the approach to be used in RIC Subscription and RIC Subscription Modification procedures to set or modify the RIC Event Trigger Definition in the RAN Function for RIC Services **REPORT**, **INSERT** and/or **POLICY**.
* *RIC Action Definition* approach. Describes the approach to be used in RIC Subscription and RIC Subscription Modification procedures to set or modify the required sequence of RIC Action in the RAN Function for RIC Services **REPORT**, **INSERT** and/or **POLICY**.
* *RIC Indication Header* and *RIC Indication Message* approach. Describes the approach to be used in RIC Indication procedure for RIC Services **REPORT** and **INSERT**.
* *RIC Control Header* and *RIC Control Message* approach. Describes the approach to be used in RIC Control procedure for RIC Service **CONTROL**.
* *RIC Call Process ID* approach. Describes the approach to be used by the E2 node in RIC Indication procedure for RIC Service **INSERT**. The same IE is used in the subsequent RIC Control procedure for RIC Service **CONTROL**.
* *RIC Control Outcome* approach. Describes the approach to be used by the E2 node in RIC Control procedure for RIC service **CONTROL**.
* RAN Function Policies. Describes the set of policies that the RAN Function is configured to support and the corresponding Parameters that may be used to configure the policy using RIC Service **POLICY**.
* *RIC Query Header* and *RIC Query Definition* approach. Describes the approach to be used by the Near-RT RIC in RIC Query procedure for RIC Service **QUERY**.
* *RIC Query Outcome* approach. Describes the approach to be used by the E2 node in RIC Query procedure for RIC Service **QUERY**.
* *RIC Assistance Header* and *RIC Assistance Message* approach. Describes the approach to be used in RIC Assistance procedure for RIC Service **ASSISTANCE**.
* *RIC Assistance Outcome* approach. Describes the approach to be used by the Near-RT RIC in RIC Assistance procedure for RIC Service **ASSISTANCE**.
* *Service Level Cause* approach. Describes the approach to be used across all RIC Functional procedures for reporting service level faults.

## Global procedures

### General

The E2 interface supports the following global procedures:

* E2 Setup
* Reset
* Error Indication
* RIC Service Update
* RIC Service Query
* E2 Node Configuration Update
* E2 Connection Update
* E2 Removal
* E2 Resource Status
* E2 Resource Status Update

The E2 Setup, Reset, RIC Service Update, RIC Service Query, E2 Node Configuration Update, E2 Removal, E2 Resource Status and E2 Resource Status Procedure procedures are described in further details in the following clauses. E2 Connection Update is described in clause 6.2.

### E2 Setup procedure

The E2 Setup procedure is used to establish the E2 interface between the Near-RT RIC and an E2 Node. During this procedure the E2 Node provides:

* List of supported RIC services and mapping of services to functions within the E2 Node. This information is specific to each RAN Function in the E2 node and is defined by a specific E2 Service Model as described in clause 5.4
* List of E2 Node configuration information. The configuration information is specific to the E2 Node type (see clause 4.2) and based on the re-use of 3GPP RAN3 defined configuration update messages.

If the E2 Setup procedure fails, the Near-RT RIC may provide an alternative Transport Layer Information for the E2 Node to use when reinitiating the E2 Setup procedure.

![](../assets/images/d8dc8166deff.png)![](../assets/images/f08482e64304.png)![](../assets/images/8b44b51191b0.png)![](../assets/images/8e095d36f6af.png)![](../assets/images/7f7e3a56c122.png)![](../assets/images/a4a43753c1ca.png)![](../assets/images/7158c670cd4e.png)![](../assets/images/c2404d99aba5.png)![](../assets/images/51ff3177bfda.png)![](../assets/images/e48c53884808.png)![](../assets/images/a4a43753c1ca.png)![](../assets/images/8e2bd0688941.png)![](../assets/images/2867f357f741.png)![](../assets/images/49a6568a4c4f.png)

##### Figure 5.5.2-1: E2 Setup procedure

### Reset procedure

The Reset procedure is used by either the E2 Node or Near-RT RIC to reset the E2 interface.

Information previous exchanged during E2 Setup, E2 Node Configuration Update and RIC Service Update procedures shall be maintained however the outcome of all previous RIC Subscription shall be deleted from the E2 Node and E2 Node gracefully terminates any ongoing RIC Services.

The Near-RT RIC may then proceed to re-establish any RIC Subscriptions as required.

![](../assets/images/09085d687c93.png)![](../assets/images/939d78af91e3.png)![](../assets/images/29a7c5d6836f.png)![](../assets/images/a7d71331597a.png)![](../assets/images/1d67f3ed135d.png)![](../assets/images/a4a43753c1ca.png)![](../assets/images/8a412b2ceb58.png)![](../assets/images/3cb57474aa51.png)![](../assets/images/a4a43753c1ca.png)![](../assets/images/4ccefd4f57f8.png)![](../assets/images/2867f357f741.png)![](../assets/images/e8e9fab7886f.png)![](../assets/images/a4a43753c1ca.png)![](../assets/images/d6c198d6254f.png)![](../assets/images/ff6beca02f95.png)![](../assets/images/2867f357f741.png)

##### Figure 5.5.3-1: Reset procedure (E2 Node initiated)

![](../assets/images/09085d687c93.png)![](../assets/images/939d78af91e3.png)![](../assets/images/3ca9dee61061.png)![](../assets/images/5859e9101a0f.png)![](../assets/images/e5a2e35c7677.png)![](../assets/images/a4a43753c1ca.png)![](../assets/images/c2404d99aba5.png)![](../assets/images/941c24506753.png)![](../assets/images/a4a43753c1ca.png)![](../assets/images/5f0152922ba8.png)![](../assets/images/2867f357f741.png)![](../assets/images/133bbd164bf1.png)![](../assets/images/ed803e2d7de9.png)![](../assets/images/2867f357f741.png)![](../assets/images/ff6beca02f95.png)![](../assets/images/2867f357f741.png)

##### Figure 5.5.3-2: Reset procedure (Near-RT RIC initiated)

### RIC Service Update procedure

The RIC Service Update procedure is used by the E2 Node to inform the Near-RT RIC of any change to the list of supported RIC services and mapping of services to functions within the E2 Node. This information is specific to each RAN Function in the E2 node and is defined by a specific E2 Service Model as described in clause 5.4.

![](../assets/images/3b7f41c9ce88.png)![](../assets/images/01b7f89d6042.png)![](../assets/images/7d8fdef061f7.png)![](../assets/images/b94fd17272d8.png)![](../assets/images/b4539685f36a.png)![](../assets/images/6688d0b64f7e.png)![](../assets/images/ab6e62334aca.png)![](../assets/images/0a388c2c086f.png)![](../assets/images/44c4756a4e6a.png)![](../assets/images/33e3fc54d33b.png)

##### Figure 5.5.4-1: RIC Service Update procedure

### A RIC Service Query procedure

The RIC Service Query procedure is used by the Near-RT RIC to query the E2 Node with respect to the current list of supported RIC Services. The query procedure may be used to either request a complete list of supported RIC services or to request that the E2 Node compares the list of RIC Services provided in the query message with its current list of supported RIC Services.

This procedure is initiated by the Near-RT RIC sending a RIC SERVICE QUERY message.

![](../assets/images/a7c67943c6aa.png)![](../assets/images/4adf513ca197.png)![](../assets/images/7d8fdef061f7.png)![](../assets/images/ee8c2a053cb7.png)![](../assets/images/966156ef10e8.png)![](../assets/images/66b37bbbacb6.png)![](../assets/images/49a6568a4c4f.png)![](../assets/images/4f117c941c50.png)![](../assets/images/66b37bbbacb6.png)![](../assets/images/96f97bd5f810.png)![](../assets/images/ffa1326b4cc5.png)

##### Figure 5.5.4A-1: RIC Service Query procedure

### E2 Node Configuration Update procedure

The E2 Node Configuration Update procedure is used by the E2 Node to inform the Near-RT RIC of any change to the configuration of the E2 Node and/or E2 Node initiated changes to TNL Associations associated with the E2 interface. The configuration information is specific to the E2 Node type (see clause 4.2) and based on the re-use of 3GPP RAN3 defined configuration update messages.

See clause 6.2 for further details on E2 Node Configuration Update procedure usage for E2 Node initiated changes to TNL Associations associated with the E2 interface.

![](../assets/images/3b7f41c9ce88.png)![](../assets/images/63b4b5fc1a84.png)![](../assets/images/7d8fdef061f7.png)![](../assets/images/a1ed08a28731.png)![](../assets/images/fd622da1efdb.png)![](../assets/images/61101b13df1d.png)![](../assets/images/ab6e62334aca.png)![](../assets/images/db259f5e93bc.png)![](../assets/images/a786ae1dc4db.png)![](../assets/images/cf0399770c42.png)

##### Figure 5.5.5-1: E2 Node Configuration Update procedure

### E2 Removal procedure

The E2 Removal procedure is used by either the E2 Node or Near-RT RIC to release the E2 signalling connection.

If the procedure is E2 node initiated, after the E2 REMOVAL RESPONSE is received, the E2 node initiates termination of all TNL associations associated with this E2 interface. The Near-RT RIC and E2 nodes releases all resources associated with this E2 interface. If the E2 Removal procedure fails, the E2 node may retry the E2 Removal procedure.

If the procedure is Near-RT RIC initiated, after the E2 REMOVAL RESPONSE is received, the Near-RT RIC initiates termination of all TNL associations associated with this E2 interface. The Near-RT RIC and E2 nodes releases all resources associated with this E2 interface. If the E2 Removal procedure fails, the Near-RT RIC may retry the E2 Removal procedure.

![](../assets/images/d8dc8166deff.png)![](../assets/images/026480da5ffe.png)![](../assets/images/7d8fdef061f7.png)![](../assets/images/5ef8b55d890c.png)![](../assets/images/b8d872fee537.png)![](../assets/images/2867f357f741.png)![](../assets/images/133bbd164bf1.png)![](../assets/images/d6c198d6254f.png)![](../assets/images/133bbd164bf1.png)![](../assets/images/d6c198d6254f.png)![](../assets/images/dfd79b1d829a.png)![](../assets/images/2867f357f741.png)![](../assets/images/523ca37cb733.png)![](../assets/images/2867f357f741.png)

##### Figure 5.5.6-1: E2 Removal procedure (E2 Node initiated)

![](../assets/images/d8dc8166deff.png)![](../assets/images/026480da5ffe.png)![](../assets/images/7d8fdef061f7.png)![](../assets/images/5ef8b55d890c.png)![](../assets/images/b7138a534770.png)![](../assets/images/2867f357f741.png)![](../assets/images/d6c198d6254f.png)![](../assets/images/133bbd164bf1.png)![](../assets/images/133bbd164bf1.png)![](../assets/images/d6c198d6254f.png)![](../assets/images/dfd79b1d829a.png)![](../assets/images/2867f357f741.png)![](../assets/images/523ca37cb733.png)![](../assets/images/2867f357f741.png)

##### Figure 5.5.6-2: E2 Removal procedure (Near-RT RIC initiated)

### E2 Resource Status

This procedure is used by a Near-RT RIC to request the reporting of load measurements to E2 node. During this procedure, the E2 Node provides the E2 node level resource status and traffic load information over the E2 interface.

If the E2 Resource Status initiation fails, the Near-RT RIC may retry the E2 Resource Status initiation procedure.

![](../assets/images/0ee0594a8628.png)![](../assets/images/ebbb66aaa6e9.png)![](../assets/images/ec384deb351d.png)![](../assets/images/e36bb4487e12.png)![](../assets/images/01a19d17a24a.png)![](../assets/images/1b95c8949d5e.png)![](../assets/images/04ce8365a610.png)![](../assets/images/a1370dfc2bf9.png)![](../assets/images/cfc128116305.png)![](../assets/images/9b720afd9fd3.png)

##### Figure 5.5.7-1: E2 Resource Status procedure

### E2 Resource Status Update

The E2 Resource Status Update is used by the E2 Node to inform the Near-RT RIC of the results of the resource measurements that were successfully initiated during the preceding E2 Resource Status procedure (see clause 5.5.7). After the E2 Resource Status Update is received containing information describing the available resources in the E2 Node, the Near-RT RIC may suspend the initiation of new RIC procedures or may initiate RIC Subscription Delete procedures to reduce E2 Node load.

![](../assets/images/a48093d134e0.png)![](../assets/images/8e89ada9aa76.png)![](../assets/images/20bd4fa58540.png)![](../assets/images/714eb3b116d3.png)![](../assets/images/dba6e92007b2.png)![](../assets/images/593f9b3e2a2c.png)![](../assets/images/d06da37976c9.png)

##### Figure 5.5.8-1: E2 Resource Status Update procedure

# E2 interface signalling

## E2 control plane protocol (E2AP)

The control plane protocol stack of the E2AP interface is shown on Figure 6.1-1.

The transport network layer is built on IP transport. For the reliable transport of signalling messages, IETF RFC 4960 [12] is added on top of IP.

When configurations with multiple SCTP associations are supported, the Near-RT RIC may request to dynamically add/remove SCTP associations between the E2 Node/Near-RT RIC pair. Within the set of SCTP associations established between one Near-RT RIC and E2 node pair, the Near-RT RIC may request the E2 Node to restrict the usage of SCTP association for certain types of E2 signalling. If no restriction information is provided for an SCTP association, any type of E2 signalling is allowed via the SCTP association.

The application layer signalling protocol is referred to as E2AP (E2 Application Protocol). The Payload Protocol Identifier assigned by IANA to be used by SCTP for the application layer protocol E2AP is 70. This value is to be used for all deployment configurations described in the present document. Payload Protocol Identifiers 71 and 72, also assigned by IANA for E2, are reserved for future use.

No SCTP Destination Port number value was assigned by IANA for the E2AP protocol and so networks shall rely on E2 node and Near-RT RIC configuration to select a suitable port number.

![A diagram of a network layer  Description automatically generated](../assets/images/062e41990995.png)

NOTE 1: E2AP messages are transported over the E2 interfaces.

##### Figure 6.1-1: E2AP protocol stack

## Multiple TNLAs over E2

The Near-RT RIC and E2 Node supports multiple TNL associations over E2 interface.

An initial TNL association is established during E2 Setup procedure with E2 Node initiating SCTP connection. At this point the single TNL association is configured to be used for both RIC Services (clause 5.3) and E2 Support functions (clause 5.5).

TNL associations may then be added, modified or removed during subsequent E2 Connection Update and E2 Node Configuration Update procedures with E2 Node initiating SCTP connections where required.

When the Near-RT RIC requests to dynamically add additional SCTP associations between the Near-RT RIC/E2 Node pair, the Near-RT RIC sends additional SCTP endpoints using the E2 Connection Update procedure. The E2 Node shall establish the SCTP associations. The SCTP Destination Port number value may be the same port number used for the initial E2 Setup procedure, or any dynamic port value (IETF RFC 6335 [23]).

Within the set of SCTP associations established between one Near-RT RIC and E2 node pair, a single SCTP association shall be employed for E2AP elementary procedures utilized for E2 Support Function signalling (i.e. defined in O-RAN WG3.TS.E2AP [2] clause 8.3) with the possibility of fail-over to a new association to enable robustness.

When the configuration with multiple SCTP endpoints per E2 node is supported and E2 node wants to add an additional SCTP association, the E2 Node Configuration Update procedure shall be the first E2AP procedure triggered on an additional TNLA of an already setup E2 interface after the TNL association has become operational. The E2 Node uses a SCTP endpoint of the Near-RT RIC already in use for existing TNL associations between the Near-RT RIC/E2 Node pair when establishing the additional SCTP association, and the Near-RT RIC shall associate the TNLA to the E2 interface using the included Global E2 Node ID. The E2 Node uses the E2 Node Configuration Update procedure when it wants to remove additional SCTP association.

The RIC Subscription TNLA binding is a binding between a specific TNL association and RIC Service signalling (i.e. defined in O-RAN WG3.TS.E2AP [2] clause 8.2) of a specific RIC Subscription. After the RIC Subscription TNLA binding is created, the Near-RT RIC can update the RIC Subscription TNLA binding by sending the E2AP message for the RIC Subscription to the E2 Node via a different TNLA. The E2 Node shall update the RIC Subscription TNLA binding with the new TNLA. The E2 Configuration Update procedure also allows the E2 Node to inform the Near-RT RIC that the indicated TNLA(s) will be removed by the E2 Node.

Between one Near-RT RIC and E2 Node pair:

* A single pair of stream identifiers shall be reserved over an SCTP association for the sole use of E2AP elementary procedures utilized for E2 Support Function signalling (i.e. defined in O-RAN WG3.TS.E2AP [2] clause 8.3).
* At least one pair of stream identifiers over one or several SCTP associations shall be reserved for the sole use of E2AP elementary procedures utilized for RIC Service signalling (i.e. defined in O-RAN WG3.TS.E2AP [2] clause 8.2). However, a few pairs (i.e. more than one) should be reserved.
* For any RIC service signalling (i.e. defined in O-RAN WG3.TS.E2AP [2] clause 8.2) of a single RIC Subscription, the E2 Node shall use one SCTP association and one SCTP stream, and the SCTP association/stream should not be changed until after the current SCTP association is failed, or the RIC Subscription TNLA binding update is performed.

Transport network redundancy may be achieved by SCTP multi-homing between two end-points, of which one or both is assigned with multiple IP addresses. SCTP end-points shall support a multi-homed remote SCTP end-point. For SCTP endpoint redundancy an INIT may be sent from a Near-RT RIC or E2 Node, at any time for an already established SCTP association, which shall be handled as defined in IETF RFC 4960 [12] in sub clause 5.2.

The SCTP congestion control may, using an implementation specific mechanism, initiate higher layer protocols to reduce the signalling traffic at the source and prioritize certain messages.

![](../assets/images/097314b22b9e.png)![](../assets/images/7d8fdef061f7.png)![](../assets/images/e56895a384b6.png)![](../assets/images/2867f357f741.png)![](../assets/images/4d7e4a09b78b.png)![](../assets/images/bb1e19d042f6.png)

|  |
| --- |
| ![](../assets/images/7158c670cd4e.png)  ![](../assets/images/51ff3177bfda.png)  ![](../assets/images/51ff3177bfda.png) |
|  |
| ![](../assets/images/51ff3177bfda.png)  ![](../assets/images/7158c670cd4e.png)  ![](../assets/images/51ff3177bfda.png) |

|  |
| --- |
|  |
| ![](../assets/images/d6c198d6254f.png) |
|  |
| ![](../assets/images/933bc3e99a67.png) ![](../assets/images/933bc3e99a67.png) |
| ![](../assets/images/933bc3e99a67.png) |
|  |
|  |

##### ![Generated by PlantUML](../assets/images/5df3ea341ed3.png)Figure 6.2-1: TNL management examples (E2 Setup and Near-RT RIC initiated TNL Addition)

![](../assets/images/f91e3bb18d83.png)![](../assets/images/8ebc8e7644f0.png)![](../assets/images/cb2f2a57b404.png)

![](../assets/images/51ff3177bfda.png)

![](../assets/images/097314b22b9e.png)![](../assets/images/79372c4c80cb.png)![](../assets/images/63f8e4797eb4.png)![](../assets/images/c83339033f0f.png)![](../assets/images/8a27707d7137.png)![](../assets/images/a4a43753c1ca.png)![](../assets/images/33650f0ddee9.png)![](../assets/images/79a319af2bef.png)

|  |
| --- |
| ![](../assets/images/933bc3e99a67.png)     ![](../assets/images/cf0399770c42.png) |
| ![](../assets/images/cf0399770c42.png) |
|  |
|  |

##### ![](../assets/images/51ff3177bfda.png)![Generated by PlantUML](../assets/images/ad464c68942c.png)Figure 6.2-2: TNL management examples (Near-RT RIC initiated TNL Modification and TNL Removal)

![](../assets/images/b0fd23e8f2e5.png)![](../assets/images/a74d8876a3a2.png)![](../assets/images/79a319af2bef.png)

|  |
| --- |
|  |
| ![](../assets/images/51ff3177bfda.png) |
|  |

![](../assets/images/09085d687c93.png)![](../assets/images/de2ffeab82db.png)![](../assets/images/7d8fdef061f7.png)![](../assets/images/8ebc8e7644f0.png)![](../assets/images/d2a4c97f5c71.png)![](../assets/images/8f918dd0f3ab.png)![](../assets/images/e8b38bbc87c6.png)![](../assets/images/2867f357f741.png)![](../assets/images/51ff3177bfda.png)![](../assets/images/51ff3177bfda.png)![](../assets/images/d6c198d6254f.png)![](../assets/images/7158c670cd4e.png)![](../assets/images/af88943fdfb6.png)![](../assets/images/a4a43753c1ca.png)![](../assets/images/933bc3e99a67.png)![](../assets/images/e2f320e64fcf.png)![](../assets/images/8f918dd0f3ab.png)![](../assets/images/7158c670cd4e.png)![](../assets/images/d6c198d6254f.png)![](../assets/images/51ff3177bfda.png)![](../assets/images/d6c198d6254f.png)![](../assets/images/1c3263a99f68.png)![](../assets/images/cb2f2a57b404.png)

##### Figure 6.2-3: TNL management examples (E2 Node initiated TNL Addition and TNL Removal)

# Security for the E2 interface

## General

The security requirements given in this clause only apply to the E2 interface.

## Requirements for the E2 interfaces

The requirements given below apply to E2 interface defined in the present document:

- E2 interface shall support confidentiality, integrity, replay protection and data origin authentication.

## Security mechanism for the E2 interface

In order to protect the traffic on the E2 interface, IPsec ESP implementation shall be supported according to IETF RFC 4303

[20] as profiled by 3GPP TS 33.210 [21]. For IPsec implementation, tunnel mode is mandatory to support while transport

mode is optional. The multiple IKE Security Associations (SAs), multiple IPsec SAs and multiple IPsec SAs per IPsec tunnel (e.g. for rekeying) shall be supported.

IKEv2 certificate-based authentication implementation shall be supported according to 3GPP TS 33.310 [22]. The certificates shall be supported according to the profile described by 3GPP TS 33.310 [22]. IKEv2 shall be supported conforming to the IKEv2 profile described in 3GPP TS 33.310 [22].

# Other E2 interface specifications

## O-RAN E2 interface: E2 Application Protocol (E2AP) (ORAN- WG3.E2AP)

The technical specification ORAN WG3.E2AP [2] specifies the signalling protocol between the Near-RT RIC and the E2 Node over the E2 interface.

## O-RAN E2 interface: E2 Service Model (E2SM) specifications

The technical specification ORAN WG3.E2SM [17] provides the list of the supported RAN Function-specific E2 Service Models supported over the E2 interface and presents a recommended layout for additional E2SM specifications.

# Annex A (normative): Deployment considerations

## Deployment use cases

The Near-RT RIC may be connected to range of different E2 Node configurations as described in the list implementation options in Annex A.4 of O-RAN WG1.TS.OAD [18]. Examples include:

* + - Standalone O-CU-CP connected to one or more standalone O-CU-UP and one or more standalone O-DU. Each logical node is considered as an E2 Node that presents an E2 interface to the Near-RT RIC.
    - Combined O-CU-CP and O-CU-UP connected to one or more standalone O-DU. The combined O-CU-CP/O-CU-UP may present either a common E2 interface or individual E2 interfaces corresponding to the individual O-RAN components
    - Combined O-CU-CP, O-CU-UP and O-DU. The combined node may present either a common E2 interface or individual E2 interfaces corresponding to the individual O-RAN components

In all cases the different RAN components may initiate either independent E2 connections to the Near-RT RIC for each logical O-RAN component or may present a shared E2 interface and hence present the combined RAN components as a common E2 Node supporting services appropriate to more than one logical O-RAN component.

In all cases each E2 Node shall present a single E2 interface to the Near-RT RIC and shall announce which E2 Services supports for each logical O-RAN component.

Example deployment use case are presented in Figures A.1-1 and A.1-2.

E2

F1-c

F1-u

**E2**

**Node**

**Open Fronthaul**

**O-RU**

**O-DU**

|  |  |  |
| --- | --- | --- |
| **Near-RT RIC** | | |
|  |  |  |
| E2 **O-CU-CP** E1 **E2 Node**  **O-CU-UP** | |

##### Figure A.1-1: Example deployment use case with single E2 Node supporting both O-CU-CP and O-CU-UP roles

|  |  |
| --- | --- |
| **Near-RT RIC** | |
|  | **E2**  **Node O-CU-CP** E1 |

##### Figure A.1-2: Example deployment use case with single E2 Node supporting O-CU-CP, O-CU-UP and O-DU roles

E2

F1-c

F1-u

**Open Fronthaul**

**O-RU**

**O-DU**

**O-CU-UP**

# Annex B (informative): Change history

|  |  |  |
| --- | --- | --- |
| **Date** | **Revision** | **Description** |
| 2020.01.22 | 01.00.00 | Specification renamed v01.00.00 for approval by WG3 |
| 2020.01.29 | 01.00.00 | Editorial corrections collected during WG3 approval process |
| 2020.02.06 | 01.00.00 | Updated Text based on outcome of SCTP Port ID application process |
| **2020.02.06** | **V01.00** | **Initial version** |
|  |  |  |
| 2020.03.11 | 01.00.01 | Implementing CRs (for maintenance) agreed in Virtual F2F February 2020. |
| 2020.03.11 | 01.00.02 | Small editorial on Section 4. |
| 2020.07.08 | 01.00.03 | Alignment with published v01.00.00 version (copyright statement)  Inclusion of approved CRs from meeting #60 and co-chair editorial changes |
| **2020.07.15** | **v01.01** | **Editorial and functional corrections** |
|  |  |  |
| 2021.02.23 | V02.00.01 | Adding Security related CRs. |
| 2021.03.09 | V02.00.02 | TNL related CRs |
| 2021.06.03 | V02.00.03 | Merging CRs related to Control Service enhancements and RIC Subscription delete  (WG3#100) |
| **2021.08.10** | **V02.00** | **New features: RIC Subscription Delete, TNLA Removal. Improvement to security**  **text** |
|  |  |  |
| 2021.11.02 | V02.01.01 | Added CRs <INT-2021.10.13-WG3-CR-0012-E2GAP-clarify\_multipleTNLA\_handling\_vS  > approved WG3#116  < SAM-2021.10.13-WG3-CR-0001-E2GAP\_E2Removal-v04 > approved WG#117 |
| 2021.11.22 | V02.01.02 | Corrections based on WG3 approval review responses. |
| **2022.02.07** | **V02.01** | **New features: E2 Removal. Clarification on handling of multiple TNLAs** |
|  |  |  |
| 2022.03.23 | V02.02.01 | Added CR < NOK.AO-2022.02.11-WG3-CR-0008-E2GAP-Clarification for REPORT and  INSERT in 5.3.3-v01 > approved WG3#137 |
| 2022.04.04 | V02.02.02 | Editorial corrections based on feedback received during WG3 approval poll |
| **2022.06.29** | **V02.02** | **Clarification on REPORT and INSERT service handling. Editorial and functional**  **corrections** |
|  |  |  |
| 2022.11.10 | V02.02.01 | Editorial changes:   * Update to latest O-RAN template   - " "   * Changes to table 5.3.2.6-1 introducing RIC service names * Alignment of message names in figures to common naming convention (Xxxx procedure for entire procedures, XXXX for individual messages)   Addition of approved CRs:   * NOK.AO-2022.02.08-WG3-CR-0007-E2GAP-Combining RIC Services-v04 * NOK.AO-2021.11.24-WG3-CR-0005-E2GAP-RIC-Subscription-Modification-v07 * MAV.AO-2022.10.04-WG3-CR-0013 E2GAP 03.00 RIC Query Service-v10 |
| 2022.11.16 | V02.02.02 | Changes reflecting remarks received during WG3 approval process   * Alignment to latest O-RAN template   - " - "  - " " " "  POLICY services in section 5.3.2   * Added R003 to file name * Updated copyright year * Harmonised " " " RT RIC   " " " " "  sections 5.3.1, 5.4, 5.5   * Harmonised language used to describe E2SM IEs in section 5.4 |
| **2022.11.21** | **V03.00** | **New features: RIC Subscription Modification, RIC Query. Clarification on Combining RIC Services, Timer handling, RIC Action execution order, use of term**  **RIC Service** |
|  |  |  |

|  |  |  |
| --- | --- | --- |
| **Date** | **Revision** | **Description** |
| 2023.02.01 | V03.00.01 | Addition of CRs:  - <NOK-2023.01.30-WG3-CR-0009-E2GAP-PAS step1-v01> approved WG3#172 |
| 2023.03.16 | V03.00.02 | Addition of CRs:  - <NOK-2023.03.13-WG3-CR-0010-E2GAP-PAS step2-v02> approved by  correspondence after WG3#176 |
| 2023.03.24 | V03.00.03 | Inclusion of corrections agreed during WG3 approval process as per < O-  RAN.WG3.E2GAP-R003-v03.00.02- ApprovalChanges-v3 > |
| **2023.03.24** | **V03.01** | **Alignment of O-RAN Drafting Rules (ODR) in preparation for ETSI PAS submission** |
|  |  |  |
| 2023.05.15 | V03.01.01 | CR <NOK-2023.04.28-WG3-CR-0011-E2GAP-Correction to clause 2.1-v01> approved WG3#183  CR <NOK.AO-2023.05.17-WG3-CR-0012-E2GAP-fig4.2-1-v02> approved WG3#185 |
| 2023.06.27 | V03.01.02 | CR < NOK.AO-2023.06.19-WG3-CR-0014-E2GAP-figA.1-v02> approved F2F Osaka |
| 2023.07.19 | V03.01.03 | CR <NOK-2023.07.17-WG3-CR-0015-E2GAP-Ref24 removal-v03> approved WG3#191 |
| 2023.07.26 | V03.01.04 | Editorial changes based on comments received during WG3 poll. |
| 2023.07.27 | V03.01.05 | Editorial changes to align to O-RAN TS template v01.01 |
| 2023.07.28 | V04.00 | Version ready for July 23 train (withdrawn) |
| 2023.09.27 | V04.01 | CR <NOK-2023.09.25-WG3-CR-0014-E2GAP-Clause5.4heading-v01> approved  WG3#200 as a pre-publication correction to v04.00 |
| **2023.09.27** | **V04.01** | **Editorial and functional corrections** |
|  |  |  |
| 2023.10.04 | V04.01.01 | CR < NOK.AO-2023.05.22-WG3-CR-0013-E2GAP-SubscriptionAudit-v05 > approved  WG3#201 |
| 2023.11.15 | V04.01.02 | Editorial corrections implementing WG3 voting period feedback |
| 2023.11.21 | V04.01.03 | Restored full revision history into Annex: Change History and deletion of Annex: History |
| **2023.11.21** | **V05.00** | **New feature: RIC Subscription Audit. Editorial and functional corrections** |
|  |  |  |
| 2024.02.29 | V05.00.01 | CR <NOK-2024.02.13-WG3-CR-0016-E2GAP-Change history-v01> approved F2F  Athens |
| 2024.04.22 | V05.00.02 | CR < NOK-2024.03.07-WG3-CR-0017-E2GAP-Editorial corrections for PAS-step3-v5> approved WG3#225  Also includes " "  processing of v04.01 |
| 2024.06.21 | V05.00.03 | CR < NOK-2024.05.31-E2GAP-CR-0019-Removing validated step-v01> approved WG3#227  CR < NOK-2024.05.31-E2GAP-CR-0020-E2 Node configuration information source-v01> approved WG3 Incheon F2F  CR < NOK.AO-2024.05.31-E2GAP-CR-0021-E2 interface compliance to 3GPP-v01> approved WG3#227  CR < NOK-2024.05.31-E2GAP-CR-0018-Alignment of terminology for non RIC Service  related procedures-v03> approved WG3#229 |
| 2024.07.26 | V05.00.04 | Editorial corrections implementing review comments collected during July24 train  approval |
| **2024.07.26** | **V06.00** | **Alignment to ETSI Drafting Rules and implementation of all agreed ETSI PAS**  **comments** |
|  |  |  |

|  |  |  |
| --- | --- | --- |
| **Date** | **Revision** | **Description** |
| 2024.08.06 | V06.00.01 | CR <ZTE.AO-2024.07.23-WG3-CR-0001-E2GAP-Addressing concerns on clause 5.1.1- v01> approved WG3#233  CR < NOK.AO-2024.07.23-WG3-CR-0022-E2GAP-E2 Overload-v03.docx > approved  WG#234 |
| 2024.10.16 | V06.00.02 | CR <NOK-2024.09.27-E2GAP-CR-0025-EditHelp alignment-v2> approved WG3#241 |
| 2024.11.21 | V06.00.03 | Editorial changes to align with O-RAN WORKPROC v04.00  CR <RSYS.AO-2024.07.23-WG3-CR-0002-E2GAP- Support of Resource Status Report- v04> approved WG3#236  CR <NOK-2024.10.22-WG3-CR-0027-E2GAP-Handling LS from MSG-v04 > approved F2F Montreal  CR <NOK-2024.09.30-E2GAP-CR-0028-RIC Subscription State Control-v1 > approved WG3#243  CR < NOK.AO-2024.09.30-WG3-CR-0026-E2GAP-modification to E2 Overload-v4 > approved WG3#244  CR <NOK-2024.09.16-E2GAP-CR-0029-E2 Service Model Error handling-v02> approved WG3#245  CR <NOK-2024.09.16-WG3-CR-0024-E2GAP-RIC Assistance service-v08> approved WG3#245  Editorial correction to v06.00.01 implementation of CR <ZTE.AO-2024.07.23-WG3-CR-  0001-E2GAP-Addressing concerns on clause 5.1.1-v01> |
| 2024.12.04 | V07.00 | **New features: E2 Resource Status, RIC Subscription State Control, RIC Assistance, Service Level error handling. Implementation of changes related to ETSI MSG**  **Liaison** |
---

- View in [Reader Mode](https://simewu.com/spec-reader/pages/10-WG3/O-RAN.WG3.TS.E2GAP-R004-v07.00.docx).
- Go back to [Table of Contents](../README.md).
- Download the [Original Document](https://github.com/Simewu/spec-reader/raw/refs/heads/main/documents/O-RAN.WG3.TS.E2GAP-R004-v07.00.docx).
