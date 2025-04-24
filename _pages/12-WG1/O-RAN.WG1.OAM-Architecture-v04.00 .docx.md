---
title: O-RAN.WG1.OAM-Architecture-v04.00 .docx.md
author: O-RAN Alliance
layout: post
---

- View in [GitHub Mode]({{site.github_page_url}}/O-RAN.WG1.OAM-Architecture-v04.00%20.docx.md).
- Go back to [Table of Contents]({{site.baseurl}}/).
- Download the [Original Document]({{site.download_url}}/O-RAN.WG1.OAM-Architecture-v04.00 .docx).

---

* toc
{:toc}

---

**O-RAN Operations and Maintenance Architecture**

**This is a re-published version of the attached final specification.**

##### For this re-published version, the prior versions of the IPR Policy will apply, except that the previous requirement for Adopters (as defined in the earlier IPR Policy) to agree to an O-RAN Adopter License Agreement to access and use Final Specifications shall no longer apply or be required for these Final Specifications after 1st July 2022.

The copying or incorporation into any other work of part or all of the material available in this specification in any form without the prior written permission of O-RAN ALLIANCE e.V. is prohibited, save that you may print or download extracts of the material on this site for your personal use, or copy the material on this site for the purpose of sending to individual third parties for their information provided that you acknowledge O-RAN ALLIANCE as the source of the material and that you inform the third party that these conditions apply to them and that they must comply with them.

1

**O-RAN Operations and Maintenance Architecture**

Copyright (C) 2021 by the O-RAN ALLIANCE e.V.

By using, accessing or downloading any part of this O-RAN specification document, including by copying, saving, distributing, displaying or preparing derivatives of, you agree to be and are bound to the terms of the O-RAN Adopter License Agreement contained in Annex ZZZ of this specification. All other rights reserved.

O-RAN ALLIANCE e.V.

Buschkauler Weg 27, 53347 Alfter, Germany Register of Associations, Bonn VR 11238 VAT ID DE321720189

(C) 2021 by the O-RAN ALLIANCE e.V.

1

Copyright (C) 2021 by the O-RAN ALLIANCE e.V.

Your use is subject to the terms of the O-RAN Adopter License Agreement in Annex ZZZ

# 1 Contents

2

##### Chapter 1. Introductory Material 3

1. 1.1 Scope 3
2. 1.2 References 3
3. 1.3 Definitions and Abbreviations 4
4. 1.3.1 Definitions 4
5. 1.3.2 Abbreviations 5

##### Chapter 2. O-RAN Overview 6

1. 2.1 Scope and Objectives 6
2. 2.2 End to End OAM Use Cases 6
3. 2.2.1 O-RAN Service Provisioning 6
4. 2.2.2 O-RAN Measurement Data Collection 11

##### Chapter 3. OAM Architecture 19

1. 3.1 Architectural Principles 19
2. 3.2 Architecture Requirements 19
3. 3.2.1 Functional Requirements 19
4. 3.2.2 Non-Functional Requirements 20
5. 3.2.3 Security Requirements 20
6. 3.3 Reference Architecture 20
7. 3.3.1 Architectural Building Blocks 20
8. 3.3.2 Basic OAM Architecture 23
9. 3.3.3 OAM Models and Deployment Options 23
10. 3.3.4 Managed Elements Deployed behind a NAT 28

##### Chapter 4. Application Lifecycle Management (LCM) 30

1. 4.1 Scope 30
2. 4.1.1 Information Model 31
3. 4.1.2 Diagramming Legend 33
4. 4.1.3 App Development Lifecycles 33
5. 4.1.4 App Onboarding Lifecycles 35
6. 4.1.5 App Operation Lifecycles 37
7. 4.2 Common Application Lifecycle Conclusions 37

##### Appendix A: Cardinality 38

##### Appendix B: Sequence Diagram Template 39

1. Annex A: SMO and Non-RT RIC mapping with 3GPP management system 49

##### Annex ZZZ : O-RAN Adopter License Agreement 51

1. Section 1: DEFINITIONS 51
2. Section 2: COPYRIGHT LICENSE 51
3. Section 3: FRAND LICENSE 51
4. Section 4: TERM AND TERMINATION 52
5. Section 5: CONFIDENTIALITY 52
6. Section 6: INDEMNIFICATION 52
7. Section 7: LIMITATIONS ON LIABILITY; NO WARRANTY 53
8. Section 8: ASSIGNMENT 53
9. Section 9: THIRD-PARTY BENEFICIARY RIGHTS 53
10. Section 10: BINDING ON AFFILIATES 53
11. Section 11: GENERAL 53

48

49

# 1 Chapter 1.Introductory Material

## 1.1 Scope

1. This Technical Specification has been produced by the O-RAN.org.
2. The contents of the present document are subject to continuing work within O-RAN WG1 and may change following
3. formal o-RAN approval. Should the o-RAN.org modify the contents of the present document, it will be re-released by
4. o-RAN Alliance with an identifying change of release date and an increase in version number as follows:
5. Release x.y.z
6. where:
7. x the first digit is incremented for all changes of substance, i.e. technical enhancements, corrections, updates,
8. etc. (the initial approved document will have x=01).
9. y the second digit is incremented when editorial only changes have been incorporated in the document.
10. z the third digit included only in working versions of the document indicating incremental changes during the
11. editing process.
12. The present document studies O-RAN OAM architecture and interface functions. The OAM architecture supports a
13. variety of management network deployment models, including the model of management entities (NMS/EMS/MANO)
14. connecting directly to NEs, and the indirect connection (e.g., M-Plane involved) model. A separate OAM interface
15. document provides details of the functions and protocols conveyed over the interface, that include management
16. functions, procedures, operations and corresponding solutions.

## 1.2 References

1. The following documents contain provisions which, through reference in this text, constitute provisions of the present
2. document.
3. - References are either specific (identified by date of publication, edition number, version number, etc.) or
4. non-specific.
5. - For a specific reference, subsequent revisions do not apply.
6. - For a non-specific reference, the latest version applies. In the case of a reference to a 3GPP document (including
7. a GSM document), a non-specific reference implicitly refers to the latest version of that document in Release 15.

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| 27 | [1] | 3GPP TR 21.905: "Vocabulary for 3GPP Specifications" |
| 28 | [2] | 3GPP TS 38.401: "NG-RAN; Architecture description". |
| 29 | [3] | 3GPP TS 28.622: "Telecommunication management; Generic Network Resource Model (NRM) Integration |
| 30 |  | Reference Point (IRP); Information Service (IS)". |
| 31 | [4] | 3GPP TS 32.101: "Telecommunication management; Principles and high level requirements". |
| 32 | [5] | 3GPP TS 28.532: Management and orchestration; Generic management services |
| 33 | [6] | 3GPP TS 28.533: Management and orchestration; Architecture framework |
| 34 | [7] | 3GPP TS 28.550: Management and orchestration; Performance assurance |
| 35 | [8] | 3GPP TS 28.552: Management and orchestration; 5G performance measurements |
| 36 | [9] | [ETSI GS NFV-IFA 005 V3.3.1 (2019-08),](https://www.etsi.org/deliver/etsi_gs/NFV-IFA/001_099/005/03.03.01_60/gs_NFV-IFA005v030301p.pdf) Network Functions Virtualisation (NFV) Release 3;Management |
| 37 |  | and Orchestration;Or-Vi reference point - Interface and Information Model Specification |
| 38 | [10] | [ETSI GS NFV-IFA 027 V2.4.1 (2018-05),](https://www.etsi.org/deliver/etsi_gs/NFV-IFA/001_099/027/02.04.01_60/gs_NFV-IFA027v020401p.pdf) Network Functions Virtualisation (NFV) Release 2;Management |
| 39 |  | and Orchestration; Performance Measurements Specification |
| 40 | [11] | O-RAN White Paper: "O-RAN: Towards an Open and Smart RAN", October 2018 |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| 1 | [12] | O-RAN-WG4.MP.0-v05.00: O-RAN Alliance Working Group 4 Management Plane Specification |
| 2 | [13] | O-RAN.WG1.O1-Interface-v04.00: "O-RAN Operations and Maintenance Interface Specification". |
| 3 | [14] | ORAN.WG2.Use Case Requirements v01.00: "O-RAN Working Group 2 (Non-RT RIC & A1 interface)". |
| 4 | [15] | O-RAN.WG6.CAD-v02.00, "Cloud Architecture and Deployment Scenarios for O-RAN Virtualized RAN" |
| 5 | [16] | O-RAN.WG6.ORC-v02.00, "Orchestration Use Cases for O-RAN Virtualized RAN" |
| 6 | [17] | O-RAN.WG1-O-RAN Architecture Description - v03.00: "O-RAN Architecture Description". |
| 7 | [18] | ORAN.WG3.E2GAP.0-v0.1: "O-RAN Working Group 3; Near-Real-time RAN Intelligent Controller |
| 8 |  | Architecture & E2 General Aspects and Principles". |
| 9 | [19] | O-RAN.WG3.RICARCH-v01.00: "O-RAN Working Group 3;Near-Real-time RAN Intelligent Controller; |
| 10 |  | Near-RT RIC Architecture" |
| 11 | [20] | 3GPP TR 28.809 v0.2.0, Study on enhancement of management data analytics |
| 12 | [21] | O-RAN-WG6.O2-GA&P-v01.00: "O2 General Aspects and Principles v.01.00" |
| 13 | [22] | [https://yaml.org/spec/1.2/spec.html,](https://yaml.org/spec/1.2/spec.html) "YAML Ain't Markup Language (YAML(TM)) Version 1.2", October |
| 14 |  | 2009 |
| 15 | [23] | O-RAN.WG1.Information Model and Data Models-v01.00: "O-RAN Information Model and Data Models |
| 16 |  | Specification" |
| 17 |  |  |
| 18 | 1.3 | Definitions and Abbreviations |

</div>

### 1.3.1 Definitions

1. For the purposes of the present document, the terms and definitions given in 3GPP TR 21.905 [1] and the following
2. apply. A term defined in the present document takes precedence over the definition of the same term, if any, in 3GPP
3. TR 21.905 [1].
4. Also, any terms and definitions that are also given in the O-RAN Architecture [17] are intended to be aligned. Text in
5. the O-RAN Architecture [17] takes precedence in case of any difference.
6. **infrastructure resources**: Infrastructure resources as used here refer to a set of resources provided to a VNF [9] by its
7. supporting O-Cloud.
8. **Service Planning**: The activity of a Service Operator around certifying a solution configuration for deployment into
9. their network.
10. **Service Provider**: A network provider who is planning to deploy applications into their network.
11. **Solution Provider**: An application developer who delivers applications to Service Providers.
12. **"SP" Exchange**: Not a formal interface in terms of between systems. However, the structure and content of the
13. exchange is defined such that a Solution Provider can deliver applications to a Service Provider for deployment.
14. Definitions for the following terms used in the document can be found in the O-RAN Architecture [17]:
15. **near-RT RIC**
16. **non-RT RIC**
17. **NMS**
18. **O-Cloud**
19. **O-CU**
20. **O-CU-CP**
21. **O-CU-UP**
22. **O-DU**
23. **O-RU**
24. **O1**
25. **O2**
26. **SMO**
27. **rApp**
28. **xApp**

### 1.3.2 Abbreviations

1. For the purposes of the present document, the abbreviations given in 3GPP TR 21.905 [1] and the following apply. An
2. abbreviation defined in the present document takes precedence over the definition of the same abbreviation, if any, in
3. 3GPP TR 21.905 [1].
4. FCAPS Fault, Configuration, Accounting, Performance, Security
5. FOCOM Federated O-Cloud Orchestration and Management
6. MA Managed Application
7. ME Managed Element
8. MF Managed Function
9. MMP Meet-Me-Point
10. NAT Network Address Translation
11. Near-RT RIC O-RAN near real time RAN Intelligent Controller
12. NFO Network Function Orchestration
13. NFV Network Function Virtualization
14. NFVI Network Function Virtualization Infrastructure
15. NM Network Manager
16. Non-RT RIC O-RAN non-real time RAN Intelligent Controller
17. O-CU-CP O-RAN Central Unit - Control Plane.
18. O-CU-UP O-RAN Central Unit - User Plane
19. O-DU O-RAN Distributed Unit
20. O-RU O-RAN Radio Unit
21. PCP Port Control Protocol
22. PK Primary Key
23. PNF Physical Network Function
24. RAN Radio Access Network
25. SDLC Software Development LifeCycle
26. SMO Service Management and Orchestration
27. VNF Virtualized Network Function
28. VPN Virtual Private Network
29. UPNP Universal Plug-N-Play 35

36

37

# 1 Chapter 2. O-RAN Overview

## 2.1 Scope and Objectives

* 1. O-RAN activities are guided by the following objectives [11]:
  2. o Leading the industry towards open, interoperable interfaces, RAN virtualization, and big data and AI enabled RAN
  3. intelligence.
  4. o Maximizing the use of common-off-the-shelf hardware and merchant silicon and minimizing proprietary hardware
  5. o Specifying APIs and interfaces, driving standards to adopt them as appropriate, and exploring open source where
  6. appropriate
  7. The O-RAN OAM Architecture identifies management services, managed functions and managed elements supported
  8. in O-RAN, including the interworking between service management and orchestration and other O-RAN components
  9. such as infrastructure management. Requirements are derived from end-to-end OAM use cases, initially using the
  10. initial provisioning of O-RAN service across VNFs and PNFs as the primary use case. The architecture identifies the
  11. interfaces between O-RAN Service Management and Orchestration and Managed Elements for different models and
  12. example deployment options. It provides a description of the LifeCycle Management for applications delivered from a
  13. Solution Provider to a Service Provider/Network Operator.
  14. Future versions of the architecture will address additional areas of O-RAN OAM functionality.

## 2.2 End to End OAM Use Cases

* 1. This section contains end to end OAM use cases that O-RAN is expected to support. Requirements will be derived
  2. from the use cases.
  3. The initial use cases defined include O-RAN Service Provisioning and Data Collection. Additional Use Cases will be
  4. added as prioritized by the O-RAN community in future versions of this document

### 2.2.1 O-RAN Service Provisioning

#### 2.2.1.1 Basic Objective

* 1. In the O-RAN architecture, the radio side includes Near-RT RIC, O-CU-CP, O-CU-UP, O-DU, and O-RU Managed
  2. Functions, and the management side is comprised of the Service Management and Orchestration Framework (including
  3. the Non-RT RIC). In the NFV environment, O-RAN network elements can also be implemented in a virtualized form,
  4. and thus include an Infrastructure layer (e.g. COTS/White Box/Peripheral hardware and virtualization layer) based on
  5. an O-Cloud.
  6. The current use case focuses on network/element deployment rather than physical construction. According to the radio
  7. coverage requirement, operators could deploy the O-RAN network/element on dedicated physical resources and/or
  8. virtualized resources in a specific area.
  9. This use case assumes that the network elements are deployed based on an example Network Design using VNFs for
  10. centralized functions and PNFs for functions closer to the customer, so that the sequence calls for deployment of VNFs
  11. for the Near-RT RIC, O-CU-CP and O-CU-UP first followed by PNFs for the O-DU and O-RU. Note: RF functions
  12. must always be realized as PNFs but the O-DU can be realized as a PNF or VNF; this document uses PNF as an
  13. example to illustrate the associated OAM flows.
  14. It is also assumed that secure network connectivity is already available between RAN components.

#### 2.2.1.2 Entities/Resources involved

* 1. To support the O-RAN network provisioning, the Service Management and Orchestration Framework needs to support
  2. the following capabilities:

1. o O-RAN network element deployed in selected area
2. a) For non-virtualized parts, the Service Management and Orchestration Framework supports the deployment of
3. physical network elements on the target dedicated physical resources which satisfy the coverage requirements,
4. with management through the O1 interface.
5. b) For virtualized network elements, the Service Management and Orchestration Framework has the capability
6. to interact with the O-Cloud to perform network element life cycle management, e.g. instantiate the
7. virtualized network element on the target infrastructure through the O2 interface (e.g., indicate the selected
8. geo-location for each VNF to be instantiated, where close to the PNFs).
9. c) The Service Management and Orchestration Framework has the capability to consume the provisioning
10. management service through the O1 interface to manage the configuration of the network element, details are
11. defined in O-RAN.WG1.OAM Interface Specification [13].
12. o O-RAN network provisioning
13. a) Based on the deployed network elements, the Service Management and Orchestration Framework configures
14. the IP addressing, etc. in the PNFs and VNFs to support connectivity between them (this operation could also
15. be performed during the instantiation steps).
16. b) Operators can operate and maintain the network dynamically through the O1 and/or O2 interface by means of:
17. i. Reconfiguration of the network elements
18. ii. System update (usually refers to software management, without adding network elements) and system
19. upgrade (the network elements could be added/removed/modified)
20. According to above, the Service Management and Orchestration Framework together with the O-Cloud implements the
21. O-RAN network element deployment and provisioning, creating an O-RAN network to provide service to consumers.

#### 2.2.1.3 Solutions

1. Table 2.2.1-1 shows the O-RAN service provisioning procedures.

###### Table 2.2.1-1: O-RAN service provisioning

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
| Goal | O-RAN service provisioning |  |
| Actors and Roles | [1]. Service Management and Orchestration Framework: NFO, OAM Functions, Non-RT RIC  [2]. O-Cloud: DMS  [3]. PNF  [4]. VNF |  |
| Assumptions |  |  |
| Pre-conditions | [1]. The Service Management and Orchestration Framework and O-  Cloud are connected and interact normally  [2]. O-Cloud supports platform and resource management normally [3]. The PNF was constructed/installed but not activated  [4]. The VNF Software Package has been uploaded to the O-Cloud [5]. Secure network connectivity is already available between RAN  components  - Note: security related procedure is FFS |  |
| Begins when | The network operator/manager decides to deploy an O-RAN network in  specific geo-location |  |
| Step 1 (M) | The service designer deploys Service Model and Artifacts to SMO |  |
| Step 2 (M) | SMO on boarding the VNF Descriptors for the service to the O-Cloud |  |
| Step 3 (M) | The radio planner orders RAN Service Deployment |  |
| Step 4 (M) | The SMO initiates the O-RAN Service instantiation |  |
| Step 5 (M) | The SMO interacts with O-Cloud to instantiate Near-RT RIC based on  Near-RT RIC VNFD |  |
| Step 6 (M) | The O-Cloud creates VNF of Near-RT RIC |  |
| Step 7 (M) | The O-Cloud notifies the SMO the Near-RT RIC has been instantiated  and SMO updates its inventory |  |
| Step 8 (M) | The SMO configures the Near-RT RIC |  |
| Step 9 (M) | the O-Cloud creates VNF of O-CU-CP |  |
| Step 10 (M) | The O-Cloud notifies the SMO the O-CU-CP has been instantiated and  SMO updates its inventory |  |
| Step 11 (M) | The SMO prepares configuration, e.g. Near-RT RIC related |  |
| Step 12 (M) | The SMO configures the O-CU-CP |  |
| Step 13 (M) | The SMO interacts with O-Cloud to instantiate O-CU-UP, for multiple O-  CU-UP VNF, the step 13 to 17 is circulated |  |
| Step 14 (M) | the O-Cloud creates VNF of O-CU-UP |  |
| Step 15 (M) | The O-Cloud notifies the SMO the O-CU-UP has been instantiated and  SMO updates its inventory |  |
| Step 16 (M) | The SMO prepares configuration, e.g. Near-RT RIC, O-CU-CP related |  |
| Step 17 (M) | The SMO configures the O-CU-UP |  |
| Step 18 (O) | The SMO deploys xApp to Near-RT RIC |  |
| Step 19 (O) | After the above steps the Near-RT RIC could interact with O-CU-CP via  E2 interface |  |
| Step 20 (O) | After the above steps the Near-RT RIC could interact with O-CU-UP via  E2 interface |  |
| Step 21 (M) | SMO adds O-DU into inventory, e.g. with an O-DU.ID for each O-DU.  For multiple O-DU this step is circulated |  |
| Step 22 (M) | SMO add O-RU into inventory in the O-DU record, e.g. with an O-RU.ID  for each O-RU. For multiple O-DU this step is circulated |  |
| Step 23 (M) | The field technician powers on the O-DU |  |
| Step 24 (M) | The O-DU sends Registration to the SMO  Note: controller address determined as per O-RAN-WG1.O1 Interface Specification |  |
| Step 25 (M) | The SMO registers the O-DU as on-line |  |
| Step 26 (M) | The SMO prepares O-DU configuration, e.g. related information from  Near-RT RIC and O-CU-CP, O-CU-UP |  |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
| Step 27 (M) | The SMO configures the O-DU  Note: includes NETCONF configuration as per O-RAN WG4.MP.0- v01.00 [12] |  |
| Step 28 (O) | The SMO could deploy xApp to O-DU |  |
| Step 29 (O) | After the above steps the Near-RT RIC could interact with O-DU via E2  interface |  |
| Step 30 (M) | The field technician powers on the O-RU |  |
| Step 31 (M) | The O-RU registers to the O-DU  Note: detailed procedures as per O-RAN WG4.MP.0-v01.00 - additional actions for hybrid case not shown |  |
| Step 32 (M) | The O-DU sends Config Change Notification to the SMO indicating O-  RU on-line |  |
| Step 33 (M) | The SMO registers the O-RU as on-line |  |
| Step 34 (M) | The SMO configures the O-RU via O-DU |  |
| Step 35 (M) | The O-DU gets O-RU configuration information from the SMO |  |
| Step 36 (M) | The O-DU configures the O-RU |  |
| Step 37 (M) | O-RU sends Registration to the SMO  Note: procedure not currently supported in WG4.MP.0-v01.00 but details assumed as per O-RAN-WG1.O1 Interface Specification |  |
| Step 38 (M) | The SMO registers the O-RU as on-line |  |
| Step 39 (M) | The SMO prepares O-RU configuration, e.g. include co-related O-DU,  etc. |  |
| Step 40 (M) | The SMO configures the O-RU |  |
| Ends when | All O-RAN network functions needed for service have been registered and configured; SMO holds current inventory of all O-RAN network  functions |  |
| Exceptions | Not applicable |  |
| Post Conditions | The O-RAN network has been established and can provide service to customers |  |
| Traceability | REQ-M&O-FUN1, REQ-M&O-FUN2, REQ-M&O-FUN3, REQ-M&O- FUN4, REQ-M&O-FUN5, REQ-M&O-FUN6, REQ-M&O-FUN9, REQ-  M&O-FUN10 |  |

</div>

1

![]({{site.baseurl}}/assets/images/71f1ae6fb4c5.png)1

![Generated by PlantUML]({{site.baseurl}}/assets/images/f6ceda9394b0.png)1

2

1. **Figure 2.2.1-1: O-RAN Service Provisioning**

### 2.2.2 O-RAN Measurement Data Collection

#### 2.2.2.1 Basic Objective

1. In this use case, the Non-RT RIC as the intelligent management center located in Service Management and
2. Orchestration Framework determines that measurement data is needed and interacts with the SMO OAM Functions to
3. collect measurement data from network for AI/ML training/inference/analyzing, and then generate optimization
4. operations in order to improve the end-to-end user service experience and the network performance.
5. According to the Service Management and Orchestration Framework, to fulfill the Non-RT RIC requested data
6. collection, the following capability should be supported by the SMO (framework):
   1. i The SMO should support the MnS component Type A (defined in [6])generation and the corresponding
   2. operation performing (defined in [5] and [7]), according to the measurement data collection request from the
   3. Non-RT RIC
   4. ii The SMO (framework) should support the MnS component type C (defined in [6]) consumption such as the
   5. measurement data requested by the Non-RT RIC
   6. The current use case focuses on the Non-RT RIC requested measurement data collection and consumption, the SMO
   7. should generate the PM Job and perform the PM Job control operations accordingly, and the SMO (framework) should
   8. support the measurement data consumption by the Non-RT RIC.
   9. *Notes:*
   10. *i In the O-RAN SMO framework, in order to avoid the PM Job confliction, it is suggested that the SMO take the*
   11. *responsibility for generating the PM Job and performing the PM Job control related operations. The resolution of*
   12. *conflict resolving by the SMO is FFS.*
   13. *ii In this use case, the network elements decide if the PM Job is acceptable or not, in other words, it is ultimately the*
   14. *network element (MnS producer) who decides whether the measurement data collection task can be established or*
   15. *not.*
   16. *iii Specifications for collecting infrastructure measurements do not yet exist. The Measurement Data Collection*
   17. *procedures will be updated to comply with [15] once WG6 has published the specification.*
   18. *iv The measurement data producer in the use case so far doesn't refer to Network Slicing, but this will be added in*
   19. *the use case once the O-RAN network slice has been defined.*

20

#### 2.2.2.2 Entities/Resources involved

1. o Roles in the PM Job Control related operations:
2. a). The Non-RT RIC: PM Job initiator
3. b). The SMO (framework): measurement service component type A consumer
4. To fulfill the Non-RT RIC requested measurement data collection by the SMO on the O1/O2 interface, the information
5. related to the collection task should comply with section2.3 defined in [13].
6. The measurement data collection information provided by the Non-RT RIC should be converted into a PM Job, and any
7. management operations to the data collection task requested by the Non-RT RIC should be converted into the O1/O2
8. interface supported PM Job control related management service operations by the SMO.

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| 30 | o | Roles in the NotifyFileReady subscribing: |
| 31 | a). | SMO: management service component type A consumer (the referenceConsumer, defined in [5]) |
| 32 | b). | O-RAN MOs: Notification producer |
| 33 | o | Roles in the measurement data consumption: |
| 34 | a). | SMO: management service component type C consumer |
| 35 | b). | O-RAN MOs: streaming data producer |
| 36 | c). | File Server: storage the measurement data file |

</div>

#### 2.2.2.3 Solutions

##### 2.2.2.3.1 Measurement Data Collection Creation

1. Table 2.2.2-1 shows the procedure of the Non-RT RIC requested measurement data collection task fulfilled by the SMO
2. on the O1/O2 interface.

###### Table 2.2.2-1: Measurement Data Collection Creation

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
| Goal | O-RAN Measurement Data Collection |  |
| Actors and Roles | [1]. Service Management and Orchestration Framework [2]. Non-RT RIC  [3]. O-Cloud  [4]. O-RAN components/logical nodes, e.g. O-CU, O-DU, O-RU, Near-RT RIC. |  |
| Assumptions | None |  |
| Pre-conditions | [1]. The SMO and the Non-RT RIC are connected and interact normally  [2]. O-RAN components are in normal running status  [3]. Secure network connectivity is already available between RAN components  - Note: security related procedure is FFS |  |
| Begins when | The Non-RT RIC determines that it needs measurement data from  the O-RAN MOs and corresponding infrastructure resources, e.g., O- CU-CP instance and corresponding infrastructure resources |  |
| Step 1 (M) | The Non-RT RIC provides the information of the measurement data  to the SMO |  |
| Step 2 (M) | The SMO generates a PM Job as the Non-RT RIC required |  |
| Step 3.1 (M) | The SMO performs PM Job control management to the O-CU-CP via  the O1 interface, e.g. Operation createMeasurementJob defined in [7] |  |
| Step 3.2 (M) | The SMO performs PM Job control management to the O-Cloud over the O2 interface for the O-CU-CP infrastructure resource instance,  e.g. Create PM Job operation defined in clause 7.7.2, [9] |  |
| Step 4.1 (M) | The measured O-CU-CP responds to the SMO with the PM Job  creation result. The PM Job ID should be contained. |  |
| Step 4.2 (M) | The O-Cloud responds to the SMO with the PM Job creation result  with the PM Job ID. |  |
| Step 5.1 (M) | The SMO subscribes to PM Notifications to the O-CU-CP instance via  the O1 interface. The ConsumerReference defined in 7.1.1.3 [5] could be the SMO address |  |
| Step 5.2 (M) | The SMO subscribes to O-CU-CP related infrastructure resource  instance PM data to the O-Cloud over the O2 interface |  |
| Step 6.1 (M) | The O-CU-CP instance provides the result of this operation to the  SMO |  |
| Step 6.2 (M) | The O-Cloud provides the SMO with the result of the subscription to  the O-CU-CP infrastructure resource instance |  |
| Step 7 (M) | The SMO provides the result of the measurement data collection  establishment to the Non-RT RIC |  |
| Ends when | Non-RT RIC has measurement data |  |
| Exceptions | FFS |  |
| Post Conditions | The Non-RT RIC initiated measurement data collection has been fulfilled by the SMO; the measured O-RAN MOs generate measured  data as the PM Job required. The subscription to the File Ready notification has been created successfully |  |
| Traceability | REQ-M&O-FUN7 |  |

</div>

1

![]({{site.baseurl}}/assets/images/89e6c6447e72.png)1

2

1. **Figure 2.2.2-1: Measurement Data Collection Creation**

##### 2.2.2.3.2 Measurement Data File Consumption

1. With the performance data file reporting method:
2. o The measurement data file could be stored in a file server, and the path should be contained in the
3. NotifyFileReady
4. o Once the measurement data file has been prepared, the O-CU-CP instance shall report the notification
5. NotifyFileReady to the SMO
6. Table 2.2.2-2 shows the measurement data file consumption

###### Table 2.2.2-2: Measurement Data File Ready Report

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
| Goal | O-RAN Measurement Data Collection |  |
| Actors and Roles | [1]. Service Management and Orchestration Framework [2]. Non-RT RIC  [3]. O-Cloud  [4]. O-RAN components/logical nodes, e.g. O-CU, O-DU, O-RU, Near-RT RIC. |  |
| Assumptions | None |  |
| Pre-conditions | [1]. The SMO and the Non-RT RIC are connected and interact normally  [2]. O-RAN components are in normal running status  [3]. Secure network connectivity is already available between RAN components  *- Note: security related procedure is FFS* |  |
| Begins when | The SMO shall perform the Operation Subscribe to provide the consumer information to the measurement data producer. The producer shall report the NotifyFileReady once the measurement  data file has been prepared |  |
| Step 1.1 (M) | The O-CU-CP sends the notification NotifyFileReady to the SMO, and it is consumed by the SMO |  |
| Step 1.2 (M) | The O-Cloud reports the infrastructure resource measured data file to the SMO |  |
| Step 2 (M) | The SMO retrieves the data file from the FileServer, and the collected data is eventually consumed by the Non-RT RIC |  |
| Ends when | SMO has collected data |  |
| Exceptions | FFS |  |
| Post Conditions | The SMO received the notification of NotifyFileReady successfully, the data file eventually consumed by the Non-RT RIC |  |
| Traceability | REQ-M&O-FUN7 |  |

</div>

3

![]({{site.baseurl}}/assets/images/a7af56791982.png)1

2

1. **Figure 2.2.2-2: Measurement Data File Consumption**

##### 2.2.2.3.3 Measurement Streaming Data Consumption

1. With the streaming reporting method:
2. o The consumer related information was taken to the producer in the operation of performance data collection
3. creation.
4. o The performance data streaming service producer shall establish streaming connection(s) to the consumer, in this
5. use case, the O-CU-CP instance act as the performance data streaming service producer and the SMO as the
6. consumer.
7. o The O-CU-CP instance shall send measured data on the established connection(s).
8. The table 2.2.2-3 shows the streaming connection(s) establishment and streaming data consumption.

###### Table 2.2.2-3: Measurement Streaming Data Consumption

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **Use Case Stage** | **Evolution / Specification** | **<<Uses>>**  **Related use** |
| Goal | O-RAN Measurement Data Collection |  |
| Actors and Roles | [1]. Service Management and Orchestration Framework [2]. Non-RT RIC  [3]. O-Cloud  [4]. O-RAN components/logical nodes, e.g. O-CU, O-DU, O-RU, Near-RT RIC. |  |
| Assumptions | None |  |
| Pre-conditions | [1]. The SMO and the Non-RT RIC are connected and interact normally  [2]. O-RAN components are in normal running status  [3]. Secure network connectivity is already available between RAN components  *- Note: security related procedure is FFS* |  |
| Begins when | The O-CU-CP instance starts streaming connection(s) establishment to the SMO, and reports the measured data as the PM Job required |  |
| Step 1 (M) | The O-CU-CP instance interworks with the SMO to establish streaming connection(s). the connection(s) should not be released  until the PM Job is stopped |  |
| Step 2.1 (M) | The O-CU-CP instance reports the measured data to the SMO as the PM Job required via the streaming connection(s) |  |
| Step 2.2 (O) | The O-Cloud reports the infrastructure resource measured data to the SMO |  |
| Ends when | SMO receives measured data |  |
| Exceptions | FFS |  |
| Post Conditions | The streaming connection(s) has been established between the O- CU-CP instance and the SMO successfully.  The SMO consumed the measured data successfully |  |
| Traceability | REQ-M&O-FUN7 |  |

</div>

![]({{site.baseurl}}/assets/images/01638a9ba70b.png)1

2

3

1

###### Figure 2.2.2-3: Measurement Streaming Data Consumption

3

# 1 Chapter 3.OAM Architecture

2

## 3.1 Architectural Principles

1. The following section provides architecture principals guiding the support of OAM in the O-RAN architecture.
2. Common OAM functions should be supported through a common set of OAM interface protocols across the different
3. components of the O-RAN architecture
4. Management Services should, to the degree possible, align with existing standards specifications:
5. ? 3GPP 5G Specifications for management interfaces
6. ? ETSI NFV Specifications for life cycle management
7. ? O-RAN WG4.MP.0-v01.00 (Future enhancements to align to 3GPP can be considered.)
8. O-RAN OAM specifications should refer to the 3GPP and ETSI specs and not replicate them here. O-RAN OAM
9. specifications must identify needed extensions to support O-RAN and exceptions which cannot be supported. It is the
10. goal of O-RAN to drive any needed extensions into standards to maintain alignment between O-RAN and existing
11. standards.

## 3.2 Architecture Requirements

1. Defines the Architecture requirements applicable to the O-RAN reference architecture. Architecture requirements are
2. derived from Use Cases to be supported and define the functional needs the architecture aims to satisfy.
3. The initial set of requirements in this document are derived from the O-RAN Service Provisioning Use Case. More
4. requirements may be added in future versions of the OAM Architecture.

### 3.2.1 Functional Requirements

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| **REQ** | **Description** | **Note** |
| [REQ-M&O-FUN1] | O-RAN OAM Architecture must support the interaction between the Service Management and Orchestration Framework and the O-Cloud through O2 interface to perform virtualized resource orchestration. | Use Case |
| [REQ-M&O-FUN2] | O-RAN OAM Architecture must support the capability for the Service Management and Orchestration Framework to consume the provisioning management service exposed by each O-RAN managed element, whether implemented as PNF or VNF, through the O1 interface. | O-RAN- WG1.OAM  Interface Specification [13] |
| [REQ-M&O-FUN3] | O-RAN OAM Architecture must support creation, modification and termination of VNFs in an O-RAN network by the Service Management and Orchestration Framework | Use Case |
| [REQ-M&O-FUN4] | O-RAN OAM Architecture must support registration and inventory of newly activated VNFs and PNFs by the Service Management and Orchestration Framework | Use Case |
| [REQ-M&O-FUN5] | O-RAN OAM Architecture must support collection of status change and other indications from VNFs and PNFs by the Service Management and Orchestration Framework | Use Case |
| [REQ-M&O-FUN6] | O-RAN OAM Architecture must support configuration of VNFs and PNFs  by the Service Management and Orchestration Framework, including, for example, addressing information needed to allow them to connect to each | Use Case |

</div>

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
|  | other |  |
| [REQ-M&O-FUN7] | O-RAN OAM Architecture must support management of PM jobs, PM data collection/storage/query/statistical reports from O-RAN Components | Use Case |
| [REQ-M&O-FUN8] | O-RAN OAM Architecture must support operation logging and operation authority of Managed Elements | Use Case to be added |
| [REQ-M&O-FUN9] | O-RAN OAM Architecture must support management of Managed Functions contained within a Managed Element | ETSI 3GPP TS 28.622 |
| [REQ-M&O-FUN10] | O-RAN OAM Architecture must support hierarchical and hybrid management of O-RAN O-DU and O-RU components as defined in O-RAN- WG4.MP.0-v01.00 | Use Case & O-RAN MP  Spec [12] |
| [REQ-M&O-FUN11] | O-RAN OAM Architecture and interfaces must support network slicing, where an instance of O-RAN managed function may be associated with one or more slices. | Use Case to be added |
| [REQ-M&O-FUN12] | O-RAN OAM Architecture must support O1 interface for all Managed Elements (with the exception of the RU) even if the Managed Element is deployed behind a NAT | O-RAN- WG1.OAM  Interface Specification [13] |

</div>

1. 3.2.2 Non-Functional Requirements

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| [REQ-M&O-NFUN1] | O-RAN OAM Architecture must support the introduction of new and more cost-effective technologies into the RAN through open, standard interfaces | O-RAN  white paper [11] |
| [REQ-M&O-NFUN2] | O-RAN OAM Architecture must support virtualization of RAN components, allowing operators use of common, off-the-shelf hardware implementations | O-RAN  white paper [11] |
| [REQ-M&O-NFUN3] | O-RAN OAM Architecture must support use of Analytics and Artificial Intelligence/Machine Learning to improve network efficiency and performance and reduce operations costs | O-RAN  white paper [11] |

</div>

2

### 3.2.3 Security Requirements

<div class="table-wrapper" markdown="block">

|  |  |  |
| --- | --- | --- |
| [REQ-M&O-NFUN4] | O-RAN OAM Architecture must support security of interactions between the components of an O-RAN network | See note |

</div>

4

1. Note: more detailed requirements for security will be addressed in future versions of the OAM Architecture.

## 3.3 Reference Architecture

1. The reference architecture defines a set of basic architectural building blocks - management services, managed
2. functions and managed elements - for the O-RAN management domain.

### 3.3.1 Architectural Building Blocks

#### 3.3.1.1 Management Services

1. O-RAN Management Services offer capabilities to manage and orchestrate managed elements. Managed elements
2. expose their management services to managers. Managers consume the management services.
3. Examples of Management Services supported by O-RAN include:
4. ? Provisioning
5. ? Fault Supervision
6. ? Performance Assurance
7. ? Trace Management
8. ? File Management
9. ? Software Management
10. ? Communication Surveillance
11. ? Startup and Registration of a Physical Network Function (PNF)
12. ? Instantiation and Termination of a Virtualized Network Function (VNF)
13. ? Scaling Management Services for VNF
14. 'The definition of supported management services and their APIs will be covered in the OAM O1 Interface specification
15. [13].

#### 3.3.1.2 Managed Elements

1. The definition of a Managed Element (ME) is given in 3GPP TS 28.622 [3] section 4.3.3. The ME is an IOC that
2. supports communication over management interface(s) to the manager for purposes of control and monitoring.
3. Examples of O-RAN Managed Elements include:
4. ? O-RAN Managed Functions deployed individually as MEs (e.g., Near-RT RIC ME, CU-CP ME, CU-UP ME,
5. O-DU ME, O-RU ME).
6. ? Central Unit (CU) composed of CU-CP and CU-UP
7. ? ME composed of Near-RT RIC, CU-CP, CU-UP, DU and RU
8. A variety of deployment examples and their OAM interfaces are given in a later section. Choice of deployment options
9. will be based on operator requirements.
10. A key motivation for the Managed Element concept is that an ME is a tightly integrated and tested group of MFs that
11. are deployed together. This has implications on how software updates are managed, because all software updates need
12. to retain the property that all MFs in the ME have been tested together. Depending on the deployment scenario and
13. other considerations, the MFs may be grouped in different ways. An interface is required to each ME, which can
14. manage the communications to each MF that is contained within it. Following sections present many examples of how
15. the O1 interface can connect to either an ME that contains an individual MF, or to an integrated ME that contains
16. multiple MFs.

#### 3.3.1.3 Managed Functions

1. The definition of a Managed Function (MF) is given in 3GPP TS 28.622 [3] section 4.3.4. An MF instance is managed
2. using the management interface(s) exposed by its containing ME instance.
3. O-RAN managed functions include:
4. ? Near-Real-Time Radio Intelligent Controller (Near-RT RIC)
5. ? O-RAN Central Unit - Control Plane (O-CU-CP)
6. ? O-RAN Central Unit - User Plane (O-CU-UP)
7. ? O-RAN Distributed Unit (O-DU)
8. ? O-RAN Radio Unit (O-RU)

#### 3.3.1.4 Managed Applications

1. *ManagedApplication*: This Information Object Class (IOC) represents a software application that may be independently
2. tested and separately deployed from its containing *ManagedFunction* instance. The containing *ManagedFunction*
3. instance mediates the management service for the Managed Application. A *ManagedFunction* instance may have zero
4. or more Managed Application instances.
5. The xApp is defined in [19]. Management of the xApp shall comply with the following principles:
6. o The O1 interface terminates on the Near-RT RIC platform ME, the Near-RT RIC platform delegates the
7. management of xApps
8. o xApp could be provided by the third party, it is decoupled from the O-RAN nodes, O-RAN node supports one or
9. more xApp running on it
10. o In order to model a variety of different types of xApps, it is necessary to extend common features of a parent Class,
11. and the specific xApp IOC could inherit from its parent Class.
12. According to above principles, the modeling to the xApp could be described as the following:
13. o xApp IOC represents the management aspects of the xApp
14. o xApp IOC inherits from *ManagedApplication* and could extend specific attributes.
15. The details of the *MA* will be defined in the O-RAN Information Model document [23]. 18

#### 3.3.1.5 Service Management and Orchestration Framework

1. Service Management and Orchestration Framework is responsible for the management and orchestration of the
2. managed elements under its span of control. The framework can for example be a third-party Network Management
3. System (NMS) or orchestration platform.
4. Service Management and Orchestration Framework must provide an integration fabric and data services for the
5. managed functions. The integration fabric enables interoperation and communication between managed functions
6. within the O-RAN domain. Data services provide efficient data collection, storage and movement capabilities for the
7. managed functions. In order to implement multiple OAM architecture options together with RAN service modeling, the
8. modeling of different OAM deployment options and OAM services (integration fabric etc.) must be supported by SMO

#### 3.3.1.6 Non-Real Time Radio Intelligent Controller

1. The non-RT RIC is a part of the Service Management & Orchestration Framework and communicates to the near-RT
2. RIC using the A1 interface. [11]
3. Non-RT control functionality (> 1s) and near-Real Time (near-RT) control functions (< 1s) are decoupled in the RIC.
4. Non-RT functions include service and policy management, RAN analytics and model-training for some of the near-RT
5. RIC functionality, and non-RT RIC optimization.

#### 3.3.1.7 Control Loop Support

1. O-RAN defines 3 control loops with different latency bands [11]. It is not expected that these loops are hierarchical but
2. instead run in parallel. This does not mean that an ME with an inner loop will not generate its own event as result of an
3. inner loop failure, but it will not simply propagate the lower level event received by the inner loop. The three loops are
4. roughly defined as:
5. - Loop 1: In the DU for per TTI/msec resource scheduling (<10 millisecond)
6. - Loop 2: In the Near-RT RIC and CU for resource optimization (10 milliseconds to 1 second)
7. - Loop 3: In the Service Management and Orchestration Framework for ML Training, Trending, Orchestration (>
8. 1 second)

1

### ![]({{site.baseurl}}/assets/images/83e14d2deb03.png)3.3.2 Basic OAM Architecture

3

###### Figure 3.3.2-1 O-RAN OAM Logical Architecture

1. Figure 3.3.2-1 shows the overall O-RAN OAM Logical Architecture. In the original white paper [11], the interface
2. between the Manager and the O-RAN components for control purposes was identified as A1. The O-RAN OAM
3. Architecture adds another interface for OAM functions, labeled O1 (OAM). O1 is the interface between the O-RAN
4. Managed Element and the management entity. Note: the figure uses 5G terminology, however the same principles will
5. apply for LTE/4G. Mapping to LTE/4G may be added in future. O-RAN OAM also adds the O2 interface for
6. management of the O-Cloud, which has different requirements from the O1 interface and as defined in [21].
7. The O1 OAM Interface includes implementation of Fault, Configuration, Accounting, Performance, Security (FCAPS)
8. functions, File management and Software management functions to ME (s) virtualized and physical alike. For details of
9. the management services supported by O1, see [13].
10. The O2 OAM Interface enables the management of O-Cloud infrastructures and the deployment life cycle management
11. of O-RAN cloudified NFs that run on an O-Cloud. For details of the functions supported by O2, see [21].
12. As shown in the figure, there is a logical OAM interface to individual O-RAN Managed Functions, however in practice
13. the grouping of Managed Functions into Managed Elements will determine where actual O1 interfaces are terminated.
14. More detail is explained in subsequent sections. The O1 interface could be the terminated directly on the Service
15. Management & Orchestration Framework or in a hierarchical model could be terminated on a Managed Element which
16. manages other O-RAN Managed Functions.
17. The sections below identify possible management topologies, for example, the basic "flat" model of OAM relationships
18. as well as the hierarchical model of O-DU to O-RU relationship and the hybrid model of O-DU to O-RU relationship
19. defined in the O-RAN Front Haul M-Plane specification, as well as example deployment options.

### 3.3.3 OAM Models and Deployment Options

1. This section provides examples of possible models and deployments of Managed Functions into Managed Elements.
2. Adoption of a single model is not required in the O-RAN OAM Architecture, rather multiple model deployments may
3. be supported in a network.

#### ![]({{site.baseurl}}/assets/images/4d31f27b9488.png)3.3.3.1 Flat Management Architecture Model

2

###### Figure 3.3.3-1: Flat Model

1. In the Flat management model, all the MFs comprising the O-RAN architecture are also MEs and expose an O1
2. interface to the SMO. Note: The Open Fronthaul M-Plane does not support a flat management model for the O-RU.
3. NM/orchestration platforms provide a distributed deployment model of NM functions which allows for greater scaling
4. and lower latency functions that traditional centralized monolithic NM implementations. In this specification, no
5. specific platform is required, however the NM is assumed to have orchestration capabilities. Therefore, deployment of
6. SMOs, analytics, configuration and control functions can be potentially collocated with some of the NEs. This allows
7. for localized processing and localized scaling to handle the expected large number of NEs to be managed. The NM
8. functions can be distributed across the network edge and therefore handle a logically flat architecture.

#### 3.3.3.2 Hierarchical Management Architecture Model

1. Where the distributed NM architecture is not available it may be desirable to deploy a hierarchical management
2. architecture where a higher level ME is used to manage a subnetwork of MEs as shown in Figure 3.3.3-2, where the O-
3. ![]({{site.baseurl}}/assets/images/a5a6a1df36e4.png)DU manages the O-RU using the Open Front Haul M-Plane interface.

16

###### Figure 3.3.3-2: Hierarchical Model Example

1. In the example of the figure 3-3, the O-RU is managed by the Open Fronthaul M-Plane interface to the O-DU rather
2. than the Service Management & Orchestration Framework, so there is a hierarchical relationship between Service
3. Management & Orchestration and the O-DU. The O-DU must provide a consistent and standardized view of the
4. subtending O-RUs as specified above.

#### 3.3.3.3 Hybrid Management Architecture Model

1. In the Hybrid management architecture, the O-RU is managed partially by the O-DU and partially by the SMO.
2. The management by O-DU is via the Open Fronthaul M-Plane, and the SMO manages the O-RU through a direct
3. interface. Note: The O-RU currently supports hybrid mode using an Open Fronthaul M-Plane logical direct interface
4. defined in the Open Fronthaul M-Plane specification [12] between the O-RU and SMO. This direct interface may be
5. ![]({{site.baseurl}}/assets/images/41a579b9b9f7.png)augmented with an O1 Interface at some time in the future, as in [17]. 9

10

11

12

###### Figure 2.3.3-3: Hybrid Model

1. Management responsibility is divided in this case between the O-DU and the Service Management & Orchestration
2. Framework. Open Fronthaul M-Plane interface in the figure is defined in [12]. The O-RU supports connection to
3. multiple clients as well as access control that can be used to control the privileges available to a particular client in
4. Open Fronthaul M-Plane [12]. The alignment between the Open Fronthaul M-Plane and O1 interfaces is for further
5. study.

#### 3.3.3.4 Example Managed Deployment Options

1. In aggregated equipment, the Managed Element contains multiple internal Managed Functions. This section provides a
2. number of examples showing how the OAM architecture is applied to different groupings of Managed Functions into
3. Managed Elements. Use cases associated with different deployment options are defined in [15].
4. Figure 3.3.3-4 shows a single Managed Element that contains CU-CP, CU-UP, O-DU and O-RU Managed Functions.

![]({{site.baseurl}}/assets/images/dd8ae08c963e.png)1

###### Figure 3.3.3-4: Example with Single Integrated ME

1. As shown in the figure 3.3.3-4, there is a single O1 interface to the Managed Element. However, the O1 interface still
2. provides a consistent and standardized view of the Managed Functions that are contained within the Managed Element.
3. ![]({{site.baseurl}}/assets/images/e59c9f766716.png)Figure 3.3.3-5 shows another example where the Near-RT RIC has been split off as a standalone ME.

6

###### Figure 3.3.3-5: Example with Single Integrated ME + Standalone Near-RT RIC

1. In the example of Figure 3.3.3-5, there are separate O1 interfaces supported by each ME. The ME containing the Near-
2. RT RIC Managed Function supports management of only this function through its O1 interface, while the ME
3. containing the other Managed Functions provides a view of all contained functions.

![]({{site.baseurl}}/assets/images/ddeffdda71db.png)1

###### Figure 3.3.3-6: Example ME aggregating Near-RT RIC, O-CU-CP and O-CU-UP

* 1. Figure 3.3.3-6 shows an alternative example with two Managed Elements containing the Near-RT RIC/O-CU-CP/O-
  2. CU-UP, and the O-DU and O-RU Managed Functions, respectively. Again, the O1 interfaces from the MEs provide a
  3. ![]({{site.baseurl}}/assets/images/6a16fa76c7da.png)consistent and standardized view of the contained Managed Functions. 6

7

###### Figure 3.3.3-7: Example with Three MEs

1. Figure 3.3.3-7 shows an alternative example with three Managed Elements containing the Near-RT RIC/CU-CP, the
2. CU-UP, and the O-DU and O-RU Managed Functions, respectively. Again, the O1 interfaces from the MEs provide a
3. consistent and standardized view of the contained Managed Functions.
4. Finally, Figure 3.3.3-8 shows a similar grouping of Managed Functions, but with the Near-RT RIC separated as its own
5. Managed Element. The same architectural concepts apply.

![]({{site.baseurl}}/assets/images/b8db27ebe635.png)1

* 1. **Figure 3.3.3-8: Example with Three MEs including Standalone Near-RT RIC**

### 3.3.4 Managed Elements Deployed behind a NAT

* 1. Service Providers prefer to not deploy Managed Elements (ME) behind a NAT, but there are cases where this cannot be
  2. avoided, for example:
  3. ? exhaustion of public IPv4 addresses
  4. ? managed elements deployed in large complexes not owned by the Service Provider (Apartments, Sports
  5. Venues etc.)
  6. ? managed elements connected via third-party networks using a NAT 10

1. When a Service Provider deploys managed elements behind a NAT it is critical that they are able to retain full
2. ![BB0B47AA]({{site.baseurl}}/assets/images/caec88655a7e.png)management control of these elements. 13

14

###### 15 Figure 3.3.4.1 O-RAN MEs behind a NAT

16

1. Four methods of providing the O-RAN Manager with the ability to address a ME behind a NAT and identify data
2. received from a ME behind a NAT are recommended in priority order:
3. 1. ME uses IPv6 as Backhaul transport where possible eliminating the need for a NAT - exhaustion of public
4. IPv4 addresses
5. 2. ME establishes persistent VPN tunnel (e.g. IPSec) toward a VPN concentrator (gateway) located outside of
6. network with the NAT. The ME is then accessible through the established tunnel.
7. 3. ME uses a standard protocol (UPNP or PCP) to establish a port-forwarding rule at the firewall and
8. automatically assign itself a port.
   1. 4. Service Provider manually configures the firewall to assign a port to each ME that resides within the protected
   2. network.

3

# 1 Chapter 4.Application Lifecycle Management (LCM)

1. ![]({{site.baseurl}}/assets/images/dbe4b4e1c891.png)This chapter describes Lifecycle Management of applications that are developed by
2. a Solution Provider and delivered to a Service Provider or Network Operator for
3. deployment in O-RAN. The chapter's current focus is on LCM of rApps and xApps,
4. as defined in [17].
5. Lifecycle Management follows the basic models of a Software Development
6. Lifecycle by defining the transitional information from one state to another. There
7. are several Software Development Life Cycle (SDLC) definitions. For the purposes
8. of discussion this document generally follows a 7-state model as shown in Figure 4-
9. 3. Some states might also include activities that align with other states. However,
10. this level of detail is not depicted here in order to introduce those details later in the
11. document.
12. A Service Provider or Network Operator has needs which are fulfilled by a Solution
13. Provider. Once the Solution Provider delivers the application it is validated in a test
14. environment prior to giving to operations to deploy. Usage of the deployed application may result in changes to
15. configuration by the Service Provider or may be feedback to Solution Providers to evolve the capabilities of the
16. network and/or its management.
17. Although applications may come in many forms the delivery from the Solution Provider
18. to the Service Provider needs to be done in a standardized manner. The seven steps
19. defined in the SDLC are high level. Each may break down into a set of finer grain steps.

**Figure 4-3: Generalized Lifecycle**

## 4.1 Scope

1. The end-to-end lifecycle involves two entities, the Solution Provider and the Service Provider. The Solution Provider
2. provides applications for the Service Provider to use in their network. The working flow could be summarized as three
3. phases: Development, Onboarding and Operations, as shown in Figure 4.1-4.
4. ![]({{site.baseurl}}/assets/images/dc40e1aa0ca5.png)

###### Figure 4.1-4 Application Lifecycle Phases

1. These applications need to be onboarded in a common manner, regardless of how they are deployed. This document
2. focuses on the data that must be included in the App Package as it is exchanged between the Solution Provider and the
3. Service Provider. This exchange is referred to as the "SP" exchange. This is not a formal interface between systems and
4. therefore is not denoted as other O-RAN interfaces are. Care is given as not to put implementation or tooling mandates
5. on either the Solution Provider in their development of the application, or the Service Provider in the aspect of training
6. or deploying the application. Aspects of the lifecycle across both parties are introduced. However, not all aspects are
7. discussed. Instead the focus is on those activities that affect the data contained in the SP Exchange. Later in this
8. document the term "Service Planning" is used to represent activities internal to the Service Provider. This is not the
9. same as the "SP Exchange" used to describe the data passed from the Solution Provider to the Service Provider. The
10. method of the SP Exchange is not defined in this document. It is sometimes referred to as the "Marketplace". The
11. marketplace can be implemented by either the solution provider, the service provider, and an external entity to both.
12. The Marketplace simply represents an exchange between entities which could be done by electronic means or physical
13. media.
14. The App Development will provide application solutions w/wo AI/ML models, while "App Onboard" and "App
15. Operate" will be responsible for application onboarding and operations. Considering the data privacy and security
16. requirements, the application development could be completed in the environment provided by the Service Provider.
17. Applications utilize AI/ML models or not. Therefore, although the Model Information may be optional in the package,
18. we will focus on the data exchange requirements for applications with AI/ML models as the superset.

### 4.1.1 Information Model

1. An Entity Relationship Diagram (ERD) is a way to pictorially show relationships and cardinality between "Entities".
2. Entities can be anything, physical, logical, or conceptual. They usually have some attributes to differentiate one instance
3. from another. The entities relationship is identified with a connector which uses symbols at both ends to show the
4. cardinality between the entities. The symbol represents the cardinality of the far end to the entity near the symbol. These
5. basic concepts are shown in Figure 4.1-5 Entity Relationship Diagram Basic ComponentsFigure 4.1-5. Some other
6. notations are fields marked as a Primary Key (PK), a Foreign Key (FK), or an Alternate Key (AK). Numbers may be
7. appended to show when multiple fields are combined to create a unique key value.

![]({{site.baseurl}}/assets/images/660d66505611.png)

19

###### Figure 4.1-5 Entity Relationship Diagram Basic Components

1. The following ERD diagram illustrates the composition of the **Application Package**. An **Application Package** is the
2. basic unit exchanged between the Solution Provider and Service Provider. The attributes of the entities in the diagram
3. are representative. The actual contents are FFS and will be refined in a later release of this document.

1

![]({{site.baseurl}}/assets/images/9df856aa5e16.jpg)

2

###### Figure 4.1-6 Application Package Entity Relationship Diagram

4

1. The following modifiers can be pre-pended to Information Model Elements to indicate context:
2. "**Solution**" The version of the element as defined by the **Solution Provider**
3. "**Onboarded**" The initial version of the catalogued elements created during onboarding.
4. "**Catalogue**" Subsequent versions of the catalogued package or its elements which may have been adjusted by
5. the **Service Provider**.
6. The "**Application Package**" contains a Metadata repository with metadata files in YAML [21] format. It also contains
7. a security metadata file in YAML format which describes the procedures used for ensuring the integrity of the software
8. contained in the package.
9. The **Application Package** also contains repositories for **Deployment Configurations**, **Application Types**, and
10. **Deployable Components**. An optional repository for **ML Models** is supplied for Application Packages with one or
11. more application types employing ML technology.
12. ML Models may be pre-trained by the **Solution Provider** and therefore provide initial **Training History**. The **Service**
13. **Provider** may also train the model or retrain the model with a more specialized data set, this is called **specialization**.
14. The **Training History** provides the mechanism to record all training and subsequent specializations applied to that
15. training through the **Training History**.
16. An example of specialization is a **ML Model** created to predict the flow of traffic volumes. This algorithm can be
17. generally trained to follow road patterns for devices with a velocity greater than 20 miles per hour. This training could
18. be done by the **Solution Provider** on a generalized or open data set and recording in the **Solution Training History**.
19. After onboarding the **Service Provider** may provide specialized training for dense urban traffic patterns which don't
20. always follow the roads due to periodic traffic congestion This would be an additional **Training History** record added
21. by the **Service Provider** and referenced as specialization in the **Catalogue Training History**. Further refinement could
22. also be applied for specific cities such as New York, Los Angeles, or San Francisco which would now add 3
23. specializations **Catalogue Training History** records relating to the dense urban **Catalogue Training History** which is
24. a specialization if the **Onboarded Training History**.
25. Once a **Catalogue Deployment Configuration** is validated as safe for use in operations it is published to a runtime
26. environment as a **Published Deployment Configuration**. Runtime instance data can be applied to the **Published**
27. **Deployment Configuration**. **Application Types** deployed as part of this activity are call an **App Instance**. An **APP**
28. **Instance** running in the Non-RT RIC Runtime can be referred to as an **rAPP** instance. An **App Instance** running in the
29. near-RT RIC Runtime can be referred to as an **xApp** instance. An **App Instance** running in a training environment is
30. referred to as a **Training App** instance.

### 4.1.2 Diagramming Legend

1. The legend depicted in Figure 4.1-7 is used across all lifecycle diagrams in this section and is shown once so it is not
2. required on every diagram. Bolded text on a diagram is an item identified as requiring further discussion later in the
3. document. Text in Italics are items identified for completeness but not requiring further discussion. Meet-Me-Points
4. (MMPs) are places where a major aspect of the lifecycle interchanges. Data may be exchanged through these MMPs but
5. the exact mechanism of the exchange is outside the scope of this document. Destination or Decision points are color
6. coded according to their user community. Destination or Decision points are not a contributing factor to the data
7. demands of the "SP" Exchange and are therefore not named. Instead the actions or conditions that are used as a
8. ![]({{site.baseurl}}/assets/images/a68b2a960b78.png)transition between points are named as the items of interest.

16

1. **Figure 4.1-7: Life Cycle Diagram Legend**

### 4.1.3 App Development Lifecycles

1. In the App Development Lifecycle only two types are defined, the **Solution App Package** and the **Solution App Type**.

#### 4.1.3.1 Solution App Type Lifecycle

1. The Development Lifecycle steps related the Solution App Type are shown below in Figure 4.1-8 **??!?????**
2. **??**.

![]({{site.baseurl}}/assets/images/6a8721975a0c.png)1

###### Figure 4.1-8: Solution App Type App Development Lifecycle

* 1. Customer feedback can consist of use case requirements, feature requests, defect notifications, or a variety of other
  2. comments. These feed the development cycle to develop new application or enhance existing ones. Requirements are
  3. usually identified and sent to developers to implement. The outcome of the build process is the container images built
  4. using SDKs for their intended deployments. If the application is AI/ML enabled, then the training action is done. The
  5. training might happen with synthetic data or with data provided by Service Providers. Information on the training
  6. performed will be included in the Solution Training History. The completed Solution App Type is stored in a
  7. development repository.

#### 4.1.3.2 Solution App Package Lifecycle

* 1. ![]({{site.baseurl}}/assets/images/710f4179b31f.png)The Development Lifecycle steps related the Solution App Package are shown below in Figure 4.1-9.

12

###### Figure 4.1-9: Solution App Package App Development Lifecycle

1. The Solution App Package is used to convey the Solution App Type through the onboarding process to the Service
2. Provider. It begins by pulling the Application App Type out of its repository and placing it in the package as mandated
3. by the exchange requirements. Next security is applied such that the Service Provider can ensure that an Onboarded
4. Application Package did in fact come from the expected Solution Provider. The secure package, Solution App Package,
5. is then delivered to the Service Provider for onboarding.

### 4.1.4 App Onboarding Lifecycles

1. The App Onboarding phase deals with establishing configuration, policies, measurements, and required analytics.
2. The App Onboarding Phase is involved with both App Packages and App Types, each with its own steps and associated
3. actions. These will be treated separately.

#### 4.1.4.1 Onboarded App Package Lifecycles

1. The Service Design steps associated with an Onboarded App Package are shown below:
2. ![]({{site.baseurl}}/assets/images/51873bdcbc81.png)

###### Figure 4.1-10: Onboarded App Package Service Provider Configuration Lifecycle

1. An App Package is onboarded from the exchange, and its content verified. If valid, its contents (App Types) are
2. unpacked and the Onboarded App Package and associated Onboarded App Types catalogued. If invalid, the Service
3. Provider can provide App Package-level feedback to the Solution Provider via the Marketplace.

#### 4.1.4.2 Onboarded App Type Lifecycles

1. The App Onboarding Phase for Onboarded App Types is split between normal processing for all applications, named
2. "Configuration", and the lifecycle for "Training" App Types with included AI/ML Models. Workflow can interchange
3. between these cycles iteratively. We will treat each of these separately below. 16

##### 4.1.4.2.1 Onboarded App Type Configuration Lifecycle

1. The Service Operator Configuration steps associated with an Onboarded App Type are shown below:
2. ![]({{site.baseurl}}/assets/images/f52eb306350f.png)

###### Figure 4.1-11 Onboarded App Type Service Provider Configuration Lifecycle

1. Onboarded App Types are made visible in the SMO environment when published into the catalogue. Each
2. recommended configuration of the App Type is certified prior to publication to a runtime library. If Certification fails,
3. then Service Planning will determine the next course of action.
4. Service Planning aggregates "fix" requests from Configuration which can be passed back to the Solution Provider (at
5. the App Package level) as feedback across the SP interface of the Marketplace Exchange. This exchange also
6. aggregates "change" requests from Configuration or Operations and determines if the request is for additional
7. development (a "feature" request) or additional training (a "training" request). The former would be aggregated and
8. passed back to the Solution Provider via the SP interface as described above for "fix" requests. For the latter, the
9. Service Design: Training lifecycle would ensue.
10. If the Onboarded App Type requires AI/ML training, then a request through Service Planning is used to train the model.
11. When the "Specialized App Type" is returned, like non-ML Onboarded App Types it is catalogued and scheduled for
12. certification. Once certified the App Type is distributed as a Published App Type to a Run Time Library. From there
13. operations can deploy as either a management (rApp) or network application instance (xApp).

##### 4.1.4.2.2 App Type Training Lifecycle

1. The Service Operator Training Lifecycle associated with a Training App Type is shown below:

![]({{site.baseurl}}/assets/images/43d401f1a235.png)

9

###### Figure 4.1-12: Training App Type Service Provider Training Lifecycle

1. When a training request is received then resources within the training environment are scheduled for the application.
2. Data is collected and groomed for training after which a training iteration is executed. At the end of the training cycle a
3. test set is applied to the model and accuracy is calculated. If the test fails or other metadata indicates more training
4. iterations are required, then the cycle repeats. Once the model is adequately trained it is promoted and sent back to
5. service planning for continuation in another lifecycle.
6. Inside the "Training Lifecycle" the process MAY require multiple iterations of training before being returned to the
7. Service Planning MMP.
8. The iteration count SHALL be included in the specialization metadata info.

### 4.1.5 App Operation Lifecycles

1. There can be many runtime environments in the service providers' network. Some can be production while others might
2. be for non-production execution, such as offline training and lab certification. For this document we will focus on the
3. runtime aspects of rApps, which execute within the Non-RT RIC as part of the SMO, and the xApps which execute in
4. the near-RT RIC as part of the RAN. Although they have the same lifecycle steps the data demands due to their
5. operational environment are different and therefore need to be independently addressed.

#### 4.1.5.1 App Instance Lifecycles

![???  ???????]({{site.baseurl}}/assets/images/0f933a49dfcf.jpg)

8

###### Figure 4.1-13: Service Provider Runtime Lifecycles

1. After the App Instance is created through a deploy operation it is monitored. As monitoring reports the health and
2. workload of the application it is scaled up and down based on demand. Based on monitoring result, a series of operation
3. and management functions are triggered, such as alert management, event management, incident management and
4. further analysis. The analysis results can be guidance for further actions such as termination, healing and scaling.
5. Finally, when its job is completed the instance is terminated. While in operation the service provider may discover
6. defects, performance issues, or identify new features that would be beneficial. Such issue or change request will
7. be communicated to the Service planning where the Application could be retrained or updated. The information can
8. also be sent via the Service Planning to the Solution Provider as feedback.
9. Operations determine when an application is deployed, or undeployed. Since applications are atomic, the update process
10. is an orchestrated process of deploy and terminate. It is possible for two versions to be active at the same time, but care
11. must be given not to provide overlapping scopes to the application instances, otherwise they may give differing
12. directives to the network in a random order. This could cause a destabilization of the network.

## 4.2 Common Application Lifecycle Conclusions

1. The initial conclusion of Common Application Lifecycle procedures is that there is a formalized exchange between the
2. Solution Provider and the Service Provider, the "SP Exchange". The SP Exchange consists of data describing the
3. package and its security. The package also contains information regarding Deployment Configurations, Application
4. Types, Deployable Components, and potentially ML Models. Further details regarding the composition of these areas
5. will be defined through analysis of the Actions identified in section 4.1 as an action requiring further analysis (Bolded). 28

# 1 Appendix A: Cardinality

1. This informative Appendix provides background information regarding the cardinality of different O-RAN architecture
2. elements. It is not intended as a requirement on cardinality.
3. The RAN network has an expected hierarchical fan out. Therefore, the O-RAN sizing would be:
4. - Non-RT RIC (1..j)
5. - Near-RT RIC (1..k)
6. - CU-CP (1..m)
7. - CU-UP (1..n)
8. - O-DU (1..p)
9. - O-RU (1..q)

11 Where: 1<=j; j<=k; k<=m; m<=n; m<=p; p<=q

1. Due to resiliency and scaling aspects of cloud implementations an O-DU will logically be connected to one CU-CP. The
2. CU-CP may in fact be a pool of CU-CP instances to handle loads.
3. CU-UP MEs will be pooled and aligned with the services they are configured to serve. The CU-CP will assign the CU-
4. UP that an O-DU needs to connect to for a given UE session.
5. An O-DU may serve many O-RU MEs depending on its designed capacity to manage the loop 1 processing.
6. One Near-RT RIC will be connected to multiple CU-CP, CU-UP, and O-DU MEs. For resiliency the MEs may be
7. connected to more than one Near-RT RIC, however, it shall not require duplication of data to be sent to each RIC
8. instance.
9. A Near-RT RIC will be connected to one non-RT RIC. 21

# 1 Appendix B: Sequence Diagram Template

1. This section provides a common template for the description of end-to-end use cases.

##### B.1 Installing the PlantUML plugin for windows

1. Follow the installation instructions found at: <https://github.com/plantuml/word-template>
2. The plantuml.jar file can be downloaded from: <http://sourceforge.net/projects/plantuml/files/plantuml.jar/download>
3. The word "\*.dotm" file to use would be in the "Template\_Word\_16" ([https://github.com/plantuml/word-](https://github.com/plantuml/word-template/tree/master/Template_Word_2016)
4. [template/tree/master/Template\_Word\_2016](https://github.com/plantuml/word-template/tree/master/Template_Word_2016)) link.
5. Once you have the plugin installed you can select "Show PlantUML" which will unhide the text used to generate the
6. diagrams.

##### B.2 Plant UML Colors

1. The following Palette are the named colors recognized by PlantUML. Colors can also be defined by RGB Hexcode
2. (RRGGBB).

13

![]({{site.baseurl}}/assets/images/bd449fdfb8bb.png)

@startuml colors @enduml

14

15

16

##### B.3 Depicting human actors as participants

1. The participant type Actor should be used. For Clarity these should be the first group and therefore always on the left
2. side of the diagram. The color "#lightblue" has been identified as the background for this group of use case participants.

20

@startuml

Box "Personnel" #lightblue

Actor FT as "Field Technician" Actor RP as "Radio Planner"

End box @enduml

21

22

23

24

25

![Generated by PlantUML]({{site.baseurl}}/assets/images/5b252703b981.png)

1

1. At times it may be desirable to identify external data sources. These would be presented using the same color as
2. personnel but be titled as Non-RAN Data. The Source of the data would be identified as an "Entity". The list of these
3. could be immense but small within the context of a use case. Therefore, a few examples are shown below, and is not
4. intended to be an exhaustive list.

6

![]({{site.baseurl}}/assets/images/b46cfcd0b66c.png)

@startuml

Box "Non-RAN Data" #lightblue Entity weather as "Weather Data" Entity fire as "Fire Data"

Entity earth as "Earthquake Data" Entity subs as "Subscriber Data"

End box @enduml

7

8

9

10

11

12

13

14

15

##### B.4 Depicting Service Management and Orchestration Participants

1. Service Management and Orchestration participants can vary by type. The following UML shows the standard types for
2. defined participants. Participants can be deleted when not pertinent to the use case but additional participants should be
3. avoided unless they are defined in the O-RAN Architecture Description [17] or other O-RAN specifications. For
4. consistency SMO should be the second group unless the personnel group is not required which would make this the first
5. group. The color "#gold" has been identified as the background for this group of use case participants.
6. The O-RAN Architecture [17] identifies three types of functions in SMO: FCAPS for O-RAN Network
7. Functions(named here as "OAM Functions"), Non-RT RIC, and O-Cloud Management, Orchestration and Workflow
8. Management. The O2 General Aspects and Principles [21] further distinguishes between management of the
9. distribution of O-Cloud software and orchestration for O-Cloud life cycle processes, called "Federated O-Cloud
10. Operations and Management", or "FOCOM", and coordination between SMO and the O-Cloud for managing
11. deployment life cycle events and operational processes, called "Network Function Orchestration", or "NFO". These are
12. shown as participants in the UML as below.

29

@startuml

Box "Service Orchestration and Management Framework" #gold participant NFO

participant SMO as "OAM Functions" Collections RPGF as "non-RT RIC" Participant FOCOM

30

31

32

33

34

1

![]({{site.baseurl}}/assets/images/67fb4453feea.png)

end box

@enduml

2

3

4

5

##### B.5 Depicting Cloud Platform Participants

1. As described in the O-Ran Architecture Description [17] the Cloud platform has two roles. These are depicted by the
2. end points in the O-Cloud Management and Control Planes. The Infrastructure Management Services (IMS) provides
3. management of the O-Cloud as a platform. The Deployment Management Services (DMS) provides management of
4. Deployments using the O-Cloud resources. Like in the SMO the internal software modules and components to the O-
5. Cloud can vary from implementation to implementation. Therefore it is not advised to add additional entities unless it is
6. unavoidable for the use case. The color "#lightseagreen" has been identified as the background for this group of use
7. case participants.

14

![]({{site.baseurl}}/assets/images/e07734a402ab.png)

@startuml

Box "O-Cloud Platform" #lightseagreen participant IMS

participant DMS End box

@enduml

15

16

17

18

19

20

##### B.6 O-RAN Managed Elements as participants

1. The O-RAN architecture defines 5 Managed Functions (MF) which can be deployed independently or aggregated in
2. different ways into a Managed Element (ME). The O-CU is a predefined aggregation of the O-CU-CP and O-CU-UP.

24

![]({{site.baseurl}}/assets/images/48b392afdcdd.png)

@startuml

Box "O-RAN" #lightpink

Participant RIC as "near-RT RIC" Participant OCUCP as "O-CU-CP" Participant OCUUP as "O-CU-UP" Participant OCU as "O-CU" Participant ODU as "O-DU" Participant ORU as "O-RU"

end box @enduml

25

26

27

28

29

30

31

32

33

##### B.7 3GPP RAN elements as participants

1. On occasion some use cases may need to show interaction between O-RAN and 3GPP elements. 3GPP defines both
2. LTE and 5G elements. The gNodeB is also defined with a split defining the Centralized Unit (CU) and the Distributed
3. Unit (DU). These participants are in the 3GPPP RAN box with a background of "#Tan".

5

![]({{site.baseurl}}/assets/images/18bc55c0977d.png)

@startuml

Box "3GPP RAN" #Tan

Participant eNB Participant gNB Participant CU Participant DU

Endbox @enduml

6

7

8

9

10

11

12

13

##### B.8 Messaging

1. Autonumber should be used so that individual messages in a diagram can be easily referenced in conversation.
2. Synchronous calls have an implicit return or the return can be implicitly depicted, often after a long block so as to
3. provide clarity of where processing continues. Some use cases can be used with a start message and end with either a
4. message or response. This is helpful when a common block can be used multiple times.

19

@startuml Autonumber Participant One Participant Two

[-> One : Use Case incoming message One -> Two: Synchronous Call

Two ->> One : Asynchronous message One -> One : Call to Self

Two ->] : Use Case outgoing message

Two --> One : Explicit Synchronous Return [<-- One : Use Case Return Message

@enduml

20

21

22

23

24

25

26

27

28

29

![Generated by PlantUML]({{site.baseurl}}/assets/images/c0db3d190070.png)30

##### B.9 Adding Comments

1. Comments can be added to the diagram. This is sometimes better than trying to describe the comment in text or for the
2. picture to be able to standalone.

4

@startuml Autonumber Participant One Participant Two Note over One

Notes can be used and placed over a lifeline

To describe something happening along that line End note

[-> One : Use Case incoming message Rnote over One, Two

Notes can be a simple rectangle instead of the standard Note above and can be spanning multiple life lines to Describe the interaction about to occur

endrnote

One -> Two: Synchronous Call Hnote right One

The can be hexagonal and to the Right Endhnote

Hnote over One Over

endhnote

Hnote left One

Or Left of a lifeline endhnote

Two -> Two :

Note Right : Messages on notes can
be used to describe
internal processing
without adding to
particpant spacing.

Two ->> One : Asynchronous message

Note Left: Message Notes can be
right or left of the
message but must be
immediately after the
message they are noting.

Note over One #fuchsia

Note backgrounds can be \*\*changed\*\* as //well// as the text End note

One -> One : Call to Self

Two ->] : Use Case outgoing message

Two --> One : Explicit Synchronous Return [<-- One : Use Case Return Message

@enduml

5

6

7

8

9

10

11

12

13

14

15

16

17

18

19

20

21

22

23

24

25

26

27

28

29

30

31

32

33

34

35

36

37

38

39

40

41

![Generated by PlantUML]({{site.baseurl}}/assets/images/25b0cd224bdc.png)1

##### B.10 Participant Creation/Deletion

1. Sometimes clarity is depicted by showing when a participant is created or first comes into being and likewise when it is
2. destroyed. This is very helpful in understanding timing and existence of a participant. This happens with modifiers to
3. the message.

6

@startuml Autonumber Participant One Participant Two

[-> One : Use Case incoming message

7

8

9

10

1

One -> Two \*\*: Synchronous Call Two ->> One : Asynchronous message

Two ->] : Use Case outgoing message Two -> Two !! : Terminate

One -> One : Call to Self

[<-- One : Use Case Return Message @enduml

2

3

4

5

6

7

![Generated by PlantUML]({{site.baseurl}}/assets/images/da996fe1d669.png)8

9

##### B.11 Dividers

1. In some cases, it is helpful to provide divisions of separate activities of the use case. This can be to define pre-requisite
2. activity such as configuration or subscriptions to an event. It can also be used to depict stages of a lifecycle.

13

@startuml Autonumber

Box "Personnel" #lightblue

Actor FT as "Field Technician" Actor RP as "Radio Planner" Actor SD as "Service Designer"

End box

Box "Orchestration and Management Platform" #gold participant SMO as "OAM Functions"

end box

Box "O-Cloud Platform" #lightseagreen participant OCM as "IMS"

End box

Box "O-RAN" #NavajoWhite Participant OCU as "O-CU"

end box

Box "3GPP RAN" #Tan

Participant DU Endbox

== Service Design ==

SD -> SMO : Onboard Service Descriptor SMO -> OCM : Onboard VNF Descriptor

14

15

16

17

18

19

20

21

22

23

24

25

26

27

28

29

30

31

32

33

34

35

36

37

38

39

1 == Service Deploy ==

![]({{site.baseurl}}/assets/images/aab4c8015342.png)

2 RP -> SMO : Deploy Service

3

4 == VNF Instantiate ==

1. SMO -> OCM : Instantiate
2. OCM -> OCU \*\* : Create VNF
3. OCM --> SMO : VNF Created
4. SMO -> OCU : Configure

9 == PNF Discovery ==

1. FT -> DU \*\*: Poweron
2. DU -> SMO : PNF Register
3. SMO -> SMO : PNF On Network
4. SMO -> DU : Configure

14 == Operate ==

1. DU <-> OCU : Traffic
2. @enduml

17

##### B.12 Grouping and References

1. Grouping can be used for many different aspects. In UML there are many types of groups. PlantUML support the basic
2. three. Any of the group types can be nested. "Alt" for conditional processing which can show different path processing
3. rather than just a sunny day scenario. It can also be used to show any logical, as the condition is stated in the swim lane,
<div class="table-wrapper" markdown="block">

4. processing. Sometimes the message and the grouping boundary are close and need some separation. Use the "|||" to

</div>
5. create that space.
6. The "loop" group is used to show iterations or conditional loops. The loop condition is stated on the lines and contain
7. the statements within the loop.
8. The last kind of group is the fragment. This is a logic group of a sequence of events that go together. The tag line at the
9. top describes the group.
10. Although references look like groups they cannot be nested. Use the single line version for references to use cases in the
11. current document. The Multi-Line version should be used for reference to use cases in an external document.
12. @startuml
13. Box "Orchestration and Management Platform" #gold
14. participant SMO as "Orchestration"
15. end box

7

1. Box "O-RAN" #NavajoWhite
2. Participant ODU as "O-DU"
3. Participant ORU as "O-RU"
4. end box

12

1. Group Configure O-RU associated with O-DU
2. Alt if flat management model then
3. Loop for each O-RU managed by the current O-DU
4. SMO -> ORU : Config (Full\_Config)
5. ref over ORU : Edit-Config <color red>(Internal Document Reference)</color>
6. Hnote over ORU
7. Ready
8. Endhnote
9. End

<div class="table-wrapper" markdown="block">

22 |||

</div>

1. Else else if hierarchical model then
2. SMO -> ODU : Config\_RU (Global\_Config)
3. Loop for each O-RU managed by this O-DU instance
4. ODU -> ODU : Full\_Config = Config\_Merge (Global\_Config, Local\_Config)
5. ODU -> ORU : Config (Full\_Config)
6. ref over ORU
7. Edit-Config <color red>(External Document Reference)</color>
8. WG4 M-Plane Specification [12]
9. End ref
10. Hnote over ORU
11. Ready
12. endhnote
13. end

<div class="table-wrapper" markdown="block">

36 |||

</div>

1. Else else must be hybrid model then
2. Rnote over SMO, ORU
3. Order of Global and Local Configuration can vary
4. Endrnote
5. Loop for each O-RU managed by the current O-DU
6. SMO -> ORU : Config (Global\_Config)
7. end
8. Loop for each O-RU managed by this O-DU instance
9. ODU -> ORU : Config (Local\_Config)
10. end
11. Alt If both Local\_Config and Local\_Config Received then
12. ref over ORU
13. Edit-Config
14. WG4 M-Plane Specification [12]
15. End ref
16. Hnote over ORU
17. Ready
18. endhnote

<div class="table-wrapper" markdown="block">

55 |||

</div>

1. End
2. End
3. end
4. @enduml

![]({{site.baseurl}}/assets/images/fccd5ab0b7f9.png)1

2

## Annex A: SMO and Non-RT RIC mapping with 3GPP management

1. system
2. This section shows the SMO, Non-RT RIC and the related management interface/service mapping with 3GPP
3. management system.
4. In [9], 3GPP defines the network management and orchestration architecture for 3GPP networks including network
5. slicing. The management data analytic function (MDAF) is identified as the key function to enable the intelligent
6. management of the network, which provides management data analytics service (MDAS) to both the management
7. functions and the network element. Meanwhile, intent driven management service (IDMS) is under discussion in 3GPP
8. SA5, where the management system could generate intent as the target of the network optimization and automation. The
9. management system should have the capability to consume the service (IDMS) provided by the network. Currently, the
10. two studies are mainly to enable the network management automaton and intelligence. In this sense, it is quite aligned
11. with the motivation of introducing Non-RT RIC in O-RAN.
12. To better understand the O-RAN OAM architecture, the management services defined in O-RAN, and the relationship
13. with 3GPP and the potential gaps between 3GPP and O-RAN. Fig. A-1 below tries to do some mapping between the
14. SMO, Non-RT RIC and 3GPP management system and interfaces with the following preliminary analysis.
15. 1. A1 interface is closely related to the current SA5 3GPP IDMS and MDAS study.
16. (1) A1-P, as declarative policy is closely related to Intent-NOP discussed in IDMS. Performance target is
17. expected to be provided by management system via the IDMS. But only system level targets are being
18. discussed in the IDMS study. A1-P is finer granularity to enable the UE level, group UE level and even
19. application level automation and optimization.
20. (2) A1-EI/ML is closely related to the 3GPP MDAS study. MDAS provider is expected to provide data analytics
21. reports and recommendations to the consumers, e.g., CN or RAN leveraging the data analytics and machine
22. learning technologies. AI-EI/ML studied in O-RAN is to enable the enrichment information communication
23. and ML model management towards the RAN. The enrichment information may come from the data
24. analytics based on the historical RAN data collected over O1 interface or from RAN external data sources. In
25. this sense, A1-EI/ML has a larger scope than the MDAS in 3GPP.
26. 2. O1 interface reflects the 3GPP traditional FCAPS management services.
27. 3. O2 interface perform the O-Cloud management, the mapping with 3GPP is FFS.
28. 4. Non-RT RIC could be seen as a MDAF instance, which provides management data analytic service to both internal
29. functions reside in the SMO and external consumers such as near-RT RIC.
30. The management service, Non-RT RIC and A1 work in O-RAN will continue evolve and the MDAS/IDMS related
31. SI/WI are under study and still in early stage in 3GPP. The gap analysis and mapping relationship will be continuously
32. updated based on the latest progress.

3GPP and O-RAN are studying

1. O-RAN defined, so far not used in 3GPP

35

**3GPP**

**traditional**

![]({{site.baseurl}}/assets/images/ac9f376fa2ff.png)![]({{site.baseurl}}/assets/images/d50b2de5be24.png)![]({{site.baseurl}}/assets/images/ac9f376fa2ff.png)

**Non-RT RIC**

**A1- P**

**A1- EI/A1-ML**

**SMO**

**Framework**

3GPP already defined, so far not used in O- RAN OAM Functions

**Data Analytics and AI/ML model training**

**A1 ML**

**management**

**A1 EI**

**management**

**A1 Policy**

**management**

**OAM Functions**

**Integration fabric and data service**

**File/Trac e mgnt**

**SW**

**mgnt**

**AM**

**SM**

**O-Cloud**

**mgnt**

**SW**

**mgnt**

**AM**

**SM**

**FCAPS**

**3GPP IDM**

**(intent NOP)**

**(NOP: Network Operator)**

**3GPP**

**MDAF/MDAS**

###### Figure A- 1: SMO and Non-RT RIC mapping with the 3GPP management system

* 1. *Note*:
  2. *i. The figure shows the entire services provided by the SMO Framework, the O-Cloud management and Integration*
  3. *fabric and data service defined by O-RAN so far there is no corresponding services defined in 3GPP.*
  4. *ii. The Security management service and Accounting management defined in 3GPP so far they are not used in OAM*
  5. *Functions.*
  6. *iii. The A1 Policy management, A1 EI management, A1 ML management are being studied in O-RAN and being*
  7. *implemented in O-RAN software community.*
  8. *iv. The A1 Policy management maps to 3GPP IDMS.*
  9. *v. A1 EI management and A1 ML management is correlated to the MDAS, when the EI is retrieved from the Data*
  10. *Analytic and AI/ML Model Training, the concrete mapping relationship with 3GPP is FFS.*
  11. *vi. The Data Analytics and AI/ML Model Training studied in O-RAN maps to 3GPP RAN domain MDAS producer.*

12

# 1 Annex ZZZ : O-RAN Adopter License Agreement

* + 1. BY DOWNLOADING, USING OR OTHERWISE ACCESSING ANY O-RAN SPECIFICATION, ADOPTER
    2. AGREES TO THE TERMS OF THIS AGREEMENT.
    3. This O-RAN Adopter License Agreement (the "Agreement") is made by and between the O-RAN Alliance and the
    4. entity that downloads, uses or otherwise accesses any O-RAN Specification, including its Affiliates (the "Adopter").
    5. This is a license agreement for entities who wish to adopt any O-RAN Specification.

## Section 1: DEFINITIONS

* + 1. 1.1 "Affiliate" means an entity that directly or indirectly controls, is controlled by, or is under common control with
    2. another entity, so long as such control exists. For the purpose of this Section, "Control" means beneficial ownership of
    3. fifty (50%) percent or more of the voting stock or equity in an entity.
    4. 1.2 "Compliant Implementation" means any system, device, method or operation (whether implemented in hardware,
    5. software or combinations thereof) that fully conforms to a Final Specification.
    6. 1.3 "Adopter(s)" means all entities, who are not Members, Contributors or Academic Contributors, including their
    7. Affiliates, who wish to download, use or otherwise access O-RAN Specifications.
    8. 1.4 "Minor Update" means an update or revision to an O-RAN Specification published by O-RAN Alliance that does
    9. not add any significant new features or functionality and remains interoperable with the prior version of an O-RAN
    10. Specification. The term "O-RAN Specifications" includes Minor Updates.
    11. 1.5 "Necessary Claims" means those claims of all present and future patents and patent applications, other than design
    12. patents and design registrations, throughout the world, which (i) are owned or otherwise licensable by a Member,
    13. Contributor or Academic Contributor during the term of its Member, Contributor or Academic Contributorship; (ii)
    14. such Member, Contributor or Academic Contributor has the right to grant a license without the payment of
    15. consideration to a third party; and (iii) are necessarily infringed by a Compliant Implementation (without considering
    16. any Contributions not included in the Final Specification). A claim is necessarily infringed only when it is not possible
    17. on technical (but not commercial) grounds, taking into account normal technical practice and the state of the art
    18. generally available at the date any Final Specification was published by the O-RAN Alliance or the date the patent
    19. claim first came into existence, whichever last occurred, to make, sell, lease, otherwise dispose of, repair, use or operate
    20. a Compliant Implementation without infringing that claim. For the avoidance of doubt in exceptional cases where a
    21. Final Specification can only be implemented by technical solutions, all of which infringe patent claims, all such patent
    22. claims shall be considered Necessary Claims.
    23. 1.6 "Defensive Suspension" means for the purposes of any license grant pursuant to Section 3, Member, Contributor,
    24. Academic Contributor, Adopter, or any of their Affiliates, may have the discretion to include in their license a term
    25. allowing the licensor to suspend the license against a licensee who brings a patent infringement suit against the
    26. licensing Member, Contributor, Academic Contributor, Adopter, or any of their Affiliates.

## Section 2: COPYRIGHT LICENSE

* + 1. 2.1 Subject to the terms and conditions of this Agreement, O-RAN Alliance hereby grants to Adopter a nonexclusive,
    2. nontransferable, irrevocable, non-sublicensable, worldwide copyright license to obtain, use and modify O-RAN
    3. Specifications, but not to further distribute such O-RAN Specification in any modified or unmodified way, solely in
    4. furtherance of implementations of an O-RAN
    5. Specification.
    6. 2.2 Adopter shall not use O-RAN Specifications except as expressly set forth in this Agreement or in a separate written
    7. agreement with O-RAN Alliance.

## Section 3: FRAND LICENSE

* + 1. 3.1 Members, Contributors and Academic Contributors and their Affiliates are prepared to grant based on a separate
    2. Patent License Agreement to each Adopter under Fair Reasonable And Non- Discriminatory (FRAND) terms and
    3. conditions with or without compensation (royalties) a nonexclusive, non-transferable, irrevocable (but subject to
    4. Defensive Suspension), non-sublicensable, worldwide patent license under their Necessary Claims to make, have made,
    5. use, import, offer to sell, lease, sell and otherwise distribute Compliant Implementations; provided, however, that such
    6. license shall not extend: (a) to any part or function of a product in which a Compliant Implementation is incorporated

1. that is not itself part of the Compliant Implementation; or (b) to any Adopter if that Adopter is not making a reciprocal
2. grant to Members, Contributors and Academic Contributors, as set forth in Section 3.3. For the avoidance of doubt, the
3. foregoing licensing commitment includes the distribution by the Adopter's distributors and the use by the Adopter's
4. customers of such licensed Compliant Implementations.
5. 3.2 Notwithstanding the above, if any Member, Contributor or Academic Contributor, Adopter or their Affiliates has
6. reserved the right to charge a FRAND royalty or other fee for its license of Necessary Claims to Adopter, then Adopter
7. is entitled to charge a FRAND royalty or other fee to such Member, Contributor or Academic Contributor, Adopter and
8. its Affiliates for its license of Necessary Claims to its licensees.
9. 3.3 Adopter, on behalf of itself and its Affiliates, shall be prepared to grant based on a separate Patent License
10. Agreement to each Members, Contributors, Academic Contributors, Adopters and their Affiliates under Fair
11. Reasonable And Non-Discriminatory (FRAND) terms and conditions with or without compensation (royalties) a
12. nonexclusive, non-transferable, irrevocable (but subject to Defensive Suspension), non-sublicensable, worldwide patent
13. license under their Necessary Claims to make, have made, use, import, offer to sell, lease, sell and otherwise distribute
14. Compliant Implementations; provided, however, that such license will not extend: (a) to any part or function of a
15. product in which a Compliant Implementation is incorporated that is not itself part of the Compliant Implementation; or
16. (b) to any Members, Contributors, Academic Contributors, Adopters and their Affiliates that is not making a reciprocal
17. grant to Adopter, as set forth in Section 3.1. For the avoidance of doubt, the foregoing licensing commitment includes
18. the distribution by the Members', Contributors', Academic Contributors', Adopters' and their Affiliates' distributors
19. and the use by the Members', Contributors', Academic Contributors', Adopters' and their Affiliates' customers of such
20. licensed Compliant Implementations.

## Section 4: TERM AND TERMINATION

1. 4.1 This Agreement shall remain in force, unless early terminated according to this Section 4.
2. 4.2 O-RAN Alliance on behalf of its Members, Contributors and Academic Contributors may terminate this Agreement
3. if Adopter materially breaches this Agreement and does not cure or is not capable of curing such breach within thirty
4. (30) days after being given notice specifying the breach.
5. 4.3 Sections 1, 3, 5 - 11 of this Agreement shall survive any termination of this Agreement. Under surviving Section 3,
6. after termination of this Agreement, Adopter will continue to grant licenses (a) to entities who become Adopters after
7. the date of termination; and (b) for future versions of O-RAN Specifications that are backwards compatible with the
8. version that was current as of the date of termination.

## Section 5: CONFIDENTIALITY

1. Adopter will use the same care and discretion to avoid disclosure, publication, and dissemination of O-RAN
2. Specifications to third parties, as Adopter employs with its own confidential information, but no less than reasonable
3. care. Any disclosure by Adopter to its Affiliates, contractors and consultants should be subject to an obligation of
4. confidentiality at least as restrictive as those contained in this Section. The foregoing obligation shall not apply to any
5. information which is: (1) rightfully known by Adopter without any limitation on use or disclosure prior to disclosure; (2)
6. publicly available through no fault of Adopter; (3) rightfully received without a duty of confidentiality; (4) disclosed by
7. O-RAN Alliance or a Member, Contributor or Academic Contributor to a third party without a duty of confidentiality
8. on such third party; (5) independently developed by Adopter; (6) disclosed pursuant to the order of a court or other
9. authorized governmental body, or as required by law, provided that Adopter provides reasonable prior written notice to
10. O-RAN Alliance, and cooperates with O-RAN Alliance and/or the applicable Member, Contributor or Academic
11. Contributor to have the opportunity to oppose any such order; or (7) disclosed by Adopter with O-RAN Alliance's prior
12. written approval.

## Section 6: INDEMNIFICATION

1. Adopter shall indemnify, defend, and hold harmless the O-RAN Alliance, its Members, Contributors or Academic
2. Contributors, and their employees, and agents and their respective successors, heirs and assigns (the "Indemnitees"),
3. against any liability, damage, loss, or expense (including reasonable attorneys' fees and expenses) incurred by or
4. imposed upon any of the Indemnitees in connection with any claims, suits, investigations, actions, demands or
5. judgments arising out of Adopter's use of the licensed O-RAN Specifications or Adopter's commercialization of
6. products that comply with O-RAN Specifications.

## Section 7: LIMITATIONS ON LIABILITY; NO WARRANTY

1. EXCEPT FOR BREACH OF CONFIDENTIALITY, ADOPTER'S BREACH OF SECTION 3, AND ADOPTER'S
2. INDEMNIFICATION OBLIGATIONS, IN NO EVENT SHALL ANY PARTY BE LIABLE TO ANY OTHER
3. PARTY OR THIRD PARTY FOR ANY INDIRECT, SPECIAL, INCIDENTAL, PUNITIVE OR CONSEQUENTIAL
4. DAMAGES RESULTING FROM ITS PERFORMANCE OR NON-PERFORMANCE UNDER THIS AGREEMENT,
5. IN EACH CASE WHETHER UNDER CONTRACT, TORT, WARRANTY, OR OTHERWISE, AND WHETHER OR
6. NOT SUCH PARTY HAD ADVANCE NOTICE OF THE POSSIBILITY OF SUCH DAMAGES. O-RAN
7. SPECIFICATIONS ARE PROVIDED "AS IS" WITH NO WARRANTIES OR CONDITIONS WHATSOEVER,
8. WHETHER EXPRESS, IMPLIED, STATUTORY, OR OTHERWISE. THE O-RAN ALLIANCE AND THE
9. MEMBERS, CONTRIBUTORS OR ACADEMIC CONTRIBUTORS EXPRESSLY DISCLAIM ANY WARRANTY
10. OR CONDITION OF MERCHANTABILITY, SECURITY, SATISFACTORY QUALITY, NONINFRINGEMENT,
11. FITNESS FOR ANY PARTICULAR PURPOSE, ERROR-FREE OPERATION, OR ANY WARRANTY OR
12. CONDITION FOR O-RAN SPECIFICATIONS.

## Section 8: ASSIGNMENT

1. Adopter may not assign the Agreement or any of its rights or obligations under this Agreement or make any grants or
2. other sublicenses to this Agreement, except as expressly authorized hereunder, without having first received the prior,
3. written consent of the O-RAN Alliance, which consent may be withheld in O-RAN Alliance's sole discretion. O-RAN
4. Alliance may freely assign this Agreement.

## Section 9: THIRD-PARTY BENEFICIARY RIGHTS

1. Adopter acknowledges and agrees that Members, Contributors and Academic Contributors (including future Members,
2. Contributors and Academic Contributors) are entitled to rights as a third-party beneficiary under this Agreement,
3. including as licensees under Section 3.

## Section 10: BINDING ON AFFILIATES

1. Execution of this Agreement by Adopter in its capacity as a legal entity or association constitutes that legal entity's or
2. association's agreement that its Affiliates are likewise bound to the obligations that are applicable to Adopter hereunder
3. and are also entitled to the benefits of the rights of Adopter hereunder.

## Section 11: GENERAL

1. This Agreement is governed by the laws of Germany without regard to its conflict or choice of law provisions.
2. This Agreement constitutes the entire agreement between the parties as to its express subject matter and expressly
3. supersedes and replaces any prior or contemporaneous agreements between the parties, whether written or oral, relating
4. to the subject matter of this Agreement.
5. Adopter, on behalf of itself and its Affiliates, agrees to comply at all times with all applicable laws, rules and
6. regulations with respect to its and its Affiliates' performance under this Agreement, including without limitation, export
7. control and antitrust laws. Without limiting the generality of the foregoing, Adopter acknowledges that this Agreement
8. prohibits any communication that would violate the antitrust laws.
9. By execution hereof, no form of any partnership, joint venture or other special relationship is created between Adopter,
10. or O-RAN Alliance or its Members, Contributors or Academic Contributors. Except as expressly set forth in this
11. Agreement, no party is authorized to make any commitment on behalf of Adopter, or O-RAN Alliance or its Members,
12. Contributors or Academic Contributors.
13. In the event that any provision of this Agreement conflicts with governing law or if any provision is held to be null,
14. void or otherwise ineffective or invalid by a court of competent jurisdiction, (i) such provisions will be deemed stricken
15. from the contract, and (ii) the remaining terms, provisions, covenants and restrictions of this Agreement will remain in
16. full force and effect.
17. Any failure by a party or third party beneficiary to insist upon or enforce performance by another party of any of the
18. provisions of this Agreement or to exercise any rights or remedies under this Agreement or otherwise by law shall not
19. be construed as a waiver or relinquishment to any extent of the other parties' or third party beneficiary's right to assert
20. or rely upon any such provision, right or remedy in that or any other instance; rather the same shall be and remain in full
21. force and effect.

1 Chapter 5.
---

- View in [GitHub Mode]({{site.github_page_url}}/O-RAN.WG1.OAM-Architecture-v04.00%20.docx.md).
- Go back to [Table of Contents]({{site.baseurl}}/).
- Download the [Original Document]({{site.download_url}}/O-RAN.WG1.OAM-Architecture-v04.00 .docx).

---

* toc
{:toc}
