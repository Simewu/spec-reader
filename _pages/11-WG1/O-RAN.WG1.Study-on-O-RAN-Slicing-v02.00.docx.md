---
title: O-RAN.WG1.Study-on-O-RAN-Slicing-v02.00.docx.md
author: O-RAN Alliance, WG1
layout: post
---

- View in [GitHub Mode]({{site.github_page_url}}/O-RAN.WG1.Study-on-O-RAN-Slicing-v02.00.docx.md).
- Go back to [Table of Contents]({{site.baseurl}}/).
- Download the [Original Document]({{site.download_url}}/O-RAN.WG1.Study-on-O-RAN-Slicing-v02.00.docx).

---

* toc
{:toc}

---

**O-RAN Working Group 1 Study on O-RAN Slicing**

#### This is a re-published version of the attached final specification.

For this re-published version, the prior versions of the IPR Policy will apply, except that the previous requirement for Adopters (as defined in the earlier IPR Policy) to agree to an O-RAN Adopter License Agreement to access and use Final Specifications shall no longer apply or be required for these Final Specifications after 1st July 2022.

The copying or incorporation into any other work of part or all of the material available in this specification in any form without the prior written permission of O-RAN ALLIANCE e.V. is prohibited, save that you may print or download extracts of the material on this site for your personal use, or copy the material on this site for the purpose of sending to individual third parties for their information provided that you acknowledge O-RAN ALLIANCE as the source of the material and that you inform the third party that these conditions apply to them and that they must comply with them.

**O-RAN Working Group 1 Study on O-RAN Slicing**

Prepared by the O-RAN Alliance e.V. Copyright (C) 2020 by the O-RAN Alliance e.V. By using, accessing or downloading any part of this O-RAN specification document, including by copying, saving, distributing, displaying or preparing derivatives of, you agree to be and are bound to the terms of the O-RAN Adopter License Agreement contained in the Annex ZZZ of this specification. All other rights reserved.

# 1 Revision History

<div class="table-wrapper" markdown="block">

|  |  |  |  |
| --- | --- | --- | --- |
| **Date** | **Revision** | **Author** | **Description** |
| 2019.12.16 | 02.00.01 | Arda Akman (Netsia) | Initial version of v2.0 (and deletion of v1.0 revision history) |
| 2019.12.26 | 02.00.02 | Arda Akman (Netsia), Tugba Arici (Netsia) | Update to SDO Mapping table to add   * Fault Management * Security Aspects |
| 2019.12.29 | 02.00.03 | Arda Akman (Netsia), Tugba Arici (Netsia) | Updates to GSMA section to reflect the latest GSMA specs |
| 2020.01.20 | 02.00.04 | Arda Akman (Netsia),  Burcu Yargicoglu Sahin (Netsia) | Addition of O1, A1, E2, O2 impact and Deployment Options sections through CR:  - ORAN-WG1.Netsia\_CR\_StudyO-RAN- Slicing\_20012020 |
| 2020.03.01 | 02.00.05 | Arda Akman (Netsia) | Updated references, abbreviations, deployment options and other editorial updates |
| 2020.03.09 | 02.00.06 | Arda Akman (Netsia) | Updates to various sections based on review feedback during WG1 approval process |

</div>

2

3

4

# 1 Contents

1. Revision History 2
2. Chapter 1 Introduction 4
3. 1.1 Scope 4
4. 1.2 References 4
5. 1.3 Definitions and Abbreviations 5
6. 1.3.1 Definitions 5
7. 1.3.2 Abbreviations 6
8. Chapter 2 Objective 7
9. Chapter 3 Common Terminology 8
10. Chapter 4 Slicing in SDOs 9
11. 4.1 Slicing in 3GPP 9
12. 4.2 Slicing in ONAP 11
13. 4.3 Slicing Orchestration in 3GPP SA5 and ETSI NFV MANO 12
14. 4.4 Slicing in ETSI ZSM 14
15. 4.5 Slicing in GSMA 16
16. Chapter 5 O-RAN Slicing Framework 18
17. 5.1 O-RAN Slicing Architecture 18
18. 5.1.1 Non-RT RIC 18
19. 5.1.2 Near-RT RIC 18
20. 5.1.3 O-RAN Central Unit (O-CU) 18
21. 5.1.4 O-RAN Distributed Unit (O-DU) 18
22. 5.1.5 A1 Impact 19
23. 5.1.6 E2 Impact 19
24. 5.1.7 O1 Impact 19
25. 5.1.8 O2 Impact 19
26. Chapter 6 Deployment Options 20
27. Annex A (informative): Additional Information 23
28. A.1 Slicing SDO Mapping Table 23
29. Annex ZZZ O-RAN Adopter License Agreement 24

31

32

33

34

1 Chapter 1 Introduction

## 1.1 Scope

1. This Technical Report has been produced by O-RAN Alliance.
2. The contents of the present document are subject to continuing work within O-RAN WG1 Slicing Task Group and may
3. change following formal O-RAN approval. In the event that O-RAN Alliance decides to modify the contents of the present
4. document, it will be re-released by O-RAN Alliance with an identifying change of release date and an increase in version
5. number as follows:
6. Release x.y.z
7. where:
8. x the first digit is incremented for all changes of substance, i.e. technical enhancements, corrections, updates,
9. etc. (the initial approved document will have x=01).
10. y the second digit is incremented when editorial only changes have been incorporated in the document.
11. z the third digit included only in working versions of the document indicating incremental changes during the
12. editing process.
13. This document provides common terminology for slicing, an overview of slicing activities in different SDOs (3GPP,
14. ETSI, ONAP, GSMA, etc.) and provides the high level view of O-RAN slicing framework and architecture along with
15. different deployment options. 18

## 1.2 References

1. The following documents contain provisions which, through reference in this text, constitute provisions of the present
2. document.
3. - References are either specific (identified by date of publication, edition number, version number, etc.) or
4. non-specific.
5. - For a specific reference, subsequent revisions do not apply.
6. - For a non-specific reference, the latest version applies. In the case of a reference to a 3GPP document (including
7. a GSM document), a non-specific reference implicitly refers to the latest version of that document in Release 16.
8. [1] 3GPP TR 21.905: "Vocabulary for 3GPP Specifications"
9. [2] 3GPP TS 23.501: "System Architecture for the 5G System", Release 16, December 2019
10. [3] 3GPP TR 28.801: "Study on management and orchestration of network slicing for next generation network",
11. Release 15, January 2018.
12. [4] 3GPP TS 28.530: "Aspects; Management and orchestration; Concepts, use cases and requirements", Release 16,
13. January 2020.
14. [5] 3GPP TS 28.541: "Management and orchestration; 5G Network Resource Model (NRM); Stage 2 and stage 3",
15. Release 16, January 2020.
16. [6] 3GPP TS 38.300: "NR and NG-RAN Overall Description", Release 16, January 2020.

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| 1 | [7] | ETSI GR NFV-EVE 012: "Report on Network Slicing Support with ETSI NFV Architecture Framework", |
| 2 |  | Release 3, December 2017. |
| 3 | [8] | ETSI GS NFV-IFA 008: "Ve-Vnfm reference point - Interface and Information Model Specification", Release 2, |
| 4 |  | February 2018. |
| 5 | [9] | ETSI GS NFV-IFA 013: "Os-Ma-Nfvo reference point - Interface and Information Model Specification", |
| 6 |  | Release 2, February 2018. |
| 7 | [10] | GSMA: "An Introduction to 5G Network Slicing", 2017. |
| 8 | [11] | GSMA: "From Vertical Industry Requirements to Network Slice Characteristics", August 2018. |
| 9 | [12] | GSMA: "Network Slicing, Use Case Requirements", April 2018. |
| 10 | [13] | GSMA: "Generic Network Slice Template", Release 2, October 2019 |
| 11 | [14] | ETSI GS ZSM 003: "Zero-touch Network and Service Management (ZSM); End to end management and |
| 12 |  | orchestration of network slicing". |

</div>

## 1.3 Definitions and Abbreviations

### 1.3.1 Definitions

1. For the purposes of the present document, the terms and definitions given in 3GPP TR 21.905 [1] and the following apply.
2. A term defined in the present document takes precedence over the definition of the same term, if any, in 3GPP
3. TR 21.905 [1].
4. **A1**: Interface between non-RT RIC and Near-RT RIC to enable policy-driven guidance of Near-RT RIC
5. applications/functions, and support AI/ML workflow.
6. **E2**: Interface connecting the Near-RT RIC and one or more O-CU-CPs, one or more O-CU-UPs, and one or more O-
7. DUs.
8. **FCAPS:** Fault, Configuration, Accounting, Performance, Security.
9. **Intents**: A declarative policy to steer or guide the behaviour of RAN functions, allowing the RAN function to calculate
10. the optimal result to achieve stated objective.
11. **near-RT RIC:** O-RAN near-real-time RAN Intelligent Controller: a logical function that enables near-real-time control
12. and optimization of RAN elements and resources via fine-grained data collection and actions over E2 interface.
13. **non-RT RIC:** O-RAN non-real-time RAN Intelligent Controller: a logical function that enables non-real-time control
14. and optimization of RAN elements and resources, AI/ML workflow including model training and updates, and policy-
15. based guidance of applications/features in near-RT RIC.
16. **NMS:** A Network Management System.
17. **O-CU:** O-RAN Central Unit
18. **O-CU-CP**: O-RAN Central Unit - Control Plane: a logical node hosting the RRC and the control plane part of the PDCP
19. protocol.
20. **O-CU-UP**: O-RAN Central Unit - User Plane: a logical node hosting the user plane part of the PDCP protocol and the
21. SDAP protocol.
22. **O-DU**: O-RAN Distributed Unit: a logical node hosting RLC/MAC/High-PHY layers based on a lower layer functional
23. split.
24. **O-RU**: O-RAN Radio Unit: a logical node hosting Low-PHY layer and RF processing based on a lower layer functional
25. split. This is similar to 3GPP's "TRP" or "RRH" but more specific in including the Low-PHY layer (FFT/iFFT, PRACH
26. extraction).
27. **O1:** Interface between management entities (NMS/EMS/MANO) and O-RAN managed elements, for operation and
28. management, by which FCAPS management, Software management, File management shall be achieved.
29. **RAN**: Generally referred as Radio Access Network. In terms of this document, any component below near-RT RIC per
30. O-RAN architecture, including O-CU/O-DU/O-RU.

8

### 1.3.2 Abbreviations

1. For the purposes of the present document, the abbreviations given in 3GPP TR 21.905 [1] and the following apply. An
2. abbreviation defined in the present document takes precedence over the definition of the same abbreviation, if any, in
3. 3GPP TR 21.905 [1].

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| 13 | eNB | eNodeB (applies to LTE) |
| 14 | gNB | gNodeB (applies to NR) |
| 15 | KPI | Key Performance Indicator |
| 16 | KQI | Key Quality Indicator |
| 17 | Near-RT RIC | Near-RT RIC |
| 18 | Non-RT RIC | Non-Real-Time RIC |
| 19 | NS | Network Service |
| 20 | O-CU | O-RAN Central Unit |
| 21 | O-DU | O-RAN Distributed Unit |
| 22 | O-RU | O-RAN Radio Unit |
| 23 | PNF | Physical Network Function |
| 24 | PRB | Physical Resource Block |
| 25 | RIC | O-RAN RAN Intelligent Controller |
| 26 | RRM | Radio Resource Management |
| 27 | SDO | Standards Developing Organizations (For ex: 3GPP, ETSI, ONAP, O-RAN) |
| 28 | SMO | Service and Management Orchestration |
| 29 | VNF | Virtual Network Function |
| 30 | NSD | NFV Network Service Descriptors |
| 31 | NST | Network Slice Templates |
| 32 |  |  |

</div>

# 1 Chapter 2 Objective

1. The current document aims to define the common terminology for slicing, captures slicing activities in different SDOs
2. (3GPP, ETSI, ONAP, GSMA, etc.) and provides the high level view of O-RAN slicing framework and architecture, with
3. the purpose of helping identify requirements for O-RAN defined interfaces and functions, eventually leading to formal
4. drafting of interface specifications. 6

# 1 Chapter 3 Common Terminology

1. In this chapter, it is aimed to list slice specific definitions to agree on a common terminology.
2. **Network slice instance**: a set of network functions and the resources for these network functions which are arranged and
3. configured, forming a complete logical network to meet certain network characteristics. [3]
4. **Network slice subnet instance:** a set of network functions and the resources for these network functions which are
5. arranged and configured to form a logical network. [3]
6. **Network slice subnet template:** description of the structure (and contained components) and configuration of the
7. network slice subnet. [3]
8. **Network slice template:** description of the structure (and contained components) and configuration of a network slice.
9. [3]
10. **Physical resource isolation:** regime of resource management when a physical resource used by one network slice
11. instance cannot be shared with another network slice instance. [3] 13

# 1 Chapter 4 Slicing in SDOs

## 4.1 Slicing in 3GPP

1. *Architecture Including Network Slicing*
2. Network slicing concept is considered as one of the key feature of 5G networks. Service-based 5G architecture including
3. network slicing is defined in 3GPP TS 23.501 [2]. Figure 4.1-1 represents the non-roaming reference architecture and
4. interfaces utilised in control plane.

7

8

![]({{site.baseurl}}/assets/images/23b83ec6c5e7.png)

NRF

PCF

UDM

AF

Nnssf

Nnef Nnrf

Nausf Namf

AUSF AMF

Npcf Nudm Nsmf

SMF

Naf

SCP

N2

N4

N3

N6

N9

(R)AN

UE

UPF

NSSF NEF

DN

1. Figure 4.1-1: Reference architecture

10

1. *Network Slice Identification and Service Types*
2. A network slice is always defined with RAN part and CN part in a PLMN (see Clause 5.15.1 in [2]). The network slicing
3. support is based on the principle that flows of the different slices handled by different PDU sessions. Granularity of slice
4. awareness is in PDU session level (see Clause 16.3.1 in [6]).
5. S-NSSAI is a unique identifier for each network slice. NSSAI (Network Slice Selection Assistance Information) includes
6. one or a list of s-NSSAIs which is a combination of mandatary SST (Slice/Service Type) and an optional SD (Slice
7. Differentiator). The operator may choose to serve same Slice/Service Type but using different s-NSSAIs in case of serving
8. same features to different group of users.
9. To support roaming use cases more efficiently, some SST values are standardised for the most common service types as
10. shown in the Table 4.1-2 defined as in 3GPP TS 23.501 [2].

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Slice/Service type** | **SST value** | **Characteristics** |
| eMBB | 1 | Slice suitable for the handling of 5G enhanced Mobile Broadband. |
| URLLC | 2 | Slice suitable for the handling of ultra- reliable low latency communications. |
| MIoT | 3 | Slice suitable for the handling of massive IoT. |
| V2X | 4 | Slice suitable for the handling of V2X services. |

</div>

1. Table 4.1-2: Standardized SST values

1

* 1. *Key Principles of Network Slicing*
  2. A single UE can connect one or more Network Slice instances simultaneously. The maximum number of simultaneous
  3. connection is 8 per UE. If UE has multiple simultaneous connections to the different slices, only one signalling connection
  4. is used.
  5. 5G QoS model is based on QoS Flows. GBR QoS flows require guaranteed flow bit rate. Non-GBR QoS flows, by
  6. contrast, do not require guaranteed flow bit rate. QoS differentiation is supported within a network slice.
  7. NG-RAN should support resource management between slices. SLA is provided between slices. Multiple slices could be
  8. supported on a single RAN and resource isolation is maintained between slices. Shared resources should be managed by
  9. RRM policies or other mechanisms to prevent SLA violations for other slices.
  10. Slice availability depends on the deployment scenario. Some slices might be offered globally while some others might be
  11. only in a local area.
  12. *Selection of a Network Slice*
  13. AMF selection procedure is made based on NSSAI or Temp ID. NSSAI is used when UE does not have Temp ID.
  14. Otherwise, RAN uses the NSSAI reported by UE during initial access procedure to select appropriate AMF. If both of
  15. them is not available, RAN routes UE to a default AMF.
  16. After RRC connection and AMF Selection are completed successfully, selected AMF sends Initial Context Setup Request
  17. message to RAN to complete UE context. This message includes allowed NSSAI, s-NSSAI for each PDU session. When
  18. required resources and policies for the selected slice(s) are ready, RAN side sends an Initial Context Setup Response
  19. message to AMF 3GPP TS 38.300 [6].
  20. *Management and Orchestration of Network Slicing*
  21. Network slice is a logical network that provides specific network capabilities and network characteristics. There are some
  22. aspects that a network slice includes. A deployed network slice forms a Network Slice Instance (NSI). An NSI has all the
  23. physical and logical resources and the functionalities to serve a business use case. The NSI contains Core Part and Access
  24. Part. To create an NSI, configurations and policies are required for each instance. The NSI lifecycle includes
  25. commissioning, operation and decommissioning phases as shown in Fig 4.1-2. 27

28

29 ![]({{site.baseurl}}/assets/images/d035969c0fc0.png)

30 Figure 4.1-2: NSI lifecycle

31

1. In the preparation phase NSI does not exist and necessary preparations are handled, such as network slice design, capacity
2. planning and on-boarding. Commissioning phase includes the creation of the NSI where all needed resources are allocated
3. and configured per slice requirements. Operation phase is the state that NSI is operating and supporting services to the
4. specified types. In the activation step, any action required to make NSI active is included. Supervision, reporting and
5. modification steps are involved in operation phase. To illustrate, KPI reporting, reconfiguration of NSI or scaling are used
6. in these phases. Decommissioning phase involves termination of the NSI and releasing of the resources assigned to it (see
7. Clause 4.3.1 in [4]).
8. *Network Resource Model and RRM Slice Policies*
9. 3GPP TS 28.541 [5] has introduced the Information Model in the Network Resource Model (NRM) to fulfill management
10. and orchestration of 5G networks. Regarding the network slicing feature modeling at the NRCellCU level, the model
11. basically lists the s-NSSAI(s) supported in the cell and RRM policy to share resources among listed slices.
12. RRMPolicyType attribute is used to describe RRM policy to be applied.

## 4.2 Slicing in ONAP

1. ONAP 5G slicing activity is ongoing in Frankfurt R6 release. ONAP R5 includes the feature of Network Slicing modeling
2. as a prerequisite for Slicing orchestration that is work in progress in R6. The Network Slice model leverages the shared
3. service/resource approach that is essential for modeling the network slice where VNF's/PNF's may be shared by several
4. slices.
5. The shared service approach is similar to ETSI NFV nested services approach, so its TOSCA implementation may be
6. easily translated into Network Service descriptors defined by the ETSI NFV-SOL001 specification for TOSCA based
7. NFV descriptors.
8. The graphical representation of the example of modelling the eMBB Network Slice having 3 slice segments (RAN,
9. transport and core) is shown below in Figure 4.2-1.

![]({{site.baseurl}}/assets/images/0bc85353ebde.png)18

19

20 Figure 4.2-1: Example model of eMBB Network Slice 21

22 Nested Network Service is the approach for shared resources (VNF/NS) 23

1. ? Nested network service TOSCA implementation in ETSI NFV-SOL001
2. ? PNFD may be part of Nested Service 26
3. Sharing of Network Slice resources (PNF's and VNF's) for ONAP release 6 is proposed using Nested services
4. approach (based on work done for Release 5) including wrapping PNFs/VNF's within Network Services and defining
5. operations and properties on Service level. The Network slicing orchestration in ONAP R6 will include assigning
6. workflows to the operations.
7. ![]({{site.baseurl}}/assets/images/33d60dcd848b.png)Following this approach, the topology model for O-RAN segment would be as shown below in Figure 4.2-2: 6

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| 7 |  | |
| 8 |  | Figure 4.2-2: High level O-RAN topology model |
| 9 |  |  |
| 10 | 4.3 | Slicing Orchestration in 3GPP SA5 and ETSI NFV MANO |

</div>

1. According to ETSI NFV Network Slicing Report [7], network slicing has been defined by different SDOs, there is no
2. common definition for network slicing. Therefore, understanding of network slicing is different from each other.
3. Nonetheless, the report does not introduce use cases or features but analyses network slicing in external SDOs. In this
4. report, how these external use cases should be mapped to NFV and the ETSI NFV architecture is explained.
5. As stated in 3GPP TR 28.801 [3], a network slice may contain one or more network slice subnets and each of them
6. includes one or more network functions. VNFs and PNFs are managed as these network functions in the ETSI NFV
7. architecture. Related to network slicing management, there are three different management functions identified in 3GPP
8. TR 28.801 [3]:
9. ? Communication Service Management Function (CSMF): translates the communication service related
10. requirement to network slice related requirements.
11. ? Network Slice Management Function (NSMF): responsible for management and orchestration of NSI. Provides
12. communication with the Network Slice Subnet Management Function (NSSMF) and Communication Service
13. Management Function.
14. ? Network Slice Subnet Management Function (NSSMF): responsible for management and orchestration of NSSI.
15. As shown in the Figure 4.3-1, Os-Ma-nfvo reference point is used for interaction between 3GPP slice management
16. functions and NFVO. Similarly, Ve-Vnfm-em reference point is used for exchanges between NFMF and VNF
17. Manager. Further analysis is required on these reference points to apply deployment scenarios including 3GPP
18. network slicing related management functions and NFV-MANO. Further details are available in ETSI GS NFV-IFA
19. 008 [8] and ETSI GS NFV-IFA 013 [9].

30

Ve-Vnfm-em

![]({{site.baseurl}}/assets/images/2394c8a28584.png)![]({{site.baseurl}}/assets/images/ae218725c38f.png)

3GPP Slice Related

Management Functions

Os-Ma-nfvo

NSSMF

NSMF

CSMF

PNF

NFMF

VNF

NFVO

VIM

VNFM

1

* 1. Figure 4.3-1: Network slice management in an NFV framework 3

1. Figure 4.3-2 shows an example of a 5G network realized by an end-to-end network slice, consisting of network slice
2. subnet #1 for 5G core networks and network slice subnet #2 for 5G radio networks (see Clause 4.1.3 in TS 28.530 [4]).

6

7 ![]({{site.baseurl}}/assets/images/3c8d9a0fbfb7.jpg)

8 Figure 4.3-2: 5G network with network slicing 9

1. The following diagram (Figure 4.3-3) shows the interaction between 3GPP and ETSI NFV to create a network slice
2. subnet instance for RAN network functions.

12

1

**NSMF**

**NFMF**

**NSSMF NFVO**

**VNFM**

2

1. Allocate a network slice subnet instance for RAN network functions
2. Instantiate a NS, containing VNFs (O-CU and O-DU) and PNF (O-RU)
3. instantiate VNFs (O-CU and O-DU)
4. notification of instantiation of VNFs (O-CU and O-DU)
5. VNFs have been instantiated 6 notification of successful NS instantiation

7. notifications of successful network slice subnet creation

* 1. Figure 4.3-3: High level view of network slice subnet instance creation 4

1. 1. NSMF sends request to allocate a network slice subnet instance for RAN network functions, e.g. O-CU, O-DU,
2. and O-RU.
3. 2. NSSMF decides to instantiate a Network Service (NS) instance for a new network slice subnet instance.
4. 3. NFVO sends request to instantiate the VNFs for O-CU, O-DU.
5. 4. VNFM instantiates VNFs and notifies NFMF that VNFs have been instantiated.
6. 5. VNFM responds to NFVO informing that VNFs have ben instantiated.
7. 6. NFVO notify NSSMF that NS has been instantiated.
8. 7. NSSMF responds to NSMF with status equals to successful for the operation of network slice subnet instance
9. creation.

14

## 4.4 Slicing in ETSI ZSM

1. The management services (MnSs) for end-to-end network slicing are provided by a set of management domains (MDs).
2. Including that for network slicing defined by 3GPP SA5 and that for NFV defined by ETSI NFV, provides various MnSs
3. as shown in Figure 4.4-1 [14].

19

![]({{site.baseurl}}/assets/images/f163077e9ec6.png)1

2 Figure 4.4-1: Example of MDs to support network slicing using NFV 3

* 1. In this operator deployment example:
  2. ? E2E Service MD provides MnSs for E2E network slices/network slice subnets, e.g. Service Orchestration service
  3. (Serv-Orch), which orchestrates the individual network slice subnets (NSSs) provided by Radio Access Network
  4. (RAN), Transport Network (TN) and Core Network (CN), and stitches them into a E2E network slice subnet being
  5. exposed as a network slice. The MnSs in this MD may also manage NSSs of Data Network (aka. SGi Network)
  6. using MD for NFV. It is expected that parts of specifications developed by 3GPP SA5 are re-used for the MnSs in
  7. this MD. This MD exposes e.g. management capabilities of E2E network slices (provisioning, performance
  8. assurance, fault supervision, etc.).
  9. ? MD for NSS in TN provides MnSs for NSSs of TN, e.g. Dom-Orch service. This MD may consume TN resources
  10. outside of ZSM supported by e.g. Configuration Management service(s) (Conf-Mgmt). It is expected that parts of
  11. specifications developed by e.g. BBF, MEF, IETF and/or ETSI NFV are re-used for the MnSs in this MD. This MD
  12. exposes e.g. management capabilities of NSS of TN (provisioning, performance assurance, fault supervision, etc.).
  13. ? MD for NSS in RAN provides MnSs for NSSs of RAN, e.g. Dom-Orch service. This MD may consume application
  14. level RAN resources (i.e. application part of RAN Network Functions) outside of ZSM supported by e.g. Conf-
  15. Mgmt, and it may also consume MnSs for Network Services which include virtualized resources from MD for NFV.
  16. It is expected that parts of specifications developed by 3GPP SA5 are re-used for the MnSs in this MD. This MD
  17. exposes e.g. management capabilities of NSS of RAN (provisioning, performance assurance, fault supervision, etc.).
  18. ? MD for NSS in CN provides MnSs for NSSs of CN, e.g. Dom-Orch service. This MD may consume application
  19. level CN resources outside of ZSM (i.e. application part of CN Network Functions) supported by e.g. Conf-Mgmt,
  20. and it may also consume MnSs for Network Services which include virtualized resources from MD for NFV. It is
  21. expected that parts of specifications developed by 3GPP SA5 are re-used for the MnSs in this MD. This MD exposes
  22. e.g. management capabilities of NSS of CN (provisioning, performance assurance, fault supervision, etc.).
  23. ? MD for NFV provides MnSs for NFV Network Service(s) (at resource level), e.g. Dom-Orch service (NFV
  24. Orchestrator). This MD may also have Conf-Mgmt (VNF Manager) and MnSs for managing
  25. compute/network/storage resources (Virtualized Infrastructure Manager). It is expected that parts of specifications
  26. developed by ETSI NFV are re-used for the MnSs in this MD. This MD exposes e.g. management capabilities related
  27. to NFV Network Services (Create/Read/Update/Delete of the Network Services, on-boarding of catalogues for
  28. those, etc.).

32

* + 1. Using the operator deployment scenario in Figure 4.4-1, a service over an E2E network slice instance comprising of RAN
    2. access + virtualized application can be deployed. Figure 4.4-2 describes the particular instance of service consumption
    3. across the domains. 4

![]({{site.baseurl}}/assets/images/6a41c0a7c429.png)![]({{site.baseurl}}/assets/images/ea9a59ab8fe0.png)![]({{site.baseurl}}/assets/images/6c3ffadf2210.png)![]({{site.baseurl}}/assets/images/8baa9595751c.png)![]({{site.baseurl}}/assets/images/6ae6ea932175.png)![]({{site.baseurl}}/assets/images/8bb536a90ca0.png)![]({{site.baseurl}}/assets/images/d95ab78a7921.png)![]({{site.baseurl}}/assets/images/a74c4b975dbe.png)![]({{site.baseurl}}/assets/images/4982a0473a2b.png)![]({{site.baseurl}}/assets/images/5dec7a8a1929.png)![]({{site.baseurl}}/assets/images/f4d575a7cf58.png)![]({{site.baseurl}}/assets/images/45acb3584751.png)![]({{site.baseurl}}/assets/images/cc0b57572ea1.png)![]({{site.baseurl}}/assets/images/8e11f7eeddbb.png)![]({{site.baseurl}}/assets/images/e3c4a1a03f56.png)![]({{site.baseurl}}/assets/images/26833c2652a2.png)![]({{site.baseurl}}/assets/images/e3c4a1a03f56.png)

**Radio access management Domain (with virtualized RAN) (NSSMF)**

**Transport management domain**

**Core management domain**

**(with VNFs) (NSSMF)**

**Virtualzation management domain (NFVO)**

E2E Service Management Domain

5

1. Figure 4.4-2: Example management services' consumption to show E2E slice deployment. 7
2. The steps of deployment are:
3. 1) The E2E service breaks up the E2E network slicing deployment requests into
4. a) Part of the E2E network slice (for fixed users and Transport) + 3GPP Core Part of the E2E network slice (for
5. Mobile users) + 3GPP RAN part of the E2E network slice + application service (Virtualized)
6. 2) A part of the E2E network slice is handed over to the TN management domain using the appropriate management
7. services exposed by the transport management domain.
8. 3) The 3GPP core part (CP: AMF/SMF, UPF, N1,N6) goes to the core management system
9. a) The core management domain requests the connectivity (N1, N6) to the transport management domain
10. b) The Core management domain hands over the VNFs (AMF/SMF, UPF...) to the virtualization management
11. domain
12. 4) The access part goes to radio access service management domain
13. a) The radio access management domain uses the management services of the virtualization management domain
14. to deploy the virtualized RAN part
15. 5) The virtualized application AS is handed over to be deployed by the virtualization management system. 22

23

## 24 4.5 Slicing in GSMA

25

1. GSMA published a document [10] which aims to provide an introduction to network slicing functionality. It shows how
2. network slicing can be used by business customers. Business customers are referred as users of the 5G services which
3. could be enterprises, specialized industries or individuals. Network slicing is analyzed from the business customers' point
4. of view in addition to set of use cases. 30
5. It is highlighted that different business customers has various requirements like ultra-reliable services, ultra-high-
6. bandwidth communication or extremely low latency. Running multiple logical networks on a common physical
7. infrastructure is enabled by network slicing. Network slice contained 5G networks allow business customers to have
8. connectivity having different business requirements which are governed by SLAs. 35
9. Network slicing provides ability to customize capabilities and functionality of the mobile network offered to business
10. customers. Customized services are classified as Network Connection Service and Network Resource Service. The first
11. one indicates the connectivity functionalities of the customer e.g. near real-time latency, guaranteed SLA, seamless
12. mobility and energy efficiency. The second one describes the case that customers are granted access to the operator
13. network resources to run their proprietary applications. In addition to network resource services, the network is able to
14. provide additional services i.e. big data analytics, cloud computing, edge computing and positioning. 7

8 GSMA lists some use cases for the business customers to underline potential of network slicing. Industry sectors including

9 automotive, logistic, healthcare, government are indicated as potential application of the network slicing. 10

1. As the successor of the previous document, GSMA conducted a study on the service requirements expressed by various
2. business customers. In addition to detailed analysis of the service requirements, recommendations for the industry has
3. been provided. Finally, a generic slice template has been introduced and all the attributes a network slice could have, has
4. been discussed [12]. Generic Slice Template (GST) lists set of attributes with names and units that characterise a network
5. slice (e.g. throughput, supported functionalities). GST categorises the attributes into character attributes and scalability
6. attributes. Former defines generic slice attributes independent from the NSC and NSP (e.g. latency, throughput), while
7. latter provides information about scalability of the slice e.g. number of terminals, area of the service.
8. Another concept defined to represent network slices with a common language is Network Slice Type (NEST). The NEST
9. is a GST filled with proper values based on a specific business use case. Moreover, NEST is the input for the network
10. slice preparation phase which leads to service profile definition in 3GPP. 21
11. GSMA Network Slicing Taskforce (GSMA-NEST) has two main objectives which are defining the GST [13] and
12. identifying set of slices whose characteristics are accepted by the industry. GSMA-NEST aims to deliver NESTs with
13. industry approved slice characteristics which could be used by the operators [11]. 25

# 1 Chapter 5 O-RAN Slicing Framework

## 5.1 O-RAN Slicing Architecture

### 5.1.1 Non-RT RIC

1. The fundamental role of the Non-RT RIC in O-RAN architecture is to apply AI/ML based algorithms to provide
2. innovative RAN use cases. Hence, Non-RT RIC is a key component to allow advanced RAN slicing technology to be
3. applied in O-RAN framework. For this purpose, Non-RT RIC should be aware of RAN slices and related slice
4. properties/configurations as well as slice performance metrics to actively assist slice assurance through optimization
5. methods, including AI/ML models.
6. To generate AI/ML models to be deployed in the Near-RT RIC, Non-RT RIC retrieves slice specific PMs and
7. configuration parameters of the slices and optionally external enrichment information from external servers. Complex
8. problems for Near-RT RIC e.g. applying RRM policies can be tackled by learning capabilities of AI/ML. Training models
9. enable non-real-time optimization of the slice specific parameters over O1 interface. Moreover, these performance,
10. configuration and other data are used to assist Near-RT RIC to provide dynamic slice optimization. Appling dynamic
11. slice optimization in the Near-RT RIC is used to prevent SLA violations between the slices.

### 5.1.2 Near-RT RIC

1. Near-RT RIC enables xApps to control RAN elements and their resources through the E2 interface in near real-time (sub
2. second). Similar to Non-RT RIC, Near-RT RIC xApps should be aware of RAN slices and can utilize slice aware
3. algorithms for slice SLA assurance purposes. Once the slices are up and running, slice specific PMs from E2 nodes will
4. be gathered and sent to Near-RT RIC and Near-RT RIC will use these PMs and the slice configuration data to apply
5. dynamic slice optimization to assure slice SLAs, through E2 interface (to be discussed).
6. These dynamic slice optimization algorithms can be built into the Near-RT RIC, can be guided from Non-RT RIC through
7. A1 policies, or can be sent down as AI/ML models from Non-RT RIC.

### 5.1.3 O-RAN Central Unit (O-CU)

1. In order to apply RAN slicing in O-RAN framework, both O-CU and O-DU needs to support slicing features as defined
2. by 3GPP. Furthermore slicing can be enhanced with the assistance of O-RAN specific Near-RT RIC dynamic slice
3. optimization through E2 interface.
4. O-CU is the O-RAN entity which runs the upper layer protocols of the RAN stack, such as Radio Resource Management.
5. Since RRM is responsible for managing resources, and in case of slicing - the allocation of resources between slices, O-
6. CU needs to execute slice specific resource allocation strategies and drive O-DU(s) similarly. O-CU will interact with
7. Near-RT RIC to provide slice specific PMs as well as getting dynamic guidance through E2 interface.

### 5.1.4 O-RAN Distributed Unit (O-DU)

1. O-DU is the O-RAN entity which runs the lower layer protocols of the RAN stack, including MAC layer which is the
2. layer that schedules Physical Resource Blocks to UEs. As part of slicing, MAC layer needs to allocate PRBs according
3. to the RRM strategies provided by the Operator and slice management entities. O-DU will receive the slice configuration
4. parameters from O1 interface, and dynamic slice optimization guidance from RIC through E2 interface and will provide
5. slice specific PMs through O1 interface to SMO and E2 interface to Near-RT RIC.

### 5.1.5 A1 Impact

1. A1 interface will be used to support policy based guidance for slicing use cases, such as SLA assurance. In addition to
2. policy guidance towards Near-RT RIC, Non-RT RIC should be able to receive feedback related to deployed policies over
3. A1 interface. In case of external data enrichment, Non-RT RIC should be able to transfer slice specific enrichment data
4. to Near-RT RIC over A1 interface as well.

### 5.1.6 E2 Impact

1. E2 interface will be used to drive E2 nodes' slice configuration and behaviour, such as slice based radio resource
2. allocations, scheduling policies, and configuration policies that may affect performance characteristics of the
3. corresponding network slice. Near-RT RIC should be able to configure and receive slice specific performance data from
4. the E2 nodes over the E2 interface for near real-time optimization (as compared to PMs collected over the O1 interface,
5. which is a slower loop). Slice specific PMs can include PRB utilization, average delay and DRB related measurements
6. that are already defined in 3GPP. However, E2SM(s) can be extended to support non-3GPP slice specific PM collection
7. so that policy control algorithms running on the Near-RT RIC are improved to meet the slice SLA requirements.

### 5.1.7 O1 Impact

1. The primary role of O1 interface is to enable slice specific configuration of O-RAN nodes based on the service
2. requirements. 3GPP 28.541 [5] has defined the Information Models to list attributes of the slice profiles with the slice
3. specific requirements, including RRM policy attributes to provide ratio of radio resources to split among the supported
4. slices. In addition to slice specific configuration capabilities, O1 interface is used to gather slice specific performance
5. metrics and fault information from O-RAN Nodes. As extensions to O-RAN specific slicing configuration and
6. performance measurement attributes are defined, these information will be sent over O1 interface as well.

### 5.1.8 O2 Impact

1. O2 is the interface used for life cycle management of virtual O-RAN network functions. In case of network slicing, after
2. the preparation phase, SMO might instantiate necessary O-RAN network functions (such as Near-RT RIC, O-CU-CP, O-
3. CU-UP, O-DU) through instantiation procedures as part of the RAN NSSI creation and provisioning, NSSI modification
4. and NSSI deletion. It is expected that Non-RT RIC is instantiated as part of SMO and does not require any lifecycle
5. management activities.

29

# 1 Chapter 6 Deployment Options

2

1. This section provides possible deployment options with respect to network slice management topology and their possible
2. effects on O-RAN slicing architecture. Based on 3GPP specifications Network Slice Management Function (NSMF) and
3. Network Slice Subnet Management Function (NSSMF) are responsible for end-to-end slice management and slice subnet
4. management respectively. Within the scope of O-RAN, RAN slice subnet management function is the primary focus
5. including but not limited to its interactions with the Service Management and Orchestration Framework. Possible
6. architectural impacts of different deployment options are planned to be investigated and captured in O-RAN Slicing
7. Architecture Specification document.
8. In the following sub sections, four possible deployment options are presented. Please note that while ETSI based
9. NFVO/VNFM interface types are depicted as examples, depending on SMO type these interfaces and NFVO/VNFM
10. components can be different. As other SMOs (such as ONAP) make progress with RAN slicing, the relevant interfaces
11. can be captured in the next iterations of this document.

14

15 **Option 1**

![C:\Usersrdaak\AppData\Local\Microsoft\Windows\INetCache\Content.Word\opt-1.png]({{site.baseurl}}/assets/images/b2acd2aefe81.png)16 In this option, both NSMF and NSSMF are deployed within the SMO.

17

18 Figure 3: NSMF and NSSMF are deployed within the SMO 19

20 **Option 2**

21 In this case, both NSMF and NSSMF are deployed outside the SMO.

22

![]({{site.baseurl}}/assets/images/1dbb97badb58.png)1

2 Figure 4: External deployment of NSMF and NSSMF 3

##### 4 Option 3

5 In this option, NSMF is placed within SMO. However, NSSMF is deployed outside the SMO.

![C:\Usersrdaak\AppData\Local\Microsoft\Windows\INetCache\Content.Word\opt-3.png]({{site.baseurl}}/assets/images/e0624d61dc7a.png)6

7

8 Figure 5: External NSSMF deployment

9

10 **Option 4**

11 In this case, NSMF is in the outside of SMO while NSSMF is deployed within SMO.

![C:\Usersrdaak\AppData\Local\Microsoft\Windows\INetCache\Content.Word\opt-4.png]({{site.baseurl}}/assets/images/126370aca3e5.png)1

2 Figure 6: NSSMF within the SMO

3

# 1 Annex A (informative): Additional Information

## 2 A.1 Slicing SDO Mapping Table

3

<div class="table-wrapper" markdown="block">

|  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- |
| **Areas** | **3GPP** | **ONAP** | **ETSI OSM** | **GSMA** | **ETSI ZSM** |
| Use cases and high level requirements | 3GPP TS 22.261 |  |  | Network Slicing Use Case Requirements |  |
|  |  | GSMA-NEST  (Network Slicing Task Force) |
| Architectural | 3GPP TS 23.501 |  |  |  |  |
| requirements | 3GPP TS 23.502 |
|  | (Procedures |
|  | involving slicing) |
|  | 3GPP TR 28.801 |
| Management and | 3GPP TS 28.531 | R4 (Dublin) for | ETSI GS NFV-IFA 014 ETSI GS NFV-IFA 013  (Os-Ma-nfvo) ETSI GS NFV-IFA 008  (Ve-Vnfm) |  | ETSI GS |
| orchestration | 3GPP TS 28.530 | Network Slice | ZSM 002 |
|  | 3GPP TS 28.541 | Model, | (Reference |
|  | 3GPP TR 28.801 | R5 (El Alto) for | Architecture) |
|  |  | Orchestration of |  |
|  |  | Network Slicing |  |
|  |  | Model |  |
| Slice Configuration | 3GPP TS 28.531 | TOSCA based | ETSI GS | NG.116 - |  |
|  | 3GPP TS 28.541 | service and | NFV-IFA 014 | Generic |
|  |  | network slice | (Network | Network Slice |
|  |  | modelling | Service | Template |
|  |  |  | Templates | (attributes are |
|  |  |  | Specification) | listed) |
| Security aspects of  network slicing | 3GPP TR 33.811 |  |  |  |  |
| Slice specific | 3GPP TS 28.552 |  |  |  |  |
| Performance | 3GPP TS 28.554 |
| Management (PM), |  |
| KPIs |  |
| Fault Management | 3GPP TS 28.801 |  |  |  |  |
|  | 3GPP TS 28.530 |
|  | 3GPP TS 28.515- |
|  | 517 |
|  | 3GPP TS 32.111 |
|  | 3GPP TS 28.545 |
|  | (Fault Supervision) |
|  | 3GPP TS 28.545 |

</div>

4

# 1 Annex ZZZ O-RAN Adopter License Agreement

1. BY DOWNLOADING, USING OR OTHERWISE ACCESSING ANY O-RAN SPECIFICATION, ADOPTER
2. AGREES TO THE TERMS OF THIS AGREEMENT.
3. This O-RAN Adopter License Agreement (the "Agreement") is made by and between the O-RAN Alliance and the entity
4. that downloads, uses or otherwise accesses any O-RAN Specification, including its Affiliates (the "Adopter").
5. This is a license agreement for entities who wish to adopt any O-RAN Specification.

7

#### 8 SECTION 1: DEFINITIONS

9

1. 1.1 "Affiliate" means an entity that directly or indirectly controls, is controlled by, or is under common
2. control with another entity, so long as such control exists. For the purpose of this Section, "Control" means
3. beneficial ownership of fifty (50%) percent or more of the voting stock or equity in an entity.

13

1. 1.2 "Compliant Portion" means only those specific portions of products (hardware, software or
2. combinations thereof) that implement any O-RAN Specification.

16

1. 1.3 "Adopter(s)" means all entities, who are not Members, Contributors or Academic Contributors,
2. including their Affiliates, who wish to download, use or otherwise access O-RAN Specifications.

19

1. 1.4 "Minor Update" means an update or revision to an O-RAN Specification published by O-RAN Alliance
2. that does not add any significant new features or functionality and remains interoperable with the prior
3. version of an O-RAN Specification. The term "O-RAN Specifications" includes Minor Updates.

23

1. 1.5 "Necessary Claims" means those claims of all present and future patents and patent applications, other
2. than design patents and design registrations, throughout the world, which (i) are owned or otherwise
3. licensable by a Member, Contributor or Academic Contributor during the term of its Member, Contributor
4. or Academic Contributorship; (ii) such Member, Contributor or Academic Contributor has the right to grant
5. a license without the payment of consideration to a third party; and (iii) are necessarily infringed by
6. implementation of a Final Specification (without considering any Contributions not included in the Final
7. Specification). A claim is necessarily infringed only when it is not possible on technical (but not
8. commercial) grounds, taking into account normal technical practice and the state of the art generally
9. available at the date any Final Specification was published by the O-RAN Alliance or the date the patent
10. claim first came into existence, whichever last occurred, to make, sell, lease, otherwise dispose of, repair,
11. use or operate an implementation which complies with a Final Specification without infringing that claim.
12. For the avoidance of doubt in exceptional cases where a Final Specification can only be implemented by
13. technical solutions, all of which infringe patent claims, all such patent claims shall be considered Necessary
14. Claims.

38

1. 1.6 "Defensive Suspension" means for the purposes of any license grant pursuant to Section 3, Member,
2. Contributor, Academic Contributor, Adopter, or any of their Affiliates, may have the discretion to include
3. in their license a term allowing the licensor to suspend the license against a licensee who brings a patent
4. infringement suit against the licensing Member, Contributor, Academic Contributor, Adopter, or any of
5. their Affiliates.

44

#### 45 SECTION 2: COPYRIGHT LICENSE

1

1. 2.1 Subject to the terms and conditions of this Agreement, O-RAN Alliance hereby grants to Adopter a
2. nonexclusive, nontransferable, irrevocable, non-sublicensable, worldwide copyright license to obtain, use
3. and modify O-RAN Specifications, but not to further distribute such O-RAN Specification in any modified
4. or unmodified way, solely in furtherance of implementations of an O-RAN Specification.

6

1. 2.2 Adopter shall not use O-RAN Specifications except as expressly set forth in this Agreement or in a
2. separate written agreement with O-RAN Alliance.

9

#### 10 SECTION 3: FRAND LICENSE

11

1. 3.1 Members, Contributors and Academic Contributors and their Affiliates are prepared to grant based on
2. a separate Patent License Agreement to each Adopter under Fair, Reasonable And Non-Discriminatory
3. (FRAND) terms and conditions with or without compensation (royalties) a nonexclusive, non-transferable,
4. irrevocable (but subject to Defensive Suspension), non-sublicensable, worldwide license under their
5. Necessary Claims to make, have made, use, import, offer to sell, lease, sell and otherwise distribute
6. Compliant Portions; provided, however, that such license shall not extend: (a) to any part or function of a
7. product in which a Compliant Portion is incorporated that is not itself part of the Compliant Portion; or (b)
8. to any Adopter if that Adopter is not making a reciprocal grant to Members, Contributors and Academic
9. Contributors, as set forth in Section 3.3. For the avoidance of doubt, the foregoing license includes the
10. distribution by the Adopter's distributors and the use by the Adopter's customers of such licensed
11. Compliant Portions.

23

1. 3.2 Notwithstanding the above, if any Member, Contributor or Academic Contributor, Adopter or their
2. Affiliates has reserved the right to charge a FRAND royalty or other fee for its license of Necessary Claims
3. to Adopter, then Adopter is entitled to charge a FRAND royalty or other fee to such Member, Contributor
4. or Academic Contributor, Adopter and its Affiliates for its license of Necessary Claims to its licensees.
5. 3.3 Adopter, on behalf of itself and its Affiliates, shall be prepared to grant based on a separate Patent
6. License Agreement to each Members, Contributors, Academic Contributors, Adopters and their Affiliates
7. under FRAND terms and conditions with or without compensation (royalties) a nonexclusive, non-
8. transferable, irrevocable (but subject to Defensive Suspension), non-sublicensable, worldwide license
9. under their Necessary Claims to make, have made, use, import, offer to sell, lease, sell and otherwise
10. distribute Compliant Portions; provided, however, that such license will not extend: (a) to any part or
11. function of a product in which a Compliant Portion is incorporated that is not itself part of the Compliant
12. Portion; or (b) to any Members, Contributors, Academic Contributors, Adopters and their Affiliates that is
13. not making a reciprocal grant to Adopter, as set forth in Section 3.1. For the avoidance of doubt, the
14. foregoing license includes the distribution by the Members', Contributors', Academic Contributors',
15. Adopters' and their Affiliates' distributors and the use by the Members', Contributors', Academic
16. Contributors', Adopters' and their Affiliates' customers of such licensed Compliant Portions.

40

#### 41 SECTION 4: TERM AND TERMINATION

42

43 4.1 This Agreement shall remain in force, unless early terminated according to this Section 4.

44

1. 4.2 O-RAN Alliance on behalf of its Members, Contributors and Academic Contributors may terminate
2. this Agreement if Adopter materially breaches this Agreement and does not cure or is not capable of curing
3. such breach within thirty (30) days after being given notice specifying the breach.

4

1. 4.3 Sections 1, 3, 5 - 11 of this Agreement shall survive any termination of this Agreement. Under surviving
2. Section 3, after termination of this Agreement, Adopter will continue to grant licenses (a) to entities who
3. become Adopters after the date of termination; and (b) for future versions of O-RAN Specifications that
4. are backwards compatible with the version that was current as of the date of termination.

9

#### SECTION 5: CONFIDENTIALITY

11

1. Adopter will use the same care and discretion to avoid disclosure, publication, and dissemination of O-
2. RAN Specifications to third parties, as Adopter employs with its own confidential information, but no less
3. than reasonable care. Any disclosure by Adopter to its Affiliates, contractors and consultants should be
4. subject to an obligation of confidentiality at least as restrictive as those contained in this Section. The
5. foregoing obligation shall not apply to any information which is: (1) rightfully known by Adopter without
6. any limitation on use or disclosure prior to disclosure; (2) publicly available through no fault of Adopter;
7. (3) rightfully received without a duty of confidentiality; (4) disclosed by O-RAN Alliance or a Member,
8. Contributor or Academic Contributor to a third party without a duty of confidentiality on such third party;
9. (5) independently developed by Adopter; (6) disclosed pursuant to the order of a court or other authorized
10. governmental body, or as required by law, provided that Adopter provides reasonable prior written notice
11. to O-RAN Alliance, and cooperates with O-RAN Alliance and/or the applicable Member, Contributor or
12. Academic Contributor to have the opportunity to oppose any such order; or (7) disclosed by Adopter with
13. O-RAN Alliance's prior written approval.

25

#### 26 SECTION 6: INDEMNIFICATION

27

1. Adopter shall indemnify, defend, and hold harmless the O-RAN Alliance, its Members, Contributors or
2. Academic Contributors, and their employees, and agents and their respective successors, heirs and assigns
3. (the "Indemnitees"), against any liability, damage, loss, or expense (including reasonable attorneys' fees
4. and expenses) incurred by or imposed upon any of the Indemnitees in connection with any claims, suits,
5. investigations, actions, demands or judgments arising out of Adopter's use of the licensed O-RAN
6. Specifications or Adopter's commercialization of products that comply with O-RAN Specifications.

34

#### 35 SECTION 7: LIMITATIONS ON LIABILITY; NO WARRANTY

36

1. EXCEPT FOR BREACH OF CONFIDENTIALITY, ADOPTER'S BREACH OF SECTION 3, AND
2. ADOPTER'S INDEMNIFICATION OBLIGATIONS, IN NO EVENT SHALL ANY PARTY BE
3. LIABLE TO ANY OTHER PARTY OR THIRD PARTY FOR ANY INDIRECT, SPECIAL,
4. INCIDENTAL, PUNITIVE OR CONSEQUENTIAL DAMAGES RESULTING FROM ITS
5. PERFORMANCE OR NON-PERFORMANCE UNDER THIS AGREEMENT, IN EACH CASE
6. WHETHER UNDER CONTRACT, TORT, WARRANTY, OR OTHERWISE, AND WHETHER OR
7. NOT SUCH PARTY HAD ADVANCE NOTICE OF THE POSSIBILITY OF SUCH DAMAGES.

44

1. O-RAN SPECIFICATIONS ARE PROVIDED "AS IS" WITH NO WARRANTIES OR CONDITIONS
2. WHATSOEVER, WHETHER EXPRESS, IMPLIED, STATUTORY, OR OTHERWISE. THE O-RAN
3. ALLIANCE AND THE MEMBERS, CONTRIBUTORS OR ACADEMIC CONTRIBUTORS
4. EXPRESSLY DISCLAIM ANY WARRANTY OR CONDITION OF MERCHANTABILITY,
5. SECURITY, SATISFACTORY QUALITY, NONINFRINGEMENT, FITNESS FOR ANY
6. PARTICULAR PURPOSE, ERROR-FREE OPERATION, OR ANY WARRANTY OR CONDITION
7. FOR O-RAN SPECIFICATIONS.

8

#### 9 SECTION 8: ASSIGNMENT

10

1. Adopter may not assign the Agreement or any of its rights or obligations under this Agreement or make
2. any grants or other sublicenses to this Agreement, except as expressly authorized hereunder, without having
3. first received the prior, written consent of the O-RAN Alliance, which consent may be withheld in O-RAN
4. Alliance's sole discretion. O-RAN Alliance may freely assign this Agreement.

15

#### 16 SECTION 9: THIRD-PARTY BENEFICIARY RIGHTS

17

1. Adopter acknowledges and agrees that Members, Contributors and Academic Contributors (including
2. future Members, Contributors and Academic Contributors) are entitled to rights as a third-party beneficiary
3. under this Agreement, including as licensees under Section 3.

21

#### 22 SECTION 10: BINDING ON AFFILIATES

23

1. Execution of this Agreement by Adopter in its capacity as a legal entity or association constitutes that legal
2. entity's or association's agreement that its Affiliates are likewise bound to the obligations that are applicable
3. to Adopter hereunder and are also entitled to the benefits of the rights of Adopter hereunder.

27

#### 28 SECTION 11: GENERAL

29

1. This Agreement is governed by the laws of Germany without regard to its conflict or choice of law
2. provisions.
3. This Agreement constitutes the entire agreement between the parties as to its express subject matter and
4. expressly supersedes and replaces any prior or contemporaneous agreements between the parties, whether
5. written or oral, relating to the subject matter of this Agreement.
6. Adopter, on behalf of itself and its Affiliates, agrees to comply at all times with all applicable laws, rules
7. and regulations with respect to its and its Affiliates' performance under this Agreement, including without
8. limitation, export control and antitrust laws. Without limiting the generality of the foregoing, Adopter
9. acknowledges that this Agreement prohibits any communication that would violate the antitrust laws.
10. By execution hereof, no form of any partnership, joint venture or other special relationship is created
11. between Adopter, or O-RAN Alliance or its Members, Contributors or Academic Contributors. Except as
12. expressly set forth in this Agreement, no party is authorized to make any commitment on behalf of Adopter,
13. or O-RAN Alliance or its Members, Contributors or Academic Contributors.

1

2

3

4

5

6

7

8

9

10

11

12 ....

13

14

15

In the event that any provision of this Agreement conflicts with governing law or if any provision is held to be null, void or otherwise ineffective or invalid by a court of competent jurisdiction, (i) such provisions will be deemed stricken from the contract, and (ii) the remaining terms, provisions, covenants and restrictions of this Agreement will remain in full force and effect.

Any failure by a party or third party beneficiary to insist upon or enforce performance by another party of any of the provisions of this Agreement or to exercise any rights or remedies under this Agreement or otherwise by law shall not be construed as a waiver or relinquishment to any extent of the other parties' or third party beneficiary's right to assert or rely upon any such provision, right or remedy in that or any other instance; rather the same shall be and remain in full force and effect.
---

- View in [GitHub Mode]({{site.github_page_url}}/O-RAN.WG1.Study-on-O-RAN-Slicing-v02.00.docx.md).
- Go back to [Table of Contents]({{site.baseurl}}/).
- Download the [Original Document]({{site.download_url}}/O-RAN.WG1.Study-on-O-RAN-Slicing-v02.00.docx).
