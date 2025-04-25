## O-RAN.WG6.O2-GAnP-v01.02.docx

- View in [Reader Mode](https://simewu.com/spec-reader/pages/06-WG6/O-RAN.WG6.O2-GAnP-v01.02.docx).
- Go back to [Table of Contents](../README.md).
- Download the [Original Document](https://github.com/Simewu/spec-reader/raw/refs/heads/main/documents/O-RAN.WG6.O2-GAnP-v01.02.docx).

---

|  |
| --- |
| O-RAN.WG6.O2-GA&P-v01.02 |
| *Technical Specification* |
| **O-RAN O2 Interface General Aspects and Principles** |

**This is a re-published version of the attached final specification**.

##### For this re-published version, the prior versions of the IPR Policy will apply, except that the previous requirement for Adopters (as defined in the earlier IPR Policy) to agree to an O-RAN Adopter License Agreement to access and use Final Specifications shall no longer apply or be required for these Final Specifications after 1st July 2022.

The copying or incorporation into any other work of part or all of the material available in this specification in any form without the prior written permission of O-RAN ALLIANCE e.V. is prohibited, save that you may print or download extracts of the material on this site for your personal use, or copy the material on this site for the purpose of sending to individual third parties for their information provided that you acknowledge O-RAN ALLIANCE as the source of the material and that you inform the third party that these conditions apply to them and that they must comply with them.

|  |
| --- |
| O-RAN.WG6.O2-GA&P-v01.02 |
| *Technical Specification* |
| **O-RAN O2 Interface General Aspects and Principles** |
| Copyright (C) 2022 by the O-RAN ALLIANCE e.V.  By using, accessing or downloading any part of this O-RAN specification document, including by copying, saving, distributing, displaying or preparing derivatives of, you agree to be and are bound to the terms of the O-RAN Adopter License Agreement contained in the Annex ZZZ of this specification. All other rights reserved.  O-RAN ALLIANCE e.V.  Buschkauler Weg 27, 53347 Alfter, Germany Register of Associations, Bonn VR 11238 VAT ID DE321720189 |

1

1 Revision History

|  |  |  |  |
| --- | --- | --- | --- |
| **Date** | **Revision** | **Author** | **Description** |
| 2020.05.29 | 00.01.00 | Joey Moloney (Ericsson) David Kinsey (AT&T)  Raghavendra Mahalingappa (Ericsson)  Torbjorn Keisu (Ericsson) | Baseline version of General Aspects and Principles Specification  Content added to Sections 2.1, 3.1, & 3.2 |
| 2020.07.03 | 00.01.01 | Joey Moloney (Ericsson)  Raghavendra Mahalingappa (Ericsson) | O2 Introduction added to 2.1 and ETSI information added to 2.5 |
| 2020.07.03 | 00.01.02 | Joey Moloney (Ericsson)  Raghavendra Mahalingappa (Ericsson)  David Kinsey (AT&T) | O-Cloud Monitoring Service content added to 3.3 |
| 2020.07.03 | 00.01.03 | Joey Moloney (Ericsson)  Raghavendra Mahalingappa (Ericsson)  David Kinsey (AT&T) | O-Cloud Provisioning content added to 3.4 |
| 2020.07.03 | 00.01.04 | Joey Moloney (Ericsson)  Raghavendra Mahalingappa (Ericsson) | O-Cloud Software Management content added to 3.5 |
| 2020.07.03 | 00.01.05 | Joey Moloney (Ericsson)  Raghavendra Mahalingappa (Ericsson)  Udi Schwager (Wind River) | O-Cloud LCM content added to 3.6 |
| 2020.07.03 | 00.01.06 | Joey Moloney (Ericsson)  Raghavendra Mahalingappa (Ericsson) | O-Cloud Deployment LCM content added to 3.7 |
| 2020.07.07 | 00.01.07 | David Kinsey (AT&T) | Deployment definition added to 1.3.1 |
| 2020.07.10 | 00.01.08 | Joey Moloney (Ericsson) | Updated based on review comments |
| 2020.07.17 | 00.01.09 | Joey Moloney (Ericsson) | Updated based on further review comments |
| 2020.07.29 | 01.00.00 | Joey Moloney (Ericsson)  Lucian Suciu (Orange) | Approved version for publication |
| 2021.06.22 | 01.00.01 | Joey Moloney (Ericsson) | Fault concepts content added to 3.5.2 |
| 2021.06.22 | 01.00.02 | Joey Moloney (Ericsson) | DMS clarification content added to 2.2.1 and Annex A (Informative): O-Cloud and IMS Initialization |
| 2021.07.02 | 01.00.03 | Joey Moloney (Ericsson) | Updated to align with 3GPP specification and to include comments received |
| 2021.07.05 | 01.00.04 | Joey Moloney (Ericsson) | Correction to the incorrect statement about the smallest resource |

|  |  |  |  |
| --- | --- | --- | --- |
| 2021.11.15 | 01.01.01 | Joey Moloney (Ericsson) | DMS Principles content updated in 3.7 and sub- section 3.7.2 added |
| 2021.11.15 | 01.01.02 | Joey Moloney (Ericsson) | Performance concepts content added to 3.5.3 |
| 2021.11.15 | 01.01.03 | Joey Moloney (Ericsson) | O-Cloud Provisioning concepts added to 3.4.3 |

1 Table of Contents

1. Revision History 2
2. Chapter 1. Introduction 7
3. 1.1 Scope 7
4. 1.2 References 7
5. 1.3 Definitions and Abbreviations 8
6. 1.3.1 Definitions 8
7. 1.3.2 Abbreviations 8
8. Chapter 2. General Aspects 10
9. 2.1 Introduction to O2 10
10. 2.2 Alignment with O-RAN Architecture 10
11. 2.2.1 Alignment with Overall Architecture 10
12. 2.2.2 Alignment with OAM Architecture 12
13. 2.3 Technology Independence 12
14. 2.4 General Requirements 12
15. 2.5 Relationship with Existing Standards and Open Source Solutions 12
16. 2.5.1 ETSI NFV 13
17. 2.5.2 IETF 14
18. 2.5.3 3GPP 14
19. 2.5.4 Kubernetes 14
20. 2.5.5 OpenStack 14
21. 2.5.6 ONAP/OSM 14
22. Chapter 3. O2 Interface General Principles 15
23. 3.1 O-Clouds 15
24. 3.2 O-Cloud Inventory 16
25. 3.2.1 Infrastructure Inventory 16
26. 3.2.2 Logical Inventory 16
27. 3.2.3 Deployment Inventory 17
28. 3.3 O-Cloud Monitoring Service 17
29. 3.3.1 General Capabilities 18
30. 3.4 O-Cloud Provisioning 19
31. 3.4.1 Affinity, Anti-Affinity, Quorum Diversity Rules 19
32. 3.4.2 O-Cloud Capacity and Availability 20
33. 3.4.3 O-Cloud Provisioning Basic Concepts 20
34. 3.5 O-Cloud Software Management 26
35. 3.5.1 General Capabilities 27
36. 3.5.2 O-Cloud Fault Management Concepts 27
37. 3.5.3 O-Cloud Performance Basic Concepts 31
38. 3.6 O-Cloud Life Cycle Management 33
39. 3.7 O-Cloud Deployment Life Cycle Management 34
40. 3.7.1 General Capabilities 35
41. 3.7.2 Deployment Management Services 35
42. Annex A (Informative): O-Cloud and IMS Initialization 36
43. UML sequence diagram for O-Cloud and IMS initialization 36
44. Annex ZZZ O-RAN Adopter License Agreement 37
45. Section 1: DEFINITIONS 38
46. Section 2: COPYRIGHT LICENSE 38
47. Section 3: FRAND LICENSE 38
48. Section 4: TERM AND TERMINATION 39
49. Section 5: CONFIDENTIALITY 39
50. Section 6: INDEMNIFICATION 39
51. Section 7: LIMITATIONS ON LIABILITY; NO WARRANTY 39
52. Section 8: ASSIGNMENT 40
53. Section 9: THIRD-PARTY BENEFICIARY RIGHTS 40
54. Section 10: BINDING ON AFFILIATES 40
55. Section 11: GENERAL 40

2

1 Table of Figures

1. Figure 2.2-1 O-Cloud IMS and DMS Relationships to SMO 10
2. Figure 2.2-2 O2 RP Service Based-Interfaces 11
3. Figure 3.1-1 O-Cloud Planes 15
4. Figure 3.2-1 O-Cloud Infrastructure Inventory 16
5. Figure 3.2-2 Logical Clouds 17
6. Figure 3.3-1 Telemetry Types 18
7. Figure 3.4-1 Diagram of kinds of Resources and examples of Resources 21
8. Figure 3.5-1 Parallel Reporting & Alarm Correlation 30
9. Figure 3.5-2 Concept of Fault Domains 31
10. Figure 3.7-1 O2 Deployment LCM Services 35

12

# 1 Chapter 1. Introduction

## 1.1 Scope

1. This Technical Specification has been produced by the O-RAN.org.
2. The contents of the present document are subject to continuing work within O-RAN WG6 and may change following
3. formal O-RAN approval. Should the O-RAN.org modify the contents of the present document, it will be re-released by
4. O-RAN Alliance with an identifying change of release date and an increase in version number as follows:
5. Release x.y.z
6. where:
7. x the first digit is incremented for all changes of substance, i.e. technical enhancements, corrections, updates,
8. etc. (the initial approved document will have x=01).
9. y the second digit is incremented when editorial only changes have been incorporated in the document.
10. z the third digit included only in working versions of the document indicating incremental changes during the
11. editing process.
12. This document defines O-RAN O-Cloud OAM interface functions and protocols for the O-RAN O2 interface. The
13. document studies the functions conveyed over the interface, including management functions, procedures, operations and
14. corresponding solutions, and identifies existing standards and industry work that can serve as a basis for O-RAN work.

## 1.2 References

1. The following documents contain provisions which, through reference in this text, constitute provisions of the present
2. document.
3. - References are either specific (identified by date of publication, edition number, version number, etc.) or
4. non-specific.
5. - For a specific reference, subsequent revisions do not apply.
6. - For a non-specific reference, the latest version applies.
7. - For a non-specific reference, the latest version applies. In the case of a reference to a 3GPP document (including a
8. GSM document), a non-specific reference implicitly refers to the latest version of that document in Release 16. 26

|  |  |  |
| --- | --- | --- |
| 27 | [1] | 3GPP TR 21.905: "3rd Generation Partnership Project; Technical Specification Group Services and System |
| 28 |  | Aspects; Vocabulary for 3GPP Specifications" |
| 29 | [2] | O-RAN Architecture Description Version 2.0 |
| 30 | [3] | O-RAN Operations and Maintenance Architecture Version 3.0 |
| 31 | [4] | O-RAN Operations and Maintenance Interface Version 3.0 |
| 32 | [5] | O-RAN Cloud Architecture and Deployment Scenarios for O-RAN Virtualized RAN Version 2.1 |
| 33 | [6] | ONAP VES Event Listener Specification version 7.2 - May 2020 |
| 34 | [7] | RFC 6241, "Network Configuration Protocol (NETCONF)", IETF, June 2011 |
| 35 | [8] | RFC 7950, "The YANG 1.1 Data Modeling Language", IETF, August 2016 |
| 36 | [9] | SP 800-145, "The NIST Definition of Cloud Computing", NIST, September 2011 |
| 37 | [10] | 3GPP TS 29.501 "5G System; Principles and Guidelines for Services Definition; Stage 3 (Release 16)", |
| 38 |  | September 2020 |
| 39 | [11] | ETSI GS NFV-SOL 013 v3.3.1 "Protocols and Data Models; Specification of common aspects for RESTful |
| 40 |  | NFV MANO APIs", September 2020 |
| 41 | [12] | ETSI GS NFV-SOL 015 v1.1.1 "Protocols and Data Models; Specification of Patterns and Conventions for |
| 42 |  | RESTful NFV-MANO APIs", January 2020 |

|  |  |  |
| --- | --- | --- |
| 1 | [13] | O-RAN Orchestration Use Cases and Requirements for O-RAN Virtualized RAN Version 2.1 |
| 2 | [14] | 3GPP TS28.550 Management and orchestration; Performance assurance Version 17 |
| 3 | [15] | 3GPP TS28.531 Management and orchestration; Provisioning Version 17 |
| 4 | [16] | ETSI SOL003 Zero-touch network and Service Management (ZSM); End-to-end management and |
| 5 |  | orchestration of network slicing |

## 1.3 Definitions and Abbreviations

### 1.3.1 Definitions

* 1. **NF Deployment:** An O-Cloud NF Deployment is a deployment of a cloud native Network Function (all or
  2. partial), resources shared within a NF Function, or resources shared across network
  3. functions. The NF Deployment configures and assembles user-plane resources required
  4. for the cloud native construct used to establish the NF Deployment and manage its life
  5. cycle from creation to deletion.
  6. **NF Deployment Descriptor:** A completed data model which provides an O-Cloud the necessary information to create
  7. a deployment.
  8. **Deployment ID:** Correlation Identity created by the O-Cloud for the SMO to relate to its inventory and
  9. manage.
  10. **Deployment Management Services (DMS):**
  11. The DMS are the logical services provided by the O-Cloud providing for managing the
  12. life cycle of deployments which use cloud resources.
  13. **Federated O-Cloud Orchestration and Management (FOCOM):**
  14. The SMO treats the collection of O-Clouds as a single federated cloud. The FOCOM are
  15. the logical services provided by the SMO to manage the distribution of O-Cloud software
  16. and provides orchestration for O-Cloud life cycle processes.
  17. **Infrastructure Management Services (IMS):**
  18. The IMS are the logical services provided by the O-Cloud which provides the interface
  19. to orchestrate O-Cloud life cycle processes with the network functions it may be hosting
  20. and other operational procedures.
  21. **Network Function Orchestration (NFO):**
  22. The NFO are the logical services of the SMO which coordinates between the O-Cloud
  23. for managing deployment life cycle events, open loop, and closed loop operational
  24. procedures.

### 1.3.2 Abbreviations

* 1. For the purposes of the present document, the abbreviations given in 3GPP TR 21.905 [1] and the following apply. An
  2. abbreviation defined in the present document takes precedence over the definition of the same abbreviation, if any, in
  3. 3GPP TR 21.905 [1].

36

|  |  |  |
| --- | --- | --- |
| 37 | FCAPS | Fault, Configuration, Accounting, Performance, Security |
| 38 | HATEOAS | Hypermedia as the Engine of Application State |
| 39 | MANO | Management and Orchestration |
| 40 | MnS | Management Service |
| 41 | MOC | Managed Object Class |
| 42 | MOI | Managed Object Instance |
| 43 | O-RAN | Open Radio Access Network |
| 44 | ONAP | Open Network Automation Platform |

|  |  |  |
| --- | --- | --- |
| 1 | OSM | Open Source Mano |
| 2 | RAN | Radio Access Network |
| 3 | TR | Technical Report |
| 4 | TS | Technical Specification |
| 5 | SMO | Service Management and Orchestration |

# 1 Chapter 2.General Aspects

## 2.1 Introduction to O2

1. The O2 interface is an open logical interface within O-RAN architecture providing secured communication between the
2. SMO and O-Cloud. It enables the management of O-Cloud infrastructures and the deployment life cycle management of
3. O-RAN cloudified NFs that run on O-Cloud. The O2 interface is defined in an extensible way that enables new
4. information or functions to be added without necessarily needing to change the protocol or the procedures. This interface
5. enables a multi-vendor environment and is independent of specific implementations of the SMO and O-Cloud.

## 2.2 Alignment with O-RAN Architecture

1. This section provides any added detail not found in the high-level O-RAN architecture documents which define and
2. describe the O2 interface. The intent is to extend knowledge and not to redefine existing information. Therefore, if a
3. conflict exists between this document and the O-RAN Architecture Description [2] or the O-RAN OAM Architecture [3]
4. the information presented will not supersede those documents.

### 2.2.1 Alignment with Overall Architecture

1. This document adopts the architecture as described in the O-RAN Architecture Description [2]. The O2 is described as
2. the interface between the SMO and the O-Cloud to provide platform resources and workload management.
3. The O-Cloud needs to be created before the SMO can interface with it.
4. O-Cloud can consist of multiple Deployment Management Services. Each DMS can manage leased resources from
5. multiple resource pools and span multiple locations. There is a single IMS for O-Cloud that manages all resources of
6. DMSes as well as resources that are not allocated to any DMS in the O-Cloud. Diagram below depicts relationship
7. between SMO and components of O-Cloud.

![](../assets/images/69213df1ce39.png)

21

1. **Figure 2.2-1 O-Cloud IMS and DMS Relationships to SMO**
2. SMO can utilize blueprints or other pre-configuration templates to assign resources to resource pools and to assign
3. resource to a DMS.
4. Once the O-Cloud is operational the O-RAN Architecture Description [2] describes the functions to be performed over
5. the O2 interfaces as:
   1. ? O-Cloud Infrastructure Resource Management:
   2. o O-Cloud infrastructure Discovery and administration
   3. o O-Cloud infrastructure Scale-In, Scale-Out
   4. o O-Cloud infrastructure FCAPS (PM, CM, FM, Communication Surveillance)
   5. o O-Cloud infrastructure Platform Software Management
   6. ? Managing Abstracted Resources and DMSes:
   7. o Creation, Scale-In, Scale-Out of abstracted assigned O-Cloud infrastructure resources
   8. o Deployment FCAPS (PM, FM) for abstracted O-Cloud infrastructure resources
   9. o Deployment DMS (Creation, Deletion and Lease of O-Cloud infrastructure)
   10. ? NF & Services Deployment Orchestration
   11. o Deployment Software Management
   12. o Deployment, Termination, Scaling, and Healing of NF & Services deployment resources
   13. o FCAPS (PM, FM) for NF & Services deployment resources
   14. These functions fall into 3 categories: managing infrastructure, managing abstract resource and DMSes, and managing
   15. NF & Services life-cycle on the DMSs.
   16. These functions can be divided into two classes. Those which manage the infrastructure and those which manage
   17. deployments on that infrastructure. Therefore, the O-Cloud is logically composed of two functional blocks. The SMO has
   18. two logical blocks for the consumers of the O-Cloud services. The O2 as a Reference Point (RP) described in [10] are
   19. thus broken down into two (2) Service Based Interfaces (SBI) this decomposition is depicted in Figure 2**.**2-2 O2 RP
   20. Service Based-Interfaces.
   21. ![](../assets/images/0f22df02fc09.png)
   22. **Figure 2.2-2 O2 RP Service Based-Interfaces**
   23. The following are a description of the functional blocks identified in Figure 2**.**2-2 O2 RP Service Based-Interfaces.
   24. ? **Federated O-Cloud Orchestration and Management (FOCOM)**: The FOCOM is responsible for
   25. accounting and asset management of the resources in the cloud. The FOCOM is the primary consumer of
   26. services provided by the IMS. The FOCOM has information about the O-Cloud resources management.
   27. Specifically, the FOCOM needs to know whether the services are within the operator domain or external.
   28. ? **Network Function Orchestrator (NFO)**: The NFO is responsible for orchestrating the assembly of the
   29. network functions as a composition of NF Deployments in the O-Cloud. It may also utilize OAM Functions in
   30. order to access the O1 interface to the NF once it is deployed. Its use of the O1 is not germane to the O2 and is
   31. only mentioned here for completeness. The NFO is the primary consumer of the DMS.
   32. ? **OAM Functions**: The OAM Functions are responsible for FCAPS management of O-RAN managed entities.
   33. In the context of O2 they may be one of the functional blocks for which a callback is provided in order to
   34. receive faults and/or performance data from a subscription for O2ims or O2dms procedures.
       1. ? **Infrastructure Management Services (IMS)**: The IMS is responsible for management of the O-Cloud
       2. resources and the software which is used to manage those resources. The IMS generally provides services for
       3. consumption by the FOCOM.
       4. ? **Deployment Management Services (DMS)**: The DMS is responsible for management of NF Deployments
       5. into the O-Cloud. It provides the ability to instantiate, monitor, and terminate NF Deployments. The DMS
       6. generally provides services for consumption by the NFO. 7

### 2.2.2 Alignment with OAM Architecture

1. This document adopts the O-RAN OAM architecture defined in [3], including the principles, requirements and reference
2. architecture. It provides added detail on the use of the O2 Interface and associated functional blocks within SMO and O-
3. Cloud.

## 2.3 Technology Independence

1. The intent of this specification is to keep it open and extensible such that it can adapt over time to technology not yet
2. available. Therefore, functionality is described or cited with the intent to leverage open standards. There is a preference
3. to reuse existing standards or open approaches such as Kubernetes and OpenStack.

## 2.4 General Requirements

1. The requirements below may be superceeded in the O2 Specification as the interface evolves.

|  |  |  |
| --- | --- | --- |
| **Requirement ID** | **Requirement** | **Description** |
| REQ-O2-GEN-SMO-FUN-1 | All SMOs (e.g., ONAP, OSM, etc.)  shall support the O2 services and their requirements allocated to the role of the SMO. | SMO supports O2. |
| REQ-O2-GEN-OC-FUN-1 | All O-Cloud implementations shall support the O2 services and their requirements allocated to the role of the O-Cloud. | O-Cloud supports O2. |
| REQ- O2-GEN-TLS-FUN-1 | Management Service providers and consumers that use TLS shall support TLS v1.2 or higher. | Communications between SMO and O-Cloud are secure. |
| REQ- O2-GEN-HTTP-FUN-1 | Management Service providers and consumers that use HTTP shall support HTTP v1.1 or higher. | HTTP minimum is v1.1. |

18

## 2.5 Relationship with Existing Standards and Open Source

1. Solutions
2. The O-RAN O2 O-Cloud management services follow existing standards wherever possible. The focus of this document
3. is to identify the use cases which conform to existing standards, identify gaps in management services for O-RAN and
4. define needed extensions. For identified gaps, the goal is to modify the standards to include the needed O-RAN extensions
5. and update the references in this document as the standards evolve to cover the gaps. If extensions and gaps are not
6. specified, it is expected that the management services producers and consumers are conforming to referenced
7. specifications.

### 2.5.1 ETSI NFV

1. This is a list of the relevant ETSI NFV standards documents which require evaluation in order to analyze packaging,
2. LCM operations, and security for managing VMs and Containers, the versions will be specified in the O2 Specification:
3. ? SOL004 standard is used for VNF and PNF packages
4. ? SOL007 standard is used for NS package
5. ? SOL001 standard is used to describe VNF, PNF, and NS in TOSCA
6. ? SOL003 standard is used for VNF Package Management, LCM and Monitoring
7. ? SOL005 standard is used for NS/PNF/VNF Package Management, LCM and Monitoring
8. ? SOL006 standard is used to describe VNF, PNF, and NS in YANG
9. ? SOL002 standard is used for VNF/VNFC-level EM triggered scenarios (LCM, Fault, Performance,
10. Configuration)
11. ? ETSI Package and communication security are supported / API security are supported (SEC022 GS)
12. ? IFA 029 Enhancements of the NFV architecture towards "Cloud-native" and "PaaS"
13. ? IFA040 CISM OS container compute management service interface requirements (ongoing)
14. ? ETSI IFA 005/006 covers topics Software Image Management, Virtual Resource Management (Information,
15. Quota, Capacity, Change Notification, and Reservation) Virtual Resource Performance Management, Virtual
16. Resource Fault Management and NFP
17. The O2 interfaces will generally follow ETSI GS NFV-SOL 013 [11] section 8 for interface security. Further refinements
18. will be based on recommendations from the STG and are FFS.
19. Other sections of SOL 13 [11] are still under review and are therefore FFS.
20. NFV SOL-015 [12] provides RESTful Patterns. Section 5.9 defines the Subscribe-Notify pattern. Generally, this pattern
21. is adopted by the O2, with the following caveats.
22. ? Notifications should indicate success or failure of the receipt of the notification to the notifying function.
23. ? The subscribe and POST may not be in the same service API. The typical pattern for the O2 is that the subscribe,
24. or its equivalent, is in the O-Cloud services and the post for the notification is an SMO service. There are no
25. existing use cases of notifications from the SMO to the O-Cloud.
26. ? The event types may be extended over time. Therefore, the O-Cloud services should provide the ability to
27. discover what event types the cloud instance supports. The minimal list of supported event types SHALL be:
28. o Inventory Change
29. o Configuration Change
30. o Fault Events
31. o Performance Reporting
32. o Heartbeat
33. Another form of notification is the callback mechanism where the notify function is identified in the request. This
34. mechanism is used in platform the software update procedure, as the cloud may not yet be configured for notifications
35. when the update occurs. It is expected that all subscriptions and identified callbacks are persisted through a restart or a
36. software update.

38

### 1 2.5.2 IETF

1. For Future Study.

### 2.5.3 3GPP

1. The O2 interface is composed of services provided by the SMO and service provided by the O-Cloud. This closely
2. resemble the Reference Points and Service Based Interface (SBI) definitions described in 3GPP TS 29.501[10]. Therefore,
3. this specification follows the intent of the practices defined in [10] but has modified it from its intended 5G Core
4. implementation to align with the O-RAN O2 interface.

### 2.5.4 Kubernetes

1. For Future Study.

### 2.5.5 OpenStack

1. For Future Study.

### 2.5.6 ONAP/OSM

1. For Future Study.

# 1 Chapter 3. O2 Interface General Principles

1. This section describes the general approach to solving common problems with managing a cloud and the deployments
2. which execute on it.

## 3.1 O-Clouds

1. O-RAN clouds are described in [5] as a distributed cloud composed of O-Cloud [Resource] Pools (as shown as white
2. clouds in the diagram below) where each pool is a collection of O-Cloud Nodes at a specific location. An O-Cloud Node
3. is the basic computational resource designator and can be commonly thought of as a server. An Operator may have several
4. O-Clouds from different vendors but will manage them as a single entity. These O-Clouds are viewed by the Service
5. Management and Orchestration (SMO) Framework as a Federated O-Cloud.
6. O-Cloud Nodes are provisioned into resources which are assigned for a specific use by the O-Cloud Management
7. Software according to a blueprint. As a general concept the cloud is divided into three planes, however the control and
8. management plane described below may be merged or use common tools and therefore may act as or be one plane.
9. ? Management Plane: O-Cloud Nodes in this plane host the software which is responsible for managing the O-
10. Cloud
11. ? Control Plane: O-Cloud Nodes in this plane are responsible for hosting the software which manages the resources
12. assigned in the deployment plane to specific deployment instances
13. ![](../assets/images/4dcbc1b3ebde.jpg)? Deployment Plane: O-Cloud Nodes in this plane are used to host "Service Model" Deployments

18

19 **Figure 3.1-1 O-Cloud Planes**

## 3.2 O-Cloud Inventory

1. From the perspective of the SMO, O-Cloud Inventory consists of the physical infrastructure used to create the O-Cloud,
2. the logical clouds which it provides as interfaces for deployments, and the inventory of deployments using the logical
3. cloud. The SMO is responsible for financial accounting of physical inventory. The SMO inquires about the mapping of
4. resources to their use. The O-Cloud is responsible for the assignment of resources to their use.

### 3.2.1 Infrastructure Inventory

1. Infrastructure inventory is passed between the SMO and the O-Cloud over the O2ims. An O-Cloud Node Identifier is
2. used to correlate the inventory. This identifier needs to be discoverable by the O-Cloud and would likely be on an invoice
3. for the O-Cloud purchase order. The O-Cloud Node Identifier must be immutable.
4. The IMS will add O-Cloud Nodes to the relevant O-Cloud Resource Pools when they are powered on and ready to be
5. provisioned as a resource. The IMS then allocates them to a plane according to its policies and sends the O-Cloud Node
6. characteristics to the SMO.
7. The SMO receives O-Cloud Node startup events and updates its inventory accordingly. The O-Cloud Node Identifier is
8. matched with invoice data in order to provide financial asset tracking requirements. The location and use identifiers are
9. used to track inventory which will be monitored as part of cloud service assurance assurance.
10. ![](../assets/images/d03060cc3856.png)
11. **Figure 3.2-1 O-Cloud Infrastructure Inventory**

### 3.2.2 Logical Inventory

1. The SMO will need to know the composition of an ME in terms of its MFs as described in the O-RAN OAM Architecture
2. [3]. This cannot be derived from the deployments and therefore is not addressed by the O2 interface. This data should be
3. contained in the ME configuration and should be collected over the O1 interface [4].
4. The O-Cloud itself must have one or more DMS available within its distributed footprint. These could be based on virtual
5. technologies (Kubernetes/Docker, Open Stack, etc.) used, and/or O-Cloud pool locations. Each DMS endpoint provides
6. an O2dms interface and is inventoried by the SMO as a logical cloud. The logical cloud is used by the SMO in order to
7. select the O-Cloud to be used for a deployment during the cloud selection process.

![](../assets/images/b08f8281d27f.png)1

2

### 3.2.3 Deployment Inventory

**Figure 3.2-2 Logical Clouds**

1. Although the cloud could support IaaS and PaaS deployments, most O-RAN MEs are composed of SaaS deployments as
2. defined by NIST [9]. The Deployment Descriptor is a set of metadata contained in a datatype matching a capability
3. advertised by the O-Cloud. Logical Cloud selection in the NFO will match the descriptor type with the capability type to
4. enable deployment. The Deployment Descriptor will cause one or more cloud resources to be allocated (VMs, Pods,
5. Containers, Networks) but will return a single correlation ID, referred to here as the Deployment ID. The O-Cloud will
6. provide, over the O2dms, the ability to fetch the details of these objects from their Deployment ID.

## 3.3 O-Cloud Monitoring Service

1. When the O-Cloud Infrastructure or the ORAN cloudified NFs fails, it needs to be fixed immediately, and preferably
2. automatically, to prevent end users from experiencing service disruptions. To avoid this service disruption Network
3. Operations must consider the telemetry information of O-Cloud deployments in the network. The telemetry information
4. serves as a vital resource for analysing the O-Cloud's state and health, and for delivering on service monitoring goals.
5. The O-Cloud Monitoring Service uses telemetry data to provide monitoring of O-Cloud infrastructures. The telemetry
6. data is provided by Deployments and Infrastructure and is correlated to reduce duplication of effort in determining the
7. root cause in the network.
8. There are different types of telemetry, Managed Element Telemetry, Deployment Telemetry, and Infrastructure
9. Telemetry.
10. 1. For Managed Element Telemetry, the objective is to monitor the application behaviour. This will be addressed
11. in the O1 Specification [4].
12. 2. For Deployment Telemetry, the objective is to monitor the number of deployment instances an O-Cloud has at
13. that moment and how many were expected, how the on-progress deployment is going, and health checks.
14. Additional Deployment Telemetry metrics like CPU, network, and memory usage can also be collected. This
15. will be addressed in the O2 Specification.
16. 3. For Infrastructure Telemetry, the objective is to monitor the health of the O-Cloud Infrastructure components.
17. Network Operations are interested in discovering if all the components in the O-Cloud Infrastructure are working
18. properly and at what capacity, how many deployments are running on each node, and the resource utilization of
19. the O-Cloud Infrastructure. This will be addressed in the O2 Specification.

![](../assets/images/7911387eb3d9.png)1

2

### 3.3.1 General Capabilities

* 1. Business Capabilities:

**Figure 3.3-1 Telemetry Types**

* 1. ? As Network Operations I need telemetry data from Network Functions in order to provide service assurance of
  2. the network (Note: This is assumed to be handled by the O1)
  3. ? As Network Operations I need telemetry data from the infrastructure in order to provide service assurance of the
  4. network
  5. ? As Network Operations I need to be able to correlate Network Function Telemetry and Infrastructure Telemetry
  6. in order to reduce duplication of effort in determining one root cause
  7. Functional Capabilities:
  8. ? The SMO shall be able to correlate ME telemetry to Infrastructure and Deployment telemetry to aggregate
  9. problems to a root cause
  10. ? The O-Cloud shall be able to make all Configuration Data and any external changes to it available to the SMO
  11. ? O-Cloud telemetry shall minimally consist of Fault, Performance, and Configuration Data
  12. ? The SMO shall be able to correlate a Managed Element to its deployment components
  13. ? The O-Cloud shall be able to report telemetry of deployment resources relative to those identified in the
  14. deployment descriptor
  15. ? The O-Cloud shall be able to report Infrastructure telemetry and identify the deployments using the resource
  16. ? O-Cloud shall provide the collection and reporting of performance information of O-Cloud resources
  17. ? O-Cloud shall support the capability to notify about the availability of performance information
  18. ? O-Cloud shall expose the type of performance information that can be collected for the allocated O-Cloud
  19. resource(s)
  20. ? O-Cloud shall expose the type of O-Cloud resource, for which the performance information can be collected
  21. ? O-Cloud shall provide the collection of fault information for O-Cloud resources
  22. ? O-Cloud shall support providing notification of fault information related to O-Cloud resources

## 3.4 O-Cloud Provisioning

* + 1. O-Cloud Provisioning is the allocation of O-Cloud's resources and services to an O-RAN Cloudified Network Function.
    2. This is one of the key functionalities of the O-Cloud, relating to how an O-RAN Cloudified Network Function procures
    3. O-Cloud services and resources. The O-Cloud resources are deployed flexibly to match the O-RAN Cloudified Network
    4. Function's fluctuating demands. The O-Cloud resources typically scale up to accommodate spikes in usage and scale
    5. down when demands decrease. O-Cloud Provisioning offers numerous benefits including; scalability, speed, and cost
    6. saving.
    7. To support the deployments, O-Cloud Provisioning will need to provide several functionalities. There will be initial
    8. support for the following:
    9. ? Affinity, Anti-Affinity, Quorum Diversity Rules
    10. ? Capacity Query
    11. ? Availability Query
    12. Support for the following functionalities are FFS:
    13. ? Subscriptions
    14. ? Flavor Management
    15. ? Server Group Management
    16. ? Capabilities Discovery
    17. ? Switch Fabric Management
    18. ? Quota Management
    19. ? Resource Performance Management
    20. ? Virtual Resource Performance Management

### 3.4.1 Affinity, Anti-Affinity, Quorum Diversity Rules

* + 1. An Affinity rule specifies that deployments with the same rule applied must be collocated within the same scope. This
    2. can be applied to a single server or a server group. Anti-Affinity is the opposite of the Affinity Rule in that deployments
    3. with the same rule applied cannot be collocated within the same scope. Affinity and Anti-Affinity rules can be applicable
    4. to entities outside of the current deployment such as Tenant or Namespace.
    5. A Quorum diversity rule stipulates that deployments with this rule can be collocated if less than 50% of the deployments
    6. exist within the same scope. This rule can only be enforced when there is a minimum of 3 deployments. In which it will
    7. be the same deployment assignment as Anti-Affinity. In scenarios with more than 3 deployments a minimum of 3 different
    8. resource assignments at the specified scope (Server or Server Group) will be used. More can be used at the discretion of
    9. the O-Cloud Resource Scheduler.

#### 3.4.1.1 General Capabilities

* + 1. Business Capabilities:
    2. ? Network Operations shall be able to apply Affinity, Anti-Affinity, Quorum Diversity rules
    3. Functional Capabilities:
    4. ? O-Cloud Provisioning shall provide Create rule for Affinity, Anti-Affinity, and Quorum Diversity
    5. ? O-Cloud Provisioning shall provide Read rule for Affinity, Anti-Affinity, and Quorum Diversity
    6. ? O-Cloud Provisioning shall provide Update rule for Affinity, Anti-Affinity, and Quorum Diversity

1. ? O-Cloud Provisioning shall provide Delete rule for Affinity, Anti-Affinity, and Quorum Diversity

### 3.4.2 O-Cloud Capacity and Availability

1. O-Cloud Resources are allocated to a DMS for use and each DMS may have a different distribution of Capacity, and
2. Availability. The Capacity is the number of Resources allocated or reserved to an O-Cloud. The Capacity may be larger
3. than the sum of physical resources due to allowed oversubscription in the O-Cloud. The Availability of an O-Cloud is the
4. Capacity minus the allocated and reserved resources.

#### 3.4.2.1 General Capabilities

1. Business Capabilities:
2. ? Network Operations shall be able to view the Capacity and Availability of an O-Cloud
3. Functional Capabilities:
4. ? O-Cloud Provisioning shall provide Query of O-Cloud Capacity
5. ? O-Cloud Provisioning shall provide Query of O-Cloud Availability

### 3.4.3 O-Cloud Provisioning Basic Concepts

1. These basic concepts will become relevant moving from the traditional RAN paradigm of total network and resource
2. ownership to cloudified networks where there are more stakeholders, and the resources are shared amongst
3. stakeholders. This section will describe basic concepts related to provisioning in the context of IMS and DMS. This
4. section will elucidate that the IMS and DMS have a difference in kind. Provisioning is basic OA&M functionality. The
5. concepts described here will motivate the development of O-Cloud O2 IMS & DMS provisioning service modeling, and
6. information modeling.
7. Provisioning in the context of the GA&P is the act of providing access to entities, e.g. resources.
8. The general concepts described here relate to O-cloud entities as well as provisioning functionality. The subsections
9. group together like concepts.

#### 3.4.3.1 Workload

1. A workload is any software application(s) that consumes an Abstracted Resource (as defined in this document).
2. For example, this workload could be a Host Operating System, Guest Operating System, micro-service, or the software
3. part of a Physical Network Function (PNF), Virtualized Network Function (VNF) or Cloud Native Network Function
4. (CNF) which would typically be deployed by a DMS.

#### 3.4.3.2 Resource Related Concepts

##### 3.4.3.2.1 Resource

1. A *resource* is defined in a O-cloud infrastructure as one that may be provisioned and managed through an abstraction.
2. O-Cloud infrastructure have two kinds of resources: physical and logical resources. A physical resource is defined as a
3. kindof resource that has a manifestation in the real world. A logical resource is defined as a kindof resource that uses a
4. number of physical resources, or a portion of physical resources, or a number of software entities. A resource can be
5. assigned to an orchestrator that will deploy workloads for resource consumption (see figure 1).
6. For example, some kinds of physical resources could be servers, switches, and storage units.
7. For example, some kinds of logical resources are Openstack and K8S clusters.
8. ![](../assets/images/9ba6846cfd03.png)
9. **Figure 3.4-1 Diagram of kinds of Resources and examples of Resources**

##### 3.4.3.2.2 Managed O-Cloud Service

1. A Managed O-Cloud Service is an exposed, provisioned, monitorable, or managed entity that performs some operations
2. for a client or consumer. A Managed O-Cloud service is an entity that provides some functionality to other entities.
3. Managed O-Cloud Services could execute on physical and/or logical cloud infrastructure resources thereby consuming
4. cloud infrastructure resources not usable by the O-Cloud. Managed O-Cloud Services could also execute outside of the
5. cloud infrastructure resources. Unlike logical services, Managed O-Cloud Services are created on demand ad infinitum.
6. The IMS is the management endpoint for the Managed O-Cloud Service.
7. Note: Exposure means it is visible outside of the IMS through the IMS endpoint as a managed object; thus, the SMO is
8. aware of it.
9. For example, an autonomous service as a managed O-Cloud service, which as a plug-in to the cloud that performs some
10. unique functions upon resources.
11. For example, some kinds of Managed O-Cloud service might be boot services, upgrade services, and DMS.

#### 3.4.3.3 Resource Views

1. A *Resource View* is defined as the visible and/or accessible part of the Resource that an actor sees based on their
2. authority. Resources are seen by different actors that need to manage or act upon resources. Different perspectives from
3. these actors are "views" of the Resources. O-Clouds can have multiple Resource Views to enable separation of
4. authority and operations of the resources, into logical groups of actors (generally other SW entities). The four kinds of
5. O-Cloud resource views are: *Cloud Infrastructure Resource, Abstracted Resources, Assigned Resource, and Consumed*
6. *Resource*. This is done to provide maximum separation of concern between different actors. These views accommodate
7. public, external, and shared private cloud deployments.
8. For example, Consider a hotel room as a resource. The front desk staff who assigns a room to a tenant has a relationship
9. to the room and job requirements of how to manage the room. That is, they have a "view" of the room. The tenant that
10. checks into the room has a different "*resource view*" of that same room. The cleaning staff has yet another relationship,
11. or "resource view", to the same hotel room.
12. ![](../assets/images/6e3e0df995d2.jpg)
13. **Figure 3.4-2 Resource Views seen as different actor's perspective**

##### 3.4.3.3.1 Cloud Infrastructure Resource View (Green)

1. The Cloud Infrastructure Resource view is a resource view of a resource that is managed by Cloud internal physical,
2. software and tool components. Cloud Infrastructure Resource can also be composed of other Cloud Infrastructure
3. Resources and services. These can be used to compose or expose Abstracted Resources. The Cloud Infrastructure
4. Resources are typically provided by the Internal, External or Public Cloud Provider.
5. Note: The cloud infrastructure manager (green) is often implemented a different organization than the FOCOM
6. organization (yellow).
7. For example, a resource view of the Cloud Infrastructure Resource might have a computer, storage, acceleration,
8. network hardware, and software implementing certain services from a public cloud provider. This is the hardware
9. foundation in any sort of data center that serves as the hardware infrastructure.

##### 3.4.3.3.2 Abstracted Resource View (Yellow)

1. An Abstracted Resource View is a Resource View of a composed Cloud Infrastructure Resource (with a provisioning
2. reference tag) that is offered through Provisioning. Abstracted Resources thereby map underlying cloud infrastructure
3. resources (act of composing). The Abstracted Resource View is a perspective on the actual Abstracted Resources. This
4. abstraction facilitates assigned users to perform their authorized management and LCM operations for the resources.
5. The SMO sends the objectives to the IMS, which are the SMO requirements for Abstracted Resources that are being
6. requested from IMS. See the figure below on "Resource views: abstracted and assigned resources".
7. Note: The act of composing a Cloud Infrastructure Resource could be as simple as finding suitable resources and
8. tagging it as an Abstracted Resource.
9. For example, an Abstracted Resource View might contain a set of available computer systems and a K8S cluster that
10. are composed by the cloud infrastructure. The Computer Systems are referenced with an abstraction identifier (assigned
11. by the cloud owner) and the underlying physical compute resources are not exposed. The K8S Cluster is also referenced
12. with an abstraction identifier and the underlying compute, network and storage resources are generally not exposed.
13. Some examples of operations on Abstracted Resources include listings of available resources and booking of available
14. resources. For the logical resource e.g., the K8S Cluster other common operations would also include creation, scaling,
15. update, and deletion of the cluster.

##### 3.4.3.3.3 Assigned Resource View (Blue)

1. An Assigned Resource View is a Resource View of an Abstracted Resource provisioned to the SMO that can prepare
2. and adapt the resource(s) for Workload placement and consumption including its related FM and PM interfaces. The
3. IMS assigns resources to the cluster and reports to the SMO. The Assigned Resources are the resources that are
4. requested by an SMO, according to SMO objectives from the pool of Abstracted Resources. When requests are
5. fulfilled, the bookkeeping of Assigned Resources is done by the O-Cloud IMS. See the figure below on "Resource
6. views: abstracted and assigned resources".
7. For example, the Assigned Resource View might present one or many K8S cluster(s) and other kinds of resources as an
8. assigned resource. Some examples of workload orchestration that can be performed on assigned resources are: cluster
9. preparation for the workload, placement (deployment) of workloads, and scaling of the workload on the cluster.
10. For example, consider a rental car as a resource. The Vehicle Identification Number (VIN) is associated with the car.
11. The rental company has a rental agreement number for the same car. The person who rents the car has an entitlement
12. according to the rental agreement using the rental agreement number that is not tied to the VIN. In this case, the rental
13. agreement number is a representation of the car an Abstracted Resource. The renter views the car as an Assigned
14. Resource. At any point in the time, the VIN & agreement number are linked. However, this can change over time. For
15. instance, car #1 breaks down and the rental agreement becomes associated to a new car #2 with a new VIN associated
16. with car #2 all under the same rental agreement number. This illustrates how FOCOM gets Abstracted Resources and
17. hands it to NFO as Assigned Resources.

##### 3.4.3.3.4 Consumed Resource View (Red)

1. Workload Consumed Resources View is a resource view that describes the workloads software program execution in
2. the CPU; acceleration execution in the dedicated HW accelerator; as well as packet classification, manipulation and
3. forwarding in a packet forwarding device.
4. For example, the Operating System that consumes CPU instruction resources from the Computer System or Virtual
5. Machine expect to acquire CPU metrics based on information to its OS drivers to offer its built-in performance
6. management services e.g., the common OS TOP commands that indicates how the CPU resources are consumed.
7. ![](../assets/images/d99fa238e458.png)
8. **Figure 3.4-2 Resource Views - Abstracted & Assigned Resources**

#### 3.4.3.4 Hardware Layer Concepts

##### 3.4.3.4.1 Computer System

1. A Computer System is defined to be a physical or composed system capable of perform computations that is Underlay-
2. Network connected. A Computer System can run any major Operating System with or without Virtualization and/or
3. Container support functionality. See diagram 4: "Hardware Layer Concepts"
4. Note: A computer system in the context of a cloudified network and usage in cluster requires a network connectivity.
5. For example, a server in a data center connected to an underlay network.
6. ![](../assets/images/aa466ce518fe.jpg)
7. **Figure 3.4-3 Hardware Layer Concepts**

##### 3.4.3.4.2 Underlay Network

1. An underlay network is a physically connected network enabling Computer Systems to communicate with each other
2. and with the gateway(s) connected to networks outside of the data center.

#### 3.4.3.5 Execution Environment Layer Concepts

##### 3.4.3.5.1 Operating System (OS)

1. An Operating system is System software that manages and abstracts the Computer System hardware and software
2. resources as well as provides common services for computer programs such as scheduling and network connectivity.

##### 3.4.3.5.2 Operating System with Virtual Machines

1. An Operating System with Virtual Machines is an OS that through software or hardware implementation includes the
2. ability to offer multiple Virtual Machines, each acting as a well-separated Computer System.

##### 3.4.3.5.3 Operating System with Containers

1. An Operating System (OS) with Containers is an OS that include the ability to offer multiple separated name spaces,
2. quotas, and management for Containers.

##### 3.4.3.5.4 Compute Node

1. A Compute Node is a Computer System with a running managed Operating System that is network connected. This is
2. Cloud infrastructure internal representation that could be manifested as an O-Cloud Node once exposed over O2ims as
3. an Abstracted Resource. (CAD definition: "An O-Cloud Node is a collection of CPUs, Mem, Storage, NICs,
4. Accelerators, BIOSes, BMCs, etc., and can be thought of as a server.").

##### 3.4.3.5.5 Overlay Network

1. An Overlay Network is a logical network interconnect enabling Compute Nodes to communicate with each other within
2. their Cluster and with the gateway(s) connected to networks outside of the data center.

##### 3.4.3.5.6 Compute Cluster

1. A Compute Cluster is a selected set of Computer Systems that are physically interconnected through an Underlay
2. Network and that can be used to setup a Node Cluster (as defined below).
3. ![](../assets/images/1539567e44a1.jpg)
4. **Figure 3.4-4 Execution Environment Layer Concepts**

##### 3.4.3.5.7 Node Cluster

1. A Node Cluster is a set of Overlay Network interconnected Compute Nodes of a specific type. The following are four
2. types of Node Clusters.
3. 1. **Bare Metal Container Cluster -** A Bare Metal Container Cluster is a set of network-connected computer
4. systems with their individual operating system instances that supports containers in a cluster configuration.
5. 2. **VM-based Container Cluster -** A VM-based Container Cluster is a set of network-connected Virtual
6. Machines with their individual guest operating system instance that supports containers in a clustered
7. configuration.
8. 3. **VM Cluster -** A VM Cluster is a set of network-connected Computer Systems with their individual operating
9. instance that supports virtual machines in a cluster configuration.
10. 4. **OS Cluster -** A OS Cluster is a set of network-connected Computer Systems with their individual operating
11. system instance that supports a cluster configuration.

## 3.5 O-Cloud Software Management

1. Software Management should be a priority as without proper management unnecessary risks may be taken. Software
2. Management ensures security, cost management and software support. There are many benefits to Software Management,
3. of which the main benefits are:
   1. ? Prevents unauthorized software from being installed
   2. ? Maintains a catalog of authorized software and its versions
   3. ? Provides visibility into what software and version is being used
   4. ? Provides a better view of which software products and versions are vendor supported
   5. In O-RAN from an O-Cloud perspective there are two types of software which needs to be managed on the O2 Interface:
   6. ? The O-Cloud Infrastructure Software, it is described in the CADS [5]
   7. ? The O-RAN Cloudified Network Function Software is the software implementation of O-RAN NFs which is
   8. capable of running over the O-Cloud

### 3.5.1 General Capabilities

* 1. Pre-requisite:
  2. ? O-RAN Cloudified Network Function Software Package is onboarded to SMO with required information, the
  3. details are FFS
  4. ? From an O-Cloud perspective the O-RAN Cloudified Network Function Software Image includes the underlying
  5. software executable image, image properties/metadata such as version
  6. ? Security/Certificates, the details are FFS
  7. Business Capabilities:
  8. ? Network Operations shall be able to perform the Software Image Management of O-RAN Cloudified Network
  9. Function
  10. Functional Capabilities:
  11. ? O-Cloud shall provide Add Software Images of O-RAN Cloudified Network Function to O-Cloud repository
  12. ? O-Cloud shall provide Delete Software Images of O-RAN Cloudified Network Function from O-Cloud
  13. repository
  14. ? O-Cloud shall provide Update Software Images of O-RAN Cloudified Network Function to O-Cloud repository
  15. ? O-Cloud shall provide Query Software Images of O-RAN Cloudified Network Function from O-Cloud
  16. repository
  17. ? O-Cloud shall provide Software Image properties information of O-RAN Cloudified Network Function.
  18. o SoftwareImageId, Vendor, and Version

### 3.5.2 O-Cloud Fault Management Concepts

* 1. This section details general concepts related to IMS & DMS fault management. Fault management is a basic part of
  2. OA&M functions. The concepts described here will motivate the development of the O-Cloud O2 IMS & DMS Fault
  3. services and information modeling.
  4. The O-Cloud maybe a confederation of resource pools comprised of various compute, storage and networking
  5. resources. These might be provided by different public cloud providers. The public cloud provider is defined as
  6. computing services offered by third-party providers over the public Internet, making them available to anyone who
  7. wants to use or purchase them. Thus, it is important to outline some basic principles that can apply and are relevant to
  8. disparate vendors and providers.
  9. The following basic concepts are considered for IMS & DMS fault management:

#### 3.5.2.1 Fault Information Model

1. A fault information model is expected to be developed in the O2ims information model. As a general concept, an
2. information model provides a common lexicon, terminology, and model to serve as a basis for coordination between a
3. group of actors. It facilitates communications between groups and aligns their contributions. The fault information
4. model is applicable for the resources & resource pools as defined in the infrastructure information model.

#### 3.5.2.2 Subscription

1. It is expected that there will be a subscription mechanism between a client and an agent. The client would pass an
2. endpoint where notifications should be sent to. It is expected that multiple clients can be supported. Procedures are
3. expected to be defined in the Fault O2 specifications for IMS and DMS. Subscriptions originate from the client (e.g.
4. SMO).
5. For example, the concept of a subscription allows a client, such as the SMO, to register for call-backs to the O-Cloud to
6. receive fault notifications.

#### 3.5.2.3 Notifications

1. Fault notifications originate from the O-cloud infrastructure. There is a relationship between the subscription and
2. notification. When a condition occurs within the IMS that warrants a fault notification an event is issued towards clients
3. that have subscribed to receive such a type of notification or event.
4. For example, a user could receive alerts on a fault dashboard GUI based on cloud IMS fault notifications.

#### 3.5.2.4 Parallel Reporting

1. A fault occurrence on an O-Cloud resource should be reported through IMS. DMS resource faults are associated with a
2. workload. It is possible that multiple resources can associate with a workload, whereby one fault might trigger a fault
3. notification on IMS, DMS and O1. Due to the nature of the subscribe/notify mechanism for fault reporting, it is possible
4. to: (1) have multiple publishers sending to a single consumer and (2) conversely a single publisher that can send to
5. multiple consumers. The interfaces for subscription & notification of fault reporting are: O2ims, O2dms, O1.
6. For example, it is conceivable that a vDU application might report a fault on O1, and a related physical server allocated
7. to a workload of a vDU would raise a DMS fault which might also have an infrastructure fault raised on IMS.

#### 3.5.2.5 Simple Devices

1. Collectively, in the O-Cloud it is conceivable that many devices are simple devices that do not have a full suite of OAM
2. S/W.
3. For example, suppose a network interface card (NIC) is a resource that is a simple device, and if that NIC encounters a
4. fault it might not be able to register, store, or log faults. It is expected that O-Cloud infrastructure could manage these
5. kinds of simple devices to be able to fulfill some of the other basic fault concepts described in this section. The O-Cloud
6. infrastructure works with the IMS to report these faults.

#### 3.5.2.6 Source of Truth

1. In an O-Cloud IMS context, it is expected that the "*source of truth*" will be the resources of the O-Cloud itself. When a
2. fault which has been reported to a client, such as the SMO, the fault data is replicated within the fault notification to
3. provide details and information of the fault. Thus, the fault information now exists in multiple places both in the IMS
4. and the entity receiving the fault notification. Which element then has the "true" information should the network or
5. elements be disconnected or faulty? After connectivity returns, how would the SMO reconcile its view of the existing
6. fault against the current faults on the O-Cloud resource? The answer is to query the *source of truth* (O-Cloud resource)
7. for the most current faults.
8. For example, if a resource in the O-Cloud goes out of service, and it had previously sent a fault notification, and then
9. later returns to service, potentially the information at the client and the O-Cloud resource may have different fault
10. information. But the O-Cloud resource is the source of truth and it is expected that client (IMS) would query the O-
11. Cloud resource for the current information and reconcile that with client data.

#### 3.5.2.7 Fault Dictionary

1. A fault dictionary is a reference that can be provided by an O-Cloud vendor which details the faults that can be emitted
2. from O-Cloud resources. The fault dictionary defines conditions that could be reported by the O-Cloud so that the SMO
3. could act on those. The desirable goal is commonality of the fault dictionaries across O-Clouds even though they will
4. differ to some degree by implementation.
5. For example, the fault dictionary could be used for a variety of purposes. It might help a user decode the meaning of a
6. fault notification. As another example, a fault dictionary could allow for fault signatures or patterns to be identified
7. which may constitute a condition which requires a coordinated response.

#### 3.5.2.8 Queries

1. In the IMS case, the SMO (client) can issue a specific fault query towards to IMS (publisher) related to the O-Cloud
2. resources and resource pool. In the SMO to DMS case, the SMO (client) can issue a specific query related to xApp/NF
3. deployments (e.g. workloads) from the DMS (publisher). In the IMS case, a fault query is a message which is expecting
4. a response message from the IMSwhich matches the selection criteria. In the DMS case, the fault query is expecting a
5. response from the DMS.
6. For example, the client may request status of a specific type of fault, or new active alarms conditions. The O-Cloud
7. resource would reply to the query by responding with databased on the parameters of the query (e.g. IDs or severity).

#### 3.5.2.9 Filtering

1. It is expected that the client, such as the SMO, can query for specific kinds of faults or groups of faults through a filter.
2. In addition, filtering can also beapplied to subscriptions to determine if notifications should be set.
3. For example, it might request from the O-Cloud all the major severity alarms from a particular O-Cloud resource. The
4. O-Cloud would select records based on the query pattern and send the details according to the notifications. This
5. concept will guide the IMS information model development of procedures that can support filtering.

#### 3.5.2.10 Fault Logging

1. Fault logging may be part of the general event logging and is a concept where faults are stored at the O-Cloud resource
2. (the *source of truth*) for a configured amount of time. IMS provisioning should be able to configure the amount of time
3. that logs stored for. The concept of fault logging and storing faults allows a client, algorithm, or user to query for the
4. fault log and analyze those faults. The faults should be timestamped with a common time format and clock source.
5. Faults that are intermittent, repetitive, or transient can be identified this way. For example, Debug traces used by some
6. O-cloud providers might be a way to facilitate fault logging meaning that certain condition can trigger writing to the
7. fault log.
8. For example, fault from an O-Cloud resource could be stored in a log for 1 week.

#### 3.5.2.11 Alarm Synchronization

1. There are many potential situations where a client and source of truth might become disconnected or disrupted. In this
2. case, the client will need to synchronize with the source of truth after it is able to reconnect.
3. For example, network fault might prevent communication between the SMO (client) and IMS resources in the O-Cloud.
4. By the time connectivity has been restored, many new alarm conditions might have arisen and logged. This would
5. motivate the SMO to resynchronize to get the current alarms again. A variety of mechanisms might be used to trigger
6. alarm resynchronization. It might also trigger an upload of the most recent fault logs.

#### 3.5.2.12 Alarm Correlation

1. In Concept #4 with Parallel Reporting, it might be possible that a fault condition might result in a variety of different
2. conditions or be reported in any combination of IMS, DMS and O1 fault notifications. It is not the job of the O-Cloud
3. IMS fault management to correlate faults between the application/NF and O-Cloud resources. Thus, it would be up to
4. higher layers of fault management to correlate disparate fault events to identify common root causes.
5. For example, the SMO may receive a fault with a root cause of a network issue among the O-Cloud resources which
6. manifests itself in a deployment and application fault as well. Thus, the SMO might receive three notifications over
7. ![](../assets/images/0eca24500c81.jpg)O2ims, O2dms and O1. It might correlate these faults to a common root cause.

4

1. **Figure 3.5-1 Parallel Reporting & Alarm Correlation**

#### 3.5.2.13 Escalation Strategy

1. Fault conditions in an IMS resource may trigger an escalation strategy. An escalation strategy is a mechanism to
2. increase visibility to a condition of duress which is typically a precursor to a more severe situation.
3. For example, recurring alarms, fault signatures and severity levels may have an escalation strategy to raise higher
4. severity alarms for higher tier recovery actions. As another example, a minor alarm in an O-Cloud resource with a
5. certain occurrence rate within a time window might trigger an escalation strategy to raise a major alarm.

#### 3.5.2.14 Fault Domains

1. A fault domain is a "*unit of failure*". A fault domain associates a collection of IMS O-Cloud resources together. We
2. expect a fault domain to be within a Data Center Zone (see the provisioning chapter basic concepts for more detail).
3. Faults could be associated with a fault domain. In the context of IMS fault area, fault domains are an attribute that could
4. be correlative but do not have intrinsic fault operations, they are not a manageable entity.
5. This would allow operators to design systems that are fault tolerant across fault domains. This might also guide
6. placement strategies, and update cycles to improve reliability and availability.
7. For example, a network cloud can host some number of servers per rack (e.g. 40 servers) with a number of racks of
8. equipment (e.g. 10 racks) in a single deployment (totaling 400 servers). A fault domain might be defined to be rack. If a
9. fault occurred, this concept would allow an operator trying to isolate the problem down to a rack (the fault domain). It
10. would also allow a user to correlate a problem if multiple racks served by a common infrastructure resource.

![](../assets/images/ccf00219bbf2.jpg)1

* 1. **Figure 3.5-2 Concept of Fault Domains**

#### 3.5.2.15 Fault Tolerance

* 1. A fault tolerant system is one that is designed to withstand failures and continue to be able to provide service. Based on
  2. observations, some *actions* can be taken to insure reliability. Fault tolerant solutions & strategies will vary between O-
  3. Cloud providers and network function providers.
  4. An example of a fault tolerant strategy is the use of geo-redundancy and Data Center Zones. Geographically separating
  5. Data Center Zones allows service to continue should a physical natural disaster strike one data center. An *action* might
  6. be to migrate traffic from one zone to another.

#### 3.5.2.16 Metrics

* 1. Metrics allow users to define thresholds to monitor and manage IMS O-Cloud resources. From these metrics, a
  2. user/system could take action based on threshold crossings and/or chart the metrics over time. Also, to achieve fault
  3. tolerance, there could be a mechanism for alerting, monitoring & auditing as a health check.
  4. For example, in the basic fault concept of *Escalation Strategies,* we might need metrics of how **often** a fault occurs
  5. within a certain period of time. These *metrics* might be used as a threshold in an escalation strategy for better reliability.
  6. If the fault occurred 100 times in an hour action might be taken.

### 3.5.3 O-Cloud Performance Basic Concepts

* 1. The following section describes basic concepts for O2 Performance Concepts.
  2. In general, the purpose of performance is to report operational information related to O-cloud resources. Typically,
  3. performance information allows an operator or administrator of the O-cloud a sense of how well the system is
  4. operating. It is distinct from faults in that it is not about failures in the system but about how well the overall system is
  5. performing. Though, faults or alarms may negatively impact performance of the O-Cloud which might be observable in
  6. performance measurements.
  7. Performance measurements are typically captured periodically through time. They are collected and stored at regular
  8. intervals by the system in order to gauge the performance of a system over a period of time. This allows for analytical
  9. operations to be performed on the collected data and statistics to be built over time. This can tell an operator or system

1. analyst whether they have sufficient capacity in a network based on the demands of the network. This can be vital for
2. making business operational decisions such as scaling a network.
3. The following are basic performance related concepts that will be used in the O2 Cloud performance use cases and
4. ![](../assets/images/b0ba10eda653.png)modeling.

5

1. **Figure 3.5-3 Performace Measurement Reporting**

#### 3.5.3.1 O-Cloud Performance Measurements

1. Measurements are defined as the act of quantitatively checking the O-Cloud resources for defined gauges of operation.
2. A measurement is an individual quantitative gauge of a quality.
3. For example, the O-Cloud might measure the computational performance of an O-Cloud compute resource in terms of
4. CPU utilization.

#### 3.5.3.2 Performance Indicators

1. Performance indicators take execution measurements and use them in a way that can give a meaningful notion of how a
2. system is utilizing its resources and/or how well a system is operating. Indicators might be local in the sense of a
3. function or more broader in scope for a group of functions. Performance indicators are typically a formula-driven
4. application usage of performance measurements. Thus, the indicators are amenable to statistical analysis. The indicator
5. formula needs to be exposed so that users can understand the meaning of the indicator. Indicators use a measurement, or
6. gauge, to show an aspect of a thing. Key Performance Indicators (KPI) are performance indicators that are typically
7. used to detect and report overall network health.
8. For example, the CPU utilization might be a performance measurement. A performance indicator might be the fraction
9. of time that a system is over a threshold, such as 80% CPU utilization. This would be a simple ratio calculation that
10. could give a sense of how close to being overloaded a system is.

#### 3.5.3.3 Performance Metric

1. A performance metric represents standards of measurements. Metrics might be pre-defined, or they might define
2. performance threshold targets to try to achieve. Metrics may utilize measurements and indicators. Performance metrics
3. could be used by O-Cloud operators to achieve OPEX business objectives.
4. For example, a performance metric could be a target that an operator would like to have a system operate at. For
5. example, a metric to operate at five-9's reliability, or CPU utilization that is under a threshold.

#### 3.5.3.4 Performance Reports

1. Performance reports are a collection of measurements. Usually, they are gathered in a file; however, they may also be
2. sent as a data stream. Typically, reports are created at regular (configurable) intervals or triggered by thresholds. The
3. creation of performance reports may also be manually invoked.
4. For example, The O-Cloud might compose a performance report which is comprised of several performance
5. measurements recorded and stored at regular intervals.

#### 3.5.3.5 Performance Management (PM) Job

1. A performance management job is a task whose purpose is to collect measurements, creating a measurement file, and
2. get a performance report according to criteria set by the user. The criteria could be used to specify measurements to
3. collect. Note: 3GPP standards also discuss measurement jobs see references, 3GPP TS28.550, TS28.531. ETSI
4. SOL003.
5. For example, a PM job might be scheduled to run at 11 PM with the criteria to retrieve CPU measurements for O-Cloud
6. resources and compose them into a measurement report.

#### 3.5.3.6 Source of Truth

1. The source of truth is the arbiter of discrepancies in metrics. In an O-Cloud IMS Performance context, it is expected
2. that the "*source of truth*" will be the O-Cloud (IMS + O-Cloud infrastructure resources). The PM job manages the
3. transformation of data into a performance report. The PM job requests data from the O-Cloud (the Source of Truth) to
4. build the performance report.
5. For example, suppose there is a metric from the source of truth with a reported value of 50, and the performance report
6. has a value of 20. That value of 20 might have been a result of corruption in sending, composition, or a software bug. In
7. order to obtain the proper value, the source of truth can be consulted.

#### 3.5.3.7 Performace Threshold

1. A performance threshold is a level or value which is used to check if a measurement exceeds or stays within. Typically,
2. thresholds are used to trigger behavior or policies in a system.
3. For example, a user might set a CPU utilization threshold of 80%.

#### 3.5.3.8 Performance Dictionary

1. A performance dictionary is a reference that is provided by a resource type vendor. A PM dictionary provides
2. information on performance metrics or KPIs that are relevant to that resource type. The Performance (PM) Dictionary
3. would be onboarded when a new resource type is added; and that resource type would come with an associated a PM
4. dictionary. The PM dictionary for a resource type includes all measurements supported by the resource type including
5. ones defined by standards and the reference to the standard.
6. For example, there will likely be some standardized measurements. For a CPU, that might be CPU utilization measured
7. in percentage. However, there could also be a vendor's CPU that might have additional features such as pinning or huge
8. page functionality. The PM dictionary for a resource type it might have all measurements that it supports including
9. standardized measurements.

## 3.6 O-Cloud Life Cycle Management

1. O-Clouds are a set of hardware and software components that provide cloud computing capabilities to execute O-RAN
2. Cloudified Network Functions. These O-Clouds can be deployed centrally or at edge based on the deployment scenario
3. and this typically involves cost and complexity. The goal of O-Cloud Life Cycle Management is to reduce this cost and
4. complexity by orchestrating the deployment and management of the O-Clouds.
5. In O-RAN the O-Cloud Life Cycle Management will provide the following capabilities:
6. ? Deploy
7. ? Registration
8. ? Scale
9. The objective of Deployment is to provide automated provisioning of the O-Cloud Infrastructure.
10. The objective of Registration is to register an O-Cloud and make it available for deployments. The SMO provides
11. information for the registration of O-Clouds, this includes; security handshake required for the trusted connection, the O-
12. Cloud IMS endpoint, and the O-Cloud ID which is used to correlate the SMO inventory record with the deployed cloud
13. instance.
14. After the registration of an O-Cloud with the SMO, the following information but not limited to can be discovered:
15. ? O-Cloud (IMS) provided Inventory services
16. o List of All Resource Pools in the O-Cloud
17. o Attributes of a specific O-Cloud
18. o List of all resources of an O-Cloud Pool
19. o Attributes of each O-Cloud Resource
20. o List of all DMS
21. ? O-Cloud (DMS) provided Inventory services
22. o List of Locations Supported
23. o For a given location the Capabilities supported, such as:
24. ? Descriptor types
25. ? Technology types
26. ? Accelerator types
27. o For a given location the Capacity of the location
28. o For a given location the Availability of the location
29. The Scaling is FFS.

## 3.7 O-Cloud Deployment Life Cycle Management

1. RAN networks are in an evolutionary journey towards NFV/SDN, Openness and Network Function disaggregation. This
2. journey enables the CSP's quest for future network and operational efficiency, where they can rapidly deliver new services
3. and update the existing services with less cost than today. The goal is to reduce the time to market for a new service
4. launch.
5. To achieve this end state of higher service agility and lower operational economics, the CSPs are unambiguous in their
6. support for a new network operational framework. The life cycle management of RAN network functions is an important
7. consideration for this new network operational approach.
8. In O-RAN, the O-Cloud will provide Deployment Life Cycle Management of O-RAN Cloudified Network Functions.
9. The following capabilities will be provided:
10. ? Deploy, which deploys O-RAN Cloudified Network Functions on O-Cloud with necessary O-Cloud resources.
11. ? Terminate, which terminates O-RAN Cloudified Network Functions on O-Cloud with releasing associated O-
12. Cloud resources.
13. ? Scale, which scales functional behavior and resources of O-RAN Cloudified Network Functions to support
14. services. There is different variance in scaling:
    1. o Horizontal Scaling provides dynamic functional scaling of O-RAN Cloudified Network Functions'
    2. behavior by Scale in/Out. This scaling can have different invoke actors such as O-Cloud and SMO.
    3. o Vertical Scaling provides dynamic resource scaling of O-RAN Cloudified Network Functions by Scale
    4. Up/Down. The details are FFS.
    5. ? Heal, which provides the ability to recover/mitigate the O-RAN Cloudified Network Functions' abnormal
    6. behaviour in the network. The details are FFS.
    7. ? Health Check. The details are FFS.
    8. ? Diagnostic. The details are FFS. 9
15. ![Timeline  Description automatically generated ](../assets/images/106836b460a1.png)
16. **Figure 3.7-1 O2 Deployment LCM Services**

### 3.7.1 General Capabilities

1. Business Capabilities:
2. ? The SMO provides the capability for Network Operations to initiate the lifecycle management functional
3. capabililities
4. Functional Capabilities:
5. 1. O-Cloud supports Deploying an O-RAN O-RAN Cloudified NF instance
6. 2. O-Cloud supports Terminating an O-RAN Cloudified NF instance
7. 3. O-Cloud supports Horizontal Scaling (in and out) of an O-RAN Cloudified NF instance
8. 4. O-Cloud supports Healing of an O-RAN Cloudified Network Function instance, this is FFS.
9. 5. O-Cloud supports Querying information about an O-RAN Cloudified NF instance
10. 6. O-Cloud supports Querying status of LCM operations
11. 7. O-Cloud supports Upgrading of any or all components of an O-RAN Cloudified NF instance

### 3.7.2 Deployment Management Services

1. The O-Cloud provides services over the O2dms interface to allow an SMO to trigger the functional capabilities
2. specified in Section 3.7.1. As allowed by the O-RAN Cloud Architecture and Deployment Scenarios [12] specification,
3. O-Cloud implementations can incorporate a multitude of virtualization technologies (e.g., VMs, containers, bare metal)
4. and technology stacks which have major differences from each other. To account for these differences, each O-Cloud
5. might have its own specific O2dms service API profile(s). An O2 DMS specification for a specific profile describes the
6. API provided by the profile and how to use them to achieve the capabilities listed in Section 3.7.1. An SMO is intended
7. to be able know which profile it is using and orchestrate according to description provided in the O2dms service API
8. profile(s). The profile specific APIs will be defined in each stage 3 O2dms specification.
9. The O2dms specification will contain the following information:
10. a) O-Cloud profile scope and technology stack: specifies what types of technologies (e.g., VMs, containers) the
11. profile applies to and specifies particular software systems (e.g., K8S, Prometheus, etc.) and versions that are
12. part of the stack
13. b) O2dms functional capabilities description: specifies how the APIs provided by the O-Cloud Profile are used
14. (e.g. interaction flow) to implement the functional capabilities specified in Section 3.7.1. To achieve these
15. capabilities, dependent on the specific profile the SMO can do one or more of the following:
16. 1. Initiate the procedure via a single DMS API profile call.
17. 2. Orchestrate using several DMS API profile calls.
18. 3. Relegate responsibility to the O-Cloud by leveraging O-Cloud capabilities, SMO does nothing to
19. manage these capabilities.
20. c) O-Cloud profile API specification: specifies what APIs are provided by an O-Cloud conforming to the O-
21. Cloud Profile
22. d) O-Cloud profile data model: specifies the actual data elements used by the API.
23. The O-Cloud Profiles form the basis for the protocol and data model O2dms interoperability - any O-Cloud
24. implementation which supports a particular O-Cloud Profile is expected to interoperate with any SMO implementation
25. that also supports the same O-Cloud Profile but not with an SMO that only supports a different O-Cloud Profile.

# 18 Annex A (Informative): O-Cloud and IMS Initialization

1. This specification does not dictate how O-Cloud is initialized and how initial endpoint for SMO to connect to is done.
2. But here are some logical steps of the process to make it happen. This is included for informational purposes and not part
3. of formal specification, please see Orchestration Use Cases [13].
4. 1. SMO manually populated with a server that will be part of HW that is in O-Cloud. That server has connectivity
5. to all other HW in the O-Cloud currently (at the start). The choice of that initial server is not important and is
6. used only for bootstrapping (Genesis).
7. 2. SMO deploys a minimalistic IMS functionality to initial server so it can do a subset of IMS functionality and
8. bring O-Cloud up. At a minimum that IMS services should include infrastructure discovery, inventory, and
9. administration within the O-Cloud; and deployment of O-Cloud with full IMS and DMS functionality. The
10. configuration of the network might be sent to the server as part of its startup. In which case it might not have
11. connectivity to all other HW but will have the ability to establish connectivity by configuring a transport path to
12. servers in a non-collocated resource pool.
13. 3. After O-Cloud deployment the initial server is no longer needed for minimalistic IMS services and can be
14. returned into a pool of resources under O-Cloud control. The registration of the complete IMS services endpoint
15. in the SMO, via a callback provided to the initial server, exposes the internal cloud services to the SMO via the
16. IMS SBI.

35

1. This document does not define how O-Cloud with IMS services come into being. So, the above steps are provided for
2. informational purposes only.

### UML sequence diagram for O-Cloud and IMS initialization

39

@startuml Autonumber

skinparam sequenceArrowThickness 2

skinparam ParticipantPadding 5

skinparam BoxPadding 10

Box "Personnel" #lightblue

Actor CPM as "Site Administrator" End box

Box "Service Management & Orchestration Framework" #gold participant SMO as "FOCOM"

40

41

42

43

44

45

46

47

48

49

50

51

1

end box

Box "O-Cloud Platform" #lightseagreen participant IMS as "O-Cloud Genesis Server"

End box

CPM -> SMO: Instantiate O-Cloud IMS SMO -> IMS: Setup Server

Note over IMS

Install Operating System and any necessary SW End note

IMS -> SMO: initial Server Ready

SMO -> IMS: Install Basic IMS Note over IMS

Install initial IMS End note

IMS -> SMO: IMS Cloud Infrastructure Resource Management services is ready SMO -> CPM: Initial O-Cloud is Ready

== End Use Case == @enduml

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

![Generated by PlantUML ](../assets/images/03658c339751.png)28

29 **Figure A-1 O-Cloud and IMS Initialization**

# 30 Annex ZZZ O-RAN Adopter License Agreement

1. BY DOWNLOADING, USING OR OTHERWISE ACCESSING ANY O-RAN SPECIFICATION, ADOPTER
2. AGREES TO THE TERMS OF THIS AGREEMENT.
3. This O-RAN Adopter License Agreement (the "Agreement") is made by and between the O-RAN Alliance and the entity
4. that downloads, uses or otherwise accesses any O-RAN Specification, including its Affiliates (the "Adopter").
5. This is a license agreement for entities who wish to adopt any O-RAN Specification.

## Section 1: DEFINITIONS

1. 1.1 "Affiliate" means an entity that directly or indirectly controls, is controlled by, or is under common control with
2. another entity, so long as such control exists. For the purpose of this Section, "Control" means beneficial ownership of
3. fifty (50%) percent or more of the voting stock or equity in an entity.
4. 1.2 "Compliant Implementation" means any system, device, method or operation (whether implemented in hardware,
5. software or combinations thereof) that fully conforms to a Final Specification.
6. 1.3 "Adopter(s)" means all entities, who are not Members, Contributors or Academic Contributors, including their
7. Affiliates, who wish to download, use or otherwise access O-RAN Specifications.
8. 1.4 "Minor Update" means an update or revision to an O-RAN Specification published by O-RAN Alliance that does not
9. add any significant new features or functionality and remains interoperable with the prior version of an O-RAN
10. Specification. The term "O-RAN Specifications" includes Minor Updates.
11. 1.5 "Necessary Claims" means those claims of all present and future patents and patent applications, other than design
12. patents and design registrations, throughout the world, which (i) are owned or otherwise licensable by a Member,
13. Contributor or Academic Contributor during the term of its Member, Contributor or Academic Contributorship; (ii) such
14. Member, Contributor or Academic Contributor has the right to grant a license without the payment of consideration to a
15. third party; and (iii) are necessarily infringed by a Compliant Implementation (without considering any Contributions not
16. included in the Final Specification). A claim is necessarily infringed only when it is not possible on technical (but not
17. commercial) grounds, taking into account normal technical practice and the state of the art generally available at the date
18. any Final Specification was published by the O-RAN Alliance or the date the patent claim first came into existence,
19. whichever last occurred, to make, sell, lease, otherwise dispose of, repair, use or operate a Compliant Implementation
20. without infringing that claim. For the avoidance of doubt in exceptional cases where a Final Specification can only be
21. implemented by technical solutions, all of which infringe patent claims, all such patent claims shall be considered
22. Necessary Claims.
23. 1.6 "Defensive Suspension" means for the purposes of any license grant pursuant to Section 3, Member, Contributor,
24. Academic Contributor, Adopter, or any of their Affiliates, may have the discretion to include in their license a term
25. allowing the licensor to suspend the license against a licensee who brings a patent infringement suit against the licensing
26. Member, Contributor, Academic Contributor, Adopter, or any of their Affiliates.

## Section 2: COPYRIGHT LICENSE

1. 2.1 Subject to the terms and conditions of this Agreement, O-RAN Alliance hereby grants to Adopter a nonexclusive,
2. nontransferable, irrevocable, non-sublicensable, worldwide copyright license to obtain, use and modify O-RAN
3. Specifications, but not to further distribute such O-RAN Specification in any modified or unmodified way, solely in
4. furtherance of implementations of an ORAN Specification.
5. 2.2 Adopter shall not use O-RAN Specifications except as expressly set forth in this Agreement or in a separate written
6. agreement with O-RAN Alliance.

## Section 3: FRAND LICENSE

1. 3.1 Members, Contributors and Academic Contributors and their Affiliates are prepared to grant based on a separate
2. Patent License Agreement to each Adopter under Fair Reasonable And Non- Discriminatory (FRAND) terms and
3. conditions with or without compensation (royalties) a nonexclusive, non-transferable, irrevocable (but subject to
4. Defensive Suspension), non-sublicensable, worldwide patent license under their Necessary Claims to make, have made,
5. use, import, offer to sell, lease, sell and otherwise distribute Compliant Implementations; provided, however, that such
6. license shall not extend: (a) to any part or function of a product in which a Compliant Implementation is incorporated that
7. is not itself part of the Compliant Implementation; or (b) to any Adopter if that Adopter is not making a reciprocal grant
8. to Members, Contributors and Academic Contributors, as set forth in Section 3.3. For the avoidance of doubt, the
9. foregoing licensing commitment includes the distribution by the Adopter's distributors and the use by the Adopter's
10. customers of such licensed Compliant Implementations.
11. 3.2 Notwithstanding the above, if any Member, Contributor or Academic Contributor, Adopter or their Affiliates has
12. reserved the right to charge a FRAND royalty or other fee for its license of Necessary Claims to Adopter, then Adopter
13. is entitled to charge a FRAND royalty or other fee to such Member, Contributor or Academic Contributor, Adopter and
14. its Affiliates for its license of Necessary Claims to its licensees.
15. 3.3 Adopter, on behalf of itself and its Affiliates, shall be prepared to grant based on a separate Patent License Agreement
16. to each Members, Contributors, Academic Contributors, Adopters and their Affiliates under Fair Reasonable And Non-
17. Discriminatory (FRAND) terms and conditions with or without compensation (royalties) a nonexclusive, non-
18. transferable, irrevocable (but subject to Defensive Suspension), non-sublicensable, worldwide patent license under their
19. Necessary Claims to make, have made, use, import, offer to sell, lease, sell and otherwise distribute Compliant
20. Implementations; provided, however, that such license will not extend: (a) to any part or function of a product in which a
21. Compliant Implementation is incorporated that is not itself part of the Compliant Implementation; or (b) to any Members,
22. Contributors, Academic Contributors, Adopters and their Affiliates that is not making a reciprocal grant to Adopter, as
23. set forth in Section 3.1. For the avoidance of doubt, the foregoing licensing commitment includes the distribution by the
24. Members', Contributors', Academic Contributors', Adopters' and their Affiliates' distributors and the use by the
25. Members', Contributors', Academic Contributors', Adopters' and their Affiliates' customers of such licensed Compliant
26. Implementations.

## Section 4: TERM AND TERMINATION

1. 4.1 This Agreement shall remain in force, unless early terminated according to this Section 4.
2. 4.2 O-RAN Alliance on behalf of its Members, Contributors and Academic Contributors may terminate this Agreement
3. if Adopter materially breaches this Agreement and does not cure or is not capable of curing such breach within thirty (30)
4. days after being given notice specifying the breach.
5. 4.3 Sections 1, 3, 5 - 11 of this Agreement shall survive any termination of this Agreement. Under surviving Section 3,
6. after termination of this Agreement, Adopter will continue to grant licenses (a) to entities who become Adopters after the
7. date of termination; and (b) for future versions of ORAN Specifications that are backwards compatible with the version
8. that was current as of the date of termination.

## Section 5: CONFIDENTIALITY

1. Adopter will use the same care and discretion to avoid disclosure, publication, and dissemination of O-RAN
2. Specifications to third parties, as Adopter employs with its own confidential information, but no less than reasonable care.
3. Any disclosure by Adopter to its Affiliates, contractors and consultants should be subject to an obligation of
4. confidentiality at least as restrictive as those contained in this Section. The foregoing obligation shall not apply to any
5. information which is: (1) rightfully known by Adopter without any limitation on use or disclosure prior to disclosure; (2)
6. publicly available through no fault of Adopter; (3) rightfully received without a duty of confidentiality; (4) disclosed by
7. O-RAN Alliance or a Member, Contributor or Academic Contributor to a third party without a duty of confidentiality on
8. such third party; (5) independently developed by Adopter; (6) disclosed pursuant to the order of a court or other authorized
9. governmental body, or as required by law, provided that Adopter provides reasonable prior written notice to O-RAN
10. Alliance, and cooperates with O-RAN Alliance and/or the applicable Member, Contributor or Academic Contributor to
11. have the opportunity to oppose any such order; or (7) disclosed by Adopter with O-RAN Alliance's prior written approval.

## Section 6: INDEMNIFICATION

1. Adopter shall indemnify, defend, and hold harmless the O-RAN Alliance, its Members, Contributors or Academic
2. Contributors, and their employees, and agents and their respective successors, heirs and assigns (the "Indemnitees"),
3. against any liability, damage, loss, or expense (including reasonable attorneys' fees and expenses) incurred by or imposed
4. upon any of the Indemnitees in connection with any claims, suits, investigations, actions, demands or judgments arising
5. out of Adopter's use of the licensed O-RAN Specifications or Adopter's commercialization of products that comply with
6. O-RAN Specifications.

## Section 7: LIMITATIONS ON LIABILITY; NO WARRANTY

1. EXCEPT FOR BREACH OF CONFIDENTIALITY, ADOPTER'S BREACH OF SECTION 3, AND ADOPTER'S
2. INDEMNIFICATION OBLIGATIONS, IN NO EVENT SHALL ANY PARTY BE LIABLE TO ANY OTHER PARTY
3. OR THIRD PARTY FOR ANY INDIRECT, SPECIAL, INCIDENTAL, PUNITIVE OR CONSEQUENTIAL
4. DAMAGES RESULTING FROM ITS PERFORMANCE OR NON-PERFORMANCE UNDER THIS AGREEMENT,
5. IN EACH CASE WHETHER UNDER CONTRACT, TORT, WARRANTY, OR OTHERWISE, AND WHETHER OR
6. NOT SUCH PARTY HAD ADVANCE NOTICE OF THE POSSIBILITY OF SUCH DAMAGES.
7. O-RAN SPECIFICATIONS ARE PROVIDED "AS IS" WITH NO WARRANTIES OR CONDITIONS
8. WHATSOEVER, WHETHER EXPRESS, IMPLIED, STATUTORY, OR OTHERWISE. THE O-RAN ALLIANCE
9. AND THE MEMBERS, CONTRIBUTORS OR ACADEMIC CONTRIBUTORS EXPRESSLY DISCLAIM ANY
10. WARRANTY OR CONDITION OF MERCHANTABILITY, SECURITY, SATISFACTORY QUALITY,
11. NONINFRINGEMENT, FITNESS FOR ANY PARTICULAR PURPOSE, ERROR-FREE OPERATION, OR ANY
12. WARRANTY OR CONDITION FOR O-RAN SPECIFICATIONS.

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
5. Adopter, on behalf of itself and its Affiliates, agrees to comply at all times with all applicable laws, rules and regulations
6. with respect to its and its Affiliates' performance under this Agreement, including without limitation, export control and
7. antitrust laws. Without limiting the generality of the foregoing, Adopter acknowledges that this Agreement prohibits any
8. communication that would violate the antitrust laws.
9. By execution hereof, no form of any partnership, joint venture or other special relationship is created between Adopter,
10. or O-RAN Alliance or its Members, Contributors or Academic Contributors. Except as expressly set forth in this
11. Agreement, no party is authorized to make any commitment on behalf of Adopter, or O-RAN Alliance or its Members,
12. Contributors or Academic Contributors.
13. In the event that any provision of this Agreement conflicts with governing law or if any provision is held to be null, void
14. or otherwise ineffective or invalid by a court of competent jurisdiction, (i) such provisions will be deemed stricken from
15. the contract, and (ii) the remaining terms, provisions, covenants and restrictions of this Agreement will remain in full
16. force and effect.
17. Any failure by a party or third party beneficiary to insist upon or enforce performance by another party of any of the
18. provisions of this Agreement or to exercise any rights or remedies under this Agreement or otherwise by law shall not be
19. construed as a waiver or relinquishment to any extent of the other parties' or third party beneficiary's right to assert or
20. rely upon any such provision, right or remedy in that or any other instance; rather the same shall be and remain in full
21. force and effect. 44

1

2
---

- View in [Reader Mode](https://simewu.com/spec-reader/pages/06-WG6/O-RAN.WG6.O2-GAnP-v01.02.docx).
- Go back to [Table of Contents](../README.md).
- Download the [Original Document](https://github.com/Simewu/spec-reader/raw/refs/heads/main/documents/O-RAN.WG6.O2-GAnP-v01.02.docx).
