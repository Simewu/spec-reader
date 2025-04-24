---
title: O-RAN.WG1.TS.OAD-R004-v13.00.docx.md
author: O-RAN Alliance
layout: post
---

- View in [GitHub Mode]({{site.github_page_url}}/O-RAN.WG1.TS.OAD-R004-v13.00.docx.md).
- Go back to [Table of Contents]({{site.baseurl}}/).
- Download the [Original Document]({{site.download_url}}/O-RAN.WG1.TS.OAD-R004-v13.00.docx).

---

* toc
{:toc}

---

![webwxgetmsgimg (7).jpeg]({{site.baseurl}}/assets/images/bea03973c631.jpg) O-RAN.WG1.TS.OAD-R004-v13.00

Copyright (C) 2025 by the O-RAN ALLIANCE e.V.

The copying or incorporation into any other work of part or all of the material available in this specification in any form without the prior written permission of O-RAN ALLIANCE e.V. is prohibited, save that you may print or download extracts of the material of this specification for your personal use, or copy the material of this specification for the purpose of sending to individual third parties for their information provided that you acknowledge O-RAN ALLIANCE as the source of the material and that you inform the third party that these conditions apply to them and that they must comply with them.

O-RAN ALLIANCE e.V., Buschkauler Weg 27, 53347 Alfter, Germany

Register of Associations, Bonn VR 11238, VAT ID DE321720189

<div class="table-wrapper" markdown="block">

|  |
| --- |
| Technical Specification |

</div>

O-RAN Work Group 1 (Use Cases and Overall Architecture)

O-RAN Architecture Description

Contents

Foreword 4

Modal verbs terminology 4

1 Introductory Material 5

1.1 Scope 5

2 References 6

2.1 Normative references 6

2.2 Informative references 7

2.3 Definitions and Abbreviations 7

2.3.1 Definitions 7

2.3.2 Abbreviations 9

3. O-RAN Overview 13

3.1 Scope and Objectives 13

4. General O-RAN Architecture Principles 14

5. O-RAN Architecture 15

5.1 Overall Architecture of O-RAN 15

5.2 O-RAN Control Loops 17

5.3 Description of O-RAN Architecture Elements 18

5.3.1 Service Management and Orchestration (SMO) 18

5.3.2 Near-RT RIC 20

5.3.3 O-CU-CP 21

5.3.4 O-CU-UP 21

5.3.5 O-DU 21

5.3.6 O-RU 22

5.3.7 O-eNB 22

5.3.8 O-Cloud 22

5.4 Relevant Interfaces in O-RAN Architecture 23

5.4.1 Introduction to Relevant Interfaces in O-RAN Architecture 23

5.4.2 A1 Interface 23

5.4.3 O1 Interface 24

5.4.4 O2 Interface 24

5.4.5 E2 Interface 24

5.4.6 O-Cloud Notification Interface 24

5.4.7 Open Fronthaul Interface 24

5.4.8 E1 Interface 24

5.4.9 F1-c Interface 24

5.4.10 F1-u Interface 24

5.4.11 NG-c Interface 24

5.4.12 NG-u Interface 25

5.4.13 X2-c Interface 25

5.4.14 X2-u Interface 25

5.4.15 Xn-c Interface 25

5.4.16 Xn-u Interface 25

5.4.17 Uu Interface 25

5.4.18 CTI (Cooperative Transport Interface) 25

5.4.19 Y1 Interface 25

5.4.20 R1 Interface 25

5.4.21 Near-RT RIC APIs 26

5.5 UE Associated Identifiers Used in O-RAN 26

5.6 O-RAN Security Architecture 27

6. O-RAN Information Model (IM) Principles 28

Annex A (Informative): Implementation Options of O-RAN Functions and Network Elements 29

A.1 Shared Cell 29

A.2 FHGW Function 30

A.3 Near-RT RIC 31

A.4 Near-RT RIC, O-CU-CP, O-CU-UP, O-DU, and O-RU 31

A.5 Cooperative Transport 36

Annex (informative): Change History 37

# Foreword

This Technical Specification (TS) has been produced by O-RAN ALLIANCE.

The content of the present document is subject to continuing work within O-RAN and may change following formal O-RAN approval. Should the O-RAN ALLIANCE modify the contents of the present document, it will be re-released by O-RAN with an identifying change of version date and an increase in version number as follows:

version xx.yy.zz

where:

xx: the first digit-group is incremented for all changes of substance, i.e., technical enhancements, corrections, updates, etc. (the initial approved document will have xx=01). Always 2 digits with leading zero if needed.

yy: the second digit-group is incremented when editorial only changes have been incorporated in the document. Always 2 digits with leading zero if needed.

zz: the third digit-group included only in working versions of the document indicating incremental changes during the editing process. External versions never include the third digit-group. Always 2 digits with leading zero if needed.

# Modal verbs terminology

In the present document "**shall**", "**shall not**", "**should**", "**should not**", "**may**", "**need not**", "**will**", "**will not**", "**can**" and "**cannot**" are to be interpreted as described in clause 3.2 of the O-RAN Drafting Rules (Verbal forms for the expression of provisions).

"**must**" and "**must not**" are **NOT** allowed in O-RAN deliverables except when used in direct citation.

# Introductory Material

## Scope

This Technical Specification has been produced by the O-RAN ALLIANCE.

The present document

* specifies: the overall architecture of O-RAN.
* describes: the O-RAN architecture elements and relevant interfaces that connect them.

# References

## Normative references

References are either specific (identified by date of publication and/or edition number or version number) or non-specific. For specific references, only the cited version applies. For non-specific references, the latest version of the referenced document (including any amendments) applies. In the case of a reference to a 3GPP document (including a GSM document), a non-specific reference implicitly refers to the latest version of that document in Release 18.

Referenced documents which are not found to be publicly available in the expected location might be found at https://o-ran.org/specifications.

NOTE: While any hyperlinks included in this clause were valid at the time of publication, O-RAN cannot guarantee their long-term validity.

The following referenced documents are necessary for the application of the present document.

1. 3GPP TS 23.501: "System Architecture for the 5G System (5GS); Stage 2".
2. 3GPP TS 28.622: "Generic Network Resource Model (NRM); Stage 2".
3. 3GPP TS 32.101: "Technical Specification Group Services and System Aspects; Telecommunication management; Principles and high level requirements".
4. 3GPP TS 36.401: "Evolved Universal Terrestrial Radio Access Network (E-UTRAN); Architecture Description".
5. 3GPP TS 36.413: "Evolved Universal Terrestrial Radio Access Network (E-UTRAN); S1 Application Protocol (S1AP)".
6. 3GPP TS 36.420: "Evolved Universal Terrestrial Radio Access Network (E-UTRAN); X2 general aspects and principles".
7. 3GPP TS 36.423: ""LTE; Evolved Universal Terrestrial Radio Access Network (E-UTRAN); X2 Application Protocol (X2AP)".
8. 3GPP TS 38.300 "NR; NR and NG-RAN Overall Description; Stage 2".
9. 3GPP TS 38.331: "5G; NR; Radio Resource Control (RRC); Protocol specification".
10. 3GPP TS 38.401: "NG-RAN; Architecture description".
11. 3GPP TS 38:413: "5G; NG-RAN; NG Application Protocol (NGAP)".
12. 3GPP TS 38.420: "NG-RAN; Xn general aspects and principles".
13. 3GPP TS 38.423: "5G; NG-RAN; Xn Application Protocol (XnAP)".
14. 3GPP TS 38.460: "NG-RAN; E1 general aspects and principles".
15. 3GPP TS 38.463: "5G; NG-RAN; E1 Application Protocol (E1AP)".
16. 3GPP TS 38.470: "NG-RAN; F1 general aspects and principles".
17. 3GPP TS 38.473: "5G; NG-RAN; F1 Application Protocol (F1AP)".
18. O-RAN TS: "A1 interface: General Aspects and Principles".
19. O-RAN TS: "Control, User and Synchronization Plane Specification".
20. O-RAN TS: "Cooperative Transport Interface; Transport Control Plane Specification".
21. O-RAN TS: "Cooperative Transport Interface; Transport Management Plane Specification".
22. O-RAN TS: "E2 General Aspects and Principles (E2GAP)".
23. O-RAN TS: "Hardware Reference Design Specification for Indoor Picocell FR1 with Split Architecture Option 8".
24. O-RAN TS: "Management Plane Specification".
25. O-RAN TS: "Near-Real-time RAN Intelligent Controller E2 Service Model (E2SM)".
26. O-RAN TS: "Near-RT RIC Architecture".
27. O-RAN TS: "Non-RT RIC: Architecture".
28. O-RAN TS: "O-Cloud Notification API Specification for Event Consumers".
29. O-RAN TS: "O-RAN Acceleration Abstraction Layer General Aspects and Principles".
30. O-RAN TS: "O-RAN Information Model and Data Models Specification".
31. O-RAN TS: "O-RAN Operations and Maintenance Interface Specification".
32. O-RAN TS: "O-RAN Security Test Specifications".
33. O-RAN TS: "O2 Interface General Aspects and Principles".
34. O-RAN TS: "Operations and Maintenance Architecture".
35. O-RAN TS: "R1 Interface: General Aspects and Principles".
36. O-RAN TS: "Security Protocols Specifications".
37. O-RAN TS: "Security Requirements and Control Specifications".
38. O-RAN TS: "Use Cases Detailed Specification".
39. O-RAN TS: "Y1 interface: General Aspects and Principles".

## Informative references

References are either specific (identified by date of publication and/or edition number or version number) or non-specific. For specific references, only the cited version applies. For non-specific references, the latest version of the referenced document (including any amendments) applies.

NOTE: While any hyperlinks included in this clause were valid at the time of publication, O-RAN cannot guarantee their long-term validity.

The following referenced documents are not necessary for the application of the present document, but they assist the user with regard to a particular subject area.

1. 3GPP TR 21.905: "Vocabulary for 3GPP Specifications".
2. 3GPP TR 38.801: "Study on new radio access technology: Radio access architecture and interfaces (Release 14)".
3. O-RAN TR: "Cloud Architecture and Deployment Scenarios for O-RAN Virtualized RAN".
4. O-RAN TR: "O-RAN Security Threat Modeling and Risk Assessment".
5. O-RAN White Paper: "O-RAN: Towards an Open and Smart RAN", October 2018.
6. Rose, S., Borchert, O., Mitchell, S., and Connelly, S., NIST SP 800-207: "Zero-Trust Architecture", U.S. NIST, August 2020, <https://csrc.nist.gov/publications/detail/sp/800-207/final>.
7. Zero Trust Maturity Model, US DHS CISA, April 2023.

## Definitions and Abbreviations

### Definitions

For the purposes of the present document, the terms and definitions given in 3GPP TR 21.905 [i.1] and the following apply. A term defined in the present document takes precedence over the definition of the same term, if any, in 3GPP TR 21.905 [i.1].

**E2 Node**:A logical node terminating E2 interface.

**Managed Element**: The definition of a Managed Element (ME) is given in 3GPP TS 28.622 [2], Clause 4.3.3.

**Managed Function**:The definition of a Managed Function (MF) is given in 3GPP TS 28.622 [2], Clause 4.3.4.

**Near-Real-Time RAN Intelligent Controller**: An O-RAN Network Function (NF) comprised of the Near-RT RIC platform and Near-RT RIC Applications (xApps).

**Near-RT RIC APIs**: A set of service-based interfaces that can be produced and consumed by the Near-RT RIC Platform and xApps.

NOTE: Please refer to [26] for more information.

**Near-RT RIC platform**: Platform supporting A1, E2, Y1 and O1 interfaces and providing a set of services via Near-RT RIC APIs needed for xApp functionality.

**Non-Real-Time RAN Intelligent Controller**: A functionality within SMO comprised of the Non-RT RIC Framework and the Non-RT RIC Applications (rApps) that manages the content carried across the A1 interface.

NOTE: Please refer to [27] for more information.

**Non-RT RIC Framework**:A functionality within the Non-RT RIC that logically terminates the A1 interface and provides support for rApps, including the R1 services through the R1 interface.

**NMS**:A Network Management System for the O-RU as specified in [24] to support legacy Open Fronthaul M-Plane deployments (prior to version 5 of [24]).

**O-Cloud**:Cloud platform that provides O-RAN standardized interfaces, hosting O-RAN defined software components.

NOTE: Please refer to [i.3] for more information.

**O-eNB**:An O-RAN eNB [4] or O-RAN ng-eNB [8].

NOTE: Please refer to Clause 5.3.7 for more information.

**O-RAN Central Unit - Control Plane**: A logical node hosting the RRC and the control plane part of the PDCP protocol.

NOTE: Please refer to Clause 5.3.3 for more information.

**O-RAN Central Unit - User Plane**: A logical node hosting the user plane part of the PDCP protocol and the SDAP protocol.

NOTE: Please refer to Clause 5.3.4 for more information.

**O-RAN Distributed Unit**: A logical node hosting RLC/MAC/High-PHY layers based on a lower layer functional split.

NOTE: Please refer to Clause 5.3.5 for more information.

**O-RAN Network Function**: A network function with O-RAN defined behaviors and interfaces, which can also inherit and/or extend defined behaviors and interfaces of a Network Function defined in 3GPP TS 23.501 [1].

**O-RAN node**:Same asan O-RAN NF.

**O-RAN Radio Unit**: A logical node hosting Low-PHY layer and RF processing based on a lower layer functional split. This is similar to 3GPP's "TRP" or "RRH" but more specific in including the Low-PHY layer (FFT/iFFT, PRACH extraction).

NOTE: Please refer to Clause 5.3.6 for more information.

**O1**: Interface used by the SMO framework, as specified in Clause 5.3.1, for operation and management of O-RAN NFs as specified in OAM Interface Specification [31].

**O2**: Interface between SMO framework as specified in Clause 5.3.1 and the O-Cloud.

NOTE: Please refer to [33] for more information.

**Open Fronthaul M-Plane**: Management interface controlling the O-RU, generally driven from the O-DU but in the case of the hybrid topology also driven from the SMO.

NOTE: Please refer to [24] for more details.

**rApp**:Modular application that consumes and/or produces non real time management and automation services.

**R1 Interface**: A service-based interface between the rApps and the Non-RT RIC Framework via which R1 services can be produced and consumed.

NOTE: Please refer to [35] for more information

**SMO**:A Service Management and Orchestration framework.

NOTE: Please refer to Clause 5.3.1for more details.

**SMO External Interface**:The interface between the SMO and an SMO External System.

**SMO External System**:A data source outside the O-RAN domain that provides data to the SMO.

NOTE: External consumers of SMO data are not addressed in the present document.

**SMO Functions (SMOFs)**: Internal SMO entities which provide one or more SMO Services.

NOTE: An SMO Function exposes standardized interfaces which enable interoperability between SMO Functions.

**SMO Service (SMOS)**:Standardized cohesive set of management, orchestration and automation capabilities offered by an SMO Function.

**xApp**: An application consuming and/or producing Near-RT RIC services via the Near-RT RIC API to provide value added control of, or guidance to the E2 Nodes.

**Y1**: An interface over which RAN analytics services are exposed by the Near-RT RIC to be consumed by Y1 consumers.

**Y1 consumers**: A role played by entities within or outside of the PLMN trust domain that consumes the Y1 services produced by the Near-RT RIC.

### Abbreviations

For the purposes of the present document, the abbreviations given in 3GPP TR 21.905 [i.1] and the following apply. An abbreviation defined in the present document takes precedence over the definition of the same abbreviation, if any, in 3GPP TR 21.905 [i.1].

4G 4th Generation of mobile communications

5G 5th Generation of mobile communications

3GPP 3rd Generation Partnership Project

5GC 5G Core

5GS 5G System

AAL Accelerator Abstraction Layer

API Application Programing Interface

AI Artificial Intelligence

AMF Access and Mobility Functions

CM Configuration Management

CMTS Cable Modem Termination System

CP Control Plane

CSP Communications Service Provider

CTI Cooperative Transport Interface

CUS Control User Synchronization

DC Dual Connectivity

DOCSIS Data Over Cable Service Interface Specification

DM Data Model

DME Data Management and Exposure

DTLS Datagram Transport Layer Security

E-UTRA Evolved Universal Terrestrial Radio Access

E-UTRAN Evolved Universal Terrestrial Radio Access Network

EN-DC E-UTRAN New Radio - Dual Connectivity

eNB evolved Node B

EPC Evolved Packet Core

FCAPS Fault, Configuration, Accounting, Performance, Security

FFT Fast Fourier Transform

FHGW Fronthaul Gateway

FHM Fronthaul Multiplexer

FM Fault Management

gNB next generation Node B

gNB-CU gNB Central Unit

gNB-DU gNB Distributed Unit

GUAMI Globally Unique AMF Identifier

GUMMEI Globally Unique MME Identifier

HARQ Hybrid Automatic Repeat Request

ID Identifier

iFFT inverse Fast Fourier Transform

IM Information Model

IPSec Internet Protocol Security

LLS Lower Layer Split

LTE Long Term Evolution

MAC Media Access Control

ME Managed Element

MeNB Master eNB

MF Managed Function

ML Machine Learning

MME Mobility Management Entity

Near-RT RIC Near-Real-Time RAN Intelligent Controller

NETCONF Network Configuration Protocol

NF Network Function

NG Next Generation

NG-RAN Next Generation RAN

NGAP Next Generation Application Protocol

NIST National Institute of Standards and Technology

NMS Network Management System

Non-RT RIC Non-Real-Time RAN Intelligent Controller

NR 5G New Radio

O-Cloud O-RAN Cloud

O-CU-CP O-RAN Central Unit - Control Plane.

O-CU-UP O-RAN Central Unit - User Plane

O-DU O-RAN Distributed Unit

O-eNB O-RAN eNB

O-RU O-RAN Radio Unit

OAM Operations, Administration and Maintenance

OLT Optical Line Terminal

ONU Optical Network Unit

Open FH Open Fronthaul

PDCP Packet Data Convergence Protocol

PHY Physical layer

PKI Public Key Infrastructure

PKIX Public Key Infrastructure (X.509)

PM Performance Management

PNF Physical Network Function

PON Passive Optical Network

PRACH Physical Random Access Channel

PTP Precision Time Protocol

RAN Radio Access Network

rApp Non-RT RIC Application

RIC RAN Intelligent Controller

RF Radio Frequency

RLC Radio Link Control

RRC Radio Resource Control

RRH Remote Radio Head

RRU Remote Radio Unit

RT Real Time

RU Radio Unit

SBA Service Based Architecture

SBOM Software Bill of Materials

SDAP Service Data Adaptation Protocol

SME Service Management and Exposure

SMO Service Management and Orchestration

SMOF Service Management and Orchestration Function

SMOS Service Management and Orchestration Service

SRB Signalling Radio Bearer

SSHv2 Secure Shell 2.0

TLS Transport Layer Security

TN Transport Node

TR Technical Report

TRP Transmission and Reception Point

TS Technical Specification

TU Transport Unit

UE User Equipment

UL Up Link

UP User Plane

UPF User Plane Function

WG Working Group

xApp Near-RT RIC Application

X2AP X2 Application Protocol

XnAP Xn Application Protocol

ZTA Zero Trust Architecture

# O-RAN Overview

## Scope and Objectives

O-RAN activities are guided by the following objectives [i.5]:

* Leading the industry towards open, interoperable interfaces, RAN virtualization, and big data and AI enabled RAN intelligence.
* Maximizing the use of common-off-the-shelf hardware and merchant silicon and minimizing proprietary hardware.
* Specifying APIs and interfaces, driving standards to adopt them as appropriate, and exploring open source where appropriate.
* The O-RAN Architecture identifies the key functions and interfaces adopted in O-RAN.

# General O-RAN Architecture Principles

This clause contains the general O-RAN architecture principles as described below.

* The O-RAN architecture, interface specifications, and terminology shall be consistent with 3GPP architecture, interface specifications, and terminology with additions to accommodate O-RAN specific features.
* This document represents the O-RAN architecture at the time of its publication and may evolve as deemed appropriate by the O-RAN ALLIANCE.
* The O-RAN architecture includes a logical representation of a Radio Access Network (RAN) which extends the 3GPP specified RAN and consists of logical NFs or logical nodes (as per 3GPP TS 38.300 [8] and TR 21.905 [i.1]).

NOTE: Therefore, the terms O-RAN NFs as well as O-RAN nodes are used interchangeably to refer to some of the logical O-RAN entities, according to the context used in that particular statement. In any case, they always refer to a logical entity and not to a physical or cloudified instantiation of an O-RAN NF or an O-RAN node.

# O-RAN Architecture

## Overall Architecture of O-RAN

Figure 5.1-1 below provides a high-level view of the O-RAN architecture. It shows that the interfaces - A1, O1, Open Fronthaul M-plane and O2 - connecting SMO (Service Management and Orchestration) framework to O-RAN Network Functions and to O-Cloud. As depicted in this figure, the O-Cloud includes the O-Cloud Notification interface [28] which is available for the relevant O-RAN Network Functions (i.e., Near-RT RIC, O-CU-CP, O-CU-UP and O-DU) to receive O-Cloud related notifications.

Figure 5.1-1 below also illustrates that the O-RAN Network Functions can be hosted on the O-Cloud or on customized hardware.

All O-RAN NFs, except O-RU, are managed via the O1 interface to an authorized SMO framework.

The O1 interface exposes management services for the O-RAN NFs that are managed individually or together, as specified in the OAM Architecture specification [34].

The Open Fronthaul M-plane interface, between SMO and O-RU, supports the O-RU management in hybrid mode, as specified in [24].

O-RAN NFs instantiated on the O-Cloud may utilize the APIs exposed by the Accelerator Abstraction Layer (AAL) defined in [29].

The Near-RT RIC O-RAN NF in figure below provides RANanalytics information services via the Y1 service interface [39]. These services can be consumed by Y1 consumers after mutual authentication and authorization by subscribing to or requesting the RAN analytics information via the Y1 service interface. Y1 consumers role can be played by entities which are within an PLMN trusted domain. Y1 consumers outside the PLMN trusted domain may use Y1 services in a secure manner via an exposure function, e.g., as in 3GPP TS 23.501, Clause 5.20 [1]. The framework for mutual authentication and authorization between Y1 consumers and the Near-RT RIC is not supported in the present document.

![]({{site.baseurl}}/assets/images/9d4835b94c58.png)

Figure 5.1-1: High Level Architecture of O-RAN

Within the logical architecture of O-RAN, as shown in Figure 5.1-2 below, the radio side includes Near-RT RIC, O-CU-CP, O-CU-UP, O-DU, and O-RU O-RAN NFs. The E2 interface connects O-eNB to Near-RT RIC. Although not shown in this figure, the O-eNB does support O-DU and O-RU O-RAN NFs with an Open Fronthaul interface between them. The Near-RT RIC, in the figure below, supports the Y1 service interface towards Y1 consumers. Y1 consumers, unlike the other network elements shown in this figure, does not denote a logical O-RAN function.

As stated earlier, the management side includes SMO Framework containing a Non-RT-RIC function. The O-Cloud, on the other hand, is a cloud computing platform comprising a collection of physical infrastructure nodes that meet O-RAN requirements to host the relevant O-RAN NFs (such as Near-RT RIC, O-CU-CP, O-CU-UP, and O-DU etc.), the supporting software components (such as Operating System, Virtual Machine Monitor, Container Runtime, etc.) and the appropriate management and orchestration functions. The virtualization of O-RU is not supported in the present document.

As shown in this figure, the O-RU provides the Open Fronthaul M-Plane interface to authorized O-DU in hierarchical mode, or to authorized O-DU and SMO in hybrid mode as specified in [24] and [34].

NOTE: The LLS (O-DU to O-RU interface) specified in Clauses 5.3.5 and 5.3.6 (Split Option 7-2x) is the Open Fronthaul interface described in the O-RAN Open Fronthaul Specification [19]. Other LLS options [i.2] may be considered for reference designs when the relevant interfaces are described in specifications created by related open industry initiatives (e.g., the Small Cell Forum for Split Option 6) or in O-RAN white-box hardware specifications (e.g., Split Option 8).

![]({{site.baseurl}}/assets/images/8c7dcf3f61db.png)

Figure 5.1-2: Logical Architecture of O-RAN

The following figure shows the Uu interface between UE and O-RAN NFs as well as between UE and O-eNB. As shown in Figure 5.1-3 below, the dotted box denotes all the O-RAN NFs required to support the Uu interface for NR. The O-eNB, on the other hand, terminates the Uu interface for LTE. Please refer to Clause 5.4.17 for more details.

![]({{site.baseurl}}/assets/images/53b52f7d4143.png)

Figure 5.1-3: Uu interface for O-RAN Network Functions and O-eNB

## O-RAN Control Loops

The O-RAN architecture supports at least the following control loops involving different O-RAN functionalities:

* Non-RT (Non-Real Time) control loops
* Near-RT (Near-Real Time) control loops
* RT (Real Time) control loops

![]({{site.baseurl}}/assets/images/bbbc78d3cd98.png)

Figure 5.2-1: O-RAN Control Loops

As shown in Figure 5.2-1 above, the control loops are defined based on the controlling entity and the architecture shows the other logical entities with which the control loop host interacts.

Control loops exist at various levels and run simultaneously. Depending on the use case, they may or may not interact with each other. The use cases for the Non-RT and Near-RT control loops and the interaction between the RICs for these use cases are fully defined by O-RAN Use Cases Detailed Specification [38]. That specification [38] also defines relevant interaction for the O-CU-CP and O-DU control loops, responsible for call control and mobility, radio scheduling, HARQ, beamforming etc. along with slower mechanisms involving SMO management interfaces.
The timing of these control loops is use case dependent. Typical execution time for use cases involving the Non-RT control loops are 1 second or more; Near-RT control loops are in the order of 10 milliseconds or more; control loops in the E2 Nodes can operate below 10 milliseconds. (e.g., O-DU radio scheduling).

For any specific use case, however, a stable solution would require the loop time in the Non-RT RIC and/or SMO management plane processes to be significantly longer than the loop time for the same use case in the control entities stated above.

## Description of O-RAN Architecture Elements

### Service Management and Orchestration (SMO)

#### SMO Architecture Principles

Service Based Architecture (SBA) introduces the roles of service producer and service consumer together with standardized service-based interfaces. These standardized service-based interfaces enable interoperability within the SMO. SBA is not concerned with the implementation, but it defines logical functions in their service producer and consumer roles. When properly applied the SBA approach can enable the following:

* Validates produced services with consumer use cases.
* Identifies service operations with their information model defining semantic behaviour.
* Specifies the API and a data model for a syntactic interface.
* Identifies common services that can be produced by a single producer such as those that are commonly used by multiple internal consumers (e.g., authentication, authorization, service registration and discovery, data management, etc.).

#### SMO Services (SMOSs)

##### Introduction to SMO Services

In the O-RAN architecture, SMO is responsible for RAN domain management. The SMO description in this architecture document is focused on the SMO services that support the RAN. Following the SBA principles above, the SMO Services produced by the SMO are defined. A SMOF implementation can produce and/or consume any combinations of one or more SMOSs, provided that the SMOF complies with the O-RAN specifications of the interfaces exposing the SMOSs.

The Non-RT RIC SMOF example depicted in the Figure 5.3-1 below shows support for rApps and for A1 related SMOSs. Otherwise, the definition of SMOFs is in general not in scope of the O-RAN specifications, as the interoperable functional behaviour of SMOFs is specified via the SMOS Producer/Consumer roles.

The SMO Services produced by the SMO are:

* RAN NF OAM SMO Service, including capabilities such as,
  + RAN NF Performance Assurance Management (NFPM)
  + RAN NF Fault Supervision Management (NFFM)
  + RAN NF Provisioning Management (NFCM)
  + Others, e.g., Tracing, Logging, etc.
* Network Functions Orchestration (NFO) SMOS
* Federated O-Cloud Orchestration and Management (FOCOM) SMOS
* Service Management and Exposure (SME) SMOS
* Data Management and Exposure (DME) SMOS
* Topology Exposure and Inventory Management (TE&IV) SMOS
* RAN Analytics SMOS
* Service & Subnet Slice Orchestration SMOS
* Service & Subnet Slice Assurance SMOS
* AI/ML workflow (AIMLWF) SMOS
* rApp Management SMOS
* A1 related SMOSs
* Software package onboarding SMOS
* Policy Management and Information (PMI).

SME SMOS supports the exposure of other SMOSs, to both internal and external SMOS consumers.

DME SMOS supports the exposure of data produced by SMOS Producers, to both internal and external SMOS consumers.

The SMOSs described in this document are represented in a service-based architecture in the Figure 5.3-1 below.

![]({{site.baseurl}}/assets/images/7e6efc3888fc.png)

Figure 5.3-1: SMOSs in the SMO SBA representation

##### SMO in the O-RAN Architecture

All the SMO Service producers represented in Figure 5.3-1 can also be SMOS consumers.

The SMO consumes services offered by other O-RAN architecture elements through four key southbound interfaces:

* A1 Interface between the Non-RT RIC in the SMO and the Near-RT RIC for RAN Optimization.
* O1 Interface provides SMO FCAPS support either directly or indirectly between the SMO and the O-RAN Network Functions.
* In the hierarchical model, SMO FCAPS support information over O1 to the O-DU which uses the Open FH M-Plane interface to manage the O-RU.
* In the hybrid model, SMO provides FCAPS support information over Open FH M-Plane interface between the SMO and the O-RU and over O1 to the O-DU which uses the Open FH M-Plane interface to manage the O-RU.
* O2 Interface between the SMO and the O-Cloud to provide O-Cloud resource management and workload management.

##### Non-RT RIC

Non-RT RIC is the functionality internal to the SMO that supports intelligent RAN optimization by:

* enabling an A1-related SMOS to provide policy-based guidance over the A1 interface
* enabling an A1-related SMOS to provide enrichment information over the A1 interface
* enabling an A1-related SMOS to provide ML model management over the A1 interface
* enabling RAN optimization actions through RAN NF OAM SMOS over O1 and Open FH M-Plane interfaces, and NFO and FOCOM SMOSs over O2 interface

Non-RT RIC framework enables rApps which consume and/or produce services over the R1 interface. For more information, refer to [27].

Non-RT RIC supports intelligent RAN optimization control loops through rApps with intervals greater than 1 second.

##### SMO capabilities extensions

As a flexible extension mechanism, the SMO allows delivery of aspects of RAN management and orchestration functionality via rApps.

##### External exposure of SMO capabilities and Data

The exposure of SMO capabilities and data to external SMO consumers is done via SME and DME respectively, as represented in an SBA approach depicted in Figure 5.3-2.

![]({{site.baseurl}}/assets/images/5df6a39db479.png)

**Figure 5.3-2: SMO external terminations**

### Near-RT RIC

Near-RT RIC is an O-RAN NF that enables near real-time control and optimization of services and resources of E2 Nodes via fine-grained data collection and actions over the E2 interface with control loops in the order of 10 ms-1s. The Near-RT RIC hosts one or more xApps that use E2 interface to collect near real-time information (e.g., on a UE basis or a Cell basis) and provide value added services. The Near-RT RIC control over the E2 Nodes is steered via the policies and the enrichment data provided via A1 from the Non-RT RIC. Based on the available data, the Near-RT RIC generates the RAN analytics information and exposes it via Y1 interface.

The functional enhancement provided by the Near-RT RIC and the E2 Node is subject to the capability of the E2 Node exposed over the E2 interface by means of the E2 Service Model [25], in order to support the use cases described in [38]. The E2 service model describes the functions in the E2 Node which may be controlled by the Near-RT RIC and the related procedures. For a function exposed in the E2 Service Model [25], the Near-RT RIC may e.g., monitor, override, or control via policies the behavior of E2 Node.

In the event of a Near-RT RIC failure, the E2 Node shall be able to provide services but there may be an impact to certain optimization capabilities that are provided by the Near-RT RIC.

The Near-RT RIC is composed of a Near-RT RIC platform and one or more xApps [26] and their capabilities are exposed as services. Both the Near-RT RIC platform and an xApp can be a service producer and/or a service consumer, and these services can be accessed via the set of Near-RT RIC APIs as illustrated in Figure 5.3-3.

![]({{site.baseurl}}/assets/images/04df5daab70d.png)

Figure 5.3-3: Service-based representation of the Near-RT RIC [26]

### O-CU-CP

The O-CU-CP terminates the NG-c, X2-c, Xn-c, F1-c, and E1 interfaces as well as the RRC and PDCP (for SRB) protocols towards the UE as specified in [10].

The O-CU-CP terminates E2 interface to Near-RT RIC as specified in [22].

The O-CU-CP is managed via O1 interface by the SMO as specified in [34].

The O-CU-CP terminates NG-c interface to 5GC as specified in [8].

The O-CU-CP terminates X2-c interface to O-eNB (in case O-eNB is an O-RAN eNB), eNB, or to en-gNB in EN-DC as specified in [6] and [8].

The O-CU-CP terminates Xn-c to O-CU-UP, O-eNB (in case O-eNB is an O-RAN ng-eNB), gNB, or to ng-eNB as specified in [8] and [12].

### O-CU-UP

The O-CU-UP terminates the NG-u, X2-u, S1-u, Xn-u, F1-u, and E1 interfaces as well as the PDCP and SDAP protocols towards the UE as specified in [10].

The O-CU-UP terminates E2 interface to Near-RT RIC as specified in [22].

The O-CU-UP is managed via O1 interface by the SMO as specified in [34].

The O-CU-UP terminates NG-u interface to 5GC as specified in [8].

The O-CU-UP terminates X2-u interface to O-eNB (in case O-eNB is an O-RAN eNB), eNB, or to en-gNB in EN-DC as specified in [6] and [8].

The O-CU-UP terminates Xn-u to O-CU-UP, O-eNB (in case O-eNB is an O-RAN ng-eNB), gNB, or to ng-eNB as specified in [8] and [12].

### O-DU

The O-DU is an O-RAN NF in the O-RAN Architecture. An O-DU, combined with one or more O-RU(s) connected to it, supports and is fully compatible with the functions of a gNB-DU as defined by 3GPP TS 38.401 [10].

The O-DU may be implemented either by virtualized or non-virtualized methods.

The O-DU terminates the E2 and the F1 interface (according to the principles described in Clause 5.4.9), and the Open Fronthaul interface (also known as LLS interface [19]) as well as the RLC, MAC, and High-PHY functions of the radio interface towards the UE.

The O-DU is managed via O1 interface by the SMO as specified in [34].

The O-DU terminates the Open Fronthaul M-Plane interface, towards the O-RU, to support O-RU management either in hierarchical model or hybrid model, as specified in [24].

The O-DU may support CTI to a TN to control UL bandwidth allocation to TUs for UL LLS traffic on shared point-to-multipoint transport network (TN is a PON OLT or DOCSIS CMTS, TU is a PON ONU or DOCSIS Cable Modem). The CTI is specified in [20] and [21]. An informative overview of the CTI is shown in Annex A.

### O-RU

The O-RU terminates the Open Fronthaul interface (also known as LLS interface [19]) as well as Low-PHY functions of the radio interface towards the UE. This is deployed as a PNF.

The O-RU terminates the Open Fronthaul M-Plane interface towards the O-DU and SMO as specified in [24].

### O-eNB

In case O-eNB is an O-RAN O-eNB, O-eNB terminates the S1, X2, O1 and E2 interfaces as well as the RRC, PDCP, RLC, MAC, and PHY layers of the LTE-Uu radio interface towards the UE as specified in [4]. In case O-eNB is an O-RAN ng-eNB, O-eNB terminates the NG, Xn, O1, and E2 interfaces as well as the RRC, SDAP, NR PDCP, RLC, MAC, and PHY layers of the LTE-Uu radio interface towards the UE as specified in [10].

In case O-eNB is an O-RAN ng-eNB,

* the O-eNB terminates E2 interface to Near-RT RIC as specified in [22].
* the O-eNB is managed via O1 interface by the SMO as specified in [34].
* the O-eNB terminates NG interface to 5GC as specified in [8].
* the O-eNB terminates Xn interface to O-eNB, gNB, ng-eNB, or O-CU-CP/O-CU-UP as specified in [8] and [12].

In case O-eNB is an O-RAN eNB,

* the O-eNB terminates E2 interface to Near-RT RIC as specified in [22].
* the O-eNB is managed via O1 interface by the SMO as specified in [34].
* the O-eNB terminates S1 interface to EPC as specified in [4].
* the O-eNB terminates X2 interface to O-eNB, eNB, en-gNB, or O-CU-CP/O-CU-UP as specified in [4] and [12].

The O-eNB supports O-DU and O-RU O-RAN NFs with an Open Fronthaul interface between them as specified in [19] and [24].

### O-Cloud

O-Cloud is a cloud computing platform comprising a collection of physical infrastructure nodes that meet O-RAN requirements to host the relevant O-RAN NFs (i.e., Near-RT RIC, O-CU-CP, O-CU-UP, and O-DU), the supporting software components (such as Operating System, Virtual Machine Monitor, Container Runtime, etc.), and the appropriate management and orchestration functions which satisfy the following criteria:

* Exposes the O-RAN O2 interface for cloud and workload management to provide functions such as infrastructure discovery, registration, software lifecycle management, workload lifecycle management, fault management, performance management, and configuration management.
* Exposes O-RAN AAL API towards the hosted O-RAN workloads for hardware accelerator management.
* Exposes O-Cloud Notification interface towards the hosted O-RAN workloads in order to notify the workloads of critical notifications (e.g., PTP synchronization states).
* The virtualization of the O-RU is not supported in the present document.

## Relevant Interfaces in O-RAN Architecture

### Introduction to Relevant Interfaces in O-RAN Architecture

The following interfaces are defined and maintained by O-RAN:

* A1 interface
* O1 interface
* O2 interface
* E2 interface
* Y1 interface
* O-Cloud Notification interface
* Open Fronthaul interface
* R1 interface
* Near-RT RIC APIs

The following interfaces are defined and maintained by 3GPP, but seen also as part of the O-RAN architecture:

* E1 interface
* F1-c interface
* F1-u interface
* NG-c interface
* NG-u interface
* X2-c interface
* X2-u interface
* Xn-c interface
* Xn-u interface
* Uu interface

Following clauses describe the termination points of O-RAN defined interfaces and 3GPP interfaces adopted by O-RAN.

### A1 Interface

A1 interface is between Non-RT-RIC and the Near-RT RIC [18].

A1 is the interface between the Non-RT RIC in SMO and the Near-RT RIC function O-RAN NF. A1 interface supports three types of services as defined in [18]:

* Policy Management Service
* Enrichment Information Service
* ML Model Management Service

A1 policies have the following characteristics compared to persistent configuration [18] [38]. A1 policies,

* are not critical to traffic;
* have temporary validity;
* may handle individual UE or dynamically defined groups of UEs;
* act within and take precedence over the configuration;
* are non-persistent, i.e., do not survive a restart of the Near-RT RIC.

### O1 Interface

The O1 interface is used by SMO for the management of the O-RAN NFs as defined in [34] and [31].

### O2 Interface

The O2 interface is between the SMO and O-Cloud as introduced in [33]. The O2 interface provides two categories of services - O2 deployment management services (O2dms) and O2 infrastructure management services (O2ims).

### E2 Interface

E2 is a logical interface connecting the Near-RT RIC with an E2 Node as defined in [22].

* An E2 Node is connected to only one Near-RT RIC.
* A Near-RT RIC can be connected to multiple E2 Nodes.

The E2 interface is a control plane interface that provides support for Near-RT RIC Services using E2 Application Protocol and E2 Services Models [22].

### O-Cloud Notification Interface

The O-Cloud Notification interface allows event consumer such as an O-DU deployed on O-Cloud to subscribe to events/status from the O-Cloud. The cloud infrastructure will provide event producer to enable cloud workloads to receive events/status that might be known only to the infrastructure.

### Open Fronthaul Interface

The Open FH (Fronthaul) Interface is between O-DU and O-RU logical nodes [19] [24]. The Open FH Interface includes the CUS (Control User Synchronization) Plane and M (Management) Plane. In hybrid mode, the Open FH M-Plane interface connects the O-RU to the SMO for FCAPS functionality.

### E1 Interface

The E1 interface, as defined by 3GPP, is between the gNB-CU-CP and gNB-CU-UP logical nodes [10] [14]. In O-RAN, it reuses the principles and protocol stack defined by 3GPP but is adopted between the O-CU-CP and the O-CU-UP logical nodes.

### F1-c Interface

The F1-c interface, as defined by 3GPP, is between the gNB-CU-CP and gNB-DU logical nodes [10] [16]. In O-RAN, it reuses the principles and protocol stack defined by 3GPP but is adopted between the O-CU-CP and the O-DU logical nodes, as well as for the definition of interoperability profile specifications.

### F1-u Interface

The F1-u interface, as defined by 3GPP, is between the gNB-CU-UP and gNB-DU logical nodes [10] [16]. In O-RAN, it reuses the principles and protocol stack defined by 3GPP but is adopted between the O-CU-UP and the O-DU logical nodes, as well as for the definition of interoperability profile specifications.

### NG-c Interface

The NG-c interface, as defined by 3GPP, is between the gNB-CU-CP and the AMF in the 5GC [8]. It is also referred as N2 in [8]. In O-RAN, it reuses the principles and protocol stack defined by 3GPP but is adopted between the O-CU-CP and the 5GC.

### NG-u Interface

The NG-u interface, as defined by 3GPP, is between the gNB-CU-UP and the UPF in the 5GC [8]. It is also referred as N3 in [8]. In O-RAN, it reuses the principles and protocol stack defined by 3GPP but is adopted between the O-CU-UP and the 5GC.

### X2-c Interface

The X2-c interface is defined in 3GPP for transmitting control plane information between eNBs or between eNB and en-gNB in EN-DC as specified in [6] and [8]. In O-RAN, it reuses the principles and protocol stack defined by 3GPP but is adopted for the definition of interoperability profile specifications.

### X2-u Interface

The X2-u interface is defined in 3GPP for transmitting user plane information between eNBs or between eNB and en-gNB in EN-DC as specified in [6] and [8]. In O-RAN, it reuses the principles and protocol stack defined by 3GPP but is adopted for the definition of interoperability profile specifications.

### Xn-c Interface

The Xn-c interface is defined in 3GPP for transmitting control plane information between gNBs, ng-eNBs or between ng-eNB and gNB as specified in [8] and [12]. In O-RAN, it reuses the principles and protocol stack defined by 3GPP but is adopted for the definition of interoperability profile specifications.

### Xn-u Interface

The Xn-u interface is defined in 3GPP for transmitting user plane information between gNBs, ng-eNBs or between ng-eNB and gNB as specified in [8] and [12]. In O-RAN, it reuses the principles and protocol stack defined by 3GPP but is adopted for the definition of interoperability profile specifications.

### Uu Interface

The UE to eNB/gNB interface in 3GPP is denoted as the Uu interface. The Uu is a complete protocol stack from L1 to L3 and as such, seen as a whole, it terminates in the NG-RAN. If the NG-RAN is decomposed, different protocols terminate at different reference points and none of them has been defined by O-RAN. Since the Uu messages still flow from the UE to the intended eNB/gNB managed function, it is not shown in the O-RAN architecture as a separate interface to a specific managed function. For more information on the Uu interface between the UE and the NG-RAN, please refer to Clauses 5.2 and 5.3 of [10].

### CTI (Cooperative Transport Interface)

Interface between the O-DU and TN to dynamically control bandwidth allocations to TUs when using a shared point-to-multipoint transport network. The CTI is specified in [20] and [21].

### Y1 Interface

Y1 service interface [39] allows the Y1 consumers to subscribe or request the RAN analytics information provided by Near-RT RIC.

### R1 Interface

The R1 interface is a service-based interface between the rApps and the Non-RT RIC framework via which R1 services can be produced and consumed as specified in O-RAN TS Non-RT RIC Architecture [27].

The producers of R1 services can be part of the Non-RT RIC and/or the SMO Framework. R1 services are specified in O-RAN TS R1GAP [35].

### Near-RT RIC APIs

The Near-RT RIC APIs are a set of service-based interfaces that can be produced and consumed by the Near-RT RIC Platform and xApps as specified in O-RAN TS Near-RT RIC Architecture [26].

## UE Associated Identifiers Used in O-RAN

As described earlier (Clauses 5.3.1 and 5.3.2), the Non-RT RIC and Near-RT RIC enable intelligent RAN optimization via A1, O1 and E2 interfaces respectively.

To support intelligent RAN optimization, the Non-RT RIC with rApps and Near-RT RIC with xApps utilize the knowledge of different UE associated events reported by the O-RAN NFs (excluding O-RU) over E2 and O1 interfaces. Both the Non-RT RIC and Near-RT RIC may need to correlate different UE associated events reported by the O-RAN functions for the same UE. In order to facilitate this correlation task, the reporting O-RAN NF includes a set of UE associated identifiers with any report containing UE specific information.

The Table 5.5-1 below shows the set of UE associated identifiers to be reported by any O-RAN NF (excluding O-RU) over O1 and E2 interfaces for any UE associated information.

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| UE associated identifier | Reference Specification | Comments |
| AMF UE NGAP ID | 3GPP TS 38.413 [11] | Reported by O-CU-CP and O-eNB for UEs connected to 5GC. |
| GUAMI | 3GPP TS 38.413 [11] | Reported by O-CU-CP and O-eNB for UEs connected to 5GC. |
| MME UE S1AP ID | 3GPP TS 36.413 [5] | Reported by O-eNB for UEs connected to EPC. |
| GUMMEI | 3GPP TS 36.413 [5] | Reported by O-eNB for UEs connected to EPC. |
| gNB-CU UE F1AP ID | 3GPP TS 38.473 [17] | Reported by O-CU-CP and O-DU. |
| gNB-CU-CP UE E1AP ID | 3GPP TS 38.463 [15] | Reported by O-CU-CP and O-CU-UP. |
| RAN UE ID | 3GPP TS 38.473 [17]  3GPP TS 38.463 [15] | Reported by O-CU-CP, O-CU-UP and O-DU when available/allocated. |
| M-NG-RAN node UE XnAP ID | 3GPP TS 38.423 [13] | Identifier reported when the UE operates in DC with 5GC. Reported by O-CU-CP and O-eNB. |
| Global NG-RAN Node ID | 3GPP TS 38.423 [13] | Identifier reported when the UE operates in DC with 5GC. Identifies the peer gNB/ng-eNB and is reported in conjunction with the M-NG-RAN node UE XnAP ID to ensure that the UE can be uniquely identified over Xn interface. Reported by O-eNB and O-CU-CP. |
| MeNB UE X2AP ID | 3GPP TS 36.423 [7] | Identifier reported when the UE operate in DC with EPC. Reported by O-CU-CP and O-eNB. |
| Global eNB ID | 3GPP TS 36.423 [7] | Identifier reported when the UE operate in DC with EPC. Identifies the peer eNB and is reported in conjunction with the MeNB UE X2AP ID to ensure that the UE can be uniquely identified over X2 interface. Reported by O-CU-CP and O-eNB. |
| C-RNTI (Cell Radio Network Temporary Identifier) | 3GPP TS 38.331 [9] | Optionally reported by O-CU-CP, O-DU and O-eNB. |

</div>

Table 5.5-1: UE Associate Identifiers used in O-RAN

Additionally, the Non-RT RIC and Near-RT RIC may initiate messages towards the O-RAN NFs which are associated with specific UEs. In such cases, the Non-RT RIC and Near RT RIC may include one or more of the UE associated identifiers specified in the Table 5.5-1 above with any UE associated messages over A1 and E2 interface for identification of the UE in the O-RAN NFs.

## O-RAN Security Architecture

The goals of the O-RAN ALLIANCE are to achieve a secure, open, and interoperable RAN. Building upon security advancements from the 3GPP and IETF standards development organizations, the O-RAN ALLIANCE specifies an O-RAN security architecture with the goal to enable 5G CSPs (Communication Service Provider) to deploy and operate O-RAN with the same, or higher level of confidence as a 3GPP-specified RAN. The O-RAN ALLIANCE is strengthening O-RAN's security posture by specifying security requirements and security controls that mitigate risk across its attack surface while pursuing the goals of a ZTA (Zero-Trust Architecture).

The O-RAN security architecture is specified in the following two O-RAN Technical Specifications:

* Security Protocols Specifications [36]
* Security Requirements and Controls Specifications [37]

The above TSs [36] and [37] include specifications for configuration and cipher suites with use of the following security protocols on O-RAN interfaces to ensure confidentiality, integrity, availability, and authenticity: SSHv2 (Secure Shell 2.0), TLS 1.2 and 1.3, DTLS (Datagram Transport Layer Security) 1.2, IPsec (Internet Protocol Security), OAuth 2.0, CMPv2, IEEE 802.1X, and NETCONF (Network Configuration Protocol) over Secure Transport.

O-RAN has also provided requirements for SBOM (Software Bill of Materials) in [37].

The test cases to verify proper security implementation of O-RAN security architecture is specified in the O-RAN Technical Specification:

* O-RAN Security Tests Specifications [32]

The threats to the O-RAN architecture and the risk assessment are documented in the TR:

* O-RAN Security Threat Modeling and Risk Assessment [i.4]

The security threat modeling and risk analysis is used to derive the security requirements and security controls in the Security Requirements and Controls Specifications [37]. The O-RAN Security Threat Modeling and Risk Assessment TR [i.4] considers external and internal threats to achieve a ZTA. In addition, security analysis TRs are maintained for O-RAN NFs and features. These TRs help to drive the requirements in the O-RAN security specifications.

NOTE: Internal and external threats are considered in a ZTA, as defined in NIST SP 800-207 [i.6]. Achieving a ZTA is an incremental process, as identified by the United States Department of Homeland Security's Cybersecurity and Infrastructure Security Agency [i.7]. The O-RAN ALLIANCE is continuing to pursue a ZTA as the O-RAN architecture, threats, and controls evolve.

# O-RAN Information Model (IM) Principles

O-RAN shall align its Information Model (IM) with 3GPP to the extent possible. The additional O-RAN extensions to its IM and DMs (Data Model) are described in [30].

Annex A (Informative): Implementation Options of O-RAN Functions and Network Elements

1. Shared Cell

Shared cell [19] is defined as the operation for the same cell by several O-RUs with one or multiple component carriers. It can be deployed in either FHM (Fronthaul Multiplexer) or Cascade mode as described below.

In FHM mode, the shared cell may be realized by placing an FHM function between an O-DU and several O-RUs that may have one or multiple component carriers from these O-RUs. FHM function may be modelled as an O-RU with LLS Fronthaul support (same as normal O-RU) along with the copy and combine function (additional to normal O-RU), but without radio transmission/reception capability. The Figure A.1-1 below shows how each O-RU can be used for either operating in the same cell (Single Cell Scenario) or in different cells (Multiple Cells Scenario) by configuring the FHM function.

![]({{site.baseurl}}/assets/images/d867be850061.png)

Figure A.1-1: Shared cell deployment using FHM mode

In Cascade mode, the shared cell is realized by several O-RUs cascaded in chain. In this case, one or more O-RUs are inserted between the O-DU and the O-RU. The O-RUs in the cascaded chain except for the last O-RU support Copy and Combine function. Figure A.1-2 below shows an implementation of Cascade mode shared cell.

![]({{site.baseurl}}/assets/images/dc7223189d97.png)

Figure A.1-2: Shared cell deployment using Cascade mode

The Cascade mode, as described above, is implemented within the O-RU.

Please refer to [19] for additional information.

1. FHGW Function

The FHGW (Fronthaul Gateway) function may be placed between the O-DU and RU/RRU (Radio Unit / Remote Radio Unit) with the following O-RAN specified interfaces:

* The interface between O-DU and FHGW function is Open Fronthaul (Option 7-2x).
* The interface between FHGW function and RU/RRU is subject to reference implementation developed by any relevant O-RAN WG (e.g., WG7) as described in [23].
* The interface between FHGW function and RU/RRU does not support Open Fronthaul (Option 7-2x).
* The FHGW function may be packaged with other functions (such as Ethernet switching) in a physical product, as considered within WG7.

The Figure A.2-1 below depicts the deployment of the FHGW function using O-RAN specified interfaces.

![]({{site.baseurl}}/assets/images/0cf26085afad.png)

Figure A.2-1: Deployment of O-DU and RU/RRU using FHGW function

1. Near-RT RIC

The Near-RT RIC can control multiple E2 Nodes or can control a single E2 Node. The following figures show two implementation options of Near-RT RIC.

![]({{site.baseurl}}/assets/images/2a24256774f6.png)

Figure A.3-1: Centralized Near-RT RIC Serving 4G and 5G Simultaneously

![]({{site.baseurl}}/assets/images/28e5679e022a.png)

Figure A.3-2: Distributed Near-RT RIC

1. Near-RT RIC, O-CU-CP, O-CU-UP, O-DU, and O-RU

Although the O-RAN architecture specifies the O-RAN NFs Near-RT RIC, O-CU-CP, O-CU-UP, O-DU and O-RU as separate O-RAN architecture elements, it is possible in the implementation to aggreagate some or all of these O-RAN NFs, and thus collapsing some of the internal interfaces, e.g., F1-c, F1-u, E1, and E2. At least the following implementation options are possible:

* Disaggregated O-RAN NFs as per O-RAN architecture
* Aggregate O-CU-CP and O-CU-UP
* Aggregate O-CU-CP, O-CU-UP, and O-DU
* Aggregate Near-RT RIC, O-CU-CP, and O-CU-UP
* Aggregate O-CU-CP, O-CU-UP, O-DU, and O-RU
* Aggregate O-DU and O-RU
* Aggregate Near-RT RIC, O-CU-CP, O-CU-UP, O-DU, and O-RU

Aggregation of O-RAN NFs is supported by the O-RAN specified interfaces O1 and E2. For the O1 interface, the aggregated O-RAN NFs will be managed as separate Managed Functions belonging to a single Managed Element as specified in [34]. For the E2 interface the aggregated O-RAN NFs can be exposed as part of the E2 Service Model towards the Near-RT RIC (see Annex A in [22]).

Please see the figures (i.e., Figure A.4-1 through Figure A.4-7) below.

![]({{site.baseurl}}/assets/images/8c7dcf3f61db.png)

Figure A.4-1: Disaggregated O-RAN Network Functions

![]({{site.baseurl}}/assets/images/b0fc33ce936e.png)

Figure A.4-2: Aggregated O-CU-CP and O-CU-UP

![]({{site.baseurl}}/assets/images/ad7dff0e72e2.png)

Figure A.4-3: Aggregated O-CU-CP, O-CU-UP, and O-DU

![]({{site.baseurl}}/assets/images/bf3617994614.png)

Figure A.4-4: Aggregated Near-RT RIC, O-CU-CP, and O-CU-UP

![]({{site.baseurl}}/assets/images/59568b5b91af.png)

Figure A.4-5: Aggregated O-CU-CP, O-CU-UP, O-DU, and O-RU

![]({{site.baseurl}}/assets/images/b9cffa5de709.png)

Figure A.4-6: Aggregated O-DU and O-RU

![]({{site.baseurl}}/assets/images/e7b9d721474c.png)

Figure A.4-7: Aggregated Near-RT RIC, O-CU-CP, O-CU-UP, O-DU, and O-RU

1. Cooperative Transport

To enhance the resource utilization and reduce the latency of UL LLS traffic when using a shared point-to-multipoint transport network requiring resource allocation (such as PON or DOCSIS), the O-RAN architecture supports a cooperative transport feature. The cooperative transport feature is based on the O-DU's knowledge of the expected uplink LLS traffic from a given O-RU which is provided to the associated (PON or DOCSIS) TN in the transport network. This enables the TN to dynamically allocate the correct bandwidth over the shared transport network to the TU that is used by the O-RU. The CTI signaling is described in [20]. To support the CTI, the O-DU is configured over the O1 interface with CTI client specific configuration as described in [21]. When there are intermediate nodes between the O-DU and the TN, they will forward the CTI messages transparently but will not participate in CTI interactions.

A simplified architecture of the CTI is shown in figure A.5-1 below. The SMO, O-DU and O1 interface shown in this figure are part of the O-RAN Architecture (please see Clauses 5.3.1, 5.3.5, and 5.4.3, respectively), whereas the TN and Transport OAM, are the components of the transport network. For detailed specification and reference architecture, please see [20] and [21].

![]({{site.baseurl}}/assets/images/fe63f2bdd5a4.png)

A.5-1: Simplified CTI Architecture

Annex (informative):
Change History

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Date** | **Revision** | **Description** |
| 2020.01.16 | 01.00 | * First version with an overall architecture of O-RAN. * Describe O-RAN architecture elements and relevant interfaces. |
| 2020.10.30 | 02.00 | * Introduce new implementation options by bundling O-RAN logical functions. * Clarify the O-RAN position that OFH (7-2x) is the interface between O-DU and O-RU. * Add a new principle that architecture may evolve as deemed appropriate by the O-RAN community. |
| 2020.11.25 | 03.00 | * Introduce functional architecture of Non-RT RIC with description of rApps, R1 interface, and Non-RT RIC framework. * Add implementation options of FHM and FHGW functions. * Remove the optionality of SMO to support OFH M-Plane interface towards O-RU. * Add definition of "Managed Application". * Add 'legends' to the architecture figures. |
| 2021.03.18 | 04.00 | * Enhance O-RAN control loops by making their execution times and interactions dependent on use cases. * Explain that the execution times of Non-RT and Near-RT control loops may overlap as dictated by use cases. * Designate the O1 interface between SMO and O-RU as a topic for future study. * Use two colors (i.e., green for O-RAN and black for 3GPP) for the logical interfaces in the architecture figures. |
| 2021.07.16 | 05.00 | * Elaborate the relationship between rApps, R1 interface, Non-RT RIC framework, and SMO framework within Non-RT RIC functional architecture. * Introduce the concept of 'anchored' vs. 'non-anchored' functionality within SMO and Non-RT RIC frameworks. * Provide a high-level view of 'functions' required to enable the capabilities of rApps. * Add a CTI clause and an Annex clause containing a simple CTI implementation. |
| 2021.11.18 | 06.00 | * Clarify how R1 interface works between rApps and O-RAN logical functions. * Extend the "OFH M-Plane" interface between SMO and O-RU. * Add 'UE Associated Identifiers Used in O-RAN' clause for correlating UE identities. * Introduce "O-Cloud Notification" interface between O-RAN functions and O-Cloud. * Add "O-RAN Security Architecture" clause consisting of 'Threat Analysis', 'Attach Surfaces', and 'Security Protocols'. |
| 2022.10.21 | 07.00 | * Add the concept of SBA as part of the "SMO Architecture Principles" clause. * Implement changes (i.e., new legal statement in cover page, revised foot note, and deletion of annex ZZZ) to be compliant with the new IPR policy of O-RAN ALLIANCE. |
| 2022.11.17 | 08.00 | * Introduce new Y1 interface for exposing RAN analytics information to internal and/or external functions. * Remove all references to future work items (e.g., O1 interface between SMO and O-RU, planned security enhancements etc.) to align with the O-RAN drafting rules. * Add C-RNTI to UE identifier so that it can be optionally reported by O-CU-CP, O-DU, and O-eNB. |
| 2023.03.25 | 09.00 | * Elucidate the role of Y1 consumers within or outside the PLMN trust domain. * Clarify that the Y1 consumers box depicted in figures is not a logical O-RAN function. * Add definitions of "Y1", "Y1 consumers", "SMO External Interface", "SMO External System", "SMOFs", and "SMOS". * Enhance the description of O-DU to align it with the gNB-DU of 3GPP. |
| 2023.07.27 | 10.00 | * Eliminate terminology inconsistencies between O-RAN NF, O-RAN function, and O-RAN node. * Clarify that "O-RAN NF" and "O-RAN node" can be used interchangeably to denote an O-RAN logical entity, according to the context being described. * Add definition of "Cloudified NF". * Update O-eNB clause to be consistent with the description of other O-RAN nodes. |
| 2023.11.21 | 11.00 | * Clarify that O-RAN NF has "O-RAN defined behaviors and interfaces" but "can also inherit and/or extend" a 3GPP Network Function. * Remove "Cloudified NF" definition that addresses deployment aspects to keep the focus of this document on logical network view. * Add R1 interface and Near-RT RIC APIs to "Relevant Interfaces in O-RAN Architecture" clause. * Add text and figure to describe service-base representation of Near-RT architecture. * Simplify "O-RAN Security Architecture" clause by removing informative content and referring to relevant WG11 specifications. * Update relevant clauses to add testability, clarify that O-RAN does not conflict with 3GPP, and align with OAM architecture by representing O1 as a management service. |
| 2024.03.29 | 12.00 | * Revise the definitions of O-Cloud, Near-RT RIC, Near-RT RIC APIs, Near-RT RIC platform, xApp, Non-RT RIC, Non-RT RIC Framework, and rApp to align with ODR (O-RAN Drafting Rules). * Move all TR references to "Informative Reference" clause. * Add overlooked references and acronyms to their respective clauses. * Change O1 related "shall" statements to "is" statements to be consistent with current "Architecture Description". |
| 2024.12.02 | 13.00 | * Add Release 18 as the default 3GPP reference. * Include high-level concepts of Decouple SMO TR. * Remove RRM terminology to avoid potential conflict with 3GPP specifications. * Clarify SMO southbound interfaces for FCAPS support in both hierarchical and hybrid models. * Include the example of Non-RT RIC SMOF consisting of rApps and A1 related SMOSs. * State that the O2 interface has deployment and infrastructure management services. * Add "Non-RT RIC" sub-clause within clause "5.3.1 SMO (Service Management and Orchestration)". |

</div>
---

- View in [GitHub Mode]({{site.github_page_url}}/O-RAN.WG1.TS.OAD-R004-v13.00.docx.md).
- Go back to [Table of Contents]({{site.baseurl}}/).
- Download the [Original Document]({{site.download_url}}/O-RAN.WG1.TS.OAD-R004-v13.00.docx).

---

* toc
{:toc}
